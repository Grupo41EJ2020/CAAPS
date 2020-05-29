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

        RepositorioCurso repoCurso = new RepositorioCurso();

        //Pagina principal de Cursos
        public ActionResult Index()
        {
            return View(repoCurso.obtenerCursos());
      
        }

        //Detalles cursos
        public ActionResult CursoDetails(int id)
        {
            return View(repoCurso.obtenerCurso(id));

        }


        //Eliminar cursos(MOSTRAR)
        public ActionResult CursoDelete(int id)
        {
            return View(repoCurso.obtenerCurso(id));
        }

        //(BOTON ELIMINAR)

        [HttpPost]
        public ActionResult CursoDelete(int id, FormCollection frm)
          {
            repoCurso.eliminarCurso(id);
            return RedirectToAction("Index");
          }

        //Editar cursos(MOSTRAR)
        public ActionResult CursoEdit(int id)
          {
              return View(repoCurso.obtenerCurso(id));

          }

        //(BOTON EDITAR)
        [HttpPost]
        public ActionResult CursoEdit(int id, Curso datosCurso)
          {
            datosCurso.IdCurso = id;
            repoCurso.actualizarCurso(datosCurso);
            return RedirectToAction("Index");
          }


        //Crear cursos nuevos
        public ActionResult CursoCreate()
          {
            return View();
          
        }

        //(BOTON CREAR)
        [HttpPost]
        public ActionResult CursoCreate(Curso datosCurso)
        {
            repoCurso.insertarCurso(datosCurso);
            return RedirectToAction("Index");
        }
    }
}
