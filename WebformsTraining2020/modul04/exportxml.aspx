<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exportxml.aspx.cs" Inherits="WebformsTraining2020.modul04.exportxml" %>

   <table>
            <%foreach (var item in MyListe)
                {%>
            <tr>
                <td><%=item.Key %></td>
                <td><%=item.Value %></td>
            </tr>

            <%} %>
        </table>