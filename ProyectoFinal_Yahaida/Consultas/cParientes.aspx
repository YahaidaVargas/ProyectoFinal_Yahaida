<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="cParientes.aspx.cs" Inherits="ProyectoFinal_Yahaida.Consultas.cParientes" %>
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
    <asp:GridView ID="GridViewPariente" Width="90%" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
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

     <asp:HyperLink ID="ImprimirHyperLink" runat="server" NavigateUrl="~/ReportesForm/rvParientes.aspx">Rerporte</asp:HyperLink>
</asp:Content>
