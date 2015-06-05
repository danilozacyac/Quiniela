using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Telerik.Web.UI;
using Quiniela.Utils;
using Quiniela.Models;

public partial class PasswordRecovery : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnCambia_Click(object sender, EventArgs e)
    {
        string checker = Request.QueryString["checker"];

        if (checker != null)
        {
            if (new UsuariosModel().IsAValidChecker(checker))
            {

                if (TxtContraseña.Text.Equals(TxtConfirma.Text))
                {
                    string newPass = PasswordHash.CreateHash(TxtContraseña.Text);

                    UsuariosModel model = new UsuariosModel();
                    model.UpdatePassword(newPass, checker);

                    Response.Redirect("http:\\quiniela.lawebdedanilo.net");
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "ATENCIÓN:", "alert('La contraseña no coincide en ambos campos');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "ATENCIÓN:", "alert('URL no válida');", true);
                Response.Redirect("~/Login.aspx");
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "ATENCIÓN:", "alert('Vuelve a checar tu correo y utiliza la liga que se te proporcionó');", true);
        }
    }
}
