<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="AngularSamples.Menu" %>
<script>
    function menuController($scope, $http) {
        $http({
            method: 'POST',
            url: '/menu_service.asmx/GetItems',
            data: {},
        })
        .success(function (response) {
            $scope.items = response.d;
        });
    }
</script>
<div ng-controller="menuController">
    |<span ng-repeat="item in items">
        <a href="{{item.Path}}">{{item.Name}}</a> |
    </span>
</div>