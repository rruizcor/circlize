\name{highlight.chromosome}
\alias{highlight.chromosome}
\title{
Highlight chromosomes
}
\description{
Highlight chromosomes
}
\usage{
highlight.chromosome(...)
}
\arguments{

  \item{...}{pass to \code{\link{highlight.sector}}}

}
\details{
This is only a shortcut function of \code{\link{highlight.sector}}.
}
\references{
Gu, Z. (2014) circlize implements and enhances circular visualization in R. Bioinformatics.

}
\examples{
\dontrun{

par(mar = c(1.5, 1.5, 1.5, 1.5))
# highlight 
circos.par("track.height" = 0.1, cell.padding = c(0, 0, 0, 0))
circos.initializeWithIdeogram(plotType = c("axis", "labels"))

bed = generateRandomBed(nr = 100)
circos.genomicTrackPlotRegion(bed, panel.fun = function(region, value, ...) {
    circos.genomicPoints(region, value, pch = 16, cex = 0.5, ...)
})

bed = generateRandomBed(nr = 100)
circos.genomicTrackPlotRegion(bed, panel.fun = function(region, value, ...) {
    circos.genomicPoints(region, value, pch = 16, cex = 0.5, ...)
})

bed = generateRandomBed(nr = 100)
circos.genomicTrackPlotRegion(bed, panel.fun = function(region, value, ...) {
    circos.genomicPoints(region, value, pch = 16, cex = 0.5, ...)
})

bed = generateRandomBed(nr = 100)
circos.genomicTrackPlotRegion(bed, panel.fun = function(region, value, ...) {
    circos.genomicPoints(region, value, pch = 16, cex = 0.5, ...)
})


highlight.chromosome("chr1", col = "#FF000040", padding = c(0.05, 0.05, 0.15, 0.05))
highlight.chromosome("chr3", col = NA, border = "red", lwd = 2,
    padding = c(0.05, 0.05, 0.15, 0.05))
highlight.chromosome("chr5", col = "#0000FF40", track.index = c(2, 4, 5))
highlight.chromosome("chr7", col = NA, border = "green", lwd = 2,
    track.index = c(2, 4, 5))
circos.clear()

}

}
