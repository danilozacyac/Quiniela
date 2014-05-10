﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;
using Quiniela.Dao;
using Quiniela.Models;

namespace Quiniela.Singleton
{
    public class PartidosSingleton
    {

        private static ObservableCollection<Partidos> partidos;

        private PartidosSingleton() { }

        public static ObservableCollection<Partidos> PartidosSin
        {
            get
            {
                if (partidos == null)
                    partidos = PartidosModel.GetPartidos();

                return partidos;
            }
        }
    }
}