<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestra.Master" CodeBehind="NosGustamos.aspx.vb" Inherits="AW2_TP_Perez.NosGustamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2> NOS GUSTAMOS</h2>
    
&nbsp;<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="516px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="apodo" HeaderText="apodo" SortExpression="apodo" />
                <asp:BoundField DataField="barrio" HeaderText="barrio" SortExpression="barrio" />
                <asp:BoundField DataField="celular" HeaderText="celular" SortExpression="celular" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CADENA %>" SelectCommand="SELECT U.apodo, B.nombre AS barrio, U.celular
FROM MeGustan M
INNER JOIN Usuarios U ON U.usuario = M.usuario
INNER JOIN Barrios B ON U.barrio = B.barrio
WHERE M.legusta=@usuario AND M.usuario IN(SELECT legusta FROM MeGustan WHERE usuario=@usuario)">
        <SelectParameters>
            <asp:SessionParameter Name="usuario" SessionField="usuario" />
        </SelectParameters>
    </asp:SqlDataSource>
        
</asp:Content>
