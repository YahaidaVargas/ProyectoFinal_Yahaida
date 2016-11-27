<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="cProfesores.aspx.cs" Inherits="ProyectoFinal_Yahaida.Consultas.cProfesores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Consulta Profesores
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <strong>
    <asp:Label ID="Label1" runat="server" Text="Buscar por:" CssClass="auto-style1"></asp:Label>
    </strong>
    <asp:DropDownList ID="DropDFiltroBuscarUser" runat="server" Height="28px" Width="168px">
        <asp:ListItem Value="IdUsuario">Id</asp:ListItem>
        <asp:ListItem>Nombres</asp:ListItem>
        <asp:ListItem>Direccion</asp:ListItem>
         <asp:ListItem>Cedula</asp:ListItem>

    </asp:DropDownList>
    <asp:TextBox ID="TxtFiltroBuscar" runat="server" Width="200px"></asp:TextBox>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-info" />

    <asp:GridView ID="GvProfesores" runat="server" Width="90%"></asp:GridView>

</asp:Content>
