<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="rCobrosDetalle.aspx.cs" Inherits="ProyectoFinal_Yahaida.Registros.rCobrosDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

    <!--Id Cobros-->
    <div class="form-group">
    <label for="IdCobros">Id Cobros</label>
        <asp:TextBox ID="TextBoxIdCobros"  CssClass="form-control"  runat="server" placeholder="Id Cobros" TextMode="Number" ></asp:TextBox>
        </div>

     <!--Fecha-->
    <div class="form-group">
    <label for="FechaCDetalle" >Fecha</label>
        <asp:TextBox ID="txtFechaCDetalle"  CssClass="form-control"  runat="server" placeholder="Fecha" TextMode="Date" ></asp:TextBox>
        </div>

     <!--Monto detalle-->
    <div class="form-group">
    <label for="MontoDetalle" >Detalle</label>
        <asp:TextBox ID="TextBoxMontoDetalle"  CssClass="form-control"  runat="server" placeholder="Monto Mes" TextMode="Number" ></asp:TextBox>
        </div>

    
      <!--Descripcion-->
    <div class="form-group">
    <label for="Descripcion">Descripcion</label>
        <asp:TextBox ID="TextBoxDescripcion"  CssClass="form-control"  runat="server" placeholder="Descripcion Mes" ></asp:TextBox>
        </div>

      <!--Descuento-->
    <div class="form-group">
    <label for="DescuentoDetalle" >Descuento</label>
        <asp:TextBox ID="TextBoxDescuentoDetalle"  CssClass="form-control"  runat="server" placeholder="Descuento Mes" TextMode="Number" ></asp:TextBox>
        </div>

      <!--Forma de pago-->
    <div class="form-group">
    <label for="FormaPagoDetalle" >Forma de pago</label>
        <asp:TextBox ID="TextBoxFormaPagoDetalle"  CssClass="form-control"  runat="server" placeholder="Forma de pago mes" TextMode="Number" ></asp:TextBox>
        </div>

       <!--Total Detalle-->
    <div class="form-group">
    <label for="TotalDetalle" >Total</label>
        <asp:TextBox ID="TextBoxTotalDetalle"  CssClass="form-control"  runat="server" placeholder="Total" TextMode="Number" ></asp:TextBox>
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
