<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Tema>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Lista de Temas</title>
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
    <h1 class="style3"> <em style="background-color: #CC0000">Opciones Tema
        </em> </h1>
    <hr style="background-color: #FFFFFF; height: 4px;" />
    <table>
        <tr>
         <th style="color: #FFFFFF"></th>
            <th style="color: #FFFFFF">
                IdTema
           <th style="color: #FFFFFF">
                Nombre
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td style="color: #FFFFFF">
                <%: Html.ActionLink("Modificar", "updateTema", new { id=item.IdTema }) %> |
                <%: Html.ActionLink("Detalles", "Details", new { id=item.IdTema }) %> |
                <%: Html.ActionLink("Borrar", "deleteTema", new { id=item.IdTema })%>
            </td>
             <td style="color: #FFFFFF">
                <%: item.IdTema %>
            </td>
          <td style="color: #FFFFFF">
                <%: item.Nombre %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear nuevo Tema", "createTema") %>
    </p>
  <a href="/Home">Menú Principal</a>
</body>
</html>

