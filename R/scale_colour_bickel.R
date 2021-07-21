#' Define set of mappings from levels in the data aesthetic based on the bickel palette
#'
#' @export
#' @examples
#' p <- ggplot(mtcars, aes(mpg, wt)) +
#' geom_point(aes(colour = factor(cyl)))
#'
#' p + scale_colour_bickel(palette = 'cool')
#'
scale_colour_bickel <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- bickel_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("bickel_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
