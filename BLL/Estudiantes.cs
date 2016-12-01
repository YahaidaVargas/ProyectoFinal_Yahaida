using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
 public class Estudiantes : ClaseMaestra
    {
        
        public int IdEstudiantes { get; set; }
        public int IdCursos { get; set; }
        public string Fecha  { get; set; }
        public string Matricula { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string FechaNacimiento { get; set; }
        public string Religion { get; set; }
        public string LugarNacimiento { get; set; }
        public string DeporteOpasatiempo { get; set; }
        public string Foto { get; set; }

        public Estudiantes()
        {
            IdEstudiantes = 0;
            IdCursos = 0;
            Fecha = "";
            Matricula = "";
            Nombre = "";
            Apellido = "";
            FechaNacimiento = "";
            Religion = "";
            LugarNacimiento = "";
            Religion = "";
            LugarNacimiento = "";
            DeporteOpasatiempo = "";
            Foto = "";

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into Estudiantes (IdCursos,Fecha,Matricula,Nombre,Apellido,FechaNacimento,Religion,LugarNacimiento,DeporteOpasatiempo,Foto) values({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}') SELECT @@IDENTITY", IdCursos, Fecha, Matricula, Nombre,Apellido, FechaNacimiento,Religion,LugarNacimiento,DeporteOpasatiempo, Foto);

            IdEstudiantes = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdEstudiantes > 0;
        }
    

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE Estudiantes SET Fecha = '{0}', Matricula = '{1}', Nombre = '{2}', Apellido = '{3}', FechaNacimiento = '{4}', Religion = '{5}', LugarNacimiento = '{6}', DeporteOpasatiempo = '{7}', Foto = '{8}' WHERE IdEstudiantes = {9}", IdCursos,Fecha,Matricula,Nombre,Apellido,FechaNacimiento,Religion,LugarNacimiento,DeporteOpasatiempo,Foto, IdEstudiantes);
            return conexion.EjecutarDB(sql);
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM Estudiantes WHERE IdEstudiantes = {0}", IdEstudiantes);
            return conexion.EjecutarDB(sql);
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM Estudiantes WHERE IdEstudiantes = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdEstudiantes = Convert.ToInt32(dt.Rows[0]["IdEstudiantes"]);
                IdCursos = Convert.ToInt32(dt.Rows[0]["IdCursos"]);
                Fecha = dt.Rows[0]["Fecha"].ToString();
                Matricula = dt.Rows[0]["Matricula"].ToString();
                Nombre = dt.Rows[0]["Nombre"].ToString();
                Apellido = dt.Rows[0]["Apellido"].ToString();
                FechaNacimiento = dt.Rows[0]["FechaNacimento"].ToString();
                Religion = dt.Rows[0]["Religion"].ToString();
                LugarNacimiento = dt.Rows[0]["LugarNacimiento"].ToString();
                DeporteOpasatiempo = dt.Rows[0]["DeporteOpasatiempo"].ToString();
                Foto = dt.Rows[0]["Foto"].ToString();                
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = " ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from Estudiantes where " + Condicion + " order by " + Orden);
        }

        public DataTable ListadoEstudianteCurso(string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("select e.IdEstudiantes, e.Matricula, (e.Nombre + ' ' + e.Apellido) as estudiante, e.FechaNacimento as fechanaciemiento, (c.Grados + '( ' + c.Nivel + ' )') as Grado, e.Fecha from Estudiantes e join Cursos c on (e.IdCursos = c.IdCursos) where " + Condicion + " order by e.IdEstudiantes " + Orden);
        }
    }
}
