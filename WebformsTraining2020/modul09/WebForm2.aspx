<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsTraining2020.modul09.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title><link href="../Content/bootstrap.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="input-group mb-3">
        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
        <div class="input-group-append">
            <asp:Button ID="Button1" runat="server" Text="Button"
                OnClick="Button1_Click"
                class="btn btn-outline-secondary" />
        </div>
    </div>
      <div class="list-group">
        <div class="list-group-item list-group-item-primary">Northwind Kunden</div>
        <asp:ListView ID="Repeater1" runat="server"
            ItemType="WebformsTraining2020.modul09.Customers"
            SelectMethod="Repeater1_GetData"
             >
            <ItemTemplate>
                <div class="list-group-item ">
                    <div class="row">
                        <div class="col-2"><%#Item.CustomerID%></div>
                        <div class="col-8"><%# Item.CompanyName %> </div>
                        <div class="col-1">
                            <a href="WebForm3/<%#Item.CustomerID%>">
                                <span class="oi oi-brush"></span></a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <EmptyDataTemplate>
                 <div class="list-group-item list-group-item-warning">keine Daten</div>
            </EmptyDataTemplate>
        </asp:ListView>
    </div>
    </form>
</body>
</html>
