#' Define set of mappings from levels in the data aesthetic based on the papa palette
#'
#' @export
#' @examples
#' p <- ggplot(mtcars, aes(mpg, wt)) +
#' geom_point(aes(colour = factor(cyl)))
#'
#' p + scale_colour_papa(palette = 'cool')
#'
scale_colour_papa <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- papa_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("papa_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
