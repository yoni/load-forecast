# Heating and Cooling Load Forecast

A tool that visualizes the estimated heating and cooling load across the
continental United States day-by-day, for one week into the future. 

Implemented using a map that is colored according to how many hours of heating
and cooling we expect to occur each day, for seven days into the future.

Heating and cooling hours are estimated using Weather Underground's [degree
days](http://www.wunderground.com/about/faq/degreedays.asp) concept, which uses
a 65&deg; balance point.

A good next step would be to introduce regional average set points for load
estimation, using the [EIA's](http://www.eia.gov/todayinenergy/detail.cfm?id=14771)
average balance points.

Obviously, we could determine even more accurate load forecasts using
state-of-the-art methodologies. If I were doing a deeper analysis, I'd consider
heat buildup over time, humidity, and individual household set points.

This project includes:
* The seven (or more, if you'd like) maps showing daily heating and cooling
loads geographically
* The code for the tool you created to generate the visualizations (your
preferred programming language is fine)
* A short statement of your simple methodology/assumptions for estimating
heating and cooling loads

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
