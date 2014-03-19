#' Calculates heating and cooling degree days based on the temperature.
#'
#' Uses a naive method for calculating heating and cooling degree days:
#' http://en.wikipedia.org/wiki/Degree_day
#'
#' @param forecast a SpatialGridDataFrame of weather forecasts
#' @param balance_point the balance point to use for calculation
#' @export
calculate_degree_days <- function(forecast, balance_point=16) {
  
  # This horrible copy/paste job is a result of me not quite being used to this SpacialGridDataFrame object
  # TODO: DRY this up.

  forecast$hdh1 <- ifelse(balance_point - forecast$band1 <= 0, 0, balance_point - forecast$band1)
  forecast$hdh2 <- ifelse(balance_point - forecast$band2 <= 0, 0, balance_point - forecast$band2)
  forecast$hdh3 <- ifelse(balance_point - forecast$band3 <= 0, 0, balance_point - forecast$band3)
  forecast$hdh4 <- ifelse(balance_point - forecast$band4 <= 0, 0, balance_point - forecast$band4)
  forecast$hdh5 <- ifelse(balance_point - forecast$band5 <= 0, 0, balance_point - forecast$band5)
  forecast$hdh6 <- ifelse(balance_point - forecast$band6 <= 0, 0, balance_point - forecast$band6)
  forecast$hdh7 <- ifelse(balance_point - forecast$band7 <= 0, 0, balance_point - forecast$band7)
  forecast$hdh8 <- ifelse(balance_point - forecast$band8 <= 0, 0, balance_point - forecast$band8)
  forecast$hdh9 <- ifelse(balance_point - forecast$band9 <= 0, 0, balance_point - forecast$band9)
  forecast$hdh10 <- ifelse(balance_point - forecast$band10 <= 0, 0, balance_point - forecast$band10)
  forecast$hdh11 <- ifelse(balance_point - forecast$band11 <= 0, 0, balance_point - forecast$band11)
  forecast$hdh12 <- ifelse(balance_point - forecast$band12 <= 0, 0, balance_point - forecast$band12)
  forecast$hdh13 <- ifelse(balance_point - forecast$band13 <= 0, 0, balance_point - forecast$band13)
  forecast$hdh14 <- ifelse(balance_point - forecast$band14 <= 0, 0, balance_point - forecast$band14)
  forecast$hdh15 <- ifelse(balance_point - forecast$band15 <= 0, 0, balance_point - forecast$band15)
  forecast$hdh16 <- ifelse(balance_point - forecast$band16 <= 0, 0, balance_point - forecast$band16)
  forecast$hdh17 <- ifelse(balance_point - forecast$band17 <= 0, 0, balance_point - forecast$band17)
  forecast$hdh18 <- ifelse(balance_point - forecast$band18 <= 0, 0, balance_point - forecast$band18)
  forecast$hdh19 <- ifelse(balance_point - forecast$band19 <= 0, 0, balance_point - forecast$band19)
  forecast$hdh20 <- ifelse(balance_point - forecast$band20 <= 0, 0, balance_point - forecast$band20)
  forecast$hdh21 <- ifelse(balance_point - forecast$band21 <= 0, 0, balance_point - forecast$band21)
  forecast$hdh22 <- ifelse(balance_point - forecast$band22 <= 0, 0, balance_point - forecast$band22)
  forecast$hdh23 <- ifelse(balance_point - forecast$band23 <= 0, 0, balance_point - forecast$band23)

  forecast$cdh1 <- ifelse(forecast$band1 - balance_point <= 0, 0, forecast$band1 - balance_point)
  forecast$cdh2 <- ifelse(forecast$band2 - balance_point <= 0, 0, forecast$band2 - balance_point)
  forecast$cdh3 <- ifelse(forecast$band3 - balance_point <= 0, 0, forecast$band3 - balance_point)
  forecast$cdh4 <- ifelse(forecast$band4 - balance_point <= 0, 0, forecast$band4 - balance_point)
  forecast$cdh5 <- ifelse(forecast$band5 - balance_point <= 0, 0, forecast$band5 - balance_point)
  forecast$cdh6 <- ifelse(forecast$band6 - balance_point <= 0, 0, forecast$band6 - balance_point)
  forecast$cdh7 <- ifelse(forecast$band7 - balance_point <= 0, 0, forecast$band7 - balance_point)
  forecast$cdh8 <- ifelse(forecast$band8 - balance_point <= 0, 0, forecast$band8 - balance_point)
  forecast$cdh9 <- ifelse(forecast$band9 - balance_point <= 0, 0, forecast$band9 - balance_point)
  forecast$cdh10 <- ifelse(forecast$band10 - balance_point <= 0, 0, forecast$band10 - balance_point)
  forecast$cdh11 <- ifelse(forecast$band11 - balance_point <= 0, 0, forecast$band11 - balance_point)
  forecast$cdh12 <- ifelse(forecast$band12 - balance_point <= 0, 0, forecast$band12 - balance_point)
  forecast$cdh13 <- ifelse(forecast$band13 - balance_point <= 0, 0, forecast$band13 - balance_point)
  forecast$cdh14 <- ifelse(forecast$band14 - balance_point <= 0, 0, forecast$band14 - balance_point)
  forecast$cdh15 <- ifelse(forecast$band15 - balance_point <= 0, 0, forecast$band15 - balance_point)
  forecast$cdh16 <- ifelse(forecast$band16 - balance_point <= 0, 0, forecast$band16 - balance_point)
  forecast$cdh17 <- ifelse(forecast$band17 - balance_point <= 0, 0, forecast$band17 - balance_point)
  forecast$cdh18 <- ifelse(forecast$band18 - balance_point <= 0, 0, forecast$band18 - balance_point)
  forecast$cdh19 <- ifelse(forecast$band19 - balance_point <= 0, 0, forecast$band19 - balance_point)
  forecast$cdh20 <- ifelse(forecast$band20 - balance_point <= 0, 0, forecast$band20 - balance_point)
  forecast$cdh21 <- ifelse(forecast$band21 - balance_point <= 0, 0, forecast$band21 - balance_point)
  forecast$cdh22 <- ifelse(forecast$band22 - balance_point <= 0, 0, forecast$band22 - balance_point)
  forecast$cdh23 <- ifelse(forecast$band23 - balance_point <= 0, 0, forecast$band23 - balance_point)

  forecast

}

