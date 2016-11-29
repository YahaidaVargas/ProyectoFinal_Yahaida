using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
public class DatosSalud : ClaseMaestra
    {
        public int IdDatosSalud { get; set; }
        public int  IdEstudiantes { get; set; }
        public string Enfermedades { get; set; }
        public string Alergias { get; set; }
        public string TratamientosMedicos { get; set; }

        public DatosSalud()
        {
            IdDatosSalud = 0;
            IdEstudiantes = 0;
            Enfermedades = "";
            Alergias = "";
            TratamientosMedicos = "";
             
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into DatosSalud (IdEstudiantes,Enfermedades,Alergias,TratamientosMedicos) values({0},'{1}','{2}','{3}') SELECT @@IDENTITY", IdEstudiantes, Enfermedades, Alergias, TratamientosMedicos);

            IdDatosSalud = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdDatosSalud > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE DatosSalud SET Enfermedades = '{0}', Alergias = '{1}', TratamientosMedicos = '{2}' WHERE IdDatosSalud  = {3}", Enfermedades,Alergias,TratamientosMedicos, IdDatosSalud);
            return conexion.EjecutarDB(sql); throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM DatosSalud WHERE IdDatosSalud = {0}", IdDatosSalud);
            return conexion.EjecutarDB(sql);
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM DatosSalud WHERE IdDatosSalud = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdDatosSalud = Convert.ToInt32(dt.Rows[0]["IdDatosSalud"]);
                IdEstudiantes = Convert.ToInt32(dt.Rows[0]["IdEstudiantes"]);
                Enfermedades = dt.Rows[0]["Enfermedades"].ToString();
                Alergias = dt.Rows[0]["Alergias"].ToString();
                TratamientosMedicos = dt.Rows[0]["TratamientosMedicos"].ToString();
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from DatosSalud where " + Condicion + " order by " + Orden);
        }
    }
}
