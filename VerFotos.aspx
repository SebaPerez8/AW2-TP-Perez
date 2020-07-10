<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="VerFotos.aspx.vb" Inherits="AW2_TP_Perez.VerFotos" MasterPageFile="~/Maestra.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div align="center">
      <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VER FOTOS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </h2>
          <asp:Image ID="imgFotos" runat="server" ImageUrl="~/FOTOS/01.jpg" Height="380px" Width="360px" />
          <br />
          <br />
          <asp:Label ID="lblApodo" runat="server" Font-Size="XX-Large"></asp:Label>
          <br />
      <br />
      <asp:ImageButton ID="imgEnamorado" runat="server" ImageUrl="~/EMOJIS/enamorado.png" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="imgEnojado" runat="server" ImageUrl="~/EMOJIS/enojado.png" Width="100px" />
&nbsp;<br />
   </div>
 
</asp:Content>