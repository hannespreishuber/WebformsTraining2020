<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsTraining2020.modul15.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../lib/jquery-ui-bootstrap/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="../lib/jquery-ui-bootstrap/css/custom-theme/jquery-ui-1.10.0.custom.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
      <div class="container ">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
  
    </form>    
    <script src="../lib/jquery-ui-bootstrap/assets/js/jquery-1.9.0.min.js"></script>
    <script src="../lib/jquery-ui-bootstrap/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="../lib/jquery-ui-bootstrap/assets/js/bootstrap.min.js"></script>
    <script>
        $("#<%=TextBox1.ClientID%>").autocomplete({
            source: function (request, response) {
                var suche = $('#<%=TextBox1.ClientID%>').val();
              
                $.ajax({
                    type: "get",
                    url: "webservice1.asmx/GetOrt?suche="+suche,
                    contentType: "application/json;charset=utf-8",
                   
                    dataType: "json",

                    success: function (data) {
                        response($.map(data.d, function (item) {
                            return {value: item.PLZ + ":" + item.Ort}
                        }))

                    },

                   
                    error: function (request, status, err) {
                        alert(request.responseText);
                    }
                })
            },
            minLength: 3
        });
    </script>
</body>
</html>
