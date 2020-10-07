<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="WebformsTraining2020.modul07.WebUserControl1" %>
<div class="input-group mb-3">
    <asp:TextBox ID="TextBox1" runat="server" class="form-control"
       
        ></asp:TextBox>
    <div class="input-group-append">
        <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-outline-secondary" />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </div>
</div>
