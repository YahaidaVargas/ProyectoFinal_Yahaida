using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
 public class Cursos : ClaseMaestra
    {

        public int IdCursos { get; set; }
        public string Grados { get; set; }
        public string Nivel { get; set; }
        public int Cupo { get; set; }

        public Cursos() {

            IdCursos = 0;
            Grados = "";
            Nivel = "";
            Cupo = 0;
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into Cursos (Grados,Nivel,Cupo) values('{0}','{1}','{2}') SELECT @@IDENTITY", Grados,Nivel,Cupo);

            IdCursos = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdCursos > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE Cursos SET Grados = '{0}', Nivel = '{1}', Cupo = {2}  WHERE IdCursos = {6}", Grados, Nivel, Cupo, IdCursos);
            return conexion.EjecutarDB(sql);
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM Cursos WHERE IdCursos = {0}", IdCursos);
            return conexion.EjecutarDB(sql);
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM Cursos WHERE IdCursos = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdCursos = Convert.ToInt32(dt.Rows[0]["IdCursos"]);              
                Grados = dt.Rows[0]["Grados"].ToString();
                Nivel = dt.Rows[0]["Nivel"].ToString();
                Cupo = Convert.ToInt32(dt.Rows[0]["Cupo"]);
               
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from Cursos where " + Condicion + " order by " + Orden);
        }

        public DataTable ListadoMix(string Condicion = "1=1", string Orden = "IdCursos ASC") {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("select IdCursos,(Grados+' ( '+Nivel+' ) - ['+CONVERT(varchar(12), Cupo, 0)+']') as Curso from Cursos where " + Condicion + " order by " + Orden);
        }
    }
}
