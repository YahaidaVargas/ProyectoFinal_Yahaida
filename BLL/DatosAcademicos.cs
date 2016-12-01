using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class DatosAcademicos : ClaseMaestra
    {

        public int IdDatosAcademicos { get; set; }
        public int IdEstudiantes{ get; set; }
        public string GradoActual { get; set; }
        public string GradoAnterior { get; set; }
        public string EscuelaAnterior { get; set; }

        public DatosAcademicos()
        {
            IdDatosAcademicos = 0;
            IdEstudiantes = 0;
            GradoActual = "";
            GradoAnterior = "";
            EscuelaAnterior = "";

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into DatosAcademicos(IdEstudiantes,GradoActual,GradoAnterior,EscuelaAnterior) values({0},'{1}','{2}','{3}') SELECT @@IDENTITY", IdEstudiantes,GradoActual,GradoAnterior,EscuelaAnterior);

            IdDatosAcademicos = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdDatosAcademicos > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE DatosAcademicos SET GradoActual = '{0}', GradoAnterior = '{1}', EscuelaAnterior = '{2}' WHERE IdDatosAcademicos = {3}", GradoAnterior,GradoActual,EscuelaAnterior,  IdDatosAcademicos);
            return conexion.EjecutarDB(sql);
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM DatosAcademicos WHERE IdDatosAcademicos = {0}", IdDatosAcademicos);
            return conexion.EjecutarDB(sql);
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM DatosAcademicos WHERE IdDatosAcademicos = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdDatosAcademicos = Convert.ToInt32(dt.Rows[0]["IdDatosAcademicos"]);
                IdEstudiantes = Convert.ToInt32(dt.Rows[0]["IdEstudiantes"]);
                GradoAnterior = dt.Rows[0]["GradoAnterior"].ToString();
                GradoActual= dt.Rows[0]["GradoActual"].ToString();
                EscuelaAnterior= dt.Rows[0]["EscuelaAnterior"].ToString();                
            }

            return dt.Rows.Count > 0;
        }
        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = conexion.BuscarDb("Select " + Campos + " from DatosAcademicos where " + Condicion + " order by IdDatosAcademicos " + Orden);

            if (dt.Rows.Count > 0)
            {
                IdDatosAcademicos = Convert.ToInt32(dt.Rows[0]["IdDatosAcademicos"]);
                IdEstudiantes = Convert.ToInt32(dt.Rows[0]["IdEstudiantes"]);
                GradoAnterior = dt.Rows[0]["GradoAnterior"].ToString();
                GradoActual = dt.Rows[0]["GradoActual"].ToString();
                EscuelaAnterior = dt.Rows[0]["EscuelaAnterior"].ToString();
            }

            return dt;
        }
    }
}
