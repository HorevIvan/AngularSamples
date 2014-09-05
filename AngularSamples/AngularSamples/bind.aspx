<%@ Page Title="Bind" Language="C#" MasterPageFile="~/page.master" AutoEventWireup="true" CodeBehind="bind.aspx.cs" Inherits="AngularSamples.bind" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <input type="text" ng-model="Model" /><br />
    Declarative: {{Model}} <br />
    Bind: <span ng-bind="Model" />
</asp:Content>
