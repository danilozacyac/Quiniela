using System;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using Quiniela.Dao;

namespace Quiniela.Models
{
    public class GruposModel
    {
        private static readonly string connectionString = ConfigurationManager.ConnectionStrings["QuinielaMundialConnectionString"].ConnectionString;

        public static ObservableCollection<GruposDao> GetGrupos()
        {

            ObservableCollection<GruposDao> listaGrupos = new ObservableCollection<GruposDao>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    string selstr = "SELECT * FROM vGrupos";
                    SqlCommand cmd = new SqlCommand(selstr, conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        GruposDao grupos = new GruposDao();

                        grupos.Grupo = Convert.ToChar(reader["Grupo"]);
                        grupos.Pais = reader["Pais"].ToString();
                        grupos.JGanados = reader["Ganados"] as int? ?? -1;
                        grupos.JPerdidos = reader["Perdidos"] as int? ?? -1;
                        grupos.JEmpatados = reader["Empates"] as int? ?? -1;
                        grupos.GFavor = reader["GolesFavor"] as int? ?? -1;
                        grupos.GContra = reader["Golescontra"] as int? ?? -1;
                        grupos.GDiferencia = reader["Diferencia"] as int? ?? -1;
                        grupos.Puntos = reader["Puntos"] as int? ?? -1;

                        listaGrupos.Add(grupos);
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

            return listaGrupos;
        }
    }
}