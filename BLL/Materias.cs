using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
 public class Materias : ClaseMaestra
    {
        public int IdMaterias{ get; set; }
        public int IdEmpleado{ get; set; }
        public string Materia{ get; set; }

        public Materias()
        {
            IdMaterias = 0;
            IdEmpleado = 0;
            Materia = "";
    
        }
        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into Materias (IdEmpleado,Materia) values({0},'{1}') SELECT @@IDENTITY", IdEmpleado, Materia);

            IdMaterias = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdMaterias > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE Materias SET Materia = '{0}' WHERE IdMaterias = {2}", Materia, IdMaterias);
            return conexion.EjecutarDB(sql);
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM Materias WHERE IdMaterias = {0}", IdMaterias);
            return conexion.EjecutarDB(sql);
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM Materias WHERE IdMaterias = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdMaterias = Convert.ToInt32(dt.Rows[0]["IdMaterias"]);
                IdEmpleado = Convert.ToInt32(dt.Rows[0]["IdEmpleado"]);
                Materia= dt.Rows[0]["Materia"].ToString();               
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from Materias where " + Condicion + " order by " + Orden);
        }
    }
}
