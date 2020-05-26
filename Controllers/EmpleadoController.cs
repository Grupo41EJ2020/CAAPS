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
    public class EmpleadoController : Controller
    {
        
        RepositorioEmpleado ObtenerEmpleado = new RepositorioEmpleado();

        public ActionResult Index()
        {
            return View(ObtenerEmpleado.obtenerEmpleados());
        }

    }
}
