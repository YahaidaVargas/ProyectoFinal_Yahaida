<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="cMaterias.aspx.cs" Inherits="ProyectoFinal_Yahaida.Consultas.cMaterias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Consulta de materias
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <strong>
<asp:Label ID="Label1" runat="server" Text="Buscar por:" CssClass="auto-style1"></asp:Label>
</strong>
<asp:DropDownList ID="DropDFiltroBuscarMaterias" runat="server" Height="28px" Width="168px">
    <asp:ListItem Value="IdMaterias">Id</asp:ListItem>
    <asp:ListItem Value="IdEmpleado">Id Empleado</asp:ListItem>
    <asp:ListItem>Materias</asp:ListItem>
</asp:DropDownList>
<asp:TextBox ID="TxtFiltroBuscar" runat="server" Width="200px"></asp:TextBox>
<asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-info" />
    </div>
    <asp:GridView ID="GridViewMaterias" Width="90%"  runat="server"></asp:GridView>

</asp:Content>
