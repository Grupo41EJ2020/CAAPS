<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso_Tema>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso_Tema</title>
      <style type="text/css">
        a:link, a:visited{
    text-decoration: none;
    padding: 15px 6px;
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
          .display-label
          {
              color: #FFFFFF;
          }
    </style>
   
</head>
<body style="background-color: #000000">
<body>
    <table>
        <tr>
            <th style="color: #FFFFFF"></th>
            <th style="color: #FFFFFF">
                IdCT
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td style="color: #FFFFFF">
                <%: Html.ActionLink("Editar", "Curso_TemaEdit", new { id=item.IdCT })%> |
                <%: Html.ActionLink("Detalles", "Curso_TemaDetails", new { id=item.IdCT })%> |
                <%: Html.ActionLink("Borrar", "Curso_TemaDelete", new { id = item.IdCT })%>
            </td>
            <td style="color: #FFFFFF">
                <%: item.IdCT %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear uno nuevo", "Curso_TemaInsert") %>
    </p>
    <a href="/Home/Index">Menú </a>&nbsp;
</body>
</html>

