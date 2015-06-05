using System;
using System.Web.UI;

public partial class MR2 : Telerik.Web.UI.RadAjaxPage// System.Web.UI.Page 
{
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
            idUsuario = "select Fecha,Local,Visitante,Ganador, Marcador, PuntosGanados from PronosticosUsuario WHERE IdTorneo = 2 AND IdUsuario = " + Session["IdUsuario"].ToString();
            DataBind();
        }
    }

    protected void ExportToPdf_Click(object sender, ImageClickEventArgs e)
    {
        RadGrid1.MasterTableView.ExportToPdf();
    }
}
