﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quiniela.Models;
using Quiniela.Utils;

namespace Quiniela.AdminTools
{
    public partial class SendRecoveryMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnIngreso_Click(object sender, EventArgs e)
        {
            UsuariosModel model = new UsuariosModel();
            string checker = model.DoMailExist(TxtUsuario.Text);

            if (checker != null)
            {
                string parameters = "userID=" + new Random().Next(50000, 100000000) + "&integrityString=" + Guid.NewGuid().ToString() + "&checker=" + checker;
                //http://www.c-sharpcorner.com/UploadFile/0c1bb2/sending-email-using-Asp-Net/

                string recoveryUrl = "http://quiniela.lawebdedanilo.net/AdminTools/PasswordRecovery.aspx?" + parameters;

                MailSender.MailNoAttachment(TxtUsuario.Text, "Password Reset URL", recoveryUrl);

                SendMail.Visible = true;
                BtnIngreso.Enabled = false;

                //Response.Redirect("PasswordRecovery.aspx");
            }
            else
            {
                //Manda Mensaje
            }

        }
    }
}