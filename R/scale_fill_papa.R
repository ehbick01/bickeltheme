#' Define set of mappings from levels in the data aesthetic based on the papa palette
#'
#' @export
#' @examples
#' tibble(x = c('A', 'B', 'C'), y = runif(3, 10, 20)) %>%
#' ggplot(aes(x = x, y = y, fill = x)) + geom_col() + scale_fill_papa('hot')
#'
scale_fill_papa <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- papa_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("papa_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
