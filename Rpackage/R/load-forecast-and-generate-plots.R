#' Loads the weather forecast data and generates plots.
#'
#' Data are loaded in two groups for each of the 1 to 3 and 4 to 7 forecast dats.
#'
#' Interval offset between the forecasts depends on how many hours are represented in the first three days. Due to
#' the fact that this is not always 72 hours (e.g. when requesting a forecast mid-day), we must calculate it
#' explicitly. Note that this implies that there is a race conditino whereby we may load the two forecasts during
#' a point in time when NDFD is being updated.
#'
#' @param path the path in which to store plots
#' @export
load_forecast_and_generate_plots <- function(path) {

    message("Loading forecast data and generating all plots.")

    # Workaround for the lack of good date time data. We'll simply assume all forecasts begin with three hours from the
    # time when we loaded the data.
    start_time <- round(Sys.time(), units="hours") + 60 * 60 * 3

    # Read forecast data from the National Digital Forecast Database:
    forecast1to3 <- read_forecast("001-003")
    forecast4to7 <- read_forecast("004-007")

    # Plot forecasts for days 1-3
    path1to3 <- file.path(path, "1to3")
    dir.create(path1to3, showWarnings=FALSE, recursive=TRUE)
    forecast1to3.dh <- calculate_degree_hours(forecast1to3)
    plot_dh_animation(forecast1to3.dh, path1to3, start_time, hours_per_interval=3)

    # Plot forecasts for days 4-7
    path4to7 <- file.path(path, "4to7")
    dir.create(path4to7, showWarnings=FALSE, recursive=TRUE)
    forecast4to7.dh <- calculate_degree_hours(forecast4to7)
    start_time_4to7 <- start_time + length(names(forecast1to3.dh)) * 3 * 60 * 60
    plot_dh_animation(forecast4to7.dh, path4to7, start_time_4to7, hours_per_interval=6)

}
