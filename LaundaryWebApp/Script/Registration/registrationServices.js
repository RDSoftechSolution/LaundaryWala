app.service("rServices", function ($http) {

    //User Registration 
    this.Register = function (user) {
        debugger
        var response = $http({
            method: "post",
            url: "http://localhost:8081//api/Registration/Save",
            data: JSON.stringify(user),
            dataType: "json"
        });
        return response;
    }
});