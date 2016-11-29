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
        public string Nombres  { get; set; }
        public string Cedula { get; set; }
        public string Telefonos { get; set; }
        public string Direccion { get; set; }
        public string Email { get; set; }

        public ResponsableCuenta() {
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
            string consulta = string.Format("insert into esponsableCuenta (IdEstudiantes,Nombres,Cedula,Telefonos,Direccion,Email) values({0},'{1}','{2}','{3}','{4}','{5}') SELECT @@IDENTITY", IdEmpleado, Usuario, Email, Clave, Nivel, Foto);

            IdResponsable = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdResponsable > 0;
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
        }


        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }


        public override bool Buscar(int IdBuscado)
        {
            throw new NotImplementedException();
        }
    
       
        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
        }
    }
}
