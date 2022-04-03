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
    public class PeliculasMulticinesDAL : BaseDAL
    {
        public PeliculasMulticinesDAL() : base() { }

        public async Task<List<PeliculasMulticines>> GetPelicuasPorMulticines(string multicine)
        {

            try
            {
                using (IDbConnection connection = new SqlConnection(_cnConexion))
                {
                    connection.Open();
                    return (List<PeliculasMulticines>)await connection.QueryAsync<PeliculasMulticines>("Peliculas_multicine_get", new { multicine }, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }

}
