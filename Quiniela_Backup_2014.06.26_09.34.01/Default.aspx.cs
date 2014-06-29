using System;
using Quiniela.Dao;
using Quiniela.Models;
using Quiniela.Utils;

public partial class Default : Telerik.Web.UI.RadAjaxPage//System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Redirect("Login.aspx");
    }

    protected void RbtnRegistrar_Click(object sender, EventArgs e)
    {
        if (txtPassword.Text.Equals(txtConfirmPassword.Text))
        {

            Usuarios usuario = new Usuarios();
            usuario.Paterno = TxtPaterno.Text;
            usuario.Materno = TxtMaterno.Text;
            usuario.Nombre = TxtNombre.Text;
            usuario.Usuario = txtUsername.Text;
            usuario.Mail = txtEmail.Text;
            usuario.Password = PasswordHash.CreateHash(txtPassword.Text);

            string message = new UsuariosModel().SetNewUser(usuario);

            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);

            if (message.StartsWith("Registro"))
                Response.Redirect("LogIn.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}
