#' Creates personal color palettes for plotting
#'
#' @export
#' @examples
#' mypalette <- bickel_pal('cool')(7)
#' image(1:7,1,as.matrix(1:7),col=mypalette,xlab="Cool (sequential)",
#' ylab="",xaxt="n",yaxt="n",bty="n")
#'
bickel_pal <- function(palette = "main", reverse = FALSE, ...) {

  bickel_palettes <- list(
    `main`  = bickel_cols("blue", "green", "red"),

    `cool`  = bickel_cols("blue", "green"),

    `hot`   = bickel_cols("yellow", "orange", "red"),

    `mixed` = bickel_cols("blue", "green", "yellow", "orange", "red"),

    `grey`  = bickel_cols("light grey", "dark grey")
  )

  pal <- bickel_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
