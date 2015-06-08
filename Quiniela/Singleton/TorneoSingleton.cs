using System;
using System.Collections.ObjectModel;
using System.Linq;
using Quiniela.Dao;
using Quiniela.Models;

namespace Quiniela.Singleton
{
    public class TorneoSingleton
    {
        private static ObservableCollection<Torneos> torneos;

        private TorneoSingleton() { }

        public static ObservableCollection<Torneos> Torneos
        {
            get
            {
                if (torneos == null)
                    torneos = new TorneosModel().GetTorneos();

                return torneos;
            }
        }
    }
}