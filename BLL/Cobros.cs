using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Cobros : ClaseMaestra
    {
        public int IdCobros { get; set; }
        public int  IdInscripcion { get; set; }
        public string Fecha { get; set; }
        public int Monto { get; set; }
        public int Descuento { get; set; }
        public string FormaDePago { get; set; }
        public int Total { get; set; }


        public Cobros(){
            IdCobros = 0;
            IdInscripcion = 0;
            Fecha = "";
            Monto = 0;
            Descuento = 0;
            FormaDePago = "";
            Total = 0;
            }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into Cobros(IdInscripcion,Fecha,Monto,Descuento,FormaDePago,Total) values({0},'{1}',{2},{3},'{4}',{5}) SELECT @@IDENTITY", IdInscripcion, Fecha, Monto, Descuento, FormaDePago, Total);

            IdCobros = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdCobros > 0;
        }


        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE Cobros SET IdInscripcion = {0}, Fecha = '{1}', Monto= {2}, Descuento = {3}, FormaDePago = '{4}', Total = {5} WHERE IdCobros = {6}", IdInscripcion, Fecha, Monto, Descuento,FormaDePago,Total, IdCobros);
            return conexion.EjecutarDB(sql);
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM Cobros WHERE IdCobros = {0}", IdCobros);
            return conexion.EjecutarDB(sql);
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM Cobros WHERE IdCobros = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdCobros = Convert.ToInt32(dt.Rows[0]["IdCobros "]);
                IdInscripcion = Convert.ToInt32(dt.Rows[0]["IdInscripcion"]);
                Fecha = dt.Rows[0]["Fecha"].ToString();
                Monto = Convert.ToInt32(dt.Rows[0]["Monto"]);
                Descuento = Convert.ToInt32(dt.Rows[0]["Descuento"]);
                FormaDePago = dt.Rows[0]["FormaDePago"].ToString();
                Total = Convert.ToInt32(dt.Rows[0]["Total"]);
             
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from Cobros where " + Condicion + " order by " + Orden);
        }


        ///REPORTES
        ///
        public DataTable ReporteListado(string Condicion = "1=1")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select * from vInscrCobros  where " + Condicion);
        }
    }
}
