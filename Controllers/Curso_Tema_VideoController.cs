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
        //
        // GET: /Curso_Tema_Video/
        RepositorioCurso_Tema_Video DarCurso_Tema_Video = new RepositorioCurso_Tema_Video();
        //Ve la lista de CTV
        public ActionResult Index()
        {
            return View(DarCurso_Tema_Video.obtenerCurso_Tema_Video());
        }
//-----------------------------------------------------------------------------------------------------
        public ActionResult Delete(int IdCTV)
        {
            return View(DarCurso_Tema_Video.obtenerCurso_Tema_Video());
        }

        [HttpPost]
        public ActionResult Delete(int IdCTV, FormCollection datosCTV)
        {
            DarCurso_Tema_Video.eliminarCurso_Tema_Video(IdCTV);
            return View("Borrado");
        }

        public ActionResult Borrado()
        {
            return View();
        }
//-----------------------------------------------------------------------------------------------------
        public ActionResult Select()
        {
            return View();
        }

        public ActionResult Update()
        {
            return View();
        }
    }
}
