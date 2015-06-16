using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quiniela.Dao;
using Quiniela.Models;

namespace Quiniela.Visualization
{
    public partial class ResultsByMatch : System.Web.UI.Page
    {
        private string id = String.Empty;
        private string idUsuario;
        public string IdUsuario { get { return idUsuario; } }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IdUsuario"] == null)
            {
                Response.Redirect("~/LogIn.aspx");
            }
            else
            {
                id = Request.QueryString["ID"].ToString();

                Partidos partido = PartidosModel.GetMatchForChartTitle(Convert.ToInt16(id));

//                ResultChart.ChartTitle.TextBlock.Text = partido.PartidoString;

                idUsuario = "SELECT NombreCompleto,Local, Visitante, Marcador FROM PronosticosPorPartido WHERE IdPartido = " + id + " ORDER BY IdUsuario";
                DataBind();
            }
        }

        protected void ExportToPdf_Click(object sender, ImageClickEventArgs e)
        {
            RadGrid1.MasterTableView.ExportToPdf();
        }
    }
}