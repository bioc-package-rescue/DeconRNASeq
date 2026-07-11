\name{multiplot}
\alias{multiplot}
\title{
     Draw the plots of proportions of cells determined from deconvolution vs. proportions of the cells actually mixed  (when available) with RMSE.
}
\description{
     A function is used to draw the multiple plots of proportions of cells determined from deconvolution vs. proportions of the cells actually mixed. 
     Each plot corresponds to one tissue/cell.  
}
\usage{
multiplot(..., plotlist = NULL, cols)
}
\arguments{
  \item{\dots}{any number of the plot objects that store the scatter plots for all the cells/tissue types }
  \item{plotlist}{any other plot objects}
  \item{cols}{columns of the plots, default = 1}
}
\value{
  A pdf file with the plots of proportions of cells determined from deconvolution vs. proportions of the cells actually mixed with RMSE
}
\references{
      Gong, T., et al. (2011) 
      Optimal Deconvolution of Transcriptional Profiling Data Using Quadratic Programming with Application to Complex Clinical Blood Samples, 
      PLoS One, 6, e27156.
}
\author{
        Ting Gong \email{tinggong@gmail.com}
        Joseph D. Szustakowski \email{joseph.szustakowski@novartis.com}
}
\examples{
library(ggplot2)
p1 <- ggplot(data.frame(x = 1:10, y = 1:10), aes(x, y)) + geom_point()
p2 <- ggplot(data.frame(x = 1:10, y = 1:10), aes(x, y)) + geom_point()
multiplot(p1, p2, cols = 2)
if (file.exists("scatterplots.pdf")) unlink("scatterplots.pdf")
}
