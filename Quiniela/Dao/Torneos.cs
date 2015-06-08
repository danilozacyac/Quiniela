using System;
using System.Linq;

namespace Quiniela.Dao
{
    public class Torneos
    {
        private int idTorneo;
        private string torneo;
        public int IdTorneo
        {
            get
            {
                return this.idTorneo;
            }
            set
            {
                this.idTorneo = value;
            }
        }

        public string Torneo
        {
            get
            {
                return this.torneo;
            }
            set
            {
                this.torneo = value;
            }
        }
    }
}