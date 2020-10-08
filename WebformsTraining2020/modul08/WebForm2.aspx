<%@ Page Title="" Language="C#" MasterPageFile="~/modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsTraining2020.modul08.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:northwindConnectionString1 %>"
        SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
    <div class="list-group">
        <div class="list-group-item list-group-item-primary">Northwind Kunden</div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <a class="list-group-item list-group-item-action" 
                    href="WebForm3/<%#Eval("CustomerID") %>">
                    <div class="row">
                        <div class="col-1"> 
                            <span class='oi <%#(Eval("Country").ToString()=="Germany")?"oi-check":""%>'></span></div>
                        <div class="col-2"><%#Eval("CustomerID") %></div>
                        <div class="col-9"><%#Eval("CompanyName") %> </div>
                    </div>
                </a>
            </ItemTemplate>

        </asp:Repeater>

    </div>
</asp:Content>
