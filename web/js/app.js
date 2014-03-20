/**
 * Angular.js Controller for the page.
 * @param $scope putting some plot paths into the scope
 */
function Ctrl($scope, $http) {

    var root = '../out/';
    var forecastsUrl = root + 'config.json';

    function isFileType(filename, type) {
        return filename.split('.').pop() === type;
    }

    function isMPG(filename) {
        return isFileType(filename, 'mp4');
    }

    function isGIF(filename) {
        return isFileType(filename, 'gif');
    }

    function isPNG(filename) {
        return isFileType(filename, 'png');
    }

    $http.get(forecastsUrl)
        .then(function(res){

            // Static forecast data:
            $scope.forecasts = [
                {
                    name : "Days 1 to 3",
                    description : "For days 1 to 3, the NDFD provides forecasts at 3-hour intervals.",
                    hoursPerFrame : 3
                },
                {
                    name : "Days 4 to 7",
                    description : "For days 4 to 7, the NDFD provides forecasts at 6-hour intervals.",
                    hoursPerFrame : 6
                }
            ];

            // Dynamic forecast data:
            var forecasts = res.data;
            console.log("Loaded forecast JSON: ", forecasts);

            for(var i in forecasts) {
                var forecast = forecasts[i];
                var imagePaths = forecast.images.map(function(path) { return root + forecast.relativePath + "/" + path; });
                $scope.forecasts[i].images = imagePaths.filter(isPNG);
                $scope.forecasts[i].gif = imagePaths.filter(isGIF)[0];
                $scope.forecasts[i].mpg = imagePaths.filter(isMPG)[0];
            }

            console.log("Forecasts in scope: ", $scope.forecasts);

        });

}

