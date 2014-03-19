\name{plot_dh}
\alias{plot_dh}
\title{Plots the degree-hours.}
\usage{
plot_dh(forecast, attribute, palette = c("dark blue", "white", "dark red"),
  gradients = 50)
}
\arguments{
  \item{forecast}{the weather forecast}

  \item{attribute}{the attribute to plot}

  \item{palette}{the color palette to use}

  \item{gradients}{the number of coor gradients to use.
  more is smoother}
}
\description{
Plots the degree-hours.
}
\examples{
data(forecast.dh)
}

