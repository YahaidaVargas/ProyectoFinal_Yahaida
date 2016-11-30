<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="cUsuarios.aspx.cs" Inherits="ProyectoFinal_Yahaida.Consultas.cUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Consulta Usuarios
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <strong>

    <asp:Label ID="Label1" runat="server" Text="Buscar por:" CssClass="auto-style1"></asp:Label>
    </strong>

    <asp:DropDownList ID="DropDFiltroBuscarUser" runat="server" Height="28px" Width="168px">
        <asp:ListItem Value="IdUsuario">Id</asp:ListItem>
        <asp:ListItem>Usuario</asp:ListItem>
        <asp:ListItem>Email</asp:ListItem>
        <asp:ListItem>Nivel</asp:ListItem>
    </asp:DropDownList>

    <asp:TextBox ID="TxtFiltroBuscar" runat="server" Width="200px" Height="22px"></asp:TextBox>

    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" CssClass="btn btn-info" />

   <div>


       <asp:GridView ID="GvUsuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" Width="90%" >
           <Columns>
               <asp:BoundField DataField="IdUsuario" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="IdUsuario" />
               <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
               <asp:BoundField DataField="Nivel" HeaderText="Nivel" SortExpression="Nivel" />
               <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
               <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
               <asp:BoundField DataField="Direccion" HeaderText="Direccion" />
               <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
               <asp:BoundField DataField="Celular" HeaderText="Celular" />
               <asp:BoundField DataField="Cedula" HeaderText="Cedula" />
               <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
               <asp:BoundField DataField="Materia" HeaderText="Materia" />
               <asp:HyperLinkField DataNavigateUrlFields="IdUsuario" DataNavigateUrlFormatString="/Registros/rUsuarios.aspx?id={0}" HeaderText="Seleccionar" Text="Selecciona">
               <ItemStyle CssClass="btn btn-default btn-xs" />
               </asp:HyperLinkField>
           </Columns>
           <HeaderStyle BackColor="#0099FF" BorderColor="#0099FF" />
       </asp:GridView>
       


   </div>

         <asp:HyperLink ID="ImprimirHyperLink" runat="server" NavigateUrl="~/ReportesForm/rvUsuarios.aspx">Rerporte</asp:HyperLink>

    </div>

    </asp:Content>
