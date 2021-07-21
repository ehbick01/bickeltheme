#' Define set of mappings from levels in the data aesthetic based on the bickel palette
#'
#' @export
#' @examples
#' tibble(x = c('A', 'B', 'C'), y = runif(3, 10, 20)) %>%
#' ggplot(aes(x = x, y = y, fill = x)) + geom_col() + scale_fill_bickel('hot')
#'
scale_fill_bickel <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- bickel_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("bickel_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
