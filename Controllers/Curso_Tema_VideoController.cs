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
    public class Curso_Tema_VideoController : Controller
    {
        RepositorioCurso_Tema_Video repoCurso_Tema_Video = new RepositorioCurso_Tema_Video();
        // GET: /Curso_Tema_Video/


//()()()()()()()()()()()(()()()()()()()()LISTA()()()()()()(()()()()()()()()()()()()()()()()()()()()()(()()()()()()()()()()

        public ActionResult Index()
        {
            return View(repoCurso_Tema_Video.obtenerCurso_Tema_Videos());
        }

//()()()()()()()()()()()(()()()()()()()()DETALLE()()()()()()(()()()()()()()()()()()()()()()()()()()()()(()()()()()()()()()()

        public ActionResult Details(int id)
        {
            return View(repoCurso_Tema_Video.obtenerCurso_Tema_Video(id));
        }

//()()()()()()()()()()()(()()()()()()()()DELETE()()()()()()(()()()()()()()()()()()()()()()()()()()()()(()()()()()()()()()()
      
        public ActionResult DeleteCTV(int id)
        {
            return View(repoCurso_Tema_Video.obtenerCurso_Tema_Video(id));
        }
        [HttpPost]
        public ActionResult DeleteCTV(int id, FormCollection datos)
        {
            repoCurso_Tema_Video.eliminarCurso_Tema_Video(id);

            return RedirectToAction("Borrado");
        }
        //Mensaje Borrar
        public ActionResult Borrado()
        {
            return View();
        }
    }
}
