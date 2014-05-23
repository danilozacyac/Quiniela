using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Quiniela.Dao;
using Quiniela.Models;

namespace Quiniela
{
    public partial class Grupos : System.Web.UI.Page
    {
        ObservableCollection<GruposDao> grupos;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IdUsuario"] == null)
                Response.Redirect("logIn.aspx");
            else
            {
                grupos = GruposModel.GetGrupos();
                RGGrupoA.DataSource = this.GetGroupStadistics('A');

                RGGrupoB.DataSource = this.GetGroupStadistics('B');

                RGGrupoC.DataSource = this.GetGroupStadistics('C');

                RGGrupoD.DataSource = this.GetGroupStadistics('D');

                RGGrupoE.DataSource = this.GetGroupStadistics('E');

                RGGrupoF.DataSource = this.GetGroupStadistics('F');

                RGGrupoG.DataSource = this.GetGroupStadistics('G');

                RGGrupoH.DataSource = this.GetGroupStadistics('H');
            }
        }

        private List<GruposDao> GetGroupStadistics(char groups)
        {
            return (from n in grupos
                    where n.Grupo == groups
                    orderby n.Puntos descending
                    select n).ToList();
        }
    }
}