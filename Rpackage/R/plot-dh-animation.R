#' Plots the degree days as an animation.
#'
#' Requires ImageMagick for GIF animation.
#'
#' @param forecast as a SpatialPixelsDataFrame
#' @param path in which to store the image
#' @param start_time the first time interval represented by this forecast
#' @param hours_per_interval the number of hours represented by each interval
#' @param height of the image in pixels. See `png`
#' @param width of the image. See `png`
#' @param delay between frames in milliseconds. Default is set according to the hours in each interval, in order to
#'        make the animated versions of comparable length.
#' @param file_time_format the date time format to use for file names.
#         See http://stat.ethz.ch/R-manual/R-patched/library/base/html/strptime.html
#' @param title_time_format the date time format to use for the plot titles
#         See http://stat.ethz.ch/R-manual/R-patched/library/base/html/strptime.html
#' @export
#' @examples
#' data(forecast.dh)
#' plot_dh_animation(forecast.dh, tempdir(), Sys.time())
plot_dh_animation <- function(
    forecast,
    path,
    start_time,
    hours_per_interval=3,
    height=1200,
    width=1800,
    delay=hours_per_interval * 150,
    file_time_format="%Y-%m-%dT%H%M%z",
    title_time_format="%a %m-%d-%Y %H:%M %Z") {

    message("Generating plots for degree-hour forecasts.")
    message("Number of frames: ", length(names(forecast)))
    message("Plotting individual frames to: ", path)

    frame <- 0
    for(name in names(forecast)) {

        frame_time <- start_time + 60 * 60 * hours_per_interval * frame
        file_date <- format(frame_time, file_time_format)
        date_title <- format(frame_time, title_time_format)

        plot_path <- file.path(path, sprintf("%04d_%s_forecast.png", frame, file_date))
        message("Generating plot for interval [", date_title, "] to path [", plot_path, "]")

        png(plot_path, height=height, width=width)
        plot_dh(forecast, name)
        title(sprintf("Heating and Cooling Load Forecast\n%s", date_title))
        dev.off()

        frame <- frame + 1

    }

    png_files <- file.path(path, "*.png")

    target_path <- file.path(path, sprintf('%s_degree_day_animation.gif', file_date))
    command <- sprintf("convert -delay %sx1000 -loop 0 %s %s", delay, png_files, target_path)
    message("Converting png files to animated gif: ", target_path)
    system(command)

    target_path <- file.path(path, sprintf('%s_degree_day_animation.mp4', file_date))
    command <- sprintf("convert -delay %sx1000 %s %s", delay, png_files, target_path)
    message("Converting png files to a movie: ", target_path)
    system(command)

}

