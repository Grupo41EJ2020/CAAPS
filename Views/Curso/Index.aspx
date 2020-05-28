<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Lista de Cursos</title>
</head>
<a href="/Home">Inicio</a>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                IdCurso
            </th>
       
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "CursoEdit", new { id=item.IdCurso }) %> |
                <%: Html.ActionLink("Ver detalles", "CursoDetails", new { id=item.IdCurso })%> |
                <%: Html.ActionLink("Eliminar", "CursoDelete", new {  id=item.IdCurso })%>
            </td>
            <td>
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

