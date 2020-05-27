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
    }
}
