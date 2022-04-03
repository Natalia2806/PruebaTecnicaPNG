using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Cartera.WebApi.Helpers
{
    public class Respuesta<T>
    {
        public bool Completado { get; set; }
        public string Mensaje { get; set; }
        public T Contenido { get; set; }

    }

    public class Respuesta
    {
        public bool Completado { get; set; }
        public string Mensaje { get; set; }
        public object Contenido { get; set; }
    }
}
