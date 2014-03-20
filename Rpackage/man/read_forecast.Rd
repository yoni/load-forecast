\name{read_forecast}
\alias{read_forecast}
\title{Loads temperature forecast data for the Continential United States.}
\usage{
read_forecast(interval = "001-003")
}
\arguments{
  \item{interval}{either "001-003" or "004-007". Determines
  which days' forecast to read}
}
\value{
weather forecast as a SpatialPixelsDataFrame
}
\description{
Data are loaded from the National Weather Service, which is
part of the National Oceanic and Atmospheric
Administration, using their National Digital Forecast
Database FTP end point. For more information, see:
http://www.nws.noaa.gov/ndfd/technical.htm
http://www.nws.noaa.gov/ndfd/anonymous_ftp.html
}
\details{
Note that the data are in Celsius.

See
http://www.dpi.inpe.br/gilberto/tutorials/software/R-contrib/sp/html/SpatialPixelsDataFrame-class.html
}
\examples{
temperature_forecast <- read_forecast()
}

