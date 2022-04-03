using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Datalayer.Modelos
{
    public class Multicines
    {
        [Key]
        public int id_Multicine { get; set; }

        public string mul_nombre { get; set; }

        public string ciu_Nombre { get; set; }

        public bool mul_estado { get; set; }

        public int id_ciudad { get; set; }
    }
}
