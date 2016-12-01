using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace ProyectoFinal_Yahaida.Registros
{
    public partial class rCursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Consultas/cCursos.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Cursos cur = new Cursos();

            cur.Grados = DropDownListGrado.SelectedValue;
            cur.Nivel = DropDownListNivel.SelectedValue;
            cur.Cupo =Convert.ToInt32(TextBoxCuposCursos.Text);
            cur.Insertar();

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            Cursos Cur = new Cursos();
            Cur.IdCursos = Convert.ToInt32(TextBoxId.Text);
            Cur.Eliminar();
            Utilitarios.ShowToastr(this, "Registro Eliminado", "Mensaje", "info");
        }
    }
}