using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

namespace Quiniela.Utils
{
    public class MailSender
    {

        /// <summary>
        /// Envia un correo con una URL de recuperación de contraseña
        /// </summary>
        /// <param name="toEmail">Correo al cual se enviará el mail de recuperación</param>
        /// <param name="subject">Asunto del Correo</param>
        /// <param name="recoveryUrl">URL de recuperación</param>
        public static void MailNoAttachment(String toEmail, String subject, String recoveryUrl)
        {
            //string hostAdd = "smtp.secureserver.net";
            //string fromMail = "donotreply@lawebdedanilo.net";
            //string password = "m33tm3h41f";

            //MailMessage mailMessage = new MailMessage();

            //mailMessage.From = new MailAddress(fromMail);
            //mailMessage.Subject = subject;
            //mailMessage.Body = "Este mensaje fue enviado por el administrador de La Web de Danilo \n\n\n *** POR FAVOR NO RESPONDA A ESTE MENSAJE *** \n\n\n " +
            //                   " En respuesta a su solicitud de recuperación de contraseña se le envia una URL de recuperación. Haga click en la siguiente URL " +
            //                   " o copiela y peguela en la barra de direcciones de su navegador: \n\n\n " +
            //                   recoveryUrl + " \n\n\n Gracias por ser parte de La Web de Danilo. \n\n\n Saludos";

            //mailMessage.IsBodyHtml = true;
            //mailMessage.To.Add(new MailAddress(toEmail));

            //SmtpClient smtp = new SmtpClient();
            //smtp.Host = hostAdd;

            //smtp.EnableSsl = true;
            //NetworkCredential network = new NetworkCredential();
            //network.UserName = mailMessage.From.Address;
            //network.Password = password;
            //// network.Domain = "lawebdedanilo.net";
            //smtp.UseDefaultCredentials = true;
            //smtp.Credentials = network;
            //smtp.Port = 465;
            //smtp.Send(mailMessage);



            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("luisalbertove80@hotmail.com");
            //mailMessage.From = new MailAddress("donotreplyquiniela@outlook.com");

            //receiver email adress
            mailMessage.To.Add(toEmail);

            //subject of the email
            mailMessage.Subject = subject;

            //attach the file
            //mailMessage.Attachments.Add(new Attachment(@"C:\\attachedfile.jpg"));
            mailMessage.Body = "Este mensaje fue enviado por el administrador de La Web de Danilo \n\n\n *** POR FAVOR NO RESPONDA A ESTE MENSAJE *** \n\n\n " +
                               " En respuesta a su solicitud de recuperación de contraseña se le envia una URL de recuperación. Haga click en la siguiente URL " +
                               " o copiela y peguela en la barra de direcciones de su navegador: \n\n\n " +
                               recoveryUrl + " \n\n\n Gracias por ser parte de La Web de Danilo. \n\n\n Saludos";
            mailMessage.IsBodyHtml = false;

            //SMTP client
            SmtpClient smtpClient = new SmtpClient("smtp.live.com");
            //port number for Hot mail
            smtpClient.Port = 25;
            //credentials to login in to hotmail account
            smtpClient.Credentials = new NetworkCredential("luisalbertove80@hotmail.com", "meAKCCdqt12o13");
            //smtpClient.Credentials = new NetworkCredential("donotreplyquiniela@outlook.com", "m33tm3h41f");
            //enabled SSL
            smtpClient.EnableSsl = true;
            //Send an email
            smtpClient.Send(mailMessage);
        }
    }
}