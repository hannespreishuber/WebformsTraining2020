<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsTraining2020.modul03.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Class="bg-info"  >
                yxcxcvxc
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Webforms Button" 
                    OnClientClick="updateui();return false;"/>
            </asp:Panel>


        </div>
    </form>
    <button onclick="updateui();">html Button</button>
    <script>
        function updateui() {
            console.log("bind da");
            document.getElementById('<%=Panel1.ClientID%>').style.backgroundColor =
                document.getElementById('<%=TextBox1.ClientID%>').value;
    
        }
    </script>
</body>
</html>
