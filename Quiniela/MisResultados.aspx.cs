using System;

public partial class MisResultados : Telerik.Web.UI.RadAjaxPage// System.Web.UI.Page 
{
    private string idUsuario;
    public string IdUsuario { get { return idUsuario; } }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IdUsuario"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {

            string fechaHoy = DateTime.Now.Year + "-" + this.GetTwoLengthNumber(DateTime.Now.Month) + "-" + this.GetTwoLengthNumber(DateTime.Now.Day);

            idUsuario = "select * from ResultadoPartidos WHERE Fecha <= '" + fechaHoy + "'";
            DataBind();
        }
    }


    private string GetTwoLengthNumber(int number)
    {
        if (number < 10)
            return "0" + number;
        else
            return number.ToString();
    }
}
