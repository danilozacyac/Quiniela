using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quiniela.Dao;
using Quiniela.Models;
using Quiniela.Singleton;

namespace Quiniela
{
    public partial class LlenaQuiniela : System.Web.UI.Page
    {
        private int index;
        ObservableCollection<Partidos> listaPartidos = null;

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["Partidos"] == null)
            {
                listaPartidos = PartidosModel.GetPartidos();
                Session["Partidos"] = listaPartidos;
                index = 0;
                RBtnAnterior.Enabled = false;

            }
            else
            {
                listaPartidos = Session["Partidos"] as ObservableCollection<Partidos>;
                index = Session["Index"] as int? ?? -1;
                RBtnAnterior.Enabled = (index == 0) ? false : true;
                RBtnSiguiente.Enabled = (index == listaPartidos.Count - 1) ? false : true;

            }

            Partidos partido = listaPartidos[0];

            LblLocal.Text = this.GetEquipoName(partido.IdPaisLocal);
            ImLocal.ImageUrl = "~/Resources/" + partido.IdPaisLocal + ".png";
            RTxtGolesLoca.Text = partido.GolesLocal + "";

            LblVisita.Text = this.GetEquipoName(partido.IdPaisVisita);
            ImVisita.ImageUrl = "~/Resources/" + partido.IdPaisVisita + ".png";
            RTxtGolesVisita.Text = partido.GolesVisita + "";
        }

        protected void RBtnAnterior_Click(object sender, EventArgs e)
        {
            index -= 1;
            Session["Index"] = index;
            this.SetAnotherMatch();
        }

        protected void RBtnSiguiente_Click(object sender, EventArgs e)
        {

            index += 1;
            Session["Index"] = index;
            this.SetAnotherMatch();
            
        }

        private void SetAnotherMatch()
        {
            Partidos partido = listaPartidos[index];

            LblLocal.Text = this.GetEquipoName(partido.IdPaisLocal);
            ImLocal.ImageUrl = "~/Resources/" + partido.IdPaisLocal + ".png";

            LblVisita.Text = this.GetEquipoName(partido.IdPaisVisita);
            ImVisita.ImageUrl = "~/Resources/" + partido.IdPaisVisita + ".png";
        }

        private string GetEquipoName(int idEquipo)
        {
            return (from n in EquiposSingleton.EquiposSin
                    where n.IdEquipo == idEquipo
                    select n.Equipo).ToList()[0];
        }
    }
}