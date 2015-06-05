using System;
using System.Linq;
using Quiniela.Dao;
using Quiniela.Models;
using Quiniela.Utils;

namespace Quiniela
{
    public partial class LogIn : Telerik.Web.UI.RadAjaxPage  // System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RBtnIngreso_Click(object sender, EventArgs e)
        {
            Usuarios user = new UsuariosModel().ValidateUser(TxtUsuario.Text);

            if (user != null)
            {

                bool isCorrect = PasswordHash.ValidatePassword(txtPassword.Text, user.Password);

                if (isCorrect)
                {
                    Session["Idusuario"] = user.Idusuario;
                    bool isComplete = new UsuariosModel().DoUserCompleteResults(user.Idusuario);

                    user = null;

                    if (isComplete)
                        Response.Redirect("MR2.aspx");
                    else
                        Response.Redirect("LlenaQuiniela.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Verifique sus datos de inicio de sesión');", true);
                    user = null;
                }

            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Verifique sus datos de inicio de sesión');", true);
            }

        }

        protected void BtnRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}