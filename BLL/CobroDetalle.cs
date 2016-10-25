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
            return conexion.BuscarDb("Select * from CobrosDetalle where " + Condicion);
        }
    }
}
