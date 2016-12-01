using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;
namespace BLL
{
    public class ResponsableCuenta : ClaseMaestra
    {

        public int IdResponsable { get; set; }
        public int IdEstudiantes { get; set; }
        public string Nombres { get; set; }
        public string Cedula { get; set; }
        public string Telefonos { get; set; }
        public string Direccion { get; set; }
        public string Email { get; set; }

        public ResponsableCuenta()
        {
            IdResponsable = 0;
            IdEstudiantes = 0;
            Nombres = "";
            Cedula = "";
            Telefonos = "";
            Direccion = "";
            Email = "";
        }


        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into ResponsableCuenta (IdEstudiantes,Nombres,Cedula,Telefonos,Direccion,Email) values({0},'{1}','{2}','{3}','{4}','{5}') SELECT @@IDENTITY", IdEstudiantes, Nombres, Cedula, Telefonos, Direccion, Email);

            IdResponsable = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdResponsable > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE ResponsableCuenta SET Nombres = '{0}', Cedula = '{1}', Telefonos = '{2}', Direccion = '{3}' , Email = '{4}' WHERE IdResponsable = {6}", Nombres, Cedula, Telefonos, Direccion, Email, IdResponsable);
            return conexion.EjecutarDB(sql);
        }


        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM ResponsableCuenta WHERE IdResponsable = {0}", IdResponsable);
            return conexion.EjecutarDB(sql);
        }


        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM ResponsableCuenta WHERE IdResponsable = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdResponsable = Convert.ToInt32(dt.Rows[0]["IdResponsable"]);
                IdEstudiantes = Convert.ToInt32(dt.Rows[0]["IdEstudiantes"]);
                Nombres = dt.Rows[0]["Nombres"].ToString();
                Cedula = dt.Rows[0]["Cedula"].ToString();
                Telefonos = dt.Rows[0]["Telefonos"].ToString();
                Direccion = dt.Rows[0]["Direccion"].ToString();
                Email = dt.Rows[0]["Email"].ToString();

            }

            return dt.Rows.Count > 0;
        }



        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = conexion.BuscarDb("Select " + Campos + " from ResponsableCuenta where " + Condicion + " order by IdResponsable " + Orden);

            if (dt.Rows.Count > 0)
            {
                IdResponsable = Convert.ToInt32(dt.Rows[0]["IdResponsable"]);
                IdEstudiantes = Convert.ToInt32(dt.Rows[0]["IdEstudiantes"]);
                Nombres = dt.Rows[0]["Nombres"].ToString();
                Cedula = dt.Rows[0]["Cedula"].ToString();
                Telefonos = dt.Rows[0]["Telefonos"].ToString();
                Direccion = dt.Rows[0]["Direccion"].ToString();
                Email = dt.Rows[0]["Email"].ToString();

            }

            return dt;
        }
    }
}
