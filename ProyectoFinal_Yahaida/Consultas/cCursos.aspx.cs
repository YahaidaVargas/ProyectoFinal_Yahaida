using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace ProyectoFinal_Yahaida.Consultas
{
    public partial class cCursos : System.Web.UI.Page
    {
        Cursos curB = new Cursos();
        DataTable Dt = new DataTable();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsCallback)
            {
                Dt = curB.Listado("IdCursos,Grados,Nivel,Cupo", "1=1", "IdCursos desc");
                GridViewCursos.DataSource = Dt;
                GridViewCursos.DataBind();

            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string filtro = "1=1";

            if (DropDFiltroBuscarCursos.SelectedIndex == 0)//id
            {
                if (TxtFiltroBuscar.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "IdCursos = " + TxtFiltroBuscar.Text;
                }

            }
            //
            else if (DropDFiltroBuscarCursos.SelectedIndex == 1)//Grados
            {
                if (TxtFiltroBuscar.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }

                else
                {
                    filtro = "Grados like '%" + TxtFiltroBuscar.Text + "%'";
                }
            }
            //

            else if (DropDFiltroBuscarCursos.SelectedIndex == 1)//Nivel
            {
                if (TxtFiltroBuscar.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }

                else
                {
                    filtro = "Nivel like '%" + TxtFiltroBuscar.Text + "%'";
                }
            }
            //
            else if (DropDFiltroBuscarCursos.SelectedIndex == 1)//Cupo
            {
                if (TxtFiltroBuscar.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }

                else
                {
                    filtro = "Cupo like '%" + TxtFiltroBuscar.Text + "%'";
                }
            }
            //

            Dt = curB.Listado("IdCursos,Grados,Nivel,Cupo", filtro, "IdCursos desc");

            GridViewCursos.DataSource = Dt;
            GridViewCursos.DataBind();

        }

    }
}