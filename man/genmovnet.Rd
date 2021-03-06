% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/genmovnet.R
\name{genmovnet}
\alias{genmovnet}
\title{Generate network adjacency matrix for movement}
\usage{
genmovnet(xymat, distf, iplot = F, lktype, randp, pla, plb, tlink)
}
\arguments{
\item{xymat}{the matrix of xy coordinates for node locations, used when the probability of a link is a function of distance (note that the distance between each pair of locations is assumed to be greater than 1)}

\item{distf}{the function of distance used to estimate movement probability - 'random' (not related to distance) or 'powerlaw' (inverse power law) or 'exp' (negative exponential, to be added)}

\item{iplot}{if T, generates igraph plot of adjacency matrix}

\item{lktype}{link type, pa is presence/absence (unweighted, occurence/non-occurence), pr is a probability of occurence, wtd1 is general weight}

\item{randp}{random matrix with entries binomial with probability p}

\item{pla}{inverse power law parameter a in ad^(-b)}

\item{plb}{inverse power law parameter b in ad^(-b)}

\item{tlink}{threshold for whether link exists}
}
\description{
This function generates an adjacency matrix for movement, assumed symmetric (in this version).  It is used by functions including \code{INAscene}. The movement adjacency matrix is composed of 1s and 0s only if lktype="pa" option is used
}
\details{
Updated 2020-06-02
}
\examples{
x1 <- genmovnet(j <- genlocs(extx=c(0,50), exty=c(0,50), nn=50, rand=TRUE), distf='random', randp=0.01, lktype='pa', tlink=0.05, iplot=T)
x2 <- genmovnet(j <- genlocs(extx=c(0,50), exty=c(0,50), nn=100, rand=TRUE), distf='random', randp=0.02, lktype='pa', tlink=0.05, iplot=T)
x7 <- genmovnet(xymat=matrix(c(1,1, 1,2, 1,3, 2,1, 2,2, 2,3),ncol=2,byrow=T), distf='powerlaw', pla=2, plb=1, lktype='pa', tlink=0.9, iplot=T)
x8 <- genmovnet(j <- genlocs(nn=30, extx = c(0, 10), exty = c(0, 10)), distf='powerlaw', pla=2, plb=1, lktype='pa', tlink=0.9, iplot=T)
x9 <- genmovnet(j <- genlocs(nn=300, extx = c(0, 10), exty = c(0, 100)), distf='powerlaw', pla=2, plb=1, lktype='pa', tlink=0.95, iplot=T)
}
\keyword{dispersal}
