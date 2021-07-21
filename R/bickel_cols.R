#' Defines personal color specs for palettes
#'
#' @export
#' @examples
#' mtcars %>%
#' ggplot(
#'     aes(
#'         x = mpg,
#'         y = cyl
#'    )
#') +
#'geom_point(
#'    colour = bickel_cols('red')
#')
#'
bickel_cols <- function(...) {

  bickel_colors <- c(
    `red`        = "#b3222e",
    `green`      = "#18c166",
    `blue`       = "#1e7fb2",
    `orange`     = "#db7e37",
    `yellow`     = "#e0d146",
    `light grey` = "#e6e4e4",
    `dark grey`  = "#121412")

  cols <- c(...)

  if (is.null(cols))
    return (bickel_colors)

  bickel_colors[cols]
}
