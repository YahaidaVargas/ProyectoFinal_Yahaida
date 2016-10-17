using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace ProyectoFinal_Yahaida.Maestra
{
    public partial class Maestra : System.Web.UI.MasterPage
    {
        public Dictionary<string, NavMenu> menues = new Dictionary<string, NavMenu>();

        public NivelUsuario NivelUsActual = NivelUsuario.Admin;

        protected void Page_Load(object sender, EventArgs e)
        {

            NavMenu estudiantes = new NavMenu();
            estudiantes.activo = true;
            estudiantes.niveles.Add(NivelUsuario.Admin);
            estudiantes.niveles.Add(NivelUsuario.Secretaria);
            estudiantes.titulo = "Estudiante";
            menues.Add("estudiantes", estudiantes);
            
            NavMenu estuctiv = new NavMenu();
            estuctiv.activo = true;
            estuctiv.niveles.Add(NivelUsuario.Admin);
            estuctiv.niveles.Add(NivelUsuario.Estudiante);
            estuctiv.titulo = "Estudiantes actividades";
            menues.Add("estuctiv", estuctiv);

            NavMenu profesores = new NavMenu();
            profesores.activo = true;
            profesores.niveles.Add(NivelUsuario.Admin);
            menues.Add("profesores", profesores);


            NavMenu profactiv = new NavMenu();
            profactiv.activo = true;
            profactiv.niveles.Add(NivelUsuario.Admin);
            profactiv.niveles.Add(NivelUsuario.Profesor);
            menues.Add("profactiv", profactiv);

            NavMenu materias = new NavMenu();
            materias.activo = true;
            materias.niveles.Add(NivelUsuario.Admin);
            menues.Add("materias", materias);

            NavMenu cursos = new NavMenu();
            cursos.activo = true;
            cursos.niveles.Add(NivelUsuario.Admin);
            menues.Add("cursos", cursos);

            NavMenu horarios = new NavMenu();
            horarios.activo = true;
            horarios.niveles.Add(NivelUsuario.Admin);
            horarios.niveles.Add(NivelUsuario.Profesor);
            menues.Add("horarios", horarios);

            NavMenu usuarios = new NavMenu();
            usuarios.activo = true;
            usuarios.niveles.Add(NivelUsuario.Admin);
            menues.Add("usuarios", usuarios);

            NavMenu reportes = new NavMenu();
            reportes.activo = true;
            reportes.niveles.Add(NivelUsuario.Admin);
            reportes.niveles.Add(NivelUsuario.Secretaria);
            menues.Add("reportes", reportes);

            NavMenu facturar = new NavMenu();
            facturar.activo = true;
            facturar.niveles.Add(NivelUsuario.Admin);
            facturar.niveles.Add(NivelUsuario.Secretaria);
            menues.Add("facturar", facturar);



        }
    }
}