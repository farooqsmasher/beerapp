beerInfo.controller("beerInfoController", ['$rootScope', '$scope', '$location','intermediateService',
    function($rootScope, $scope, $location, intermediateService) {
       console.log('in controller');
        $scope.ite=0;
        $scope.getBeerDetails = function() {
            intermediateService.beerInfo(function(response) {
                console.log(response);
                if (response.statusCode == 1) {
                console.log('success');
                $scope.beerDetailList = response.data;
                $scope.beerDetails = $scope.beerDetailList[$scope.ite];
                } else if (response.statusCode == 0) {
                    
                }
            });
            
        };

        $scope.getBeerDetails();

        $scope.showAnotherApp = function(){
            console.log($scope.beerDetailList.length);
            if($scope.ite>=$scope.beerDetailList.length-1){
                $scope.ite=0;
            }else{
                $scope.ite++;  
            }
            console.log($scope.ite);
            console.log($scope.beerDetailList[$scope.ite]);
            $scope.beerDetails = $scope.beerDetailList[$scope.ite];
        };
    }
]);
