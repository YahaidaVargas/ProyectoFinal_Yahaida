<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra/Maestra.Master" AutoEventWireup="true" CodeBehind="rCursos.aspx.cs" Inherits="ProyectoFinal_Yahaida.Registros.rCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 201px;
        }
    .auto-style2 {
        text-align: left;
        width: 178px;
    }
    .auto-style3 {
        text-align: left;
        width: 170px;
    }
    .auto-style4 {
        text-align: left;
        width: 166px;
    }
    .auto-style6 {
        width: 90px;
        margin-right: 30px;
    }
    .auto-style7 {
        width: 100%;
        margin-bottom: 18px;
    }
    .auto-style10 {
        text-align: left;
        width: 405px;
    }
    .auto-style11 {
        text-align: left;
        width: 161px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tituloSeccion" runat="server">
    Registro de Cursos
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
       
        <asp:Button ID="BtnBuscar" runat="server" CssClass="btn btn-info" Text="Buscar" Height="35px" Width="114px" style="margin-left: 0" OnClick="BtnBuscar_Click"/>
            
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
         </div>

                  <!--Datos del curso -->
                <table class="auto-style7">

             <!--Grado-->

         <tr>
            <td class="auto-style11">
    <label for="Grado" class="auto-style6">Grado</label></td>
            <td class="auto-style10">
    <label for="Nivel">Nivel</label></td>

             <!--Grado anterior -->
              <td class="text-left">
                  &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>

         <tr>
            <td class="auto-style11">
            <asp:DropDownList ID="DropDownListGrado" runat="server" Height="28px" Width="149px" CssClass="col-xs-offset-0">
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
            <td class="auto-style10">
            <asp:DropDownList ID="DropDownListNivel" runat="server" Height="25px" Width="158px" CssClass="col-xs-offset-0">
                <asp:ListItem>Inicial</asp:ListItem>
                <asp:ListItem>Primaria</asp:ListItem>
                <asp:ListItem>Secundaria</asp:ListItem>
            </asp:DropDownList>
             </td>

              <td class="text-left">
                  &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    <br>
     <br>
     <br>
     <br>
     <br>
     <br>
 
    <!--Cupos -->
    <div class="form-group">
    <label for="CuposCursos">Cupos</label>
        <asp:TextBox ID="TextBoxCuposCursos"  CssClass="form-control"  runat="server" placeholder="Cupos" ></asp:TextBox>
        </div>

        <!--Botones -->
     <table class="nav-justified">
          
            <tr>
                <td class="text-left"><asp:Button  type="button" ID="btnNuevo" runat="server" CssClass="btn btn-warning" text="Nuevo" Height="48px" Width="108px"/></td>
                <td class="auto-style2"><asp:Button  type="button" ID="btnGuardar" runat="server" CssClass="btn btn-primary" text="Guardar" Height="47px" Width="110px" style="margin-left: 0" OnClick="btnGuardar_Click"/></td>
                <td class="auto-style3">
                    <asp:Button ID="BtnEliminar" runat="server"  CssClass="btn btn-danger" Text="Eliminar" Height="48px"  Width="108px" OnClick="BtnEliminar_Click" />
                </td>
            </tr>
        </table>

</asp:Content>
