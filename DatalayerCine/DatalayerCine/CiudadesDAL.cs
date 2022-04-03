
using Dapper;
using Datalayer.Modelos;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;

using System.Linq;
using System.Threading.Tasks;

namespace DatalayerCine
{
    public class CiudadesDAL : BaseDAL
    {
        public CiudadesDAL() : base() { }

        public async Task<List<Ciudades>> GetCiudades()
        {

            try
            {
                using (IDbConnection connection = new SqlConnection(_cnConexion))
                {
                    connection.Open();
                    return (List<Ciudades>)await connection.QueryAsync<Ciudades>("Ciudades_get", commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

    }
}
