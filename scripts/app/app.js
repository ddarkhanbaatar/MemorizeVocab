(function () {
    var app = angular.module("trApp", ["ngRoute", "ui.bootstrap"]);
    var config = function ($routeProvider) {
        var viewRoot = "scripts/app/view/";
        $routeProvider
            .when("/", { controller: 'MainController', templateUrl: viewRoot + "vocabulary.html" })
            .when("/vocabulary", { controller: 'MainController', templateUrl: viewRoot + "vocabulary.html" })
            .when("/study", { controller: 'MainController', templateUrl: viewRoot + "study.html" })
            .when("/user_info", { controller: 'MainController', templateUrl: viewRoot + "user_info.html" })
			.when("/category", { controller: 'MainController', templateUrl: viewRoot + "category.html" });
    };

    app.constant("mainUrl", "/api/main/");

    app.config(config);
	
    

}());