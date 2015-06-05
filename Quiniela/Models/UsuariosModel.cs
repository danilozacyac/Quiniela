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

        public void UpdatePassword(string newPass, string userId)
        {
            SqlConnection sqlConne = new SqlConnection(connectionString);

            SqlCommand cmd;

            cmd = sqlConne.CreateCommand();
            cmd.Connection = sqlConne;

            try
            {
                sqlConne.Open();

                cmd.CommandText = "UPDATE Usuarios  SET Password = @Password WHERE checker = @checker";
                cmd.Parameters.AddWithValue("@Password", newPass);
                cmd.Parameters.AddWithValue("@checker", userId);
                cmd.ExecuteNonQuery();

            }
            catch (SqlException ex)
            {
            }
            finally
            {
                sqlConne.Close();
            }
        }


        public Usuarios ValidateUser(string username)
        {
            Usuarios user = null;

            try
            {
                
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    string selstr = "SELECT * FROM Usuarios WHERE Nickname = @Nickname " ;
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

        public string DoMailExist(string mail)
        {
            string checkerString = null;

            try
            {

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    string selstr = "SELECT * FROM Usuarios WHERE Mail = @Mail ";
                    SqlCommand cmd = new SqlCommand(selstr, conn);
                    cmd.Parameters.AddWithValue("@Mail", mail);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        checkerString = reader["Checker"].ToString();
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

            return checkerString;
        }

        public bool IsAValidChecker(string checker)
        {
            bool exist = false;

            try
            {

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    string selstr = "SELECT * FROM Usuarios WHERE Checker = @Checker ";
                    SqlCommand cmd = new SqlCommand(selstr, conn);
                    cmd.Parameters.AddWithValue("@Checker", checker);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        exist = true;
                    }
                    conn.Close();
                }
            }
            catch (SqlException)
            {
                exist = false;
            }
            finally
            {

            }

            return exist;
        }

        public bool DoUserCompleteResults(int userId)
        {
            bool isComplete = false;

            try
            {

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    string selstr = "SELECT * FROM Pronosticos WHERE idUsuario = @User AND idPartido >= 49 AND IdTorneo = 2";
                    SqlCommand cmd = new SqlCommand(selstr, conn);
                    cmd.Parameters.AddWithValue("@User", userId);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        isComplete = true;
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

            return isComplete;
        }


    }
}