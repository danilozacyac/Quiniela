using System;
using System.Collections.ObjectModel;
using System.Linq;
using Quiniela.Dao;
using Quiniela.Singleton;

namespace Quiniela
{
    /// <summary>
    /// Permite verificar los resultados que se han ingresado mientas se llena la quiniela
    /// </summary>

    public partial class ReviewPronosResults : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            ObservableCollection<Partidos> listaPartidos = Session["Partidos"] as ObservableCollection<Partidos>;

            foreach (Partidos partido in listaPartidos)
            {
                partido.PaisGanador = this.GetEquipoName(partido.IdPaisGanador);
            }

            RadGrid1.DataSource = Session["Partidos"] as ObservableCollection<Partidos>;
           
        }

        private string GetEquipoName(int idEquipo)
        {
            try
            {
                return (from n in EquiposSingleton.EquiposSin
                        where n.IdEquipo == idEquipo
                        select n.Equipo).ToList()[0];
            }
            catch (Exception)
            {
                return "Sin seleccionar";
            }
        }
    }
}