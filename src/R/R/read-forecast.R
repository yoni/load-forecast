#' Loads temperature forecast data for the Continential United States.
#'
#' Data are loaded from the National Weather Service, which is part of the
#' National Oceanic and Atmospheric Administration, using their National
#' Digital Forecast Database FTP end point. For more information, see:
#' http://www.nws.noaa.gov/ndfd/technical.htm
#' http://www.nws.noaa.gov/ndfd/anonymous_ftp.html
#'
#' Note that the data are in Celsius.
#'
#' See http://www.dpi.inpe.br/gilberto/tutorials/software/R-contrib/sp/html/SpatialPixelsDataFrame-class.html
#'
#' @param interval either "001-003" or "004-007". Determines which days' forecast to read
#' @return weather forecast as a SpatialPixelsDataFrame
#' @importFrom rgdal readGDAL
#' @export
#' @examples
#' temperature_forecast <- read_forecast()
read_forecast <- function(interval="001-003") {

    stopifnot(interval %in% c('001-003', '004-007'))

    ftp_url <- sprintf(
        'ftp://tgftp.nws.noaa.gov/SL.us008001/ST.opnl/DF.gr2/DC.ndfd/AR.conus/VP.%s/ds.temp.bin',
        interval
    )

    forecast <- readGDAL(ftp_url)

    message("Retrieved [", length(names(forecast)), "] interval forecasts")

    forecast

}

