<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="rEstudiantes.aspx.cs" Inherits="ProyectoFinal_Yahaida.Registros.rEstudiantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
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
        .auto-style3 {
            width: 388px;
        }
        .auto-style4 {
            width: 214px;
        }
        .auto-style5 {
            width: 162px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Registro Estudiantes
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
    <asp:FileUpload ID="FileUploadFoto" runat="server" />
    
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
    
        <asp:TextBox ID="TextBoxId"   CssClass="auto-style2"  runat="server" placeholder="Id"  Width="162px" ReadOnly="True" TextMode="Number" Height="31px"></asp:TextBox>
       
            </td>
            <td>
       
        <asp:Button ID="BtnBuscar" runat="server" CssClass="btn btn-info" Text="Buscar" Height="35px" Width="114px" style="margin-left: 0" OnClick="BtnBuscar_Click"/>
            
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
         </div>

     <!--fecha -->
  <div class="form-group">
    <label for="fecha">Fecha</label>
    <asp:TextBox ID="txtFecha"  CssClass="auto-style2"  runat="server" placeholder="fecha" TextMode="Date" Width="162px" Height="28px"></asp:TextBox>
      </div>

    <!--Matricula-->
    <div class="form-group">
    <label for="matricula" >Matricula</label>
        <asp:TextBox ID="TextBox1Matricula"  CssClass="form-control" runat="server" placeholder="matricula"></asp:TextBox>
        </div>

 <!--Nombres-->
    <div class="form-group">
    <label for="nombres" >Nombres</label>
        <asp:TextBox ID="txtNombres"  CssClass="form-control"  runat="server" placeholder="nombres" ></asp:TextBox>
        </div>

     <!--fechaNacimiento -->
  <div class="form-group">
    <label for="fechaNacimiento">Fecha de Nacimiento</label>
    <asp:TextBox ID="TextBoxFechaNacimietno"  CssClass="auto-style2"  runat="server" placeholder="fechaNacimiento" TextMode="Date" Width="162px" Height="28px"></asp:TextBox>
      </div>

    <!--Religion-->
    <div class="form-group">
    <label for="religion" >Religion</label>
        <asp:TextBox ID="TextBoxReligion"  CssClass="form-control"  runat="server" placeholder="nombres" ></asp:TextBox>
        </div>

    <!--Lugar de Nacimiento-->
    <div class="form-group">
    <label for="lugarNacimiento">Lugar de Nacimiento</label>
        <asp:TextBox ID="TextBoxLugarNacimiento"  CssClass="form-control"  runat="server" placeholder="lugarNacimiento" ></asp:TextBox>
        </div>

      <!--Deporte o pasatiempo-->
    <div class="form-group">
    <label for="deporteOPasatiempo">Deporte o Pasatiempo</label>
        <asp:TextBox ID="TextBoxDeporteOPasatiempo"  CssClass="form-control"  runat="server" placeholder="deporteOPasatiempo" ></asp:TextBox>
        </div>

    <div>

        <!--Botones -->
     <table style="width: 100%;">
          
            <tr>
                <td class="text-left"><asp:Button  type="button" ID="btnNuevo" runat="server" CssClass="btn btn-warning" text="Nuevo" Height="48px" Width="108px"/></td>
                <td class="auto-style2"><asp:Button  type="button" ID="btnGuardar" runat="server" CssClass="btn btn-primary" text="Guardar" Height="47px" Width="110px" style="margin-left: 0"/></td>
                <td class="auto-style3">
                    <asp:Button ID="BtnEliminar" runat="server"  CssClass="btn btn-danger" Text="Eliminar" Height="48px"  Width="108px" />
                </td>
            </tr>
        </table>
    </div>

    </div>

</asp:Content>
