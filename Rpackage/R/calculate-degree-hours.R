#' Calculates degree days based on the temperature.
#'
#' Negative degree hours represent CDH values, and positive degree hours represent HDH values.
#'
#' Uses a naive method for calculating heating and cooling degree days:
#' http://en.wikipedia.org/wiki/Degree_day
#'
#' @param forecast a SpatialGridDataFrame of weather forecasts
#' @param balance_point the balance point to use for calculation
#' @return a SpatialGridDataFrame of DH weather forecasts
#' @export
#' @examples
#' data(forecast)
#' forecast.dh <- calculate_degree_hours(forecast)
calculate_degree_hours <- function(forecast, balance_point=16) {

  # Retrieves the value if it's positive, and zero otherwise
  nonNegativeValues <- function(values) {
    ifelse(
        values <= 0,
        0,
        values
    )
  }

  # Assuming the only variables in the forecast are the hour bands, this will append a DH variable for each time band.
  for(i in 1:length(names(forecast))) {

    band_field <- sprintf("band%s", i)

    hdh_values <- nonNegativeValues(balance_point - forecast[[band_field]])
    cdh_values <- nonNegativeValues(forecast[[band_field]] - balance_point)

    dd_field <- sprintf("dh%s", i)

    # Note that this assumes HDH anc CDH values cannot both be non-zero
    # TODO: Add a validation that CDH and HDH are not both non-zero-valued.
    forecast[[dd_field]] <- ifelse(hdh_values != 0, hdh_values, -cdh_values)
    forecast[[band_field]] <- NULL # Remove temperature field

  }

  forecast

}

