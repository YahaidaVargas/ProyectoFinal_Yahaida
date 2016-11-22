<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="rProfesores.aspx.cs" Inherits="ProyectoFinal_Yahaida.Registros.rProfesores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 210px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Registro Profesores
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--id -->
    <div class="form-group">
    <table class="nav-justified">
        <tr>
            <td class="auto-style1">
      <label for="Id" class="auto-style4">Id</label></td>
            <td>
       
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
    
        <asp:TextBox ID="TextBoxId"   CssClass="auto-style2"  runat="server" placeholder="Id"  Width="162px" ReadOnly="True" TextMode="Number" Height="31px"></asp:TextBox>
       
            </td>
            <td>
       
        <asp:Button ID="BtnBuscar" runat="server" CssClass="btn btn-info" Text="Buscar" Height="35px" Width="114px" style="margin-left: 0"/>
            
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
         </div>

    <!--fecha -->
  <div class="form-group">
    <label for="fecha">Fecha</label>
    <asp:TextBox ID="txtFecha"    CssClass="form-control"  runat="server" placeholder="fecha" TextMode="Date" Width="162px"></asp:TextBox>
      </div>
     

    <!--Nombres-->
    <div class="form-group">
    <label for="nombres" >Nombres</label>
        <asp:TextBox ID="txtNombres"  CssClass="form-control"  runat="server" placeholder="nombres" ></asp:TextBox>
        </div>

    <!--Direccion-->
    <div class="form-group">
    <label for="Direccion" >Direccion</label>
        <asp:TextBox ID="TextBoxDireccion"  CssClass="form-control"  runat="server" placeholder="Direccion" ></asp:TextBox>
        </div>

    
    <!--Telefono-->
    <div class="form-group">
    <label for="Telefono">Telefono</label>
        <asp:TextBox ID="TxtTelefono"  CssClass="form-control"  runat="server" placeholder="Telefono"></asp:TextBox>
        </div>

    <!--Cedula-->
    <div class="form-group">
    <label for="Cedula">Cedula</label>
        <asp:TextBox ID="TextBoxCedula"  CssClass="form-control"  runat="server" placeholder="Cedula"></asp:TextBox>
        </div>

     <div>

        <!--Botones -->
     <table style="width: 100%;">
          
            <tr>
                <td class="text-left"><asp:Button  type="button" ID="btnNuevo" runat="server" CssClass="btn btn-warning" text="Nuevo" Height="48px"  Width="108px"/></td>
                <td class="auto-style2"><asp:Button  type="button" ID="btnGuardar" runat="server" CssClass="btn btn-primary" text="Guardar"  Height="47px" Width="110px" style="margin-left: 0"/></td>
                <td class="auto-style3">
                    <asp:Button ID="BtnEliminar" runat="server"  CssClass="btn btn-danger" Text="Eliminar" Height="48px"  Width="108px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>

   

</asp:Content>


