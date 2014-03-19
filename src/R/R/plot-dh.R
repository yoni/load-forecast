#' Plots the degree-hours.
#' @param forecast the weather forecast
#' @param attribute the attribute to plot
#' @param palette the color palette to use
#' @param gradients the number of coor gradients to use. more is smoother
#' @export
#' @examples
#' data(forecast.dh)
plot_dh <- function(
    forecast,
    attribute,
    palette=c('dark blue', 'white', 'dark red'),
    gradients=50) {

    image(forecast, attr=attribute, col=colorRampPalette(palette)(gradients))

}
