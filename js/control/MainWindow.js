//angular code
(function() {
    var fallOfMenApp = angular.module("fallOfMenApp", []);
    fallOfMenApp.controller("controller", function($scope) {
        //scope variables
        //interface variables
        $scope.currentWindow = "home";
    });
    
    //directives
    fallOfMenApp.directive("homeTemplate", function () {
        return {
            restrict: 'E',
            templateUrl: "templates/home-template.html",
            controller: function () {

            },
            controllerAs: 'homeTemplate'
        };
    });
    fallOfMenApp.directive("hangarTemplate", function () {
        return {
            restrict: 'E',
            templateUrl: "templates/hangar-template.html",
            controller: function () {

            },
            controllerAs: 'hangarTemplate'
        };
    });
    fallOfMenApp.directive("profileTemplate", function () {
        return {
            restrict: 'E',
            templateUrl: "templates/profile-template.html",
            controller: function () {

            },
            controllerAs: 'profileTemplate'
        };
    });
    fallOfMenApp.directive("statisticTemplate", function () {
        return {
            restrict: 'E',
            templateUrl: "templates/statistic-template.html",
            controller: function () {

            },
            controllerAs: 'statisticTemplate'
        };
    });
    fallOfMenApp.directive("shopTemplate", function () {
        return {
            restrict: 'E',
            templateUrl: "templates/shop-template.html",
            controller: function () {

            },
            controllerAs: 'shopTemplate'
        };
    });
})();


