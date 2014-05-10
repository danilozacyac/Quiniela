using System;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using Quiniela.Dao;

namespace Quiniela.Models
{
    public class PartidosModel
    {
        private static string ConnectionString = ConfigurationManager.ConnectionStrings["MiBD"].ConnectionString;

        /// <summary>
        /// Listado de partidos a jugarse durante la competición 
        /// </summary>
        /// <returns></returns>
        public static ObservableCollection<Partidos> GetPartidos()
        {
            ObservableCollection<Partidos> listaPartidos = new ObservableCollection<Partidos>();

            try
            {
                string cstr = @"Data Source=WIN-KT1RP3JF2N6\MISERVER;Initial Catalog=QuinielaMundial;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";
                using (SqlConnection conn = new SqlConnection(cstr))
                {
                    conn.Open();

                    string selstr = "Select P.*,Pa.Pais ELocal,Pa2.Pais EVisita from Partidos P INNER JOIN Paises Pa ON P.idPaisLocal = Pa.idPais " +
                                    " INNER JOIN Paises Pa2 On P.idPaisVisita = Pa2.idPais ";
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
                        partido.PaisLocal = reader["ELocal"].ToString();
                        partido.PaisVisita = reader["EVisita"].ToString();

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

        /// <summary>
        /// Guarda los resultados propuestos por los participantes para cada uno de los partidos
        /// </summary>
        /// <param name="listaPartidos"></param>
        /// <param name="idUser"></param>
        public static void SetNewPronosticos(ObservableCollection<Partidos> listaPartidos, int idUser)
        {
            SqlConnection connection = new SqlConnection(ConnectionString);

            try
            {

                connection.Open();
                foreach (Partidos partido in listaPartidos)
                {
                    String query = "INSERT INTO Pronosticos (IdPartido,IdUsuario,GolesLocal,GolesVisita,IdPaisGanador,PuntosGanados) VALUES (@IdPartido,@IdUsuario,@GolesLocal,@GolesVisita,@IdPaisGanador,@PuntosGanados)";

                    SqlCommand command = new SqlCommand(query, connection);

                    command.Parameters.Add("@IdPartido", SqlDbType.NChar);
                    command.Parameters["@IdPartido"].Value = partido.IdPartido;

                    command.Parameters.Add("@IdUsuario", SqlDbType.NChar);
                    command.Parameters["@IdUsuario"].Value = idUser;

                    command.Parameters.Add("@GolesLocal", SqlDbType.NChar);
                    command.Parameters["@GolesLocal"].Value = partido.GolesLocal;

                    command.Parameters.Add("@GolesVisita", SqlDbType.NChar);
                    command.Parameters["@GolesVisita"].Value = partido.GolesVisita;

                    command.Parameters.Add("@IdPaisGanador", SqlDbType.NChar);
                    command.Parameters["@IdPaisGanador"].Value = partido.IdPaisGanador;

                    command.Parameters.Add("@PuntosGanados", SqlDbType.NChar);
                    command.Parameters["@PuntosGanados"].Value = 0;

                    
                    command.ExecuteNonQuery();

                    command.Dispose();
                    command = null;
                }
                connection.Close();
            }
            catch (SqlException)
            {
            }
            catch (Exception)
            {
            }
            finally
            {
                connection.Close();
            }
        }
    }
}