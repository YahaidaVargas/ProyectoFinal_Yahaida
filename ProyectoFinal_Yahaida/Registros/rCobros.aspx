<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="rCobros.aspx.cs" Inherits="ProyectoFinal_Yahaida.Registros.Cobros" %>
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
            width: 91%;
        }
        .auto-style4 {
            width: 205px;
        }
        .auto-style7 {
            width: 103%;
            height: 85px;
        }
        .auto-style8 {
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
            margin-left: 13;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
            margin-bottom: 0;
        }
        .auto-style12 {
            width: 255px;
        }
        .auto-style13 {
            width: 259px;
        }
        .auto-style14 {
            text-align: left;
            width: 191px;
        }
        .auto-style15 {
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
            width: 184px;
        }
        .auto-style16 {
            width: 177px;
        }
        .auto-style18 {
            width: 299px
        }
        .auto-style19 {
            width: 146px;
        }
        .auto-style20 {
            width: 280px
        }
        .auto-style21 {
            width: 280px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Registro de pagos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--id -->
    <div class="form-group">
    <table class="nav-justified">
        <tr>
            <td class="auto-style16">
      <label for="Id" class="auto-style4">Id</label></td>
            <td>
       
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
    
        <asp:TextBox ID="TextBoxId"   CssClass="auto-style2"  runat="server" placeholder="Id"  Width="162px" ReadOnly="True" TextMode="Number" Height="31px"></asp:TextBox>
       
            </td>
            <td>
       
        <asp:Button ID="BtnBuscar" runat="server" CssClass="btn btn-info" Text="Buscar" Height="35px" Width="114px" style="margin-left: 0" OnClick="BtnBuscar_Click" />
            
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
         </div>

   

    <table class="auto-style7">
        <tr>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style19">
       
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
    <label for="NombreEstudiante">Nombre Estudiante</label></td>
            <td class="auto-style20">
    <label for="NombreEstudiante">Nombre del Padre o tutor</label></td>
            <td class="auto-style19">
       
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
        <asp:TextBox ID="TextBoxNombreEstudianteInscr"  CssClass="auto-style8"  runat="server" placeholder="Nombre del Estudiante" Width="90%" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="alert-danger" ErrorMessage="Falta el nombre del estudiante" ControlToValidate="TextBoxNombreEstudianteInscr"></asp:RequiredFieldValidator>
                 </td>
            <td class="auto-style21">
        <asp:TextBox ID="TextBoxNombrePadreInscr"  CssClass="auto-style10"  runat="server" placeholder="Nombre del padre" Width="90%" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="alert-danger" ErrorMessage="Falta el nombre del tutor" ControlToValidate="TextBoxNombrePadreInscr"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style19">
       
        <asp:Button ID="BtnBuscarDatos" runat="server"  CssClass="btn btn-info" Text="Buscar Datos" Height="35px" Width="114px" style="margin-left: 0"/>
            
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
    <label for="NombreEstudiante">Matricula</label></td>
            <td class="auto-style21">
    <label for="NombreEstudiante">Curso asignado</label></td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
        <asp:TextBox ID="TextBoxMatriculaInscr"  CssClass="auto-style8"  runat="server" placeholder="Matricula" Width="90%" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="alert-danger" ErrorMessage="Falta el nombre la Matricula" ControlToValidate="TextBoxMatriculaInscr"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style21">
        <asp:TextBox ID="TextBoxCursoInscr"  CssClass="auto-style8"  runat="server" placeholder="Curso" Width="90%" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="alert-danger" ErrorMessage="Falta el nombre el curso" ControlToValidate="TextBoxCursoInscr"></asp:RequiredFieldValidator>
                 </td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        </table>

    <table style="width: 100%;">
        <tr>
            <td class="auto-style12">
    <label for="Fecha">Fecha</label></td>
            <td>
    <label for="FormaPago" >Forma de pago</label></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
        <asp:TextBox ID="txtFecha"  CssClass="form-control"  runat="server" placeholder="Fecha" Type="Date" Width="90%" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="alert-danger" ErrorMessage="Falta el nombre la Fecha" ControlToValidate="txtFecha"></asp:RequiredFieldValidator>
            </td>
            <td>
        <asp:TextBox ID="TextBoxFormaPago"  CssClass="form-control"  runat="server" placeholder="Forma de pago" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="alert-danger" ErrorMessage="Falta el nombre la forma de pago" ControlToValidate="TextBoxFormaPago"></asp:RequiredFieldValidator>
                 </td>
            <td>&nbsp;</td>
        </tr>
        </table>

    <table style="width: 100%;">
        <tr>
            <td class="auto-style13"><label for="Monto" >Monto</label></td>
            <td>
    <label for="Descuento" >Descuento</label></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"><asp:TextBox ID="TextBoxMonto"  CssClass="form-control"  runat="server" placeholder="Monto" TextMode="Number" Width="90%" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass="alert-danger" ErrorMessage="Falta el nombre el Monto" ControlToValidate="TextBoxMonto"></asp:RequiredFieldValidator>
                 </td>
            <td>
        <asp:TextBox ID="TextBoxDescuento"  CssClass="form-control"  runat="server" placeholder="Descuento" TextMode="Number" ></asp:TextBox>
           
                 </td>
            <td>&nbsp;</td>
        </tr>
        </table>

       <!--Total-->
    <div class="form-group">
    <label for="Total" >Total</label>
        <asp:TextBox ID="TextBoxTotal"  CssClass="form-control"  runat="server" placeholder="Total" TextMode="Number" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" CssClass="alert-danger" ErrorMessage="Falta el total" ControlToValidate="TextBoxTotal"></asp:RequiredFieldValidator>
    </div>

     <!--Botones -->
     <table class="nav-justified">
          
            <tr>
                <td class="auto-style14"><asp:Button  type="button" ID="btnNuevo" runat="server" CssClass="btn btn-warning" text="Nuevo" Height="48px" Width="108px"/></td>
                <td class="auto-style15"><asp:Button  type="button" ID="btnGuardar" runat="server" CssClass="btn btn-primary" text="Guardar" Height="47px" Width="110px" style="margin-left: 0"/></td>
                <td class="auto-style3">
                    <asp:Button ID="BtnEliminar" runat="server"  CssClass="btn btn-danger" Text="Eliminar" Height="48px"  Width="108px" />
                </td>
            </tr>
          
            </table>


</asp:Content>
