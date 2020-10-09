<%@ Page Title="" Language="C#" MasterPageFile="~/modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsTraining2020.modul12.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span id="label1"></span>
    <button type="button" onclick="Zeit()">Zeit?</button>


    <script>
        function Zeit() {
            $.ajax({
                type: "GET",
                url: "Zeit",
                success: function (data) {
                    $('#label1').text(data);
                }
            });

        }
    </script>
</asp:Content>
