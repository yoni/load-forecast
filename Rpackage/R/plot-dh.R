#' Plots the degree-hours.
#' @param forecast the weather forecast
#' @param attribute the attribute to plot
#' @balance_point to use for temperature color ranges
#' @export
#' @examples
#' data(forecast.dh)
plot_dh <- function(
    forecast,
    attribute,
    balance_point=BALANCE_POINT) {

    image(forecast, attr=attribute, col=palette(), zlim=degree_hour_limits(balance_point))

}
