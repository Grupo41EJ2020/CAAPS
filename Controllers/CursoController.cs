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
    public class CursoController : Controller
    {
        //
        // GET: /Curso/

        RepositorioCurso ObtenerCursos = new RepositorioCurso();

        //Pagina principal de Cursos
        public ActionResult Index()
        {
            return View(ObtenerCursos.obtenerCursos());
      
        }

        //Detalles cursos
        public ActionResult CursoDetails(int id)
        {
            return View(ObtenerCursos.obtenerCurso(id));

        }


        //Eliminar cursos(MOSTRAR)
        public ActionResult CursoDelete(int id)
        {
            return View(ObtenerCursos.obtenerCurso(id));
        }

        //(BOTON ELIMINAR)

        [HttpPost]
        public ActionResult CursoDelete(int id, FormCollection frm)
          {
            ObtenerCursos.obtenerCurso(id);
            return RedirectToAction("Index");
          }

        //Editar cursos(MOSTRAR)
        public ActionResult CursoEdit(int id)
          {
              return View(ObtenerCursos.obtenerCurso(id));

          }

        //(BOTON EDITAR)
        [HttpPost]
        public ActionResult CursoEdit(int id, Curso datosCurso)
          {
            datosCurso.IdCurso = id;
            ObtenerCursos.actualizarCurso(datosCurso);
            return RedirectToAction("Index");
          }
    }
}
