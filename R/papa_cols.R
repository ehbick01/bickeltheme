#' Defines PJ color specs for palettes
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
#'    colour = papa_cols('red')
#')
#'
papa_cols <- function(...) {

  papa_colors <- c(
    `red`        = "#da3f3c",
    `green`      = "#50a683",
    `blue`       = "#258084",
    `orange`     = "#ffa013",
    `yellow`     = "#f2c732",
    `light grey` = "#eeefee",
    `dark grey`  = "#505152")

  cols <- c(...)

  if (is.null(cols))
    return (papa_colors)

  papa_colors[cols]
}
