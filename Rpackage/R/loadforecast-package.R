#' Heating and cooling load forecast
#'
#' @name loadforecast
#' @title An R package for visualizing heating and cooling load forecasts 
#' @docType package
#' @author Yoni Ben-Meshulam \email{yoni.bmesh@@gmail.com}
#' @examples
#'
#' # Load temperature forecast
#' forecast <- read_forecast()
#'
#'\dontrun{
#' # Plot raw temperature forecast for each band of hours
#' spplot(forecast)
#'}
#'
#' # Calculate HDH and CDH values for each band
#' forecast.dh <- calculate_degree_hours(forecast)
#'
#' # Plot the degree hour forecast for a single interval
#' plot_dh(forecast.dh, 'dh1')
#'
#' # Plot the degree hour forecast for all intervals and generate animations:
#' plot_dh_animation(forecast.dh, tempdir(), Sys.time())
#'
NULL

#' Raw forecast data taken from the National Weather Forecast Database March 19 2014
#'
#' @name forecast
#' @docType data
#' @author Yoni Ben-Meshulam \email{yoni.bmesh@@gmail.com}
#' @keywords data
NULL

#' Degree-hour forecast data calculated from the temperature forcasts on March 19 2014
#'
#' @name forecast.dh
#' @docType data
#' @author Yoni Ben-Meshulam \email{yoni.bmesh@@gmail.com}
#' @keywords data
NULL
