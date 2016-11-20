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
    public partial class cUsuarios : System.Web.UI.Page
    {
        Usuarios Us = new Usuarios();
        DataTable Dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsCallback)
            {
                Dt = Us.Listado("IdUsuario, Fecha, Nombres, Usuario, Email,Nivel,Foto","1=1","IdUsuario desc");
                GvUsuarios.DataSource = Dt;
                GvUsuarios.DataBind();

            }

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            

            string filtro = "1=1";

            if (DropDFiltroBuscarUser.SelectedIndex == 0)//id
            {
                if (TxtFiltroBuscar.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "IdUsuario = " + TxtFiltroBuscar.Text;
                }
            }
            //
            else if (DropDFiltroBuscarUser.SelectedIndex == 1)//nombre
            {
                if (TxtFiltroBuscar.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }

                else
                {
                    filtro = "Nombres like '%" + TxtFiltroBuscar.Text + "%'";
                }
            }
            //
            else if (DropDFiltroBuscarUser.SelectedIndex == 2)//Usuario
            {
                if (TxtFiltroBuscar.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }

                else
                {
                    filtro = "Usuario like '%" + TxtFiltroBuscar.Text + "%'";
                }
            }
        //

            else if (DropDFiltroBuscarUser.SelectedIndex == 3)//email
            {
                if (TxtFiltroBuscar.Text.Trim().Length == 0)
                {
                    filtro = "1=1";
                }
                else
                {
                    filtro = "Email like '%" + TxtFiltroBuscar.Text + "%'";
                }
            }

            Dt = Us.Listado("IdUsuario, Fecha, Nombres, Usuario, Email, Nivel, Foto", filtro, "IdUsuario ASC");            
            GvUsuarios.DataSource = Dt;
            GvUsuarios.DataBind();

        }

        }

       
    }
