#' Calculates temperature limits for plots.
#' @export
degree_hour_limits <- function(balance_point=BALANCE_POINT) {
    c(-(balance_point - LOW_TEMPERATURE), HIGH_TEMPERATURE - balance_point)
}
