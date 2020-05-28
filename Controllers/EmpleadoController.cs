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

        //Detalles de los empleados//
        public ActionResult DetallesEmpleado(int id)
        {
            return View(ObtenerEmpleado.obtenerEmpleado(id));
        }
        //Insertar Empleados//
        public ActionResult InsertarEmpleado()
        {
            return View();
        }
        [HttpPost]
        public ActionResult InsertarEmpleado(Empleado datosEmpleado)
        {
            ObtenerEmpleado.insertarEmpleado(datosEmpleado);
            return RedirectToAction("Index");
        }

        //EDITAR EMPPLEADO//
        public ActionResult EditarEmpleado(int id)
        {
            return View(ObtenerEmpleado.obtenerEmpleado(id));
        }

        [HttpPost]
        public ActionResult EditarEmpleado(int id, Empleado datosEmpleado)
        {
            datosEmpleado.IdEmpleado = id;
            ObtenerEmpleado.EditarEmpleado(datosEmpleado);
            return RedirectToAction("Index");
        }
        //Borrar empleados//
        public ActionResult BorrarEmpleado(int id)
        {
            return View(ObtenerEmpleado.obtenerEmpleado(id));
        }
        [HttpPost]
        public ActionResult BorrarEmpleado(int id, FormCollection Emp)
        {
            ObtenerEmpleado.BorrarEmpleado(id);
            return RedirectToAction("Index");
        }
    }
}
