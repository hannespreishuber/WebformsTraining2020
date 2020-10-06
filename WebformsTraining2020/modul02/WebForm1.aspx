<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="WebForm1.aspx.cs"
    Inherits="WebformsTraining2020.modul02.WebForm1"
    
    %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>noch ein toller title</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <%=DateTime.Now %>

        <b><%:MyProperty %></b>
    </form>
    <script runat="server">
        void hannes()
        {

        }
    </script>
</body>
</html>
