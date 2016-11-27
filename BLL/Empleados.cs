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
        }



        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            IdEmpleado = Convert.ToInt32(conexion.ObtenerValorDb(string.Format("INSERT INTO Empleados(Nombre, Apellido, Direccion, Telefono, Celular, Cedula)VALUES('{0}','{1}','{2}','{3}','{4}','{5}') SELECT @@identity", Nombre,Apellido,Direccion,Telefono,Celular,Cedula)));
            return IdEmpleado > 0;
        }

        public override bool Buscar(int IdBuscado)
        {
            throw new NotImplementedException();
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }


        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from Empleados where " + Condicion + " order by " + Orden);
        }
    }
}
