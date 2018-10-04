(function (app) {
    var dbService = function ($http) {
        
        var getList = function (url) {
            return $http({
                method: 'GET',
                url: url,
                cache:false});
        };
        var getById = function (url,id) {
            return $http.get(url + id);
        };
        var update = function (url,value,id) {
            return $http.put(url + id, value);
        };
        var create = function (url,value) {
            return $http.post(url, value);
        };
        var destroy = function (url,value,id) {
            return $http.delete(url + id);
        };
        return { getList: getList, getById: getById, update: update, create: create, delete: destroy };
    };
    app.factory("dbService", dbService);
}(angular.module("trApp")))