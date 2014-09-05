<%@ Page Title="Filter" Language="C#" MasterPageFile="~/page.master" AutoEventWireup="true" CodeBehind="filter.aspx.cs" Inherits="AngularSamples.filter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <input type="text" ng-model="value" /><br />
    uppercase: {{value | uppercase}} <br />
    search in:
    <ul ng-repeat="item in [1,2,3,4,6,7] | filter:value">
        <li>{{item}}</li>
    </ul>
</asp:Content>
