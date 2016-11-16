<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="cUsuarios.aspx.cs" Inherits="ProyectoFinal_Yahaida.Consultas.cUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <strong>

    <asp:Label ID="Label1" runat="server" Text="Buscar por:" CssClass="auto-style1"></asp:Label>
    </strong>

    <asp:DropDownList ID="DropDFiltroBuscarUser" runat="server" Height="16px" Width="168px">
        <asp:ListItem Value="IdUsuario">Id</asp:ListItem>
        <asp:ListItem>Nombres</asp:ListItem>
        <asp:ListItem>Usuario</asp:ListItem>
        <asp:ListItem>Email</asp:ListItem>
    </asp:DropDownList>

    <asp:TextBox ID="TxtFiltroBuscar" runat="server" Width="200px"></asp:TextBox>

    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />

    <div class="well">
        <asp:Repeater ID="RpcUsuarios" runat="server">
             <HeaderTemplate>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th><th>Fecha</th><th>Nombres</th><th>Usuario</th><th>Email</th>
                                </tr>
                            </thead>
                    </HeaderTemplate>

                 <ItemTemplate>
                        <tbody>
                            <tr>
                                <td><%# Eval("IdUsuario")%></td><td><%# Eval("Fecha")%></td><td><%# Eval("Nombres")%></td><td><%# Eval("Usuario")%></td><td><%# Eval("Email")%></td>
                            </tr>
                        </tbody>
                    </ItemTemplate>

             <FooterTemplate>
                        </table>
                    </FooterTemplate>
               

        </asp:Repeater>


    </div>

    </asp:Content>
