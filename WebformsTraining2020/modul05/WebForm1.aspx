<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsTraining2020.modul05.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="löschen" 
                OnClientClick="return confirm('Wirklich?');"
                OnClick="Button1_Click" />

            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
            <div runat="server" id="label1"></div>
        </div>
    </form>
</body>
</html>
