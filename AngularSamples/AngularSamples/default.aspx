<%@ Page Title="Bind from input" Language="C#" MasterPageFile="~/page.master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="AngularSamples._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>Hello {{name}}!</h2>
    Enter name here &#8594;
    <input type="text" ng-model="name" ng-init="name='Ivan'" />
</asp:Content>
