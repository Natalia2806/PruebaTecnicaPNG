using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Datalayer.Modelos
{
    public class Peliculas
    {
        [Key]
        public int id_pelicula { get; set; }

        public string pel_nombre { get; set; }

        public string gen_nombre { get; set; }

        public string pel_poster { get; set; }

        public string pel_trailer { get; set; }

        public int id_genero { get; set; }

        public bool pel_estado { get; set; }
    }
}
