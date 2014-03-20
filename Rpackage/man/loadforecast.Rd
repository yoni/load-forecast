\docType{package}
\name{loadforecast}
\alias{loadforecast}
\alias{loadforecast-package}
\title{An R package for visualizing heating and cooling load forecasts}
\description{
Heating and cooling load forecast
}
\examples{
# Load temperature forecast
forecast <- read_forecast()

\dontrun{
# Plot raw temperature forecast for each band of hours
spplot(forecast)
}

# Calculate HDH and CDH values for each band
forecast.dh <- calculate_degree_hours(forecast)

# Plot the degree hour forecast for a single interval
plot_dh(forecast.dh, 'dh1')

# Plot the degree hour forecast for all intervals and generate animations:
plot_dh_animation(forecast.dh, tempdir(), Sys.time())
}
\author{
Yoni Ben-Meshulam \email{yoni.bmesh@gmail.com}
}

