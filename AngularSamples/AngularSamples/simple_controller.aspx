<%@ Page Title="Simple controller" Language="C#" MasterPageFile="~/page.master" AutoEventWireup="true" CodeBehind="simple_controller.aspx.cs" Inherits="AngularSamples.simple_controller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function userController($scope) {
            $scope.firstName = "Ivan";
            $scope.lastName = "Horev";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div  ng-controller="userController">
        First Name: <input type="text" ng-model="firstName"><br>
        Last Name: <input type="text" ng-model="lastName"><br>
        <br>
        Full Name: {{firstName + " " + lastName}}
    </div>
</asp:Content>
