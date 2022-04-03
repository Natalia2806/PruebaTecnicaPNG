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
    public class MultiCinesDAL : BaseDAL
    {
        public MultiCinesDAL() : base() { }

        public async Task<List<Multicines>> GetMulticines()
        {

            try
            {
                using (IDbConnection connection = new SqlConnection(_cnConexion))
                {
                    connection.Open();
                    return (List<Multicines>)await connection.QueryAsync<Multicines>("multicines_get", commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }

}
