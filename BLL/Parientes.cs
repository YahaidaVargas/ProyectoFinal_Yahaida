using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using BLL;
using DAL;

namespace BLL
{
    public class Parientes : ClaseMaestra
    {

        public int IdParientes { get; set; }
        public int IdEstudiantes { get; set; }
        public string Parentesco { get; set; }
        public string Nombres { get; set; }
        public string Profesion  { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Cedula { get; set; }
        public string Pasatiempo { get; set; }
        public bool Responsable { get; set; }

        public Parientes() {
            IdParientes = 0;
            IdEstudiantes = 0;
            Parentesco = "";
            Nombres = "";
            Profesion = "";
            Direccion = "";
            Telefono = "";
            Cedula = "";
            Pasatiempo = "";
            Responsable = true;
            
        }


        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into Parientes (IdEstudiantes,Parentesco,Nombres,Profesion,Direccion,Telefono,Cedula,Pasatiempo,Responsable) values({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}') SELECT @@IDENTITY", IdEstudiantes, Parentesco,Nombres,Profesion,Direccion,Telefono,Cedula,Pasatiempo,Responsable);

            IdParientes = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdParientes > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE Parientes SET Parentesco = '{0}', Nombres = '{1}', Profesion = '{2}', Direccion = '{3}', Telefono= '{4}', Cedula = '{5}', Pasatiempo = '{6}', Responsable = {7} WHERE IdParientes = {8}", Parentesco, Nombres,Profesion,Direccion,Telefono,Cedula,Pasatiempo,Responsable, IdParientes);
            return conexion.EjecutarDB(sql);
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM Parientes WHERE IdParientes = {0}", IdParientes);
            return conexion.EjecutarDB(sql);
        }


        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM Parientes WHERE IdParientes = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdParientes = Convert.ToInt32(dt.Rows[0]["IdParientes"]);
                IdEstudiantes= Convert.ToInt32(dt.Rows[0]["IdEstudiantes"]);
                Parentesco = dt.Rows[0]["Parentesco"].ToString();
                Nombres= dt.Rows[0]["Nombres"].ToString();
                Profesion = dt.Rows[0]["Profesion "].ToString();
                Direccion= dt.Rows[0]["Direccion"].ToString();
                Telefono = dt.Rows[0]["Telefono"].ToString();
                Pasatiempo= dt.Rows[0]["Pasatiempo"].ToString();
               Responsable= Convert.ToBoolean(dt.Rows[0]["Responsable"].ToString());
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from Parientes where " + Condicion + " order by " + Orden);
        }
    }
}
