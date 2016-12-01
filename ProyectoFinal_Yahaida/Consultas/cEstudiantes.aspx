<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="cEstudiantes.aspx.cs" Inherits="ProyectoFinal_Yahaida.Consultas.cEstudiantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Consulta Estudiantes
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <strong>
<asp:Label ID="Label1" runat="server" Text="Buscar por:" CssClass="auto-style1"></asp:Label>
</strong>
<asp:DropDownList ID="DropDFiltroBuscarEstudiante" runat="server" Height="28px" Width="168px">
    <asp:ListItem Value="IdEstudiantes">Id</asp:ListItem>
    <asp:ListItem>Nombre</asp:ListItem>
    <asp:ListItem>Apellido</asp:ListItem>
    <asp:ListItem>Matricula</asp:ListItem>
</asp:DropDownList>
<asp:TextBox ID="TxtFiltroBuscar" runat="server" Width="200px"></asp:TextBox>
<asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-info" />
    </div>
    <asp:GridView ID="GvEstudiantes" runat="server" Width="90%" AutoGenerateColumns="False" CssClass="table" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="IdEstudiantes" HeaderText="ID" Visible="False"></asp:BoundField>
            <asp:BoundField DataField="Matricula" HeaderText="Matricula" />
            <asp:BoundField DataField="estudiante" HeaderText="Estudiante" />
            <asp:BoundField DataField="fechanaciemiento" HeaderText="Fecha de Naciemiento" />
            <asp:BoundField DataField="Grado" HeaderText="Grado" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
            <asp:HyperLinkField DataNavigateUrlFields="IdEstudiantes" DataNavigateUrlFormatString="~/Registros/rEstudiantes.aspx?id={0}" HeaderText="SELECCIONAR" Text="Seleccionar">
            <ControlStyle CssClass="btn btn-info btn-block" />
            </asp:HyperLinkField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>

     <asp:HyperLink ID="ImprimirHyperLink" runat="server" NavigateUrl="~/ReportesForm/rvEstudiantes.aspx">Rerporte</asp:HyperLink>
</asp:Content>
