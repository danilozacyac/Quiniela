using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using Quiniela.Dao;

namespace Quiniela.Models
{
    public class UsuariosModel
    {



        public string SetNewUser(Usuarios usuario)
        {
            string message = "Registro no completado, intente más tarde";

            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["MiBD"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Inserta_Usuario"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Paterno", usuario.Paterno);
                        cmd.Parameters.AddWithValue("@Materno", usuario.Materno);
                        cmd.Parameters.AddWithValue("@Nombre", usuario.Nombre);
                        cmd.Parameters.AddWithValue("@Nickname", usuario.Usuario);
                        cmd.Parameters.AddWithValue("@Mail", usuario.Mail);
                        cmd.Parameters.AddWithValue("@Password", usuario.Password);
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                switch (userId)
                {
                    case -1:
                        message = "El nombre de usuario que desea utilizar ya existe.\\nPor favor elija uno diferente.";
                        break;
                    case -2:
                        message = "La dirección de correo electrónico proporcionada ya fue utilizada.";
                        break;
                    default:
                        message = "Registro exitoso.\\nUser Id: " + userId.ToString();
                        break;
                }
                
            }

            return message;
        }

    }
}