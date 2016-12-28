
/* global angular */

(function() {
  angular.module("app").controller("employeeCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('http://localhost:3000/api/v1/employees').then(function(response) {
        $scope.employees = response.data;
        $scope.orderAttribute = 'first_name';
        $scope.isOrderDescending = false;
      });
    };

    $scope.changeOrderAttribute = function(inputAttribute) {
      if (inputAttribute === $scope.orderAttribute) {
        $scope.isOrderDescending = !$scope.isOrderDescending;
      } else {
        $scope.isOrderDescending = false;
      }
      $scope.orderAttribute = inputAttribute;
    };
  window.$scope = $scope;
  });
})();
