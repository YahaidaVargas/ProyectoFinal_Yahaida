<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="cCursos.aspx.cs" Inherits="ProyectoFinal_Yahaida.Consultas.cCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Consulta Cursos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    <strong>
<asp:Label ID="Label1" runat="server" Text="Buscar por:" CssClass="auto-style1"></asp:Label>
</strong>
<asp:DropDownList ID="DropDFiltroBuscarCursos" runat="server" Height="28px" Width="168px">
    <asp:ListItem Value="IdCursos">Id</asp:ListItem>
    <asp:ListItem>Grados</asp:ListItem>
    <asp:ListItem>Nivel</asp:ListItem>
</asp:DropDownList>
<asp:TextBox ID="TxtFiltroBuscar" runat="server" Width="200px"></asp:TextBox>
<asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-info" Height="37px" OnClick="btnBuscar_Click" />
         <br />
    </div>
    <asp:GridView ID="GridViewCursos" Width="90%" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" CssClass="table">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="IdCursos" HeaderText="Id" />
            <asp:BoundField DataField="Grados" HeaderText="Grados" />
            <asp:BoundField DataField="Nivel" HeaderText="Nivel" />
            <asp:BoundField DataField="Cupo" HeaderText="Cupos" />
            <asp:HyperLinkField HeaderText="Selecciona" Text="Selecciona" DataNavigateUrlFields="IdCursos" DataNavigateUrlFormatString="~/Registros/rCursos.aspx?id={0}" >
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

    <asp:HyperLink ID="ImprimirHyperLink" runat="server" NavigateUrl="~/ReportesForm/rvCursos.aspx">Rerporte</asp:HyperLink>
</asp:Content>
