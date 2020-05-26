<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso_Tema_Video>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
</head>
<a href="/Home">Menú</a>
<body>
    <table>
        <tr>
            <th></th>
            <th>
              &nbsp; IdCTV
            </th>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "Edit", new { /* id=item.PrimaryKey */ }) %> &nbsp;|&nbsp;&nbsp;&nbsp;
                <%: Html.ActionLink("Detalles", "Details", new { /* id=item.PrimaryKey */ })%> |&nbsp;&nbsp;&nbsp;
                <%: Html.ActionLink("Borrar", "Delete", new { /* id=item.PrimaryKey */ })%>
            </td>
            <td> &nbsp;&nbsp;|&nbsp; &nbsp; 
                <%: item.IdCTV %>
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;</td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear nuevo curso_tema_video", "Create") %>
    </p>

</body>
</html>

