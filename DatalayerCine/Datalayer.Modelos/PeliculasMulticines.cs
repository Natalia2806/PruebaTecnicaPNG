using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Datalayer.Modelos
{
    public class PeliculasMulticines
    {
        [Key]
        public int id_pelicula_multicine { get; set; }

        public int id_pelicula { get; set; }

        public string pel_nombre { get; set; }

        public int id_multicine { get; set; }

        public string mul_nombre { get; set; }

        public DateTime pel_mul_horario { get; set; }
    }
}
