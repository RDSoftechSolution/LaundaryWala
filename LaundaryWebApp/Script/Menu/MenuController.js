app.controller('menuCtrl', function ($scope) {
    debugger
    var session=$('#hdnSession').val();
    if (session=="") {
        $scope.visible = true;
    } else {
        $scope.visible = false;
    }
});