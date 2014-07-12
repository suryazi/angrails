var angrailsApp = angular.module('angrailsApp', ['ngRoute']);
angrailsApp.controller('MainCtrl', ['$scope',
    function($scope) {
        $scope.helloText = 'Hello Angrails Demo!';
    }
]);

angrailsApp.controller('StarCatalogCtrl',
    function($scope, $http) {

        $scope.getStarCatalog = function() {
            $http.get('/angrails/starCatalog').
            success(function(data) {
                console.log("success: " + data);
                $scope.starCatalog = data;
            }).error(function(data) {
                console.log("error: " + data);
                $scope.starCatalog = data;
            });
        };

        $scope.getStarCatalog();
    }
);

angrailsApp.controller('BookListCtrl',
    function($scope, $rootScope, $http, $location) {

        $scope.getBooks = function() {
            $http.get('/angrails/book.json').
            success(function(data, status, headers, config) {
                console.log("success: " + data);
                $scope.books = data;
            }).error(function(data) {
                console.log("error: " + data);
                $scope.books = data;
            });
        };

        $scope.getBooks();
    }
);

angrailsApp.controller('ShowBookCtrl',
    function($scope, $rootScope, $http, $routeParams, $location) {

        $scope.getBook = function() {
            $http.get('/angrails/book/show/' + $scope.bookId + '.json').
            success(function(data, status, headers, config) {
                console.log("success: " + data);
                $scope.book = data;
            }).error(function(data) {
                console.log("error: " + data);
                $scope.book = data;
            });
        };

        $scope.getBook();
    }
);