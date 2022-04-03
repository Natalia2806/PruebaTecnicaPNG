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
    public class PeliculasDAL : BaseDAL
    {
        public PeliculasDAL() : base() { }

        public async Task<List<Peliculas>> GetPeliculas()
        {

            try
            {
                using (IDbConnection connection = new SqlConnection(_cnConexion))
                {
                    connection.Open();
                    return (List<Peliculas>)await connection.QueryAsync<Peliculas>("Peliculas_get", commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

    }
}
