using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Empleados : ClaseMaestra
    {

        public int IdEmpleado { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public string Cedula { get; set; }

        public Empleados() {
            IdEmpleado = 0;
            Nombre = "";
            Apellido = "";
            Direccion = "";
            Telefono = "";
            Celular = "";
            Cedula = "";

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            IdEmpleado = Convert.ToInt32(conexion.ObtenerValorDb(string.Format("INSERT INTO Empleados(Nombre, Apellido, Direccion, Telefono, Celular, Cedula)VALUES('{0}','{1}','{2}','{3}','{4}','{5}') SELECT @@identity", Nombre,Apellido,Direccion,Telefono,Celular,Cedula)));
            return IdEmpleado > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE Empleados SET Nombre = '{0}', Apellido = '{1}', Direccion = '{2}', Telefono = '{3}', Celular= '{4}', Cedula = '{5}' WHERE IdEmpleado = {6}", Nombre, Apellido, Direccion, Telefono, Celular,Cedula, IdEmpleado);
            return conexion.EjecutarDB(sql);
        }


        public override bool Eliminar()
        {

            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM Empleados WHERE IdEmpleado = {0}", IdEmpleado);
            return conexion.EjecutarDB(sql);
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM Empleados WHERE IdEmpleado = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
               IdEmpleado = Convert.ToInt32(dt.Rows[0]["IdEmpleado"]);
               Nombre = dt.Rows[0]["Nombre"].ToString();
               Apellido = dt.Rows[0]["Apellido"].ToString();
               Direccion= dt.Rows[0]["Direccion"].ToString();
               Telefono = dt.Rows[0]["Telefono"].ToString();
               Celular = dt.Rows[0]["Celular"].ToString();
               Cedula = dt.Rows[0]["Cedula"].ToString();
               
            }
            return dt.Rows.Count > 0;
        }


        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from Empleados where " + Condicion + " order by " + Orden);
        }
    }
}
