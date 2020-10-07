<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebformsTraining2020.modul05.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Seite 2</h1>
    <form id="form1" runat="server">
        <div>
            <%=Session["eingabe"] %>
        </div>
    </form>
</body>
</html>
