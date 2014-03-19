\name{calculate_degree_hours}
\alias{calculate_degree_hours}
\title{Calculates degree days based on the temperature.}
\usage{
calculate_degree_hours(forecast, balance_point = 16)
}
\arguments{
  \item{forecast}{a SpatialGridDataFrame of weather
  forecasts}

  \item{balance_point}{the balance point to use for
  calculation}
}
\value{
a SpatialGridDataFrame of DH weather forecasts
}
\description{
Negative degree hours represent CDH values, and positive
degree hours represent HDH values.
}
\details{
Uses a naive method for calculating heating and cooling
degree days: http://en.wikipedia.org/wiki/Degree_day
}
\examples{
data(forecast)
forecast.dh <- calculate_degree_hours(forecast)
}

