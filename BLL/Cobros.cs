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

        public override bool Insertar()
        {
            throw new NotImplementedException();
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
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
