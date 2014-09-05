<%@ Page Title="Repeat" Language="C#" MasterPageFile="~/page.master" AutoEventWireup="true" CodeBehind="repeat.aspx.cs" Inherits="AngularSamples.repeat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function controller($scope) {
            $scope.array = [142, 232, 353, 264, 156];
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div ng-controller="controller">
        <div ng-repeat="item in array">
            <div>
               [{{item}}]
            </div>
        </div>
    </div>
</asp:Content>
