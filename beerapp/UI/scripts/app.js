var beerInfo = angular.module("webteam", ["ngRoute","ngTagsInput","ui.bootstrap","googleplus"]);
//'webcam','bcQrReader'
beerInfo.config(function($routeProvider) {
    $routeProvider
        .when("/randomBeerApp", {
           templateUrl: "UI/templates/main.html"
        })
        .when("/beerInfo", {
           controller: 'beerInfoController',
           templateUrl: "UI/templates/beerInfo.html"
        })
        .when("/", {
            controller: 'beerInfoController',
            templateUrl: "UI/templates/main.html"
        })
        .otherwise({redirectTo:'/'});
        


});

