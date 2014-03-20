/**
 * Angular.js Controller for the page.
 * @param $scope putting some plot paths into the scope
 */
function Ctrl($scope) {

    var root = '../out/';
    var root1to3 = root + '1to3/';
    var root4to7 = root + '4to7/';

    $scope.forecasts = [
        {
            name : "Days 1 to 3",
            description : "For days 1 to 3, the NDFD provides forecasts at 3-hour intervals.",
            gif : root1to3 + '2014-03-22T2300-0400_degree_day_animation.gif',
            mpg : root1to3 + '2014-03-22T2300-0400_degree_day_animation.mpg',
            hoursPerFrame : 3,
            images : [
                '0000_2014-03-20T0200-0400_forecast.png',
                '0001_2014-03-20T0500-0400_forecast.png',
                '0002_2014-03-20T0800-0400_forecast.png',
                '0003_2014-03-20T1100-0400_forecast.png',
                '0004_2014-03-20T1400-0400_forecast.png',
                '0005_2014-03-20T1700-0400_forecast.png',
                '0006_2014-03-20T2000-0400_forecast.png',
                '0007_2014-03-20T2300-0400_forecast.png',
                '0008_2014-03-21T0200-0400_forecast.png',
                '0009_2014-03-21T0500-0400_forecast.png',
                '0010_2014-03-21T0800-0400_forecast.png',
                '0011_2014-03-21T1100-0400_forecast.png',
                '0012_2014-03-21T1400-0400_forecast.png',
                '0013_2014-03-21T1700-0400_forecast.png',
                '0014_2014-03-21T2000-0400_forecast.png',
                '0015_2014-03-21T2300-0400_forecast.png',
                '0016_2014-03-22T0200-0400_forecast.png',
                '0017_2014-03-22T0500-0400_forecast.png',
                '0018_2014-03-22T0800-0400_forecast.png',
                '0019_2014-03-22T1100-0400_forecast.png',
                '0020_2014-03-22T1400-0400_forecast.png',
                '0021_2014-03-22T1700-0400_forecast.png',
                '0022_2014-03-22T2000-0400_forecast.png',
                '0023_2014-03-22T2300-0400_forecast.png'
            ].map(function(path) { return root1to3 + path; })
        },
        {
            name : "Days 4 to 7",
            description : "For days 4 to 7, the NDFD provides forecasts at 6-hour intervals.",
            gif : root4to7 + '2014-03-26T2000-0400_degree_day_animation.gif',
            mpg : root4to7 + '2014-03-26T2000-0400_degree_day_animation.mpg',
            hoursPerFrame : 6,
            images : [
                '0000_2014-03-23T0200-0400_forecast.png',
                '0001_2014-03-23T0800-0400_forecast.png',
                '0002_2014-03-23T1400-0400_forecast.png',
                '0003_2014-03-23T2000-0400_forecast.png',
                '0004_2014-03-24T0200-0400_forecast.png',
                '0005_2014-03-24T0800-0400_forecast.png',
                '0006_2014-03-24T1400-0400_forecast.png',
                '0007_2014-03-24T2000-0400_forecast.png',
                '0008_2014-03-25T0200-0400_forecast.png',
                '0009_2014-03-25T0800-0400_forecast.png',
                '0010_2014-03-25T1400-0400_forecast.png',
                '0011_2014-03-25T2000-0400_forecast.png',
                '0012_2014-03-26T0200-0400_forecast.png',
                '0013_2014-03-26T0800-0400_forecast.png',
                '0014_2014-03-26T1400-0400_forecast.png',
                '0015_2014-03-26T2000-0400_forecast.png'
            ].map(function(path) { return root4to7 + path; })
        }
    ];
}

