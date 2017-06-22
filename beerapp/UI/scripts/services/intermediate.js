beerInfo.factory('intermediateService', ['$rootScope', 'mainService', function($rootScope, mainService) {

    var serviceObject = {};

    serviceObject.beerInfo = function(callback) {        
        mainService.beerInfo().success(function(response) {
            callback(response);
        }).error(function(response) {
            callback(response);
        });
    };
    
    

    return serviceObject;

}]);
