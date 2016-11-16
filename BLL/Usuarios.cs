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
        public string  Repclave { get; set; }
        public string Nivel{ get; set; }
        public string Foto { get; set; }

        public Usuarios()
        {
            IdUsuario = 0;
            Fecha = DateTime.Now;
            Nombres = "";
            Usuario = "";
            Email = "";
            Clave = "";
            Repclave = "";
            Nivel = "";
            Foto= "";
           

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into Usuarios (Fecha,Nombres,Usuario,Email,Clave,Repclave,Nivel,Foto) values({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}') SELECT @@IDENTITY",Fecha.ToString("dd-MM-yyy"), Nombres, Usuario, Email, Clave, Repclave, Nivel, Foto);
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
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM Usuarios WHERE IdUsuario = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdUsuario = Convert.ToInt32(dt.Rows[0]["IdUsuario"]);
                Nombres = dt.Rows[0]["Nombres"].ToString();
                Usuario = dt.Rows[0]["Usuario"].ToString();
                Email = dt.Rows[0]["Email"].ToString();
                Clave = dt.Rows[0]["Clave"].ToString();
                Repclave= dt.Rows[0]["RepClave"].ToString();
                Nivel= dt.Rows[0]["Nivel"].ToString();
                Foto= dt.Rows[0]["Foto"].ToString();
                Fecha = Convert.ToDateTime(dt.Rows[0]["Fecha"]);
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from Usuarios where " + Condicion + " order by " + Orden);
        }
    }

      


    }

