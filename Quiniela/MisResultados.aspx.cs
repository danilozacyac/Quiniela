using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Telerik.Web.UI;

public partial class MisResultados : Telerik.Web.UI.RadAjaxPage// System.Web.UI.Page 
{
    private string idUsuario;
    public string IdUsuario { get { return idUsuario; } }
    protected void Page_Load(object sender, EventArgs e)
    {
        idUsuario = "select Fecha,[E. Local],[E. Visitante],[Mi Pronostico], PuntosGanados from PronosticosUsuario WHERE IdUsuario = " + Session["IdUsuario"].ToString();
        DataBind();
    }
}
