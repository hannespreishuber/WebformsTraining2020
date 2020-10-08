<%@ Page Title="" Language="C#" MasterPageFile="~/modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebformsTraining2020.modul09.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="accordion" id="accordionExample">

        <asp:ListView ID="Repeater1" runat="server"
            ItemType="WebformsTraining2020.modul09.Customers"
            SelectMethod="Repeater1_GetData">
            <ItemTemplate>
                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-left collapsed"
                                type="button" data-toggle="collapse"
                                data-target="#collapse<%#Item.CustomerID %>">
                                <%#Item.CustomerID %>
                                <%#Item.CompanyName %>
                            </button>
                        </h2>
                    </div>
                    <div id="collapse<%#Item.CustomerID %>" class="collapse"
                        data-parent="#accordionExample">
                        <div class="card-body">
                            <ul class="list-group">
                                <asp:Repeater runat="server"
                                    ItemType="WebformsTraining2020.modul09.Orders"
                                    DataSource="<%#Item.Orders %>">
                                    <ItemTemplate>
                                        <li class="list-group-item small">
                                            <%#Item.OrderDate.Value.ToString("dd.MM.yy") %>
                                            <%#Item.Order_Details.Count() %>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </div>
            </ItemTemplate>

        </asp:ListView>
    </div>
</asp:Content>
