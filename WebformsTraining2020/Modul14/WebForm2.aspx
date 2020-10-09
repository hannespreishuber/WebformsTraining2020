<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsTraining2020.Modul14.WebForm2" %>
<%@ OutputCache Duration="5" VaryByParam="none"  %>
<%@ Register Src="~/Modul14/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%=DateTime.Now %>
            <hr />

            <uc1:WebUserControl1 runat="server" id="WebUserControl1" />
            <hr />
            <asp:Substitution ID="Substitution1" runat="server" MethodName="refreshme" />
        </div>
    </form>
</body>
</html>
