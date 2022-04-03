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
    public class GenerosDAL : BaseDAL
    {
        public GenerosDAL() : base() { }

        public async Task<List<Generos>> GetGeneros()
        {
          
            try
            {
                using (IDbConnection connection = new SqlConnection(_cnConexion))
                {
                    connection.Open();
                    return (List<Generos>)await connection.QueryAsync<Generos>("Generos_get", commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }

  
}
