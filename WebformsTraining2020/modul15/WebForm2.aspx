<%@ Page Title="" Language="C#" MasterPageFile="~/modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsTraining2020.modul15.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col">
            <input id="text1" class="form-control" />
            <button type="button" class="btn btn-outline-danger" onclick="send();">send</button>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <ul id="chatliste" class="list-group">
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="ScriptHolder" runat="server">
    <script src="../Scripts/jquery.signalR-2.4.1.js"></script>
    <script src="../signalR/Hubs"></script>
    <script>
        var chat = $.connection.myHub1;
        $.connection.hub.start().done(function () {
            $("#chatliste").append("<li>connected....</li>");
        });
        function send() {

            chat.server.sendMsg($("#text1").val());
        }
        chat.client.updateListe = function (data) {
            $("#chatliste").append("<li>"+data+"</li>");
        };
    </script>
</asp:Content>
