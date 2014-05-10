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
                Session["Index"] = 0;
                index = 0;
                RBtnAnterior.Enabled = false;
                this.SetAnotherMatch();

            }
            else
            {
                listaPartidos = Session["Partidos"] as ObservableCollection<Partidos>;
                index = Session["Index"] as int? ?? -1;
                RBtnAnterior.Enabled = (index == 0) ? false : true;
                RBtnSiguiente.Enabled = (index == listaPartidos.Count - 1) ? false : true;
                this.GetMatchResult();
            }

            
        }

        protected void RBtnAnterior_Click(object sender, EventArgs e)
        {
            this.GetMatchResult();

            index -= 1;
            Session["Index"] = index;
            this.SetAnotherMatch();

            RBtnAnterior.Enabled = (index == 0) ? false : true;

            Session["Partidos"] = listaPartidos;


        }

        protected void RBtnSiguiente_Click(object sender, EventArgs e)
        {
            this.GetMatchResult();

            index += 1;
            Session["Index"] = index;
            this.SetAnotherMatch();

            Session["Partidos"] = listaPartidos;
        }

        private void GetMatchResult()
        {
            listaPartidos[index].GolesLocal = Convert.ToInt32(RTxtGolesLoca.Text);
            listaPartidos[index].GolesVisita = Convert.ToInt32(RTxtGolesVisita.Text);

            

            if (listaPartidos[index].GolesLocal == listaPartidos[index].GolesVisita)
            {
                listaPartidos[index].IdPaisGanador = 999; //Empate
            }
            else
            {
                listaPartidos[index].IdPaisGanador = (listaPartidos[index].GolesLocal > listaPartidos[index].GolesVisita) ? listaPartidos[index].IdPaisLocal : listaPartidos[index].IdPaisVisita;
            }
        }

        private void SetAnotherMatch()
        {
            Partidos partido = listaPartidos[index];

            LblLocal.Text = partido.PaisLocal;
            ImLocal.ImageUrl = "~/Resources/" + partido.IdPaisLocal + ".png";
            RTxtGolesLoca.Text = partido.GolesLocal.ToString();

            LblVisita.Text = partido.PaisVisita;
            ImVisita.ImageUrl = "~/Resources/" + partido.IdPaisVisita + ".png";
            RTxtGolesVisita.Text = partido.GolesVisita.ToString(); 
        }

        private string GetEquipoName(int idEquipo)
        {
            return (from n in EquiposSingleton.EquiposSin
                    where n.IdEquipo == idEquipo
                    select n.Equipo).ToList()[0];
        }

        

        protected void RBtnRevisar_Click1(object sender, EventArgs e)
        {
            RadWindow1.VisibleOnPageLoad = true;
        }

        protected void RBtnGuardar_Click(object sender, EventArgs e)
        {
            PartidosModel.SetNewPronosticos(listaPartidos,1);
        }
    }
}