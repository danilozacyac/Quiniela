using System;
using System.Collections.ObjectModel;
using System.Data.SqlClient;
using System.Linq;
using Quiniela.Dao;

namespace Quiniela.Models
{
    public class EquiposModel
    {

        public static ObservableCollection<Equipos> GetEquipos()
        {
            ObservableCollection<Equipos> equipos = new ObservableCollection<Equipos>();

            try
            {
                string cstr = @"Data Source=LUIS-PC\SQLEXPRESS;Initial Catalog=QuinielaMundial;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";
                using (SqlConnection conn = new SqlConnection(cstr))
                {
                    conn.Open();

                    string selstr = "SELECT * FROM Paises ORDER BY idPais";
                    SqlCommand cmd = new SqlCommand(selstr, conn);
                    SqlDataReader rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        equipos.Add(new Equipos(Convert.ToInt32(rdr["IdPais"]), rdr["Pais"].ToString()));

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

            return equipos;
        }

    }
}