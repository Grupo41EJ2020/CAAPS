using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLaboratorio.Controllers
{
    public class CursoController : Controller
    {
        //
        // GET: /Curso/
        //Pagina principal de Cursos
        public ActionResult Index()
        {
            return View();
      
        }
    }
}
