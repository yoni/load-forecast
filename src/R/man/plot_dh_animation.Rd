\name{plot_dh_animation}
\alias{plot_dh_animation}
\title{Plots the degree days as an animation.}
\usage{
plot_dh_animation(forecast, path, start_time, hours_per_interval = 3,
  height = 1200, width = 1800, delay = 500,
  file_time_format = "\%Y-\%m-\%dT\%H\%M\%z",
  title_time_format = "\%a \%m-\%d-\%Y \%H:\%M \%Z")
}
\arguments{
  \item{forecast}{as a SpatialPixelsDataFrame}

  \item{path}{in which to store the image}

  \item{start_time}{the first time interval represented by
  this forecast}

  \item{hours_per_interval}{the number of hours represented
  by each interval}

  \item{height}{of the image in pixels. See `png`}

  \item{width}{of the image. See `png`}

  \item{delay}{between frames in milliseconds}

  \item{file_time_format}{the date time format to use for
  file names.}

  \item{title_time_format}{the date time format to use for
  the plot titles}
}
\description{
Requires ImageMagick for GIF animation.
}
\examples{
data(forecast.dh)
plot_dh_animation(forecast.dh, tempdir(), Sys.time())
}

