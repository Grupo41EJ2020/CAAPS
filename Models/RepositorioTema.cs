﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MVCLaboratorio.Models;
using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Models
{
    public class RepositorioTema : ITema
    {
        public List<Tema> obtenerTemas()
        {
            DataTable dtTema = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarTodo", CommandType.StoredProcedure);

            List<Tema> lsTema = new List<Tema>();

            foreach (DataRow item in dtTema.Rows)
            {
                Tema datosTema = new Tema();

                datosTema.IdTema = int.Parse(item["IdTema"].ToString());
                datosTema.Nombre = item["Nombre"].ToString();

                lsTema.Add(datosTema);
            }
            return lsTema;
        }

        public Tema obtenerTema(int IdTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", IdTema));

            DataTable dtTema = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarPorID", CommandType.StoredProcedure, parametros);

            Tema miTema = new Tema();

            if (dtTema.Rows.Count > 0)
            {
                miTema.IdTema = int.Parse(dtTema.Rows[0]["IdTema"].ToString());
                miTema.Nombre = dtTema.Rows[0]["Nombre"].ToString();

                return miTema;
            }
            else
            {
                return null;
            }
        }
        public void insertarTema(Tema datosTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", datosTema.IdTema));
            parametros.Add(new SqlParameter("@Nombre", datosTema.Nombre));

            BaseHelper.ejecutarConsulta("sp_Tema_Insertar", CommandType.StoredProcedure, parametros);
        }
        public void eliminarTema(int IdTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", IdTema));

            BaseHelper.ejecutarConsulta("sp_Tema_Eliminar", CommandType.StoredProcedure, parametros);
        }
        public void actualizarTema(Tema datosTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", datosTema.IdTema));
            parametros.Add(new SqlParameter("@Nombre", datosTema.Nombre));

            BaseHelper.ejecutarConsulta("sp_Tema_Actualizar", CommandType.StoredProcedure, parametros);
        }
    }
}