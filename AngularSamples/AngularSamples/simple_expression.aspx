<%@ Page Title="Simple expression" Language="C#" MasterPageFile="~/page.master" AutoEventWireup="true" CodeBehind="simple_expression.aspx.cs" Inherits="AngularSamples.simple_expression" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div>
        ( 5 + 7 ) * 9 = {{ ( 5 + 7 ) * 9 }}
    </div>
</asp:Content>
