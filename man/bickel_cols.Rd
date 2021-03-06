% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bickel_cols.R
\name{bickel_cols}
\alias{bickel_cols}
\title{Defines personal color specs for palettes}
\usage{
bickel_cols(...)
}
\description{
Defines personal color specs for palettes
}
\examples{
mtcars \%>\%
ggplot(
    aes(
        x = mpg,
        y = cyl
   )
) +
geom_point(
   colour = bickel_cols('red')
)

}
