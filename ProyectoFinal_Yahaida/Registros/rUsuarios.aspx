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
        .auto-style7 {
        width: 280px;
    }
        </style>
</asp:Content>

<asp:Content  ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Registro de Usuarios
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <div class="row">
                <!--NIvles -->
      <div>
          <label for="niveles">Niveles</label>
           <asp:DropDownList ID="DdNiveles" CssClass="form-control" runat="server" OnSelectedIndexChanged="DdNiveles_SelectedIndexChanged" AutoPostBack="True">
               <asp:ListItem>Administrador</asp:ListItem>
               <asp:ListItem>Secretaria</asp:ListItem>
               <asp:ListItem>Profesor</asp:ListItem>
          </asp:DropDownList>
          <br />
      </div>

  
    
    
       <!--id -->
      <div class="form-group">
    <table class="nav-justified">
        <tr>
            <td class="auto-style5">
      <label for="Id" class="auto-style4">Id</label></td>
            <td class="auto-style7">
       
                &nbsp;</td>
            <td>
       
                <div class="col-xs-6 col-md-3">
                    <a class="auto-style6" href="#">
                    <asp:Image ID="ImgFoto" runat="server" />
                    </a>
                </div>
                ... </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
    
        <asp:TextBox ID="TextBoxId"   CssClass="auto-style1"   runat="server" placeholder="Id"  Width="162px" ReadOnly="True" TextMode="Number" Height="20px"></asp:TextBox>
       
            </td>
            <td class="auto-style7">
       
                <a href="../Consultas/cUsuarios.aspx" class="btn btn-info">Buscar</a>
        
            
            </td>
            <td>
       
                <div>
                    <asp:FileUpload ID="FUFoto" runat="server" />
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
        </div>

    
      
  
     
     <!--Nombres -->
    <div class="form-group">
    <label for="nombres" >Nombre</label>
        <asp:TextBox ID="txtNombres"  CssClass="form-control" runat="server" placeholder="nombres"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Se Requiere el Nombre Completo del Usuario" CssClass="label label-danger" ControlToValidate="txtNombres" TabIndex="1"></asp:RequiredFieldValidator>
      
  </div>

     <!--Apellido-->
  <div class="form-group">
    <label for="Apellido">Apellido</label>
    <asp:TextBox ID="txtApellido"  CssClass="form-control"  runat="server" placeholder="Apellido"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorFecha" runat="server" ErrorMessage="Debe ingresar el apellido" ControlToValidate="txtApellido" CssClass="label label-danger" TabIndex="2"></asp:RequiredFieldValidator>
      </div>

    
     <!--Direccion-->
  <div class="form-group">
    <label for="Direccion">Direccion</label>
    <asp:TextBox ID="TextBoxDireccion"  CssClass="form-control"  runat="server" placeholder="Direccion"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar la Direccion" ControlToValidate="TextBoxDireccion" CssClass="label label-danger" TabIndex="3"></asp:RequiredFieldValidator>
      </div>

    <!--Telefono-->
  <div class="form-group">
    <label for="Telefono">Telefono</label>
    <asp:TextBox ID="TextBoxTelefono"  CssClass="form-control"  runat="server" placeholder="Telefono"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar un telefono" CssClass="label label-danger" ControlToValidate="TextBoxTelefono"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Esto no es un numero de telefono" ControlToValidate="TextBoxTelefono" CssClass="label label-warning" EnableTheming="True" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
       </div>

     <!--Celular-->
  <div class="form-group">
    <label for="Celular">Celular</label>
    <asp:TextBox ID="TextBoxCelular"  CssClass="form-control"  runat="server" placeholder="Celular"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar el Celular" ControlToValidate="TextBoxCelular" CssClass="label label-danger" TabIndex="5"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Esto no es un numero de Celular" ControlToValidate="TextBoxCelular" CssClass="label label-warning" EnableTheming="True" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
  </div>

      <!--Cedula-->
  <div class="form-group">
    <label for="Cedula">Cedula</label>
    <asp:TextBox ID="TextBoxCedula"  CssClass="form-control"  runat="server" placeholder="Cedula"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe ingresar la Cedula" ControlToValidate="TextBoxCedula" CssClass="label label-danger" TabIndex="6"></asp:RequiredFieldValidator>
      </div>
       
    <!--Usuario-->
    <div class="form-group">
    <label for="usuario">Usuario</label>
   <asp:TextBox ID="txtUsuario"   CssClass="form-control"  runat="server" placeholder="usuario"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="Se requiere un nombre de usuario para logearse" ControlToValidate="txtUsuario" CssClass="label label-danger" TabIndex="7"></asp:RequiredFieldValidator>
         </div>

         <!--Email -->
    <div class="form-group">
    <label for="email">Email</label>
     <asp:TextBox ID="txtEmail"  CssClass="form-control"  runat="server" placeholder="email" TextMode="Email"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Debes ingresar un email valido" ControlToValidate="txtEmail" CssClass="label label-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="UsuarioValidacion" TabIndex="3"></asp:RegularExpressionValidator>
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
        <asp:CompareValidator ID="CompareValidatorClave" runat="server" ErrorMessage="Las Claves no coinciden" ControlToCompare="txtContrasena" ControlToValidate="txtRepContrasena" CssClass="label label-danger" TabIndex="4"></asp:CompareValidator>
      </div>

  <!--Materia asignada-->
     <div class="form-group">
         <asp:PlaceHolder ID="PlaceHolderMateria" runat="server" Visible="False">
            <label for="Materia">Materia</label>
            <asp:TextBox ID="TextBoxMateria"   CssClass="form-control"  runat="server" placeholder="Materia"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Se requiere un nombre una materia asignada para loguearse como profesor" ControlToValidate="TextBoxMateria" CssClass="label label-danger" TabIndex="1" Enabled="False"></asp:RequiredFieldValidator>
        </asp:PlaceHolder>
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

    <asp:ValidationSummary ID="ValidationSummaryUsuario" runat="server" />
    
    </div>
</asp:Content>
