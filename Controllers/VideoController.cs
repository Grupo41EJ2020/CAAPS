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
    public class VideoController : Controller
    {
        //
        // GET: /Video/
        RepositorioVideo repoVideo = new RepositorioVideo();

        public ActionResult Index()
        {
            return View(repoVideo.obtenerVideos());
        }

//        CREAR 
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Video datos)
        {
            repoVideo.insertarVideo(datos);
            return RedirectToAction("Index");
        }

//      BORRAR
        public ActionResult Delete(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }
        [HttpPost]
        public ActionResult Delete(int id, FormCollection datos)
        {
            repoVideo.eliminarVideo(id);
            return View("Index");
        }
    }
}
