using System;
using System.Collections.ObjectModel;
using System.Linq;
using Quiniela.Dao;
using Quiniela.Models;
using Quiniela.Singleton;

namespace Quiniela
{
    public partial class LlenaQuiniela : Telerik.Web.UI.RadAjaxPage//System.Web.UI.Page
    {
        private int index;
        ObservableCollection<Partidos> listaPartidos = null;



        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["IdUsuario"] == null)
            {
                Response.Redirect("LogIn.aspx");
            }
            else
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

                    if (index == 16)
                    {
                        //RBtnSiguientePaso.Visible = true;
                        RBtnGuardar.Visible = true;
                    }
                }

                if (Session["Complete"] == null || Convert.ToBoolean(Session["Complete"]) == false)
                {
                    //quinielaP.Visible = true;
                    //mexicoP.Visible = false;
                }
                else
                {
                    //quinielaP.Visible = false;
                    //mexicoP.Visible = true;
                }

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

            RBtnSiguiente.Enabled = (index == listaPartidos.Count - 1) ? false : true;
        }

        private void GetMatchResult()
        {
            if (RadLocal.Checked == true)
                listaPartidos[index].IdPaisGanador = listaPartidos[index].IdPaisLocal;
            else if (RadVisita.Checked == true)
                listaPartidos[index].IdPaisGanador = listaPartidos[index].IdPaisVisita;
            else if (RadEmpate.Checked == true)
                listaPartidos[index].IdPaisGanador = 999;

            listaPartidos[index].GolesLocal = Convert.ToInt16(RTxtGolesLoca.Text);
            listaPartidos[index].GolesVisita = Convert.ToInt16(RTxtGolesVisita.Text);
        }

        private void SetAnotherMatch()
        {
            RadLocal.Checked = false;
            RadEmpate.Checked = false;
            RadVisita.Checked = false;

            if (index < listaPartidos.Count())
            {
                if (index == 18)
                {
                    //RBtnSiguientePaso_Click(null, null);
                    //RBtnSiguientePaso.Visible = false;
                    RBtnGuardar.Visible = true;
                }
                else
                {
                    Partidos partido = listaPartidos[index];

                    LblLocal.Text = partido.PaisLocal;
                    ImLocal.ImageUrl = "~/Images/" + partido.IdPaisLocal + ".png";

                    LblVisita.Text = partido.PaisVisita;
                    ImVisita.ImageUrl = "~/Images/" + partido.IdPaisVisita + ".png";

                    if (partido.IdPaisGanador != 0)
                    {
                        if (partido.IdPaisGanador == partido.IdPaisLocal)
                            RadLocal.Checked = true;
                        else if (partido.IdPaisGanador == partido.IdPaisVisita)
                            RadVisita.Checked = true;
                        else if (partido.IdPaisGanador == 999)
                            RadEmpate.Checked = true;
                    }

                    RTxtGolesLoca.Text = listaPartidos[index].GolesLocal.ToString();
                    RTxtGolesVisita.Text = listaPartidos[index].GolesVisita.ToString();
                }
            }
            else
            {
                //RBtnSiguientePaso.Visible = false;
                RBtnGuardar.Visible = true;
                //RBtnSiguientePaso_Click(null, null);
                Page_Load(null, null);
                
            }
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
            if (index == 17)
            {
                if (RadLocal.Checked == true)
                    listaPartidos[index].IdPaisGanador = listaPartidos[index].IdPaisLocal;
                else if (RadVisita.Checked == true)
                    listaPartidos[index].IdPaisGanador = listaPartidos[index].IdPaisVisita;
                else if (RadEmpate.Checked == true)
                    listaPartidos[index].IdPaisGanador = 999;

                listaPartidos[index].GolesLocal = Convert.ToInt16(RTxtGolesLoca.Text);
                listaPartidos[index].GolesVisita = Convert.ToInt16(RTxtGolesVisita.Text);
            }
            //listaPartidos[1].GolesLocal = Convert.ToInt16(RTxtLocal1.Text);
            //listaPartidos[1].GolesVisita = Convert.ToInt16(RTxtVisita1.Text);

            //listaPartidos[16].GolesLocal = Convert.ToInt16(RTxtLocal2.Text);
            //listaPartidos[16].GolesVisita = Convert.ToInt16(RTxtVisita2.Text);

            //listaPartidos[33].GolesLocal = Convert.ToInt16(RTxtLocal3.Text);
            //listaPartidos[33].GolesVisita = Convert.ToInt16(RTxtVisita3.Text);

            PartidosModel.SetNewPronosticos(listaPartidos,Convert.ToInt32(Session["IdUsuario"]));

            Response.Redirect("MR2.aspx");
        }

        protected void RBtnSiguientePaso_Click(object sender, EventArgs e)
        {
            bool complete = true;

            for (int partido = 0; partido < listaPartidos.Count(); partido++)
            {
                if (listaPartidos[partido].IdPaisGanador == -23)
                {
                    Session["Index"] = partido;
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('No has seleccionado el resultado de todos los partidos');", true);
                    complete = false;
                    break;
                }
            }

            Session["Complete"] = complete;

            if (complete)
            {
                //quinielaP.Visible = false;
                //mexicoP.Visible = true;
                RBtnGuardar.Visible = true;
            }
            else
            {
                Page_Load(null, null);
            }
        }
    }
}