using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Microsoft.Reporting.WebForms;
using System.Data;

namespace ProyectoFinal_Yahaida.Reportes
{
    public partial class rCobrosDetalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Cobros cob = new Cobros();
                DataTable  dt= cob.ReporteListado();
                string idCobros = dt.Columns["IdCobros"].ToString();

                CobroDetalle cobDet = new CobroDetalle();


                ReportDataSource r = new ReportDataSource("dtVsCobrosDetalle", dt);
                ReportViewer1.LocalReport.DataSources.Add(r);
                ReportDataSource rdet = new ReportDataSource("dtCobrosDetalles", cobDet.ReporteListado("IdCobros = "+idCobros));
                ReportViewer1.LocalReport.DataSources.Add(rdet);
                ReportViewer1.LocalReport.Refresh();



                

            }
        }
    }
}