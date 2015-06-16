using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quiniela.Dao;
using Quiniela.Models;

namespace Quiniela.Charts
{
    public partial class ResultsChart : System.Web.UI.Page
    {
        private string id = String.Empty;

        private string idPartido;
        public string IdPartido { get { return idPartido; } }
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

                ResultChart.ChartTitle.TextBlock.Text = partido.PartidoString;

                idPartido = "SELECT CAST( P.GolesLocal as varchar) + ' - ' + Cast( P.GolesVisita as varchar) Marcador," +
                            "COUNT(CAST( P.GolesLocal as varchar) + ' - ' + Cast( P.GolesVisita as varchar)) Cuantos From Pronosticos P " +
                            "WHERE idPartido = " + id + " GROUP BY CAST( P.GolesLocal as varchar) + ' - ' + Cast( P.GolesVisita as varchar)" +
                            " ORDER BY Cuantos desc";
                DataBind();
            }
        }

        protected void BtnDetalle_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Visualization/ResultsByMatch.aspx?ID=" + id);
        }
    }
}