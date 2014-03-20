#' Calculates temperature limits for plots.
#' @param balance_point the balance point to use in calculating the high and low limits of expected degree hours
#' @export
degree_hour_limits <- function(balance_point=BALANCE_POINT) {
    c(-(balance_point - LOW_TEMPERATURE), HIGH_TEMPERATURE - balance_point)
}
