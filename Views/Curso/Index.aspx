﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Lista de Cursos</title>
    <style type="text/css">
        a:link, a:visited{
    text-decoration: none;
    padding: 10px 3px;
    text-transform: uppercase;
    font-size: xx-small;
    color: white;
    width:57px;
    height:7px;
    text-align:center;
    display: inline-block;
    margin: 20px 20px 0 20px;
    background-color: #CC0000;
    }
    a:hover{
    color: #4c5557;
    background-color: #CC0000;
    text-decoration: none;
    }    
        .style3
        {
            color: #FFFFFF;
            text-align: center;
            background-color: #CC0000;
        }
            .display-field
            {
                color: #FFFFFF;
            }
               .editor-label
               {
                   color: #FFFFFF;
               }
               .editor-field
               {
                   color: #FFFFFF;
               }
    </style>
   
</head>
<body style="background-color: #000000">
    <h1 class="style3"> Opciones Curso</h1>
    <hr style="background-color: #FFFFFF; height: 10px;" />
</head>
<a href="/Home">Inicio</a>
<body>
    <table>
        <tr>
            <th style="color: #FFFFFF"></th>
            <th style="color: #FFFFFF">
                IdCurso
            </th>
       
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td style="color: #FFFFFF">
                <%: Html.ActionLink("Editar", "CursoEdit", new { id=item.IdCurso }) %> |
                <%: Html.ActionLink("Ver detalles", "CursoDetails", new { id=item.IdCurso })%> |
                <%: Html.ActionLink("Eliminar", "CursoDelete", new {  id=item.IdCurso })%>
            </td>
            <td style="color: #FFFFFF">
                <%: item.IdCurso %>
            </td>
          
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear Nuevo Curso", "CursoCreate") %>
    </p>

</body>
</html>

