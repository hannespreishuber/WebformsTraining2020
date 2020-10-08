<%@ Page Title="" Language="C#" MasterPageFile="~/modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsTraining2020.modul09.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="list-group">
        <div class="list-group-item list-group-item-primary">Northwind Kunden</div>
        <asp:Repeater ID="Repeater1" runat="server"
            ItemType="WebformsTraining2020.modul08.Kunden"
            SelectMethod="Repeater1_GetData"
             >
            <ItemTemplate>
                <div class="list-group-item ">
                    <div class="row">
                        <div class="col-2"><%#Item.ID%></div>
                        <div class="col-8"><%# Item.Firmenname %> </div>
                        <div class="col-1">
                            <a href="WebForm3/<%#Item.ID%>">
                                <span class="oi oi-brush"></span></a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
