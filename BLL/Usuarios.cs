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
        public int IdEmpleado { get; set; }        
        public string Usuario{ get; set; }
        public string Email { get; set; }
        public string Clave { get; set; }
        
        public string Nivel{ get; set; }
        public string Foto { get; set; }
        public DateTime Creando { get; set; }
        public DataTable UsuarioDt { get; set; }

     


        public Usuarios()
        {
            IdUsuario = 0;
            IdEmpleado = 0;
            Usuario = "";
            Email = "";
            Clave = "";
            Nivel = "";
            Foto= "";
            UsuarioDt = new DataTable();
            
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into Usuarios (IdEmpleado,Usuario,Email,Clave,Nivel,Foto) values({0},'{1}','{2}','{3}','{4}','{5}') SELECT @@IDENTITY", IdEmpleado, Usuario, Email, Clave, Nivel, Foto);
            // return conexion.EjecutarDB(consulta); 

            IdUsuario= Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdUsuario > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE Usuarios SET Usuario = '{0}', Email = '{1}', Clave = '{2}', RepClave = '{3}', Nivel = '{4}', Foto = '{5}' WHERE IdUsuario = {6}",  Usuario,Email,Clave,Nivel,Foto, IdUsuario);
            return conexion.EjecutarDB(sql);
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM Usuarios WHERE IdUsuario = {0}", IdUsuario);
            return conexion.EjecutarDB(sql);
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM Usuarios WHERE IdUsuario = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdUsuario = Convert.ToInt32(dt.Rows[0]["IdUsuario"]);
                IdEmpleado = Convert.ToInt32(dt.Rows[0]["IdEmpleado"]);
                Usuario = dt.Rows[0]["Usuario"].ToString();
                Email = dt.Rows[0]["Email"].ToString();
                Clave = dt.Rows[0]["Clave"].ToString();
                Nivel= dt.Rows[0]["Nivel"].ToString();
                Foto= dt.Rows[0]["Foto"].ToString();
                Creando =Convert.ToDateTime(dt.Rows[0]["Creando"].ToString());
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from Usuarios where " + Condicion + " order by " + Orden);
        }


        public bool Login()
        {
            ConexionDb conexion = new ConexionDb();
            UsuarioDt= conexion.BuscarDb(string.Format("SELECT * FROM Usuarios WHERE Usuario = '{0}' AND Clave = '{1}'", Usuario, Clave));

            if (UsuarioDt.Rows.Count > 0)
            {
                IdUsuario = Convert.ToInt32(UsuarioDt.Rows[0]["IdUsuario"]);
                Email = UsuarioDt.Rows[0]["Email"].ToString();
                Usuario = UsuarioDt.Rows[0]["Usuario"].ToString();
                Clave = "";
        
                return true;
            }

            return false;
        }

    }

      


    }

