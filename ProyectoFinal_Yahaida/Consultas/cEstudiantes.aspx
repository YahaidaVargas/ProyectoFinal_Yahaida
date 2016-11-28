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
    <asp:GridView ID="GvEstudiantes" runat="server" Width="90%" AutoGenerateColumns="False">
</asp:GridView>

     <asp:HyperLink ID="ImprimirHyperLink" runat="server" NavigateUrl="~/ReportesForm/rvEstudiantes.aspx">Rerporte</asp:HyperLink>
</asp:Content>
