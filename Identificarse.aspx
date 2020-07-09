<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Identificarse.aspx.vb" Inherits="AW2_TP_Perez.Identificarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" class="identificarse">
        <h2>BIENVENIDO, COMPLETAR DATOS PARA INGRESAR A SITIO</h2> 
        <div>
            E-EMAIL<br />
            <asp:TextBox ID="txtEmail" runat="server" Width="330px"></asp:TextBox>
            <br />
            <br />
            CONTRASEÑA<br />
            <asp:TextBox ID="txtPalabra" runat="server" Width="330px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="bIngresar" runat="server" Text="INGRESAR" Width="144px" /> 
        </div>
    </form>
</body>
</html>
