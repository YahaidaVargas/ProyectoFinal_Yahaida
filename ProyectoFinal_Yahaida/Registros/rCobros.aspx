<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="rCobros.aspx.cs" Inherits="ProyectoFinal_Yahaida.Registros.Cobros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Registro de pagos
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
       
        <asp:Button ID="BtnBuscar" runat="server" CssClass="btn btn-info" Text="Buscar" Height="35px" Width="114px" style="margin-left: 0" OnClick="BtnBuscar_Click" />
            
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
         </div>

    <!--Id Inscripcion-->
    <div class="form-group">
    <label for="IdInscripcion">Id Inscripcion</label>
        <asp:TextBox ID="TextBoxIdInscripcion"  CssClass="form-control"  runat="server" placeholder="Id Inscripcion" TextMode="Number" ></asp:TextBox>
        </div>

    <!--Fecha-->
    <div class="form-group">
    <label for="Fecha" >Fecha</label>
        <asp:TextBox ID="txtFecha"  CssClass="form-control"  runat="server" placeholder="Fecha" TextMode="Date" ></asp:TextBox>
        </div>

     <!--Monto-->
    <div class="form-group">
    <label for="Monto" >Monto</label>
        <asp:TextBox ID="TextBoxMonto"  CssClass="form-control"  runat="server" placeholder="Monto" TextMode="Number" ></asp:TextBox>
        </div>

      <!--Descuento-->
    <div class="form-group">
    <label for="Descuento" >Fecha</label>
        <asp:TextBox ID="TextBoxDescuento"  CssClass="form-control"  runat="server" placeholder="Descuento" TextMode="Number" ></asp:TextBox>
        </div>

      <!--Forma de pago-->
    <div class="form-group">
    <label for="FormaPago" >Forma de pago</label>
        <asp:TextBox ID="TextBoxFormaPago"  CssClass="form-control"  runat="server" placeholder="Forma de pago" TextMode="Number" ></asp:TextBox>
        </div>

       <!--Total-->
    <div class="form-group">
    <label for="Total" >Total</label>
        <asp:TextBox ID="TextBoxTotal"  CssClass="form-control"  runat="server" placeholder="Total" TextMode="Number" ></asp:TextBox>
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
