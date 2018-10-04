(function (app) {
    app.factory('authInterceptorService', ['$q', '$injector', '$location', "$log", 'localStorageService', function ($q, $injector, $location, $log, localStorageService) {

        var authInterceptorServiceFactory = {};

        var _request = function (config) {
            return config;
        }

        var _responseError = function (rejection) {
            if (rejection.status === 401) {
                $log.info(rejection);
                $location.path('/login');
            }
            return $q.reject(rejection);
        }

        authInterceptorServiceFactory.request = _request;
        authInterceptorServiceFactory.responseError = _responseError;

        return authInterceptorServiceFactory;
    }]);
}(angular.module("trApp")))