using System;

public partial class TablaGeneral : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IdUsuario"] == null)
            Response.Redirect("LogIn.aspx");
    }
}
