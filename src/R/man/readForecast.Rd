\name{readForecast}
\alias{readForecast}
\title{Loads temperature forecast data for the Continential United States.}
\usage{
readForecast()
}
\value{
weather forecast as a SpatialPixelsDataFrame
}
\description{
Data are loaded from the National Weather Service, which is
part of the National Oceanic and Atmospheric
Administration, using their National Digital Forecast
Database FTP end point. For more information, see:
http://www.nws.noaa.gov/ndfd/anonymous_ftp.htm
}
\details{
Note that the data are in Celsius.

See
http://www.dpi.inpe.br/gilberto/tutorials/software/R-contrib/sp/html/SpatialPixelsDataFrame-class.html
}
\examples{
temperature_forecast <- readForecast()
}

