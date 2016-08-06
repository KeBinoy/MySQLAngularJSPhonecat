var phonecatControllers = angular.module('phonecatControllers', []);
var phonelistURL = 'http://localhost:3000/phonelist';
var phonedetailURL = 'http://localhost:3000/phonedetail/';

phonecatControllers.controller('PhoneListCtrl', ['$scope', '$http',
  function ($scope, $http) {
   $http.get(phonelistURL).success(function(data) {
      $scope.phones = data;
      // $scope.kevin = "kevin john rivera";
     // console.log(data);
    });

  }]);

phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams',
  function($scope, $routeParams) {
    $scope.phoneId = $routeParams.phoneId;
  }]);

phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', '$http',
  function($scope, $routeParams, $http) {
    /*$http.get('phones/' + $routeParams.phoneId + '.json').success(function(data) {*/
      $http.get(phonedetailURL+ $routeParams.phoneId).success(function(data) {
      $scope.phone = data;
    });
  }]);

phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', '$http',
  function($scope, $routeParams, $http) {
    //$http.get('phones/' + $routeParams.phoneId + '.json').success(function(data) {
      $http.get(phonedetailURL+ $routeParams.phoneId ).success(function(data) {
        // console.log(data);
     // console.log(data);
      $scope.phone = data[0];
      var value =  (data[0].list).split(',');
      //console.log(value[0]);
     $scope.vimage = value;
     $scope.mainImageUrl = value[0];
    });
    $scope.setImage = function(imageUrl) {
      $scope.mainImageUrl = imageUrl;
    }
  }]);