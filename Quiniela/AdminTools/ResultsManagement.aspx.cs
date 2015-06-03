using System;
using System.Collections.ObjectModel;
using Quiniela.Dao;
using Quiniela.Models;
using Telerik.Web.UI;

public partial class ResultsManagement : Telerik.Web.UI.RadAjaxPage// System.Web.UI.Page 
{
    ObservableCollection<Partidos> listaPartidos;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["IdUsuario"]) != 1)
        {
            Response.Redirect("http://quiniela.lawebdedanilo.net");
        }
        else
        {
            if (Session["PResultados"] == null)
            {
                listaPartidos = PartidosModel.GetPartidosForSettingScore();
                Session["PResultados"] = listaPartidos;
            }
            else
                listaPartidos = Session["PResultados"] as ObservableCollection<Partidos>;

            if (!Page.IsPostBack)
            {
                RCbxPartidos.DataSource = listaPartidos;
                RCbxPartidos.DataBind();
            }
        }
    }

    protected void RCbxPartidos_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
        int index = RCbxPartidos.SelectedIndex;
        Partidos partido = listaPartidos[index];

        LblLocal.Text = partido.PaisLocal;
        LblVisita.Text = partido.PaisVisita;
        GoalLocal.Value = partido.GolesLocal;
        GoalVisita.Value = partido.GolesVisita;
    }

    protected void RBtnGuardarResultado_Click(object sender, EventArgs e)
    {
        int index = RCbxPartidos.SelectedIndex;
        Partidos partido = listaPartidos[index];

        partido.GolesLocal = Convert.ToInt16(GoalLocal.Value);
        partido.GolesVisita = Convert.ToInt16(GoalVisita.Value);

        if (partido.GolesLocal > partido.GolesVisita)
            partido.IdPaisGanador = partido.IdPaisLocal;
        else if (partido.GolesVisita > partido.GolesLocal)
            partido.IdPaisGanador = partido.IdPaisVisita;
        else
            partido.IdPaisGanador = 999;

        PartidosModel.UpdatePartidosScore(partido);
        PartidosModel.UpdatePronosticosGainPoint(partido);
        PartidosModel.UpdateGruposInfo(partido, 1, partido.IdPaisLocal);
        PartidosModel.UpdateGruposInfo(partido, 2, partido.IdPaisVisita);
        PartidosModel.UpdateDiferenciaGoles();
    }
}