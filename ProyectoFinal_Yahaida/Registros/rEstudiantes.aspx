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
        .auto-style6 {
            width: 382px;
        }
        .auto-style7 {
            width: 206px;
        }
        .auto-style8 {
            width: 373px
        }
        .auto-style10 {
            display: block;
            width: 100%;
            height: 34px;
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
            margin-left: 0;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
        .auto-style12 {
            width: 333px
        }
        .auto-style13 {
            width: 212px;
        }
        .auto-style14 {
            width: 190px;
            text-align: left;
        }
        .auto-style15 {
            width: 92px;
            text-align: right;
        }
        .auto-style16 {
            width: 143px;
            text-align: right;
        }
        .auto-style18 {
            display: block;
            width: 100%;
            height: 34px;
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
            margin-right: 72;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
        .auto-style19 {
            width: 303px;
        }
        .auto-style20 {
            width: 217px;
        }
        .auto-style21 {
            width: 197px;
        }
        .auto-style22 {
            width: 133px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Registro Estudiantes
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Datos generales</h3>    <!--Letrero 1 primera division datos generales -->
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
       
  
   

          
    <table style="width: 100%;">
        <!--fecha -->
        <tr>
            <td class="auto-style8">    

                 <div>
    <label for="fecha">Fecha</label></div>
      </td>
              
  <!--foto -->
            <td> 
                  <div class="row">
  <div class="col-xs-6 col-md-3">
    <a href="#" class="auto-style6">
        <asp:Image ID="Image1" runat="server" />
    </a>
  </div>
  ...
</div>
               


    </td>
            <td>&nbsp;</td>
        </tr>
           <!--fecha -->
        <tr>
            <td class="auto-style8">
    <asp:TextBox ID="txtFecha"  CssClass="auto-style2"  runat="server" placeholder="fecha" TextMode="Date" Width="162px" Height="28px"></asp:TextBox>
    
            </td>
           <!--foto -->
            <td>
                 <asp:FileUpload ID="FileUploadFoto" runat="server" />
   
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
    
  

    <!--Matricula-->
    <div class="form-group">
    <label for="matricula" >Matricula</label>
        <asp:TextBox ID="TextBox1Matricula"  CssClass="form-control" runat="server" placeholder="matricula"></asp:TextBox>
        </div>

 <!--Nombre-->
    <div class="form-group">
    <label for="Nombre" >Nombre</label>
        <asp:TextBox ID="txtNombre"  CssClass="form-control"  runat="server" placeholder="nombre" ></asp:TextBox>
        </div>

    
 <!--Apellido-->
    <div class="form-group">
    <label for="Apellido" >Apellido</label>
        <asp:TextBox ID="TextBoxApellido"  CssClass="form-control"  runat="server" placeholder="Apellido" ></asp:TextBox>
        </div>

    <table style="width: 100%;">
         <!--fechaNacimiento -->
         <tr>
            <td class="auto-style13">
    <label for="fechaNacimiento">Fecha de Nacimiento</label></td>
            <td>
    <label for="lugarNacimiento">Lugar de Nacimiento</label></td>
            <td>&nbsp;</td>
        </tr>
           <!--Lugar de Nacimiento-->
        <tr>
            <td class="auto-style13">
    <asp:TextBox ID="TextBoxFechaNacimietno"  CssClass="auto-style2"  runat="server" placeholder="fechaNacimiento" TextMode="Date" Width="162px" Height="28px"></asp:TextBox>
            </td>
            <td>
        <asp:TextBox ID="TextBoxLugarNacimiento"  CssClass="auto-style10"  runat="server" placeholder="lugarNacimiento" Width="100%" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>  

    <table class="nav-justified">
        <!--Religion-->
        <tr>
            <td class="auto-style12">
    <label for="religion" >Religion</label></td>
            <td>
    <label for="deporteOPasatiempo">Deporte o Pasatiempo</label></td>
            <td>&nbsp;</td>
        </tr>
           <!--Deporte o pasatiempo-->
        <tr>
            <td class="auto-style12">
        <asp:TextBox ID="TextBoxReligion"  CssClass="form-control"  runat="server" placeholder="Religion" Width="95%" ></asp:TextBox>
            </td>
            <td>
        <asp:TextBox ID="TextBoxDeporteOPasatiempo"  CssClass="form-control"  runat="server" placeholder="deporteOPasatiempo" Width="100%" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
 

        <h3>Datos de salud</h3>    <!--Letrero 2 segunda division datos de salud-->
        
      <!--Enfermedades-->
    <div class="form-group">
    <label for="Enfermedades">Enfermedades que padece</label>
        <asp:TextBox ID="TextBoxEnfermedades"  CssClass="form-control"  runat="server" placeholder="Enfermedades" ></asp:TextBox>
        </div>

        <!--Alergias-->
    <div class="form-group">
    <label for="Alergias">Alergias</label>
        <asp:TextBox ID="TextBoxAlergias"  CssClass="form-control"  runat="server" placeholder="Alergias" ></asp:TextBox>
        </div>

           <!--Tratamientos Medicos-->
    <div class="form-group">
    <label for="TratamientosMedicos">Tratamientos Medicos</label>
        <asp:TextBox ID="TextBoxTratamientosMedicos"  CssClass="form-control"  runat="server" placeholder="Tratamientos Medicos" ></asp:TextBox>
        </div>        

         <h3>Datos Academicos</h3>    <!--Letrero 3 Tercera  division datos academicos-->
    <table style="width: 100%;">
             <!--Grado actual -->
         <tr>
            <td class="auto-style15">
    <label for="GradoActual">Grado actual</label></td>
            <td class="auto-style14">
            <asp:DropDownList ID="DropDownListGradoActual" runat="server" Height="28px" Width="149px" CssClass="col-xs-offset-0">
                <asp:ListItem>Kinder</asp:ListItem>
                <asp:ListItem>Maternal</asp:ListItem>
                <asp:ListItem>Pre-primero</asp:ListItem>
                <asp:ListItem>1ro primaria</asp:ListItem>
                <asp:ListItem>2do Primaria</asp:ListItem>
                <asp:ListItem>3ro Primaria</asp:ListItem>
                <asp:ListItem>4to Primaria</asp:ListItem>
                <asp:ListItem>5to Primaria</asp:ListItem>
                <asp:ListItem>6to Primaria</asp:ListItem>
                <asp:ListItem>1ro Secundaria</asp:ListItem>
                <asp:ListItem>2do Secundaria</asp:ListItem>
                <asp:ListItem>3ro Secundaria</asp:ListItem>
                <asp:ListItem>4to Secundaria</asp:ListItem>
                <asp:ListItem>5to Secundaria</asp:ListItem>
                <asp:ListItem>6to Secundaria</asp:ListItem>
            </asp:DropDownList>
             </td>
             <!--Grado anterior -->
              <td class="auto-style16">
    <label for="GradoAnterior">Grado anterior</label></td>
            <td class="text-left">
            <asp:DropDownList ID="DropDownListGradoAnterior" runat="server" Height="25px" Width="158px" CssClass="col-xs-offset-0">
                <asp:ListItem>Kinder</asp:ListItem>
                <asp:ListItem>Maternal</asp:ListItem>
                <asp:ListItem>Pre-Primero</asp:ListItem>
                <asp:ListItem>1ro Primaria</asp:ListItem>
                <asp:ListItem>2do Primaria</asp:ListItem>
                <asp:ListItem>3ro Primaria</asp:ListItem>
                <asp:ListItem>4to Primaria</asp:ListItem>
                <asp:ListItem>5to Primaria</asp:ListItem>
                <asp:ListItem>6to Primaria</asp:ListItem>
                <asp:ListItem>1ro Secundaria</asp:ListItem>
                <asp:ListItem>2do Secundaria</asp:ListItem>
                <asp:ListItem>3ro Secundaria</asp:ListItem>
                <asp:ListItem>4to Secundaria</asp:ListItem>
                <asp:ListItem>5to Secundaria</asp:ListItem>
                <asp:ListItem>6to Secundaria</asp:ListItem>
            </asp:DropDownList>
             </td>
        </tr>
        </table>
    

           <!--Escuela anterior-->
    <div class="form-group">
    <label for="EscuelaAnterior">&nbsp;&nbsp;&nbsp;&nbsp; Escuela anterior</label>
        <asp:TextBox ID="TextBoxEscuelaAnterior"  CssClass="form-control"  runat="server" placeholder="Escuela anterior" ></asp:TextBox>
        </div>  


    <h3>Documentos Recibidos</h3>    <!--Letrero 4 cuarta   division Documentos recibidos-->
     <!--Acta de Nacimiento-->
    <table style="width: 100%;">
        <tr>
            <td class="auto-style7">
    <label for="ActadeNacimiento">Acta de Nacimiento</label></td>
            <td><asp:RadioButton ID="RadioButtonActadeNacimientoTrue" runat="server" Text="Si" GroupName="actaNacim" />
        <asp:RadioButton ID="RadioButtonActadeNacimientoFalse" runat="server" Text="No" GroupName="actaNacim" /></td>
            <td>&nbsp;</td>
        </tr>
           <!--Cartón de notas-->
        <tr>
            <td class="auto-style7">
    <label for="CartonNotas">Cartón de notas</label></td>
            <td>
        <asp:RadioButton ID="RadioButtonCartonNotasTrue" runat="server" Text="Si" GroupName="CartonNot" />
        <asp:RadioButton ID="RadioButtonCartonNotasFalse" runat="server" Text="No" GroupName="CartonNot" />
            </td>
            <td>&nbsp;</td>
        </tr>
            <!--Certificación de grado-->
        <tr>
            <td class="auto-style7">
    <label for="CertificacionGrado">Certificación de grado</label></td>
            <td>
        <asp:RadioButton ID="CertificacionGradoTrue" runat="server" Text="Si" GroupName="CertificadoGrado" />
        <asp:RadioButton ID="CertificacionGradoFalse" runat="server" Text="No" GroupName="CertificadoGrado" />
            </td>
            <td>&nbsp;</td>
        </tr>
             <!--Certificación de octavo -->
        <tr>
            <td class="auto-style7">
    <label for="CertificacionOctavo">Certificación de octavo </label>
            </td>
            <td>
        <asp:RadioButton ID="RadioButtonCertificacionOctavoTrue" runat="server" Text="Si" GroupName="CertificadoOctavo" />
        <asp:RadioButton ID="RadioButtonCertificacionOctavoFalse" runat="server" Text="No" GroupName="CertificadoOctavo" />
            </td>
            <td>&nbsp;</td>
        </tr>
           <!--Certificado médico  -->
        <tr>
            <td class="auto-style7">
    <label for="CertificadoMedico">Certificado médico  </label>
            </td>
            <td>
        <asp:RadioButton ID="RadioButtonCertificadoMedicTrue" runat="server" Text="Si" GroupName="CertificadoMedico" />
        <asp:RadioButton ID="RadioButtonCertificadoMedicoFalse" runat="server" Text="No" GroupName="CertificadoMedico" />
            </td>
            <td>&nbsp;</td>
        </tr>
           <!--Carta de buena conducta -->
        <tr>
            <td class="auto-style7">
    <label for="CartaBuenaConducta">Carta de buena conducta</label></td>
            <td>
        <asp:RadioButton ID="RadioButtonCartaBuenaConductaTrue" runat="server" Text="Si" GroupName="CartaBuenaConducta" />
        <asp:RadioButton ID="RadioButtonCartaBuenaConductaFalse" runat="server" Text="No" GroupName="CartaBuenaConducta" />
            </td>
            <td>&nbsp;</td>
        </tr>
           <!--Copia tarjeta de vacuna. -->
        <tr>
            <td class="auto-style7">
    <label for="CopiaTarjetaVacuna">Copia tarjeta de vacuna.</label></td>
            <td>
        <asp:RadioButton ID="RadioButtonCopiaTarjetaVacunaTrue" runat="server" Text="Si" GroupName="CopiaTarjetaVacuna" />
        <asp:RadioButton ID="RadioButtonCopiaTarjetaVacunaFalse" runat="server" Text="No" GroupName="CopiaTarjetaVacuna" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

     <h3>Datos del padre o tutor</h3>    <!--Letrero 5 quinta division datos del padre o tutor-->
        
      <!--Nombres-->
    <div class="form-group">
    <label for="NombrePadre">Nombres</label>
        <asp:TextBox ID="TextBoxNombresPadre"  CssClass="form-control"  runat="server" placeholder="Nombre y apellido del Padre o tutor" ></asp:TextBox>
        </div>

   
    
    <table style="width: 100%;">
        <tr>
              <!--Parentesco-->
            <td class="auto-style19">
    <label for="Parentesco">Parentesco</label></td>
             <!--Profesion u oficio-->
            <td>
    <label for="ProfesionOficioPadre">Profesion u oficio</label></td>
            <td>&nbsp;</td>
        </tr>
          <!--Parentesco-->
        <tr>
            <td class="auto-style19">
        <asp:TextBox ID="TextBoxParentesco"  CssClass="auto-style18"  runat="server" placeholder="Parentesco" Width="95%" ></asp:TextBox>
            </td>
            <!--Profesion u oficio-->
            <td>
        <asp:TextBox ID="TextBoxProfesionOficioPadre"  CssClass="form-control"  runat="server" placeholder="Profesion u oficio" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>

     <!--Direccion -->
    <div class="form-group">
    <label for="DireccionPadre">Direccion</label>
        <asp:TextBox ID="TextBoxDireccionPadre"  CssClass="form-control"  runat="server" placeholder="Direccion" ></asp:TextBox>
        </div>


    <table style="width: 100%;">
        <tr>
              <!--Núm. De cedula  -->
            <td class="auto-style20">
    <label for="NumDecedula ">Númmero De cedula </label>
            </td>
             <!--Números de teléfono -->
            <td>
    <label for="NumerosTelefono">Números de teléfono </label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
              <!--Núm. De cedula  -->
            <td class="auto-style20">
        <asp:TextBox ID="TextBoxNumDecedulaPadre"  CssClass="form-control"  runat="server" placeholder="Númmero De cedula" Width="95%" ></asp:TextBox>
            </td>
             <!--Números de teléfono -->
            <td>
        <asp:TextBox ID="TextBoxNumerosTelefonoPadre"  CssClass="form-control"  runat="server" placeholder="Números de teléfono" Width="95%" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>

    
     <!--Deporte o pasatiempo -->
    <div class="form-group">
    <label for="DeportePasatiempoPadre">Deporte o pasatiempo</label>
        <asp:TextBox ID="TextBoxDeportePasatiempoPadre"  CssClass="form-control"  runat="server" placeholder="Deporte o pasatiempo" ></asp:TextBox>
        </div>

   
 
 <!--Responsable de la cuenta -->
    <table style="width: 100%;">
        <tr>
            <td class="auto-style21">
    <label for="ResponsableDeCuenta">Responsable de la cuenta </label>
            </td>
            <td class="auto-style22">
        <asp:RadioButton ID="RadioButtonResponsableDeCuentaTrue" runat="server" Text="Si" GroupName="ResponsableDeCuenta" />
        <asp:RadioButton ID="RadioButtonResponsableDeCuentaFalse" runat="server" Text="No" GroupName="ResponsableDeCuenta" />
            </td>
            <td>
       <asp:Button  type="button" ID="ButtonRegistrarResponsable" runat="server" CssClass="btn btn-success"  text="Registrar Responsable"  Height="48px" Width="192px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style22">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>


<!-- Trigger the modal with a button -->
<button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">Registrar Responsable</button>
  <asp:Button  type="button" ID="Button1" runat="server" CssClass="btn btn-success"  text="Registrar Responsable"  Height="48px" Width="192px" />
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Registro responsable de la cuenta</h4>
      </div>
      <div class="modal-body">
       <!--Nombres -->
    <div class="form-group">
    <label for="NombreResponsable">Nombre</label>
        <asp:TextBox ID="TextBoxNombreResponsable"  CssClass="form-control"  runat="server" placeholder="Nombres del Responsable" ></asp:TextBox>
        </div>

            <!--Cedula -->
    <div class="form-group">
    <label for="CedulaResponsable">Cedula</label>
        <asp:TextBox ID="TextBoxCedulaResponsable"  CssClass="form-control"  runat="server" placeholder="Cedula  del Responsable" ></asp:TextBox>
        </div>

                 <!--Telefono -->
    <div class="form-group">
    <label for="TelefonoResponsable">Telefono</label>
        <asp:TextBox ID="TextBoxTelefonoResponsable"  CssClass="form-control"  runat="server" placeholder="Telefono" ></asp:TextBox>
        </div>
          
                 <!--Direcion-->
    <div class="form-group">
    <label for="DirecionResponsable">Telefono</label>
        <asp:TextBox ID="TextBoxDirecionResponsable"  CssClass="form-control"  runat="server" placeholder="Direcion" ></asp:TextBox>
        </div>

            <!--Email-->
    <div class="form-group">
    <label for="EmailResponsable">Telefono</label>
        <asp:TextBox ID="EmailResponsable"  CssClass="form-control"  runat="server" placeholder="Email" ></asp:TextBox>
        </div>



      </div>
      <div class="modal-footer">
      <asp:Button  type="button" ID="ButtonGuardarResponsable" runat="server" CssClass="btn btn-primary" text="Guardar" Height="47px" Width="110px" style="margin-left: 0"/></td>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
   

        <!--Botones -->
     <table class="nav-justified">
          
            <tr>
                <td class="text-left"><asp:Button  type="button" ID="btnNuevo" runat="server" CssClass="btn btn-warning" text="Nuevo" Height="48px" Width="108px"/></td>
                <td class="auto-style2"><asp:Button  type="button" ID="btnGuardar" runat="server" CssClass="btn btn-primary" text="Guardar" Height="47px" Width="110px" style="margin-left: 0"/></td>
                <td class="auto-style3">
                    <asp:Button ID="BtnEliminar" runat="server"  CssClass="btn btn-danger" Text="Eliminar" Height="48px"  Width="108px" />
                </td>
            </tr>
        </table>


    

</asp:Content>
