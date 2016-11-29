using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
 public class DocumentosRecibidos : ClaseMaestra
    {

        public int IdDocumentosRecibidos { get; set; }
        public int IdEstudiantes { get; set; }
        public bool ActaNacimiento { get; set; }
        public bool CartonNotas { get; set; }
        public bool CertificadoGrados { get; set; }
        public bool CertificadoOctavo { get; set; }
        public bool CertificadoMedico { get; set; }
        public bool CartaBuenaConducta { get; set; }
        public bool CopiaTarjetaVacuna { get; set; }

        public DocumentosRecibidos()
        {
            IdDocumentosRecibidos = 0;
            IdEstudiantes = 0;
            ActaNacimiento = false;
            CartonNotas = false;
            CertificadoGrados = false;
            CertificadoOctavo = false;
            CertificadoMedico = false;
            CartaBuenaConducta = false;
            CopiaTarjetaVacuna = false;


        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into DocumentosRecibidos (IdEstudiantes,ActaNacimiento,CartonNotas,CertificadoGrados,CertificadoOctavo,CertificadoMedico,CartaBuenaConducta,CopiaTarjetaVacuna) values({0},'{1}','{2}','{3}','{4}','{5}',{6}',{7}') SELECT @@IDENTITY", IdEstudiantes,ActaNacimiento,CartonNotas,CertificadoGrados,CertificadoOctavo,CertificadoMedico,CartaBuenaConducta,CopiaTarjetaVacuna);

            IdDocumentosRecibidos = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdDocumentosRecibidos > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE DocumentosRecibidos SET ActaNacimiento = '{0}', CartonNotas = '{1}', CertificadoGrados = '{2}', CertificadoOctavo = '{3}', CertificadoMedico = '{4}', CartaBuenaConducta = '{5}', CopiaTarjetaVacuna = '{6}'   WHERE IdDocumentosRecibidos = {6}", ActaNacimiento,CartonNotas,CertificadoGrados,CertificadoOctavo,CertificadoMedico,CartaBuenaConducta,CopiaTarjetaVacuna, IdDocumentosRecibidos);
            return conexion.EjecutarDB(sql);
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM DocumentosRecibidos WHERE IdDocumentosRecibidos = {0}", IdDocumentosRecibidos);
            return conexion.EjecutarDB(sql);
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM DocumentosRecibidos WHERE IdDocumentosRecibidos = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdDocumentosRecibidos = Convert.ToInt32(dt.Rows[0]["IdDocumentosRecibidos"]);
                IdEstudiantes = Convert.ToInt32(dt.Rows[0]["IdEstudiantes"]);
                ActaNacimiento = Convert.ToBoolean(dt.Rows[0]["ActaNacimiento"]);
                CartonNotas = Convert.ToBoolean(dt.Rows[0]["CartonNotas"]);
                CertificadoGrados = Convert.ToBoolean(dt.Rows[0]["CertificadoGrados"]);
                CertificadoOctavo = Convert.ToBoolean(dt.Rows[0]["CertificadoOctavo"]);
                CertificadoMedico = Convert.ToBoolean(dt.Rows[0]["CertificadoMedico"]);
                CartaBuenaConducta = Convert.ToBoolean(dt.Rows[0]["CartaBuenaConducta "]);
                CopiaTarjetaVacuna = Convert.ToBoolean(dt.Rows[0]["CopiaTarjetaVacuna"]);
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from DocumentosRecibidos where " + Condicion + " order by " + Orden);
        }

    }
}
