using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace ProyectoWebFinal.login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            Usuarios us = new Usuarios();
            us.Usuario = TexBoxNomUsuario.Text;
            us.Clave = TextBoxContrasena.Text;

            if (us.Login())
            {
                Application["logeado"] = true;
                Session["usuariodt"] = us.UsuarioDt;
                Response.Redirect("../Default.aspx");
            }
            else
            {
                Response.Redirect("../registros/rUsuarios.aspx");
            }
        }
    }
}