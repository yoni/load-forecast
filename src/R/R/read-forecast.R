#' Loads temperature forecast data for the Continential United States.
#'
#' Data are loaded from the National Weather Service, which is part of the
#' National Oceanic and Atmospheric Administration, using their National
#' Digital Forecast Database FTP end point. For more information, see:
#' http://www.nws.noaa.gov/ndfd/anonymous_ftp.htm
#'
#' Note that the data are in Celsius.
#'
#' See http://www.dpi.inpe.br/gilberto/tutorials/software/R-contrib/sp/html/SpatialPixelsDataFrame-class.html
#'
#' @return weather forecast as a SpatialPixelsDataFrame
#' @importFrom rgdal readGDAL
#' @export
#' @examples
#' temperature_forecast <- read_forecast()
read_forecast <- function()
  readGDAL('ftp://tgftp.nws.noaa.gov/SL.us008001/ST.opnl/DF.gr2/DC.ndfd/AR.conus/VP.001-003/ds.temp.bin')

