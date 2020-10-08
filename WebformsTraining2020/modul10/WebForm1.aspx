<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsTraining2020.modul10.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1"
                ErrorMessage="da muss was rein"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TextBox2" runat="server">            </asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                ControlToValidate="TextBox2" 
                runat="server" ErrorMessage="email bitte"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                  <br />

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="TextBox2"
                ErrorMessage="da muss was rein"></asp:RequiredFieldValidator>
 
            <br />
 
            <asp:Button ID="Button1" runat="server" Text="Button"  OnClick="Button1_Click"/>
             </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
