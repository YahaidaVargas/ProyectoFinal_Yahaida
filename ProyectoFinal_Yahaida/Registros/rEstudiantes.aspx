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
    <h3>Datos generales</h3>    <!--Letrero 1 primera division datos generales -->
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
        <!--Grado actual -->
        <div class="form-group">
    <label for="GradoActual">Grado actual</label>
            <asp:DropDownList ID="DropDownListGradoActual" runat="server" Height="25px" Width="159px">
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
        </div> 
        
          
        <!--Grado anterior -->
        <div class="form-group">
    <label for="GradoAnterior">Grado anterior</label>
            <asp:DropDownList ID="DropDownListGradoAnterior" runat="server" Height="25px" Width="145px">
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
        </div>       

           <!--Escuela anterior-->
    <div class="form-group">
    <label for="EscuelaAnterior">Escuela anterior</label>
        <asp:TextBox ID="TextBoxEscuelaAnterior"  CssClass="form-control"  runat="server" placeholder="Escuela anterior" ></asp:TextBox>
        </div>  

         <h3>Documentos Recibidos</h3>    <!--Letrero 4 cuarta   division Documentos recibidos-->
     <!--Acta de Nacimiento-->
    <div class="form-group">
    <label for="ActadeNacimiento">Acta de Nacimiento</label>
        <asp:RadioButton ID="RadioButtonActaNacimientoTrue" runat="server" Text="Si" GroupName="actaNacim" />
        <asp:RadioButton ID="RadioButtonActaNacimientoFalse" runat="server" Text="No" GroupName="actaNacim" />
         </div>

        <!--Cartón de notas-->
    <div class="form-group">
    <label for="CartonNotas">Cartón de notas</label>
        <asp:RadioButton ID="RadioButtonCartonNotasTrue" runat="server" Text="Si" GroupName="CartonNot" />
        <asp:RadioButton ID="RadioButtonCartonNotasFalse" runat="server" Text="No" GroupName="CartonNot" />
         </div>

    <!--Certificación de grado-->
    <div class="form-group">
    <label for="CertificacionGrado">Certificación de grado</label>
        <asp:RadioButton ID="CertificacionGradoTrue" runat="server" Text="Si" GroupName="CertificadoGrado" />
        <asp:RadioButton ID="CertificacionGradoFalse" runat="server" Text="No" GroupName="CertificadoGrado" />
         </div>
   
     <!--Certificación de octavo -->
    <div class="form-group">
    <label for="CertificacionOctavo">Certificación de octavo </label>
        <asp:RadioButton ID="RadioButtonCertificacionOctavoTrue" runat="server" Text="Si" GroupName="CertificadoOctavo" />
        <asp:RadioButton ID="RadioButtonCertificacionOctavoFalse" runat="server" Text="No" GroupName="CertificadoOctavo" />
         </div>

     <!--Certificado médico  -->
    <div class="form-group">
    <label for="CertificadoMedico">Certificado médico  </label>
        <asp:RadioButton ID="RadioButtonCertificadoMedicTrue" runat="server" Text="Si" GroupName="CertificadoMedico" />
        <asp:RadioButton ID="RadioButtonCertificadoMedicoFalse" runat="server" Text="No" GroupName="CertificadoMedico" />
         </div>

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


    

</asp:Content>
