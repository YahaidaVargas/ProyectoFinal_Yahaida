using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace ProyectoFinal_Yahaida.Consultas
{
    public partial class cEstudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsCallback)
            {
                Estudiantes estudiante = new Estudiantes();
                GvEstudiantes.DataSource = estudiante.ListadoEstudianteCurso();
                GvEstudiantes.DataBind();
            }
            
        }

        
    }
}