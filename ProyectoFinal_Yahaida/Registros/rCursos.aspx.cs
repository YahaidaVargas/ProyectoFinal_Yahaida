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
            if (!IsPostBack)
            {
                if (Request.QueryString.Count > 0)
                {
                    int id =Convert.ToInt32(Request.QueryString["id"]);
                    Cursos curs = new Cursos();
                    

                    if (curs.Buscar(id)) {
                        TextBoxId.Text = curs.IdCursos.ToString();
                        DropDownListGrado.SelectedValue = curs.Grados;
                        DropDownListNivel.SelectedValue = curs.Nivel;
                        TextBoxCuposCursos.Text = curs.Cupo.ToString();
                        Session["edit"] = true;
                    }

                }
                else
                {
                    Session["edit"] = false;
                }
                
            }
        }


        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Cursos cur = new Cursos();

            cur.Grados = DropDownListGrado.SelectedValue;
            cur.Nivel = DropDownListNivel.SelectedValue;
            cur.Cupo =Convert.ToInt32(TextBoxCuposCursos.Text);

            bool editar = Convert.ToBoolean(Session["edit"]);

            if (editar) {
                cur.IdCursos = Convert.ToInt32(TextBoxId.Text);
                if(cur.Editar())
                Utilitarios.ShowToastr(Page, "Registro Editado", "Mensaje", "info");
            }
            else
            {
             cur.Insertar();
                Utilitarios.ShowToastr(Page, "Registro guardado", "Mensaje", "info");
            }


            Limpiar();
            
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            Cursos Cur = new Cursos();
            Cur.IdCursos = Convert.ToInt32(TextBoxId.Text);

            if( Cur.Eliminar())
            Utilitarios.ShowToastr(this, "Registro Eliminado", "Mensaje", "info");

            Limpiar();
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            Cursos cr = new Cursos();

            Limpiar();
        }

        private void Limpiar()
        {
            DropDownListGrado.SelectedIndex = DropDownListNivel.SelectedIndex = 0;
            TextBoxCuposCursos.Text = string.Empty;
            TextBoxId.Text = string.Empty;
            Session.Clear();
        }
    }
}