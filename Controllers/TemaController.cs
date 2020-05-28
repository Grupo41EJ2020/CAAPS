using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using MVCLaboratorio.Models;
using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Controllers
{
    public class TemaController : Controller
    {
        RepositorioTema obtenerTemas = new RepositorioTema();
        // GET: /Tema/


        //LISTA

        public ActionResult Index()
        {
            return View(obtenerTemas.obtenerTemas());
        }

        //DETALLE

        public ActionResult Details(int id)
        {
            return View(obtenerTemas.obtenerTema(id));
        }

        //DELETE

        public ActionResult deleteTema(int id)
        {
            return View(obtenerTemas.obtenerTema(id));
        }
        [HttpPost]
        public ActionResult deleteTema(int id, FormCollection datos)
        {
            obtenerTemas.eliminarTema(id);

            return RedirectToAction("Borrado");
        }
        

        //CREATE
        public ActionResult createTema()
        {
            return View();
        }
        [HttpPost]
        public ActionResult createTema(Tema datosTemadatosTema)
        {
            obtenerTemas.insertarTema(datosTemadatosTema);
            return RedirectToAction("Creado");
        }


        //UPDATE
        public ActionResult updateTema(int id)
        {
            return View(obtenerTemas.obtenerTema(id));
        }

        [HttpPost]
        public ActionResult updateTema(int id, Tema datosTema)
        {
            datosTema.IdTema = id;
            obtenerTemas.actualizarTema(datosTema);
            return RedirectToAction("Modificado");
        }

    }
}
