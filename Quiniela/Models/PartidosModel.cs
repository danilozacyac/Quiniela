using System;
using System.Collections.ObjectModel;
using System.Data.SqlClient;
using System.Linq;
using Quiniela.Dao;

namespace Quiniela.Models
{
    public class PartidosModel
    {

        public static ObservableCollection<Partidos> GetPartidos()
        {
            ObservableCollection<Partidos> listaPartidos = new ObservableCollection<Partidos>();

            try
            {
                string cstr = @"Data Source=LUIS-PC\SQLEXPRESS;Initial Catalog=QuinielaMundial;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";
                using (SqlConnection conn = new SqlConnection(cstr))
                {
                    conn.Open();

                    string selstr = "SELECT * FROM Partidos ORDER BY idPartido";
                    SqlCommand cmd = new SqlCommand(selstr, conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        Partidos partido = new Partidos();

                        partido.IdPartido = reader["IdPartido"] as int? ?? -1;
                        partido.Fecha = Convert.ToDateTime(reader["Fecha"]);
                        partido.IdPaisLocal = reader["IdPaisLocal"] as int? ?? -1;
                        partido.IdPaisVisita = reader["IdPaisVisita"] as int? ?? -1;
                        partido.GolesLocal = reader["GolesLocal"] as int? ?? -1;
                        partido.GolesVisita = reader["GolesVisita"] as int? ?? -1;


                        listaPartidos.Add(partido);

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

            return listaPartidos;
        }


    }
}