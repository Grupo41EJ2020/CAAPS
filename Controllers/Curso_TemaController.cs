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
        //Insert//
        public ActionResult Curso_TemaInsert()
        {
            return View(DarCurso_Tema.obtenerCurso_Temas());
        }
        [HttpPost]
        public ActionResult Curso_TemaInsert(Curso_Tema datosCurso_Tema)
        {
            DarCurso_Tema.insertarCurso_Tema(datosCurso_Tema);
            return RedirectToAction("Index");
        }
        //Delete//
        public ActionResult Curso_TemaDelete(int id)
        {
            return View(DarCurso_Tema.obtenerCurso_Tema(id));
        }
        [HttpPost]
        public ActionResult Curso_TemaDelete(int id, FormCollection frmCurso_Tema)
        {
            DarCurso_Tema.eliminarCurso_Tema(id);
            return RedirectToAction("Index");
        }
    }
}
