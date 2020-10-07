<%@ Page Title="" Language="C#" MasterPageFile="~/modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsTraining2020.modul07.WebForm1" %>

<%@ Register Src="~/modul07/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Content</h1>
    <uc1:WebUserControl1 runat="server" id="WebUserControl1" Placeholder="Da gehört text rein"/>
</asp:Content>
