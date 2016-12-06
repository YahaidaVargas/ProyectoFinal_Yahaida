using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace ProyectoFinal_Yahaida.Registros
{
    public partial class rCobros : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Consultas/cCobros.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Cobros cob = new Cobros();
            Inscripcion ins = new Inscripcion();


           //cob.IdInscripcion = cob.IdInscripcion;
           
           // cob.IdCobros =Convert.ToInt32(TextBoxId.Text);
           // //cob.Fecha = txtFecha.Text;
            //cob.Monto = Convert.ToInt32(TextBoxMonto.Text);
            //cob.Descuento = Convert.ToInt32(TextBoxDescuento.Text);
            //cob.FormaDePago = TextBoxFormaPago.Text;
            //cob.Total = Convert.ToInt32(TextBoxTotal.Text);
            //cob.Insertar();

        }

        protected void ButtonBuscarAlumno_Click(object sender, EventArgs e)
        {
            string consulta = TextBoxBuscarAlumno.Text;
            Estudiantes estudiante = new Estudiantes();            
            GridViewBusquedaAlumno.DataSource = estudiante.ListadoEstudianteCurso(string.Format("e.Nombre LIKE '%{0}%' OR e.Apellido LIKE '%{0}%' OR e.Matricula LIKE '{0}%'", consulta));
            GridViewBusquedaAlumno.DataBind();
            TextBoxNombreEstudianteInscr.Text = "Hola";
        }


    }
}