(function (app) {

    app.controller("MainController", function ($scope,$http) {
        
        $scope.fetchCategory = function(){
            $http.get('/memorize/php/category/list.php').success(function(data){
                $scope.categoryList = data;
            });
        };

        $scope.addData = function(){
            var modal_popup = angular.element('#crudmodal');
            modal_popup.modal('show');
        };
        
        $scope.submitForm = function(){
            
            $http({
                method:"POST",
                url:"/memorize/php/category/insert.php",
                data:{"name":$scope.name, "easyinterval":$scope.easyinterval}
            }).success(function(data){
                if(data.error != '')
                {
                    alert(data.error);
                }
                else
                {
                    $scope.form_data = {};
                    $scope.closeModal();
                    $scope.fetchCategory();
                }
            });
        };
    
    });



}(angular.module("trApp")));
