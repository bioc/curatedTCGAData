#' Write an Rd man page for a collection of MultiAssayExperiment bits
#'
#' @description Load and extract metadata from a particular cancer type
#' given that the data is at the specified location.
#'
#' @details Note that when specifying a version, a letter "v" is appended
#' to the version (e.g., 'v2.0.0'). This is then appended to the 'dataDir'
#' argument and is considered the repository for all cancer folders.
#'
#' @param dataDir Usually saved in 'MultiAssayExperiment.TCGA/data/bits/'
#' and contains several 'rda', 'rds', and/or 'H5' files.
#'
#' @param cancer The TCGA cancer code that is also a folder in
#' 'dataDir/version/'.
#'
#' @param filename Full path of the filename of the .Rd man page to write
#'
#' @param version character(1) The versioning string for versioning data runs
#'
#' @param aliases A list of aliases
#'
#' @param descriptions A list of extra lines to be written to the Description
#'
#' @author Levi Waldron, Marcel Ramos
#'
#' @examples
#' datadir <- file.path("../MultiAssayExperiment.TCGA/data/bits/")
#' bit2rd(dataDir = datadir, cancer = "COAD", version = "2.0.0")
#'
#' @keywords internal
bits2rd <-
    function(
        dataDir, cancer, filename, version, aliases = cancer,
        descriptions = "A document describing the TCGA cancer code",
        ext_pattern = "\\.[RrHh][Dd5][AaSs]?$",
        fill = FALSE
    )
{
    stopifnot(isSingleString(filename), is.character(version))

    dataver <- character(1L)
    if (!missing(version))
        dataver <- paste0("v", version)
    dataDir <- file.path(dataDir, dataver)
    vtag <- if (nchar(dataver)) paste0("-", dataver) else dataver
    aliases <- paste0(cancer, vtag)
    cancerFolder <- file.path(dataDir, cancer)

    vers <- list.dirs(dirname(dataDir), recursive = FALSE, full.names = FALSE)
    overs <- vers[!vers %in% dataver]
    oldver <- max(package_version(gsub("^v", "", overs)))

    stopifnot(S4Vectors::isSingleString(cancerFolder))

    fileNames <- list.files(cancerFolder, full.names = TRUE,
        pattern = ext_pattern, recursive = TRUE)

    datadata <- .makeMetaDF(fileNames)

    coldatfile <- unlist(
        datadata[datadata[["dataTypes"]] == "colData", "files"]
    )
    if (!length(coldatfile) && fill) {
        oldCF <- file.path(dirname(dataDir), paste0("v", oldver), cancer)
        oldfnames <- list.files(oldCF, full.names = TRUE,
            pattern = ext_pattern, recursive = TRUE)
        oldfnames <- oldfnames[!basename(oldfnames) %in% basename(fileNames)]
        olddata <- .makeMetaDF(oldfnames)
        datadata <- rbind(olddata, datadata)
        coldatfile <- unlist(
            datadata[datadata[["dataTypes"]] == "colData", "files"]
        )
    }
    colDataName <- .selectInRow(
        datadata, "colData", "objectNames", "dataTypes"
    )
    colDat <- .loadEnvObj(coldatfile, colDataName)
    clinicalNames <- .loadPkgData("clinicalNames", "TCGAutils")
    stdNames <- clinicalNames[[cancer]]
    stdNames <- names(colDat) %in% stdNames
    numExtraCols <- sum(!stdNames)
    stdColDat <- colDat[, stdNames]

    dataList <- .loadRDAList(datadata)
    dataList <- .addMethylation(datadata, dataList)

    objSizes <- vapply(
        dataList,
        function(obj) { format(object.size(obj), units = "Mb") },
        character(1L)
    )

    stopifnot(identical(names(dataList), names(objSizes)))
    objSizesdf <- data.frame(assay = names(dataList), size.Mb = objSizes,
        row.names = NULL)

    studyName <-
        with(diseaseCodes, Study.Name[Study.Abbreviation %in% cancer])

    expList <- ExperimentList(dataList)
    sink(file = filename)
    cat(paste0("\\name{", aliases, "}"))
    cat("\n")
    cat(paste("\\alias{", aliases, "}"))
    cat("\n")
    cat(paste("\\docType{data}"))
    cat("\n")
    cat(paste("\\title{", .cleanText(studyName), "}"))
    cat("\n")
    if (!is.null(descriptions)) {
        cat("\\description{")
        cat("\n")
        for (i in seq_along(descriptions)) {
            cat(descriptions[[i]])
            cat("\n")
        }
        cat("}")
        cat("\n")
    }
    cat("\n")
    cat("\\details{")
    cat("\n")
    cat("\\preformatted{\n")
    cat(paste("> experiments(", cancer, ")"))
    cat("\n")
    show(expList)
    cat("\n")
    cat(paste("> rownames(", cancer, ")"))
    cat("\n")
    show(rownames(expList))
    cat("\n")
    cat(paste("> colnames(", cancer, ")"))
    cat("\n")
    show(colnames(expList))
    cat("\n")
    cat("Sizes of each ExperimentList element:\n")
    cat("\n")
    cat(show( objSizesdf ))
    cat("\n")
    if (!all(is.na(colDat$vital_status) &
             is.na(colDat$vital_status))) {
        cat("---------------------------\n")
        cat("Overall survival time-to-event summary (in years):\n")
        cat("---------------------------\n")
        cat("\n")
        print(survival::survfit(survival::Surv(colDat$days_to_death / 365,
                                               colDat$vital_status) ~ -1))
        cat("\n")
    }
    cat("\n")
    cat("---------------------------\n")
    cat("Available sample meta-data:\n")
    cat("---------------------------\n")
    cat("\n")
    for (iCol in seq_along(stdColDat)) {
        if (length(unique(stdColDat[, iCol])) < 6) {
            stdColDat[, iCol] <- factor(stdColDat[, iCol])
            cat(paste0(colnames(stdColDat)[iCol], ":\n"))
            print(summary(stdColDat[, iCol]))
        } else if (is(stdColDat[, iCol], "numeric")) {
            cat(paste0(colnames(stdColDat)[iCol], ":\n"))
            print(summary(stdColDat[, iCol]))
        }
        cat("\n")
    }
    cat("Including an additional", numExtraCols, "columns\n")
    cat("}}")
    cat("\n")
    cat("\\keyword{datasets}")
    cat("\n")
    sink(NULL)
    return(filename)
}
