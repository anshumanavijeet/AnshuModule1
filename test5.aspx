<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test5.aspx.cs" Inherits="jquerylearn.test5" %>

<!DOCTYPE html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">


<script src="Scripts/angular.js"></script>
<script src="Scripts/angular.min.js"></script>
<script src="Scripts/angular-animate.js"></script>
<script src="Scripts/angular-animate.min.js"></script>
<head runat="server">
    <title></title>
</head>
<body>
    <script>
       // var app = angular.module('myApp', []);
        var app = angular.module("myApp", []);
        app.controller('FormCtrl', function ($scope, $http) {

            var formData = {
                firstname: "default",
                emailaddress: "default",
                textareacontent: "default",
                gender: "default",
                member: false,
                file_profile: "default",
                file_avatar: "default"
            };

            $scope.save = function () {
                formData = $scope.form;
            };

            $scope.submitForm = function () {
                console.log("posting data....");
                formData = $scope.form;
                console.log(formData);
                //$http.post('form.php', JSON.stringify(data)).success(function(){/*success callback*/});
            };

        });
    </script>
    <form id="form1" runat="server">
    	
I am going through learning curve with AngularJs and I am finding that there are virtually no examples that serve real world use.

I am trying to get a clear understanding of how to submit a form with the most standard components and pass it on to a PHP file..

My fiddle.

Does anyone have any good examples on submitting simple, un-polluted, forms that would help me and probably numerous other Angularjs beginners..

When I say a clean form I am referring to something like this..

<div ng-app="myApp">

    <form name="saveTemplateData" action="#" ng-controller="FormCtrl" ng-submit="submitForm()">

        First name:    <br/><input type="text" ng-model="form.firstname">    <br/><br/>
        Email Address: <br/><input type="text" ng-model="form.emailaddress"> <br/><br/>

        <textarea rows="3" cols="25" ng-model="form.textareacontent"></textarea>

            <br/><br/>

        <input type="radio" ng-model="form.gender" value="female" />Female ...
        <input type="radio" ng-model="form.gender" value="male" />Male <br/>

            <br/><br/>

        <input type="checkbox" ng-model="form.member" value="5"/> Already a member

            <br/><br/>

        <input type="file" ng-model="form.file_profile" id="file_profile"><br/>
        <input type="file" ng-model="form.file_avatar" id="file_avatar">

            <br/><br/>

        <!-- <button ng-click="save()" >Save</button> -->
        <input type="submit" ngClick="Submit" >

    </form>

</div>
    </form>
</body>
</html>
