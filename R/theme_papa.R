#' Create theme based on the Papa John's color palette and chart specs
#'
#' @export
#' @examples
#' mtcars2 <- within(mtcars, {
#' vs <- factor(vs, labels = c("V-shaped", "Straight"))
#' am <- factor(am, labels = c("Automatic", "Manual"))
#' cyl  <- factor(cyl)
#' gear <- factor(gear)
#' })
#'
#' p1 <- ggplot(mtcars2) +
#'   geom_point(aes(x = wt, y = mpg, colour = gear)) +
#'   labs(title = "Fuel economy declines as weight increases",
#'   subtitle = "(1973-74)",
#'   caption = "Data from the 1974 Motor Trend US magazine.",
#'   tag = "Figure 1",
#'   x = "Weight (1000 lbs)",
#'   y = "Fuel economy (mpg)",
#'   colour = "Gears")
#'
#'   p1 + theme_papa()
#'
theme_papa <- function() {
  # Generate the colors for the chart procedurally with bickeltheme
  palette <- papa_pal('grey')(9)

  color.background = palette[1]
  color.grid.major = palette[2]
  color.axis.text = palette[6]
  color.axis.title = palette[7]
  color.title = palette[9]
  color.subtitle = palette[8]

  # Begin construction of chart
  theme_bw(base_family = 'Italian Plate No2 PJ') +
    theme(
      plot.title = element_text(
        color = color.title,
        size = 25,
        vjust = 1.25
      ),
      plot.subtitle = element_text(
        color = color.subtitle,
        size = 15,
        vjust = 1.25
      ),
      text = element_text(colour = color.axis.title),
      panel.background = element_rect(fill = color.background, color =
                                        color.background),
      strip.background = element_rect(color.background, colour = color.background),
      plot.background = element_rect(fill = color.background, color =
                                       color.background),
      panel.border = element_rect(color = color.background),
      panel.grid.major.y = element_line(
        color = color.grid.major,
        linetype = 'dotted',
        size = .25
      ),
      panel.grid.minor = element_blank(),
      panel.grid.major.x = element_blank(),
      # panel.grid.minor.y = element_blank(),
      legend.background = element_rect(fill = color.background),
      legend.position = 'bottom',
      legend.direction = 'horizontal',
      legend.key = element_blank(),
      legend.text = element_text(size = 9, color = color.axis.title),
      legend.title = element_blank(),
      strip.text = element_text(
        colour = color.axis.title,
        face = 'bold',
        size = 12
      ),
      axis.text.x = element_text(size = 12, color = color.axis.text),
      axis.text.y = element_text(size = 12, color = color.axis.text),
      axis.title.x = element_text(
        size = 14,
        color = color.axis.title,
        vjust = 0
      ),
      axis.title.y = element_text(
        size = 14,
        color = color.axis.title,
        vjust = 1.25
      ),
      axis.ticks = element_blank(),
      plot.margin = grid::unit(c(0.35, 0.2, 0.3, 0.35), "cm"),

    )

}
