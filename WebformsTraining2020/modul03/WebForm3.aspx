<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebformsTraining2020.modul03.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" 
                AutoPostBack="true">
                <asp:ListItem Value="1">eins</asp:ListItem>
                <asp:ListItem Value="2">zwei</asp:ListItem>
                <asp:ListItem Value="3">drei</asp:ListItem>
                <asp:ListItem Value="4">vuire</asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
