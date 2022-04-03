using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Datalayer.Modelos
{
    public class Ciudades
    {
        [Key]
        public int id_Ciudad { get; set; }

        public string ciu_Nombre { get; set; }
        
        public bool ciu_Estado { get; set; }
    }
}
