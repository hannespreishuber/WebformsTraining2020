<%@ Page Title="" Language="C#" MasterPageFile="~/modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebformsTraining2020.modul08.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="list-group-item ">

                    <div class="row">
                        <div class="col-1">
                            <asp:LinkButton ID="LinkButton1" runat="server">
                             <span class="oi oi-delete"></span></asp:LinkButton>
                        
                        </div>
                        <div class="col-2"><%#Eval("ID") %></div>
                        <div class="col-8"><%#Eval("Firmenname") %> </div>
                         <div class="col-1">
                            
                            <a href="WebForm3/<%#Eval("ID") %>">
                                <span class="oi oi-brush"></span></a>
                        </div>

                    </div>
                </div>
            </ItemTemplate>

        </asp:Repeater>

    </div>
</asp:Content>
