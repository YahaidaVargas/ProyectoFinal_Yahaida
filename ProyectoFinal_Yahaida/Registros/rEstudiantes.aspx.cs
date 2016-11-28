using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal_Yahaida.Registros
{
    public partial class rEstudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Consultas/cEstudiantes.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

    }
}