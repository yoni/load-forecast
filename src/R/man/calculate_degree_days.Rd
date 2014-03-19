\name{calculate_degree_days}
\alias{calculate_degree_days}
\title{Calculates heating and cooling degree days based on the temperature.}
\usage{
calculate_degree_days(forecast, balance_point = 16)
}
\arguments{
  \item{forecast}{a SpatialGridDataFrame of weather
  forecasts}

  \item{balance_point}{the balance point to use for
  calculation}
}
\description{
Uses a naive method for calculating heating and cooling
degree days: http://en.wikipedia.org/wiki/Degree_day
}

