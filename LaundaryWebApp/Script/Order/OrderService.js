app.service("orderSer", function ($http) {
    this.ConfirmOrder = function (user) {
        var response = $http({
            method: "post",
            url: "http://localhost:8081//api/Registration/Save",
            data: JSON.stringify(user),
            dataType: "json"
        });
        return response;
    }
});