<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="cCobrosDetalle.aspx.cs" Inherits="ProyectoFinal_Yahaida.Consultas.cCobrosDetalla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Consulta Cobros de mensualidad
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <strong>
<asp:Label ID="Label1" runat="server" Text="Buscar por:" CssClass="auto-style1"></asp:Label>
</strong>
<asp:DropDownList ID="DropDFiltroBuscarCobrosDetalle" runat="server" Height="28px" Width="168px">
    <asp:ListItem Value="IdCobrosDetalle">Id Cobros</asp:ListItem>
    <asp:ListItem Value="IdCobros">Id</asp:ListItem>
    <asp:ListItem Value="FechaMens">Fecha</asp:ListItem>
    <asp:ListItem>FormaDePago</asp:ListItem>
    <asp:ListItem>Descuento</asp:ListItem>
    <asp:ListItem>Descripcion</asp:ListItem>
</asp:DropDownList>
<asp:TextBox ID="TxtFiltroBuscar" runat="server" Width="200px"></asp:TextBox>
<asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-info" />

    </div>
    <asp:GridView ID="GridViewCobrosDetalle"  Width="90%" runat="server"></asp:GridView>

     <div> <asp:HyperLink ID="ImprimirHyperLink" runat="server" NavigateUrl="~/ReportesForm/rvCobrosDetalle.aspx">Rerporte</asp:HyperLink></div>
</asp:Content>
