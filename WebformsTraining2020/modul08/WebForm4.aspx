<%@ Page Title="" Language="C#" MasterPageFile="~/modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebformsTraining2020.modul08.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="list-group">
        <div class="list-group-item list-group-item-primary">Northwind Kunden</div>
        <asp:Repeater ID="Repeater1" runat="server" >
            <ItemTemplate>
                <a class="list-group-item list-group-item-action" 
                    href="WebForm3/<%#Eval("ID") %>">
                    <div class="row">
                            <div class="col-2"><%#Eval("ID") %></div>
                        <div class="col-9"><%#Eval("Firmenname") %> </div>
                    </div>
                </a>
            </ItemTemplate>

        </asp:Repeater>

    </div>
</asp:Content>
