<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="rCobros.aspx.cs" Inherits="ProyectoFinal_Yahaida.Registros.rCobros" %>
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
        .auto-style22 {
            width: 263px
        }
        .auto-style23 {
            width: 484px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Registro de pagos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManagerCobros" runat="server"></asp:ScriptManager>
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
       <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" style="width: 114px; height:35px">Buscar Datos</button>
        <%--<asp:Button ID="BtnBuscarDatos" runat="server"  CssClass="btn btn-info" Text="Buscar Datos" Height="35px" Width="114px" style="margin-left: 0"/>--%>
            
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
        <asp:TextBox ID="txtFecha"  CssClass="form-control"  runat="server" placeholder="Fecha" Type="Date" Width="90%" TextMode="Date" ></asp:TextBox>
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
            <td class="auto-style22"><label for="Monto" >Monto</label></td>
            <td>
    <label for="Descuento" >Descuento</label></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"><asp:TextBox ID="TextBoxMonto"  CssClass="form-control"  runat="server" placeholder="Monto" Width="90%" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass="alert-danger" ErrorMessage="Falta el nombre el Monto" ControlToValidate="TextBoxMonto"></asp:RequiredFieldValidator>
                 </td>
            <td>
        <asp:TextBox ID="TextBoxDescuento"  CssClass="form-control"  runat="server" placeholder="Descuento" ></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxDescuento" CssClass="alert-warning" ErrorMessage="Debes usar solo numeros" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                 </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBoxMonto" CssClass="alert-warning" ErrorMessage="Debes usar solo numeros" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                 </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>


<div class="well well-sm">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

        
    <table class="auto-style23">
        <tr>
            <td>
                <asp:TextBox ID="TextBoxFechaMes" CssClass="form-control" runat="server" placeholder="Fecha"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBoxMontoMes" CssClass="form-control" runat="server" placeholder="Monto"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBoxDescuentoMes" CssClass="form-control" runat="server" placeholder="Descuento"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBoxFormPagoMes" CssClass="form-control" runat="server" placeholder="Forma de Pago"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBoxDescMes" CssClass="form-control" runat="server" placeholder="Descripcion"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="ButtonAddCobroDetalle" CssClass="btn btn-info btn-sm" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
    

    <div class="form-control">
        <asp:GridView ID="GridViewCobroDetalles" runat="server" Height="68px" Width="503px">

        </asp:GridView>
    </div>
        </ContentTemplate>
</asp:UpdatePanel>
</div>
        <br />
        <br />
       <!--Total-->
        <br />
        <br />
        <br />
    <div class="form-group">
    <label for="Total" >Total</label>
        <asp:TextBox ID="TextBoxTotal"  CssClass="form-control"  runat="server" placeholder="Total" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" CssClass="alert-danger" ErrorMessage="Falta el total" ControlToValidate="TextBoxTotal"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBoxTotal" CssClass="alert-warning" ErrorMessage="Debes usar solo numeros" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
    </div>

    



     <!--Botones -->
     <table class="nav-justified">
          
            <tr>
                <td class="auto-style14"><asp:Button  type="button" ID="btnNuevo" runat="server" CssClass="btn btn-warning" text="Nuevo" Height="48px" Width="108px"/></td>
                <td class="auto-style15"><asp:Button  type="button" ID="btnGuardar" runat="server" CssClass="btn btn-primary" text="Guardar" Height="47px" Width="110px" style="margin-left: 0" OnClick="btnGuardar_Click"/></td>
                <td class="auto-style3">
                    <asp:Button ID="BtnEliminar" runat="server"  CssClass="btn btn-danger" Text="Eliminar" Height="48px"  Width="108px" />
                </td>
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
        <h4 class="modal-title">Datos de estudiante para inscripcion</h4>
      </div>
      <div class="modal-body">
            <div class="row">

                <asp:UpdatePanel ID="UpdatePanelModalBuscarAlumno" runat="server">
                <ContentTemplate>
                                    
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                        <asp:TextBox ID="TextBoxBuscarAlumno" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <asp:Button ID="ButtonBuscarAlumno" runat="server" CssClass="btn btn-info btn-block" Text="Buscar" OnClick="ButtonBuscarAlumno_Click" />
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:GridView ID="GridViewBusquedaAlumno" runat="server" CssClass="table table-condensed" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="Matricula" HeaderText="Matricula" />
                                <asp:BoundField DataField="estudiante" HeaderText="Estudiante" />
                                <asp:BoundField DataField="Grado" HeaderText="Grado" />
                                <asp:HyperLinkField DataNavigateUrlFields="IdEstudiantes" DataNavigateUrlFormatString="idest={0}" Text="Seleccionar">
                                <ControlStyle CssClass="btn btn-info btn-block" />
                                </asp:HyperLinkField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </ContentTemplate>
                </asp:UpdatePanel>
            </div>
      

          <%--<%Response.Redirect("/Consultas/cEstudiantes.aspx"); %>--%>


      </div>
      <div class="modal-footer">
      <%--<asp:Button  type="button" ID="ButtonGuardarResponsable" runat="server" CssClass="btn btn-primary" text="Guardar" Height="47px" Width="110px" style="margin-left: 0"/>--%></td>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

</asp:Content>
