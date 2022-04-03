using Cartera.WebApi.Helpers;
using Datalayer.Modelos;
using DatalayerCine;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Cine.WebApi.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class CineController : Controller
    {

        [HttpGet]
        public async Task<ActionResult<Respuesta<List<Generos>>>> GetGeneros()
        {
            Respuesta<List<Generos>> resp = new Respuesta<List<Generos>>()
            {
                Completado = false,
                Mensaje = "No se encontraron resultados."
            };

            try
            {
                List<Generos> listGeneros = await new GenerosDAL().GetGeneros();
                if (listGeneros != null && listGeneros.Count > 0)
                {
                    resp.Completado = true;
                    resp.Mensaje = "Generos consultados correctamente";
                    resp.Contenido = listGeneros;
                }
            }
            catch (Exception ex)
            {
                resp.Completado = false;
                resp.Mensaje = "No se logró consultar la informacion debido al siguiente error: " + ex.Message;
            }
            return Ok(resp);
        }

        [HttpGet]
        public async Task<ActionResult<Respuesta<List<Ciudades>>>> GetCiudades()
        {
            Respuesta<List<Ciudades>> resp = new Respuesta<List<Ciudades>>()
            {
                Completado = false,
                Mensaje = "No se encontraron resultados."
            };

            try
            {
                List<Ciudades> listCiudades = await new CiudadesDAL().GetCiudades();
                if (listCiudades != null && listCiudades.Count > 0)
                {
                    resp.Completado = true;
                    resp.Mensaje = "Ciudades consultadas correctamente";
                    resp.Contenido = listCiudades;
                }
            }
            catch (Exception ex)
            {
                resp.Completado = false;
                resp.Mensaje = "No se logró consultar la informacion debido al siguiente error: " + ex.Message;
            }
            return Ok(resp);
        }

        [HttpGet]
        public async Task<ActionResult<Respuesta<List<Multicines>>>> GetMulticines()
        {
            Respuesta<List<Multicines>> resp = new Respuesta<List<Multicines>>()
            {
                Completado = false,
                Mensaje = "No se encontraron resultados."
            };

            try
            {
                List<Multicines> listMulticines = await new MultiCinesDAL().GetMulticines();
                if (listMulticines != null && listMulticines.Count > 0)
                {
                    resp.Completado = true;
                    resp.Mensaje = "Multicines consultados correctamente";
                    resp.Contenido = listMulticines;
                }
            }
            catch (Exception ex)
            {
                resp.Completado = false;
                resp.Mensaje = "No se logró consultar la informacion debido al siguiente error: " + ex.Message;
            }
            return Ok(resp);
        }

        [HttpGet]
        public async Task<ActionResult<Respuesta<List<Peliculas>>>> GetPeliculas()
        {
            Respuesta<List<Peliculas>> resp = new Respuesta<List<Peliculas>>()
            {
                Completado = false,
                Mensaje = "No se encontraron resultados."
            };

            try
            {
                List<Peliculas> listPeliculas = await new PeliculasDAL().GetPeliculas();
                if (listPeliculas != null && listPeliculas.Count > 0)
                {
                    resp.Completado = true;
                    resp.Mensaje = "Multicines consultados correctamente";
                    resp.Contenido = listPeliculas;
                }
            }
            catch (Exception ex)
            {
                resp.Completado = false;
                resp.Mensaje = "No se logró consultar la informacion debido al siguiente error: " + ex.Message;
            }
            return Ok(resp);
        }

        [HttpGet]
        public async Task<ActionResult<Respuesta<List<PeliculasMulticines>>>> GetPeliculasPorMulticines([FromQuery] string multicine)
        {
            Respuesta<List<PeliculasMulticines>> resp = new Respuesta<List<PeliculasMulticines>>()
            {
                Completado = false,
                Mensaje = "No se encontraron resultados."
            };

            try
            {
                List<PeliculasMulticines> listMulticine = await new PeliculasMulticinesDAL().GetPelicuasPorMulticines(multicine);
                if (listMulticine != null && listMulticine.Count > 0)
                {
                    resp.Completado = true;
                    resp.Mensaje = "Peliculas por multicines consultadas correctamente";
                    resp.Contenido = listMulticine;
                }
            }
            catch (Exception ex)
            {
                resp.Completado = false;
                resp.Mensaje = "No se logró consultar la informacion debido al siguiente error: " + ex.Message;
            }
            return Ok(resp);
        }


    }
}
