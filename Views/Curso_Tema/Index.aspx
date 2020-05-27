<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso_Tema>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso_Tema</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                IdCT
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "Curso_TemaEdit", new { id=item.IdCT })%> |
                <%: Html.ActionLink("Detalles", "Curso_TemaDetails", new { id=item.IdCT })%> |
                <%: Html.ActionLink("Borrar", "Curso_TemaDelete", new { id = item.IdCT })%>
            </td>
            <td>
                <%: item.IdCT %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear uno nuevo", "Curso_TemaInsert") %>
    </p>
    <a href="/Home/Index">Menú Principal</a>
</body>
</html>

