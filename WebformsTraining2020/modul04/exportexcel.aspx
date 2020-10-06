<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exportexcel.aspx.cs" Inherits="WebformsTraining2020.modul04.exportexcel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <%foreach (var item in MyListe)
                {%>
            <tr>
                <td><%=item.Key %></td>
                <td><%=item.Value %></td>
            </tr>

            <%} %>
        </table>
    </form>
</body>
</html>
