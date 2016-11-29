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
        public int IdParientes { get; set; }
        public int IdDatosSalud { get; set; }
        public int IdDatosAcademicos { get; set; }
        public int IdCursos { get; set; }
        public int  IdDocumentosRecibidos { get; set; }

        public Inscripcion()
        {
            IdInscripcion = 0;
            Fecha = "";
            IdEstudiantes = 0;
            IdParientes = 0;
            IdDatosSalud = 0;
            IdDatosAcademicos = 0;
            IdCursos = 0;
            IdDocumentosRecibidos = 0;

        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into Inscripcion (Fecha,IdEstudiantes,IdParientes,IdDatosSalud,IdDatosAcademicos,IdCursos, IdDocumentosRecibidos ) values({0},'{1}',{2},{3},{4},{5},{6},{7}) SELECT @@IDENTITY", IdInscripcion,Fecha,IdEstudiantes,IdParientes,IdDatosSalud,IdDatosAcademicos,IdCursos,IdDocumentosRecibidos);

            IdInscripcion = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdInscripcion > 0;
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
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
                IdParientes= Convert.ToInt32(dt.Rows[0]["IdParientes"]);
                IdDatosSalud= Convert.ToInt32(dt.Rows[0]["IdDatosSalud"]); 
                IdDatosAcademicos = Convert.ToInt32(dt.Rows[0]["IdDatosAcademicos"]); 
                IdCursos = Convert.ToInt32(dt.Rows[0]["IdCursos"]);
                IdDocumentosRecibidos= Convert.ToInt32(dt.Rows[0]["IdDocumentosRecibidos"]);
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
