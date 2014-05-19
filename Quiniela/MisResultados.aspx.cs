using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Telerik.Web.UI;

public partial class MisResultados : System.Web.UI.Page 
{
    private string idUsuario;
    public string IdUsuario { get { return idUsuario; } }
    protected void Page_Load(object sender, EventArgs e)
    {
        idUsuario = "select * from resultadosUsuarios WHERE IdUsuario = " + Session["IdUsuario"].ToString();
        DataBind();
    }
}
