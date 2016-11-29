using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class CobroDetalle : ClaseMaestra
    {
        public int IdCobrosDetalle{ get; set; }
        public int IdCobros { get; set; }
        public string FechaMens { get; set; }
        public int Monto { get; set; }
        public string Descripcion { get; set; }
        public int DescuentoCobrosDetalle { get; set; }
        public string FormaPago { get; set; }
        public int Total { get; set; }

        public CobroDetalle()
        {
            IdCobrosDetalle = 0;
            IdCobros = 0;
            FechaMens = "";
            Monto = 0;
            Descripcion = "";
            DescuentoCobrosDetalle = 0;
            FormaPago = "";
            Total = 0;
        }
        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            string consulta = string.Format("insert into CobrosDetalle(IdCobros,FechaMens,Monto,Descripcion,DescuentoCobrosDetalle,FormaDePago,Total) values({0},'{1}',{2},'{3}',{4},'{5}',{6}) SELECT @@IDENTITY", IdCobros, FechaMens, Monto,Descripcion, DescuentoCobrosDetalle, FormaPago, Total);

            IdCobrosDetalle = Convert.ToInt32(conexion.ObtenerValorDb(consulta).ToString());
            return IdCobrosDetalle > 0;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("UPDATE CobrosDetalle SET FechaMens = '{0}', Monto= {1}, Descripcion = '{2}', DescuentoCobrosDetalle = {3}, FormaPago = '{4}', Total = {5} WHERE IdCobrosDetalle = {6}", IdCobros, FechaMens ,Monto ,Descripcion ,DescuentoCobrosDetalle ,FormaPago , Total, IdCobrosDetalle);
            return conexion.EjecutarDB(sql);
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("DELETE FROM CobrosDetalle WHERE IdCobrosDetalle = {0}", IdCobrosDetalle);
            return conexion.EjecutarDB(sql);
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();

            string sql = string.Format("SELECT * FROM Cobros WHERE IdCobros = {0}", IdBuscado);

            DataTable dt = conexion.BuscarDb(sql);

            if (dt.Rows.Count > 0)
            {
                IdCobrosDetalle = Convert.ToInt32(dt.Rows[0]["IdCobrosDetalle"]);
                IdCobros = Convert.ToInt32(dt.Rows[0]["IdCobros "]);               
                FechaMens = dt.Rows[0]["FechaMens"].ToString();
                Monto = Convert.ToInt32(dt.Rows[0]["Monto"]);
                Descripcion = dt.Rows[0]["Descripcion"].ToString();
                DescuentoCobrosDetalle = Convert.ToInt32(dt.Rows[0]["DescuentoCobrosDetalle"]);
                FormaPago = dt.Rows[0][" FormaPago"].ToString();
                Total = Convert.ToInt32(dt.Rows[0]["Total"]);

            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos = "*", string Condicion = "1=1", string Orden = "ASC")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select " + Campos + " from CobrosDetalle where " + Condicion + " order by " + Orden);
        }



        ///REPORTES
        ///
        public DataTable ReporteListado(string Condicion = "1=1")
        {
            ConexionDb conexion = new ConexionDb();
            return conexion.BuscarDb("Select * from CobrosDetalle where " + Condicion);
        }
    }
}
