using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;


namespace BLL
{
    public class Inscripcion : ClaseMaestra
    {
        public int IdInscripcion { get; set; }
        public string Fecha { get; set; }
        public int IdEstudiantes { get; set; }
        public bool Inscrito { get; set; }
        public string Detalle { get; set; }


        public Inscripcion()
        {
            IdInscripcion = 0;
            Fecha = "";
            IdEstudiantes = 0;
            Inscrito = true;
            Detalle = "";

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into Inscripcion (IdEstudiantes,Fecha,Inscrito,Detalle) values({0},'{1}','{2}','{3}') SELECT @@IDENTITY",IdEstudiantes,Fecha,Inscrito,Detalle);
            IdInscripcion = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdInscripcion > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE Inscripcion SET Fecha = '{0}',  Inscrito='{1}', Detalle = '{2}' WHERE IdInscripcion = {3}",Fecha,Inscrito,Detalle,  IdInscripcion);
            return conexion.EjecutarDB(sql);
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM Inscripcion WHERE IdInscripcion  = {0}", IdInscripcion);
            return conexion.EjecutarDB(sql);
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM Inscripcion WHERE IdInscripcion = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdInscripcion = Convert.ToInt32(dt.Rows[0]["IdInscripcion"]);
                Fecha = dt.Rows[0]["Fecha "].ToString();
                IdEstudiantes = Convert.ToInt32(dt.Rows[0]["IdEstudiantes"]);
                Inscrito=Convert.ToBoolean(dt.Rows[0][" Inscrito "].ToString());
                Detalle = dt.Rows[0]["Detalle "].ToString();
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from Inscripcion where " + Condicion + " order by " + Orden);
        }

    }
}
