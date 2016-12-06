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
            width: 67px;
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
    .auto-style23 {
        width: 197px;
        height: 103px;
    }
    .auto-style24 {
        width: 133px;
        height: 103px;
    }
    .auto-style25 {
        height: 103px;
    }
        .auto-style26 {
            width: 91%;
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
       
            <a href="../Consultas/cEstudiantes.aspx" class="btn btn-info" style="margin-left: 0">Buscar</a>
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
        <asp:TextBox ID="TextBoxMatricula"  CssClass="form-control" runat="server" placeholder="matricula" MaxLength="50"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debes ingresar una matricula" ControlToValidate="TextBoxMatricula" CssClass="alert-danger"></asp:RequiredFieldValidator>
    </div>

 <!--Nombre-->
    <div class="form-group">
    <label for="Nombre" >Nombre</label>
        <asp:TextBox ID="txtNombre"  CssClass="form-control"  runat="server" placeholder="nombre" MaxLength="50" ></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debes ingresar un Nombre" ControlToValidate="txtNombre" CssClass="alert-danger"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Solo puede usar letras" ControlToValidate="txtNombre" CssClass="alert-warning" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator> 
         </div>

    
 <!--Apellido-->
    <div class="form-group">
    <label for="Apellido" >Apellido</label>
        <asp:TextBox ID="TextBoxApellido"  CssClass="form-control"  runat="server" placeholder="Apellido" MaxLength="50" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debes ingresar un apellido" ControlToValidate="TextBoxApellido" CssClass="alert-danger"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Solo puede usar letras" ControlToValidate="TextBoxApellido" CssClass="alert-warning" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator> 
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
    <asp:TextBox ID="TextBoxFechaNacimiento"  CssClass="auto-style2"  runat="server" placeholder="fechaNacimiento" TextMode="Date" Width="162px" Height="28px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debes ingresar una fecha " ControlToValidate="TextBoxFechaNacimiento" CssClass="alert-danger"></asp:RequiredFieldValidator>
                         </td>
            <td>
        <asp:TextBox ID="TextBoxLugarNacimiento"  CssClass="auto-style10"  runat="server" placeholder="lugarNacimiento" Width="100%" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Debes ingresar un lugar" ControlToValidate="TextBoxLugarNacimiento" CssClass="alert-danger"></asp:RequiredFieldValidator> 
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
        <asp:TextBox ID="TextBoxReligion"  CssClass="form-control"  runat="server" placeholder="Religion" Width="95%" MaxLength="50" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Debes ingresar una religion" ControlToValidate="TextBoxReligion" CssClass="alert-danger"></asp:RequiredFieldValidator>
                 </td>
            <td>
        <asp:TextBox ID="TextBoxDeporteOPasatiempo"  CssClass="form-control"  runat="server" placeholder="deporteOPasatiempo" Width="100%" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage=" Debes ingresar un deporte o pasatiempo" ControlToValidate="TextBoxDeporteOPasatiempo" CssClass="alert-danger"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
 

        <h3>Datos de salud</h3>    <!--Letrero 2 segunda division datos de salud-->
        
      <!--Enfermedades-->
    <div class="form-group">
    <label for="Enfermedades">Enfermedades que padece</label>
        <asp:TextBox ID="TextBoxEnfermedades"  CssClass="form-control"  runat="server" placeholder="Enfermedades" ></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Debes ingresar una enfermedad" ControlToValidate="TextBoxEnfermedades" CssClass="alert-danger"></asp:RequiredFieldValidator>
         </div>

        <!--Alergias-->
    <div class="form-group">
    <label for="Alergias">Alergias</label>
        <asp:TextBox ID="TextBoxAlergias"  CssClass="form-control"  runat="server" placeholder="Alergias" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Debes ingresar alguna alergia" ControlToValidate="TextBoxAlergias" CssClass="alert-danger"></asp:RequiredFieldValidator>    
    </div>

           <!--Tratamientos Medicos-->
    <div class="form-group">
    <label for="TratamientosMedicos">Tratamientos Medicos</label>
        <asp:TextBox ID="TextBoxTratamientosMedicos"  CssClass="form-control"  runat="server" placeholder="Tratamientos Medicos" ></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Debes ingresar un tratamiento" ControlToValidate="TextBoxTratamientosMedicos" CssClass="alert-danger"></asp:RequiredFieldValidator>
         </div>        

         <h3>Datos Academicos</h3>    <!--Letrero 3 Tercera  division datos academicos-->
    <table class="auto-style26">
             <!--Grado actual -->
         <tr>
            <td class="auto-style15">
    <label for="GradoActual">Grado actual</label></td>
            <td class="auto-style14">
            <asp:DropDownList ID="DropDownListGradoActual" runat="server" Height="33px" Width="126px" CssClass="col-xs-offset-0">
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage=" ingresar su grado actual" ControlToValidate="DropDownListGradoActual" CssClass="alert-danger"></asp:RequiredFieldValidator>
            
                 </td>
             <!--Grado anterior -->
              <td class="auto-style16">
    <label for="GradoAnterior">Grado Anterior</label></td>
            <td class="text-left">
            <asp:DropDownList ID="DropDownListGradoAnterior" runat="server" Height="29px" Width="106px" CssClass="col-xs-offset-0">
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage=" ingresar su grado actual" ControlToValidate="DropDownListGradoAnterior" CssClass="alert-danger"></asp:RequiredFieldValidator> 
            </td>
        </tr>
        </table>
    

           <!--Escuela anterior-->
    <div class="form-group">
    <label for="EscuelaAnterior">&nbsp;&nbsp;&nbsp;&nbsp; Escuela anterior</label>
        <asp:TextBox ID="TextBoxEscuelaAnterior"  CssClass="form-control"  runat="server" placeholder="Escuela anterior" ></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage=" Debes ingresar la escuela anterior" ControlToValidate="TextBoxEscuelaAnterior" CssClass="alert-danger"></asp:RequiredFieldValidator>
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
        <asp:RadioButton ID="RadioButtonCertificadoMedicoTrue" runat="server" Text="Si" GroupName="CertificadoMedico" />
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
       <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Debes ingresar el nombre y apellido" ControlToValidate="TextBoxNombresPadre" CssClass="alert-danger"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Solo puede usar letras" ControlToValidate="TextBoxNombresPadre" CssClass="alert-warning" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator> 
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
           <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Debes ingresar el parentesco" ControlToValidate="TextBoxParentesco" CssClass="alert-danger"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Solo puede usar letras" ControlToValidate="TextBoxParentesco" CssClass="alert-warning" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator> 
                 </td>
            <!--Profesion u oficio-->
            <td>
        <asp:TextBox ID="TextBoxProfesionOficioPadre"  CssClass="form-control"  runat="server" placeholder="Profesion u oficio" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Debes ingresar una profesion y oficio" ControlToValidate="TextBoxProfesionOficioPadre" CssClass="alert-danger"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>

     <!--Direccion -->
    <div class="form-group">
    <label for="DireccionPadre">Direccion</label>
        <asp:TextBox ID="TextBoxDireccionPadre"  CssClass="form-control"  runat="server" placeholder="Direccion" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Debes ingresar una direccion" ControlToValidate="TextBoxDireccionPadre" CssClass="alert-danger"></asp:RequiredFieldValidator>    
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
           
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Debes ingresar un num. de Cedula" ControlToValidate="TextBoxNumDecedulaPadre" CssClass="alert-danger"></asp:RequiredFieldValidator> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBoxNumDecedulaPadre" CssClass="alert-warning" ErrorMessage="Debes usar solo numeros" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
              </td>
             <!--Números de teléfono -->
            <td>
        <asp:TextBox ID="TextBoxNumerosTelefonoPadre"  CssClass="form-control"  runat="server" placeholder="Números de teléfono" Width="95%" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Debes ingresar Num de telefono" ControlToValidate="TextBoxNumerosTelefonoPadre" CssClass="alert-danger"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Esto no es un numero de telefono" ControlToValidate="TextBoxNumerosTelefonoPadre" CssClass="label label-warning" EnableTheming="True" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
           
                 </td>
            <td>&nbsp;</td>
        </tr>
        </table>

    
     <!--Deporte o pasatiempo -->
    <div class="form-group">
    <label for="DeportePasatiempoPadre">Deporte o pasatiempo</label>
        <asp:TextBox ID="TextBoxDeportePasatiempoPadre"  CssClass="form-control"  runat="server" placeholder="Deporte o pasatiempo" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Debes ingresar un deporte o pasatiempo" ControlToValidate="TextBoxDeportePasatiempoPadre" CssClass="alert-danger"></asp:RequiredFieldValidator>
         </div>

    
 
 <!--Responsable de la cuenta -->
    <table style="width: 100%;">
        <tr>
            <td class="auto-style23">
    <label for="ResponsableDeCuenta">Responsable de la cuenta </label>
            </td>
            <td class="auto-style24">
        <asp:RadioButton ID="RadioButtonResponsableDeCuentaTrue" runat="server" Text="Si" GroupName="ResponsableDeCuenta" />
        <asp:RadioButton ID="RadioButtonResponsableDeCuentaFalse" runat="server" Text="No" GroupName="ResponsableDeCuenta" />
            </td>
            <td class="auto-style25">
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal" style="width: 167px; height: 30px">Registrar Responsable</button>
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
    <label for="DirecionResponsable">Direcion</label>
        <asp:TextBox ID="TextBoxDirecionResponsable"  CssClass="form-control"  runat="server" placeholder="Direcion" ></asp:TextBox>
        </div>

            <!--Email-->
    <div class="form-group">
    <label for="EmailResponsable">Email</label>
        <asp:TextBox ID="EmailResponsable"  CssClass="form-control"  runat="server" placeholder="Email" ></asp:TextBox>
        </div>



      </div>
      <div class="modal-footer">
      <%--<asp:Button  type="button" ID="ButtonGuardarResponsable" runat="server" CssClass="btn btn-primary" text="Guardar" Height="47px" Width="110px" style="margin-left: 0"/>--%></td>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
   
    <!--Curso asignado -->
    <div class="form-group">
    <label for="CursoAsignado">Curso Asignado</label>
       <asp:DropDownList ID="DropDownListCursoAsignado" runat="server" Height="22px" Width="353px" CssClass="col-xs-offset-0">
                
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Debes ingresar el curso al que ira" ControlToValidate="DropDownListCursoAsignado" CssClass="alert-danger"></asp:RequiredFieldValidator>
    </div>


        <!--Botones -->
     <table class="nav-justified">
          
            <tr>
                <td class="text-left"><asp:Button  type="button" ID="btnNuevo" runat="server" CssClass="btn btn-warning" text="Nuevo" Height="48px" Width="108px" OnClick="btnNuevo_Click"/></td>
                <td class="auto-style2"><asp:Button  type="button" ID="btnGuardar" runat="server" CssClass="btn btn-primary" text="Guardar" Height="47px" Width="110px" style="margin-left: 0" OnClick="btnGuardar_Click"/></td>
                <td class="auto-style3">
                    <asp:Button ID="BtnEliminar" runat="server"  CssClass="btn btn-danger" Text="Eliminar" Height="48px"  Width="108px" OnClick="BtnEliminar_Click" />
                </td>
            </tr>
        </table>


    

</asp:Content>
