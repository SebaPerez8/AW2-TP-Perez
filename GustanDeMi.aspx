﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestra.Master" CodeBehind="GustanDeMi.aspx.vb" Inherits="AW2_TP_Perez.GustanDeMi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>GUSTAN DE MI</h2>
<p>
    <asp:GridView ID="Grilla" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="412px" AutoGenerateColumns="False" CssClass="grilla" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
            <asp:BoundField DataField="hora" HeaderText="hora" SortExpression="hora" />
            <asp:BoundField DataField="apodo" HeaderText="apodo" SortExpression="apodo" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CADENA %>" SelectCommand="SELECT M.fecha, M.hora, U.apodo 
    FROM MeGustan M
    INNER JOIN Usuarios U ON M.usuario=U.usuario
    WHERE M.legusta = @usuario and M.usuario NOT IN (SELECT legusta FROM MeGustan WHERE usuario = @usuario)">
        <SelectParameters>
            <asp:SessionParameter Name="usuario" SessionField="usuario" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
