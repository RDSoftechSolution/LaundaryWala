//app.controller('rctrl', ['$scope', '$http', 'rServices', '$filter', '$timeout', '$interval', function ($scope, $http, rServices, $filter, $timeout, $interval) {
app.controller('rctrl', function ($scope, rServices, $interval) {
    debugger
   
    if ($('#hdnSession').val() == "") {
        $scope.visible = true;
    } else {
        $scope.visible = false;
    }
    $scope.sinupController = "Sign up Controller Working";
    $scope.messages = 'hello';
    $interval(function () {
        if ($scope.message) {
            $('body').animate({
                scrollTop: 0
            },
        1000);
        }

        $scope.message = false;
    }, 18000);
    $scope.Register = function () {
        var user = {
            Name: $scope.Name,
            Email: $scope.Email,
        };
        var response = rServices.Register(user);
        response.then(function (msg) {
            $scope.message = true;
        }, function (msg) {
            alert(msg)
        });
    }
});


app.controller('orderCtrl', function ($scope, orderSer) {
    if ($('#hdnSession').val() == "") {
        $scope.visible = true;
    } else {
        $scope.visible = false;
    }
    $scope.messages = 'order controller Working';
    var count = 0;
    $scope.AddItems = function () {
        if ($scope.count == undefined) 
            $scope.count = 0;

        if ($scope.count > 0 || $scope.count == 0) 
            $scope.count++;
    }
    $scope.RemoveItems = function () {

        if ($scope.count > 0) 
            $scope.count--;
    }
    $scope.ConfirmOrder = function () {
        var user = {
            Name: $scope.Name,
            Email: $scope.Email,
        };

        var response = orderSer.ConfirmOrder(user);
        response.then(function (msg) {
            $scope.message = true;
        }, function (msg) {
            alert(msg)
        }
        );

    }
});

