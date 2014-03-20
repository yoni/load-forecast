\name{load_forecast_and_generate_plots}
\alias{load_forecast_and_generate_plots}
\title{Loads the weather forecast data and generates plots.}
\usage{
load_forecast_and_generate_plots(path)
}
\arguments{
  \item{path}{the path in which to store plots}
}
\description{
Data are loaded in two groups for each of the 1 to 3 and 4
to 7 forecast dats.
}
\details{
Interval offset between the forecasts depends on how many
hours are represented in the first three days. Due to the
fact that this is not always 72 hours (e.g. when requesting
a forecast mid-day), we must calculate it explicitly. Note
that this implies that there is a race conditino whereby we
may load the two forecasts during a point in time when NDFD
is being updated.
}

