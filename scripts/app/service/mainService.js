(function (app) {
    var mainService = function ($http, mainUrl) {
        var getMenus = function () {
            return $http.get(mainUrl);
        };

        var login = function (value) {
            return $http.post(mainUrl, value);
        };

        var logout = function () {
            return $http.get(mainUrl + "logout");
        };
        return { getMenus: getMenus, login: login, logout: logout };
    };


    app.factory("mainService", mainService);
}(angular.module("trApp")))