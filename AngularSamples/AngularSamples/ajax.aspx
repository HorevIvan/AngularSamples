<%@ Page Title="Ajax" Language="C#" MasterPageFile="~/page.master" AutoEventWireup="true" CodeBehind="ajax.aspx.cs" Inherits="AngularSamples.ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td { vertical-align: top; }
    </style>
    <script> 
        function controller($scope, $http) {

            var result = function (message) { document.getElementById('message').innerHTML = message; }

            $http({
                method: 'POST',
                url: '/menu_service.asmx/GetItems',
                data: {},
            })
            .success(function (response) {
                result("success");
                $scope.items = response.d;
            })
            .error(function (response) {
                result(response.Message);
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <table style="width:100%;"> 
        <tr>
            <td style="width:30%;">
                <div ng-controller="controller">
                    <ul ng-repeat="item in items">
                        <li>
                            {{item.Name}}
                        </li>
                    </ul>
                </div>
            </td>
            <td>
                Message:
                <span id="message" />
            </td>
        </tr>
    </table>
</asp:Content>
