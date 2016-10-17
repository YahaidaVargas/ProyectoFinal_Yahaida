<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="ProyectoFinal_Yahaida.Registros.rUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content  ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
  Registro de Usuarios
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--fecha -->
  <div class="form-group">
    <label for="fecha">Fecha</label>
    <asp:TextBox ID="fecha"  type="date" CssClass="form-control"  runat="server" placeholder="fecha"></asp:TextBox>
     
  </div>
     <!--Nombres -->
    <div class="form-group">
    <label for="nombres" >Nombres</label>
        <asp:TextBox ID="nombres"  type="text" CssClass="form-control"  runat="server" placeholder="nombres"></asp:TextBox>
  </div>
       <!--Usuario -->
    <div class="form-group">
    <label for="usuario">Usuario</label>
   <asp:TextBox ID="usuario"  type="text" CssClass="form-control"  runat="server" placeholder="usuario"></asp:TextBox>
         </div>

         <!--Email -->
    <div class="form-group">
    <label for="email">Email</label>
     <asp:TextBox ID="email"  type="email" CssClass="form-control"  runat="server" placeholder="email"></asp:TextBox>
    </div>

     <!--Contrasena -->
  <div class="form-group">
    <label for="contrasena">Contraseña</label>
       <asp:TextBox ID="contrasena"  type="password" CssClass="form-control"  runat="server" placeholder="contrasena"></asp:TextBox>
  </div>

  <div>
        <!--NIvles -->
      <div>
          <label for="niveles">Niveles</label>
           <asp:DropDownList ID="DdNiveles" CssClass="form-control" runat="server">
               <asp:ListItem>Administrador</asp:ListItem>
               <asp:ListItem>Secretaria</asp:ListItem>
               <asp:ListItem>Profesor</asp:ListItem>
               <asp:ListItem>Estudiante</asp:ListItem>
          </asp:DropDownList>
          <br />
      </div>

        <!--Botones -->
     <table style="width: 100%;">
          
            <tr>
                <td><asp:Button  type="button" ID="guardar" runat="server" CssClass="btn btn-primary" text="Guardar"/></td>
                <td><asp:Button  type="button" ID="editar" runat="server" CssClass="btn btn-danger" text="Editar"/></td>
                <td><asp:Button  type="button" ID="eliminar" runat="server" CssClass="btn btn-success" text="Eliminar"/></td>
            </tr>
        </table>


     
    
  </div>

  

</asp:Content>
