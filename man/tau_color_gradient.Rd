% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colors.r
\name{tau_color_gradient}
\alias{tau_color_gradient}
\title{Specify the colors used in the charts for measure values}
\usage{
tau_color_gradient(tau, low = "coral", high = "navy", mid = NULL)
}
\arguments{
\item{tau}{taucharts object}

\item{low, high}{colors for low and high ends of the gradient,
ideally names (e.g. "\code{black}") or hex-format (e.g. "\code{#ffeeaa}")}

\item{mid}{optional color for midpoint}
}
\description{
Color mapping for measure (continuous) values starting from low to high,
with an optional mid value
}
\examples{
tauchart(airquality) \%>\%
  tau_point("Wind", "Temp", color="Temp") \%>\%
  tau_color_gradient("blue", "red") \%>\%
  tau_guide_y(min = 50)
}
\references{
\url{http://api.taucharts.com/advanced/encoding.html}
}
