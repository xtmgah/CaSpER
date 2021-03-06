% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocessing.R
\name{CreateCasperObject}
\alias{CreateCasperObject}
\title{CreateCasperObject}
\usage{
CreateCasperObject(raw.data, annotation, control.sample.ids, cytoband,
  loh.name.mapping, cnv.scale, loh.scale, method, loh,
  project = "casperProject", sequencing.type, expr.cutoff = 4.5,
  display.progress = TRUE, log.transformed = TRUE,
  centered.threshold = 3, window.length = 50, length.iterations = 50,
  vis.bound = 2, noise.thr = 0.3, genomeVersion = "hg19", ...)
}
\arguments{
\item{raw.data}{the matrix of genes (rows) vs. cells (columns) containing the raw counts}

\item{annotation}{data.frame containing positions of each gene along each chromosome in the genome}

\item{control.sample.ids}{vector containing the  reference (normal) cell (sample) names}

\item{cytoband}{cytoband information downloaded from UCSC hg19: http://hgdownload.cse.ucsc.edu/goldenpath/hg19/database/cytoBand.txt.gz hg38:http://hgdownload.cse.ucsc.edu/goldenpath/hg38/database/cytoBand.txt.gz}

\item{loh.name.mapping}{contains the cell (sample) name and the matching baf signal sample name}

\item{cnv.scale}{maximum expression scale}

\item{loh.scale}{maximum baf scale}

\item{method}{analysis type: itereative  or fixed (default: iterative)}

\item{loh}{The original baf signal}

\item{sequencing.type}{sequencing.type sequencing type: bulk or single-cell}

\item{expr.cutoff}{expression cutoff for lowly expressed genes}

\item{log.transformed}{indicates if the data log2 transformed or not. (default:TRUE)}

\item{centered.threshold}{}

\item{window.length}{window length used for median filtering (default: 50)}

\item{length.iterations}{increase in window length at each scale iteration (default: 50)}

\item{vis.bound}{threshold for control normalized data for better visualization (default: 2)}

\item{genomeVersion}{genomeVersion: hg19 or hg38 (default: hg19)}
}
\value{
casper
}
\description{
Creation of a casper object.
}
