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
            return View();
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
        //Detalles//
        public ActionResult Curso_TemaDetails(int id)
        {
            return View(DarCurso_Tema.obtenerCurso_Tema(id));
        }
        //Edit//
        public ActionResult Curso_TemaEdit(int id)
        {
            return View(DarCurso_Tema.obtenerCurso_Tema(id));
        }
        [HttpPost]
        public ActionResult Curso_TemaEdit(int id, Curso_Tema datosCurso_Tema)
        {
            datosCurso_Tema.IdCT = id;
            DarCurso_Tema.actualizarCurso_Tema(datosCurso_Tema);
            return RedirectToAction("Index");
        }
    }
}
