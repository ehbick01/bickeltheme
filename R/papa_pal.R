#' Creates PJ color palettes for plotting
#'
#' @export
#' @examples
#' mypalette <- papa_pal('cool')(7)
#' image(1:7,1,as.matrix(1:7),col=mypalette,xlab="Cool (sequential)",
#' ylab="",xaxt="n",yaxt="n",bty="n")
#'
papa_pal <- function(palette = "main", reverse = FALSE, ...) {

  papa_palettes <- list(
    `main`  = papa_cols("blue", "green", "red"),

    `cool`  = papa_cols("blue", "green"),

    `hot`   = papa_cols("yellow", "orange", "red"),

    `mixed` = papa_cols("blue", "green", "yellow", "orange", "red"),

    `grey`  = papa_cols("light grey", "dark grey")
  )

  pal <- papa_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
