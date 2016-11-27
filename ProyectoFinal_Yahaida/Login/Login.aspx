<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoWebFinal.login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="../scripts/jquery-1.9.1.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
    <style type="text/css">

        body {
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #eee;
}

.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="text"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

        .auto-style1 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    
    <div class="container">

      <form class="form-signin" id="form1" runat="server" >
        <h3 class="form-signin-heading" style="font-family: &quot;Goudy Old Style&quot;; text-transform: inherit; font-variant: normal">Ingrese sus datos para entrar al Sistema</h3>
        <label for="TexBoxUserName" class="control-label">Nombre de Usuario</label>
        <asp:TextBox ID="TexBoxNomUsuario" runat="server" CssClass="form-control" />
          <span class="auto-style1">Contraseña</span>
         <asp:TextBox ID="TextBoxContrasena" runat="server" CssClass="form-control" TextMode="Password" />
        <div class="checkbox"> <asp:CheckBox ID="CheckBoxRecordarContrasena" CssClass="checkbox" Text="Recordar contraseña" runat="server" />  </div> 
               
          <asp:Button ID="ButtonLogin" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="Entrar" OnClick="ButtonLogin_Click" />
          <br />
          <asp:HyperLink ID="HyperLinkNuevoUsuario" runat="server" CssClass="btn btn-lg btn-info btn-block" NavigateUrl="~/Registros/rUsuarios.aspx">Registrarse</asp:HyperLink>
      </form>

    </div> <!-- /container -->
    
</body>
</html>
