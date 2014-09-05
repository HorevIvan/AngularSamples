<%@ Page Title="Controller function" Language="C#" MasterPageFile="~/page.master" AutoEventWireup="true" CodeBehind="controller_function.aspx.cs" Inherits="AngularSamples.controller_function" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function controller($scope) {
            $scope.property1;
            $scope.property2;
            $scope.sum = function () { return ($scope.property1 + $scope.property2); }
            $scope.mul = function () { return ($scope.property1 * $scope.property2); }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div ng-controller="controller">
        Number 1: <input type="text" ng-model="property1" ng-init="property1=0" /><br />
        Number 2: <input type="text" ng-model="property2" ng-init="property2=0" /><br />
        {{property1}} + {{property2}} = <span ng-bind="sum()" /><br />
        {{property1}} * {{property2}} = <span ng-bind="mul()" /><br />
    </div>
</asp:Content>
