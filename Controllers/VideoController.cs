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
    }
}
