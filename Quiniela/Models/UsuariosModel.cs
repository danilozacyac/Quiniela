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

        private static readonly string connectionString = ConfigurationManager.ConnectionStrings["QuinielaMundialConnectionString"].ConnectionString;

        public string SetNewUser(Usuarios usuario)
        {
            string message = "Registro no completado, intente más tarde";

            int userId = 0;
            using (SqlConnection con = new SqlConnection(connectionString))
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

        public Usuarios ValidateUser(string username)
        {
            Usuarios user = null;

            try
            {
                
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    string selstr = "SELECT * FROM Usuarios WHERE Nickname = @Nickname" ;
                    SqlCommand cmd = new SqlCommand(selstr, conn);
                    cmd.Parameters.AddWithValue("@Nickname", username);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        user = new Usuarios();
                        user.Idusuario = reader["IdUsuario"] as int? ?? -1;
                        user.Password = reader["Password"].ToString();
                    }
                    conn.Close();
                }
            }
            catch (SqlException)
            {

            }
            finally
            {

            }

            return user;
        }

    }
}