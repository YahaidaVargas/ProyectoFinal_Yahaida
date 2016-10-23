using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
  public  class Usuarios : ClaseMaestra
    {
        public int IdUsuario { get; set; }
        public DateTime Fecha { get; set; }
        public string Nombres { get; set; }
        public string Usuario{ get; set; }
        public string Email { get; set; }
        public string Clave { get; set; }
        public int Nivel{ get; set; }
        public string Foto { get; set; }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into Usuarios (Fecha,Nombres,Usuario,Email,Clave,Nivel,Foto) values({0},'{1}','{2}','{3}','{4}','{5}',{6},'{7}') SELECT @@IDENTITY", Fecha, Nombres, Usuario, Email, Clave, Nivel, Foto);
            // return conexion.EjecutarDB(consulta); 

            IdUsuario= Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdUsuario > 0;
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

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "desc")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select" + Campos + "from Usuarios where " + Condicion + " order by IdUsuarios " + Orden);
        }


    }
}
