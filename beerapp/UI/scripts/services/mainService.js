beerInfo.config(function($httpProvider) {

	delete $httpProvider.defaults.headers.common['X-Requested-With'];
})
.factory('mainService',['$http','$rootScope',function($http, $rootScope) {

		$rootScope.urlBase = 'http://localhost:8383/beerapp_rest/';
		$rootScope.header = {header: { "Content-type" : "application/json","Accept" : "application/json" }};
		
		var dataFetch = {};
		
		dataFetch.beerInfo = function() {
		    return $http.get($rootScope.urlBase+ '/product/list', $rootScope.secureheader);		    
		    
		};
		
		return dataFetch;
		
}]);