using System;
using System.Collections.ObjectModel;
using System.Linq;
using Quiniela.Dao;

namespace Quiniela
{
    public partial class ReviewPronosResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RadGrid1.DataSource = Session["Partidos"] as ObservableCollection<Partidos>;
        }
    }
}