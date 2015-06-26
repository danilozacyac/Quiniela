using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiniela
{
    public partial class PronosticosPorParticipante : System.Web.UI.Page
    {
        private string queryString;
        public string QueryString { get { return queryString; } }

        private string nombre;
        public string Nombre { get { return nombre; } }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IdUsuario"] == null)
            {
                Response.Redirect("~/LogIn.aspx");
            }
            else
            {
                string idUsuario = String.Empty;

                if (Request.PathInfo.Length > 1)
                {
                    idUsuario = Request.PathInfo.Substring(1);

                    int index = idUsuario.IndexOf('_');

                    nombre = idUsuario.Substring(index + 1);
                    idUsuario = (Convert.ToInt64(idUsuario.Substring(0,index)) / 8956321478956632).ToString();

                }

                queryString = "SELECT IdPartido,Fecha,Local,Visitante,Ganador, Marcador, PuntosGanados,TipoAcierto " + 
                              " FROM PronosticosUsuario WHERE IdTorneo = 3 AND IdUsuario = " + idUsuario;
                DataBind();
            }
        }

        protected void ExportToPdf_Click(object sender, ImageClickEventArgs e)
        {
            RadGrid1.MasterTableView.ExportToPdf();
        }
    }
}