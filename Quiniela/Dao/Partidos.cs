using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Quiniela.Dao
{
    public class Partidos
    {
        private int idPartido;
        private DateTime fecha;
        private int idPaisLocal;
        private int idPaisVisita;
        private int golesLocal;
        private int golesVisita;
        private int idPaisGanador;

        public int IdPartido
        {
            get
            {
                return this.idPartido;
            }
            set
            {
                this.idPartido = value;
            }
        }

        public DateTime Fecha
        {
            get
            {
                return this.fecha;
            }
            set
            {
                this.fecha = value;
            }
        }

        public int IdPaisLocal
        {
            get
            {
                return this.idPaisLocal;
            }
            set
            {
                this.idPaisLocal = value;
            }
        }

        public int IdPaisVisita
        {
            get
            {
                return this.idPaisVisita;
            }
            set
            {
                this.idPaisVisita = value;
            }
        }

        public int GolesLocal
        {
            get
            {
                return this.golesLocal;
            }
            set
            {
                this.golesLocal = value;
            }
        }

        public int GolesVisita
        {
            get
            {
                return this.golesVisita;
            }
            set
            {
                this.golesVisita = value;
            }
        }

        public int IdPaisGanador
        {
            get
            {
                return this.idPaisGanador;
            }
            set
            {
                this.idPaisGanador = value;
            }
        }
    }
}