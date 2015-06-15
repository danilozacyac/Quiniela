using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiniela.Charts
{
    public partial class WebForm1 : System.Web.UI.Page
    {

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
                string id = Request.QueryString["ID"].ToString();
                idPartido = "SELECT CAST( P.GolesLocal as varchar) + ' - ' + Cast( P.GolesVisita as varchar) Marcador," +
	                        "COUNT(CAST( P.GolesLocal as varchar) + ' - ' + Cast( P.GolesVisita as varchar)) Cuantos From Pronosticos P " +
	                        "WHERE idPartido = " + id + " GROUP BY CAST( P.GolesLocal as varchar) + ' - ' + Cast( P.GolesVisita as varchar)" + 
                            " ORDER BY Cuantos desc";
                DataBind();
            }
        }
    }
}