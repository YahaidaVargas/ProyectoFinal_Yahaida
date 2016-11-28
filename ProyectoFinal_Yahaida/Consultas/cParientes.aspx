﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="cParientes.aspx.cs" Inherits="ProyectoFinal_Yahaida.Consultas.cParientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Consulta Parientes
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    <strong>
<asp:Label ID="Label1" runat="server" Text="Buscar por:" CssClass="auto-style1"></asp:Label>
</strong>
<asp:DropDownList ID="DropDFiltroBuscarPariete" runat="server" Height="28px" Width="168px">
    <asp:ListItem Value="IdParientes">Id</asp:ListItem>
    <asp:ListItem>Nombres</asp:ListItem>
    <asp:ListItem>Parentesco</asp:ListItem>
    <asp:ListItem>Profesion</asp:ListItem>
</asp:DropDownList>
<asp:TextBox ID="TxtFiltroBuscar" runat="server" Width="200px"></asp:TextBox>
<asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-info" />
    </div>
    <asp:GridView ID="GridViewPariente" Width="90%" runat="server"></asp:GridView>

     <asp:HyperLink ID="ImprimirHyperLink" runat="server" NavigateUrl="~/ReportesForm/rvParientes.aspx">Rerporte</asp:HyperLink>
</asp:Content>
