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
    public class Curso_TemaController : Controller
    {
        RepositorioCurso_Tema DarCurso_Tema = new RepositorioCurso_Tema();

        public ActionResult Index()
        {
            return View(DarCurso_Tema.obtenerCurso_Temas());
        }
        public ActionResult Curso_TemaInsert()
        {
            return View(DarCurso_Tema.obtenerCurso_Temas());
        }
        [HttpPost]
        public ActionResult Curso_TemaInsert(Curso_Tema datos)
        {
            DarCurso_Tema.insertarCurso_Tema(datos);
            return RedirectToAction("Index");
        }
    }
}
