#' Writes forecast plot paths to a JSON file for use in the web app.
#' @export
write_forecast_json <- function() {

    forecast_paths <- list(
        list(
            name='days1to3',
            images=list.files('../out/1to3'),
            relativePath='1to3'
        ),
        list(
            name='days4to7',
            images=list.files('../out/4to7'),
            relativePath='4to7'
        )
    )

    writeLines(toJSON(forecast_paths), '../out/config.json')

}
