using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Utilidades;

namespace Datalayer.Modelos
{
    public abstract class BaseDAL
    {
     
        protected readonly string _cnConexion;

        public BaseDAL()
            => _cnConexion = AppConfiguration.GetConnectionString();
    }
}

