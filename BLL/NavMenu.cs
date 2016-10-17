using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public enum NivelUsuario
    {
        Admin = 1,
        Secretaria,
        Profesor,
        Estudiante,
        Ninguno
    }

    public class NavMenu
    {
        public bool activo { get; set; }
        public List<NivelUsuario> niveles { get; set; }
        public string titulo { get; set; }
        public string icon { get; set; }
        public string enlace { get; set; }

        public NavMenu() {
            niveles = new List<NivelUsuario>();
        }

    }

}
