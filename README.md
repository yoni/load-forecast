# Heating and Cooling Load Forecast

A tool that forecasts and visualizes the heating and cooling load across the
continental United States.

## Prerequisites

* [gdal](http://www.gdal.org/) -- Geospatial Data Abstraction Library. Backs the `rgdal` R package, which is used to
load and plot weather forecast data.
* [R](http://www.r-project.org/) -- The R Project for Statistical Programming. Used to load weather forecast data,
calculate heating and cooling degree days, and plot results. Additional R package dependencies are required for this
project to run. These may be found in the `DESCRIPTION` file under the R package root.
* [ffmpeg](http://www.ffmpeg.org/) -- used to generate the MPEG animated forecast
* [ImageMagick](http://www.imagemagick.org/) -- used to generate the HIF and MPEG animated forecasts

These dependencies should be available for any *NIX machine.

I used [homebrew](http://brew.sh/) to install them on OS X.
