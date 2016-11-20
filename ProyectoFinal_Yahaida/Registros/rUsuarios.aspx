<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="ProyectoFinal_Yahaida.Registros.rUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            border-radius: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: none;
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            border: 1px solid #d2d6de;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
        .auto-style2 {
            width: 304px;
        }
        .auto-style3 {
            width: 304px;
            text-align: right;
        }
        .auto-style4 {
            width: 94px;
        }
        .auto-style5 {
            width: 208px
        }
        .auto-style6 {
            display: block;
            padding: 4px;
            margin-bottom: 20px;
            line-height: 1.42857143;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            -webkit-transition: border .2s ease-in-out;
            -o-transition: border .2s ease-in-out;
            transition: border .2s ease-in-out;
            height: 20px;
        }
        </style>
</asp:Content>

<asp:Content  ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Registro de Usuarios
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
  <div class="col-xs-6 col-md-3">
    <a href="#" class="auto-style6">
        <asp:Image ID="ImgFoto" runat="server" />
    </a>
  </div>
  ...
</div>
    <div>
    <asp:FileUpload ID="FUFoto" runat="server" />
    
  </div>
    <br>
       <!--id -->
      <div class="form-group">
    <table class="nav-justified">
        <tr>
            <td class="auto-style5">
      <label for="Id" class="auto-style4">Id</label></td>
            <td>
       
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
    
        <asp:TextBox ID="TextBoxId"   CssClass="auto-style1"   runat="server" placeholder="Id"  Width="162px" ReadOnly="True" TextMode="Number" Height="20px"></asp:TextBox>
       
            </td>
            <td>
       
        <asp:Button ID="BtnBuscar" runat="server" CssClass="btn btn-info" Text="Buscar" Height="35px" Width="114px" OnClick="BtnBuscar_Click" />
            
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
        </div>

    
      
   
    <!--fecha -->
  <div class="form-group">
    <label for="fecha">Fecha</label>
    <asp:TextBox ID="txtFecha"  CssClass="auto-style1"  runat="server" placeholder="fecha" TextMode="Date" Width="162px"></asp:TextBox>
      </div>
     
     <!--Nombres -->
    <div class="form-group">
    <label for="nombres" >Nombres</label>
        <asp:TextBox ID="txtNombres"  CssClass="form-control"  runat="server" placeholder="nombres"></asp:TextBox>
  </div>
       <!--Usuario -->
    <div class="form-group">
    <label for="usuario">Usuario</label>
   <asp:TextBox ID="txtUsuario"   CssClass="form-control"  runat="server" placeholder="usuario"></asp:TextBox>
         </div>

         <!--Email -->
    <div class="form-group">
    <label for="email">Email</label>
     <asp:TextBox ID="txtEmail"  CssClass="form-control"  runat="server" placeholder="email" TextMode="Email"></asp:TextBox>
    </div>

     <!--Contrasena -->
  <div class="form-group">
    <label for="contrasena">Contraseña</label>
       <asp:TextBox ID="txtContrasena" CssClass="form-control"  runat="server" placeholder="contrasena" TextMode="Password"></asp:TextBox>
  </div>
      <!-- repetir Contrasena -->
    <div class="form-group">
         <label for="Repcontrasena">Repetir Contraseña</label>
         <asp:TextBox ID="txtRepContrasena" CssClass="form-control"  runat="server" placeholder="Repcontrasena" TextMode="Password"></asp:TextBox>
      </div>

  
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

     <div>

        <!--Botones -->
     <table style="width: 100%;">
          
            <tr>
                <td class="text-left"><asp:Button  type="button" ID="btnNuevo" runat="server" CssClass="btn btn-warning" text="Nuevo" Height="48px" OnClick="btnNuevo_Click" Width="108px"/></td>
                <td class="auto-style2"><asp:Button  type="button" ID="btnGuardar" runat="server" CssClass="btn btn-primary" text="Guardar" OnClick="guardar_Click" Height="47px" Width="110px" style="margin-left: 0"/></td>
                <td class="auto-style3">
                    <asp:Button ID="BtnEliminar" runat="server"  CssClass="btn btn-danger" Text="Eliminar" Height="48px" OnClick="ButtonEliminar_Click" Width="108px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>

    
</asp:Content>
