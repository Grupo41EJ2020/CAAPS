<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Empleado>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Lista de Empleados</title>

<style type="text/css">
        a:link, a:visited{
    text-decoration: none;
    padding: 10px 3px;
    text-transform: uppercase;
    font-size: xx-small;
    color: white;
    width:66px;
    height:21px;
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
        .style2
    {
        color: #FFFFFF;
        text-align: center;
        width: 125px;
        height: 11px;
    }
    .style3
    {
        color: #FFFFFF;
        text-align: center;
        height: 23px;
    }
    .style4
    {
        color: #FFFFFF;
        text-align: center;
        width: 125px;
        height: 23px;
        font-weight: 700;
    }
    .style6
    {
        color: #FFFFFF;
        text-align: center;
        width: 137px;
        height: 11px;
    }
    .style8
    {
        color: #FFFFFF;
        width: 125px;
        height: 23px;
        font-weight: normal;
    }
    .style9
    {
        height: 11px;
    }
    </style>
</head>
<body style="background-color: #000000">
    <table>
        <tr>
            <th class="style9"></th>
            <th class="style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IdEmpleado 
            </th>
            <th class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Nombre
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td class="style3">
                <%: Html.ActionLink("Modificar", "EditarEmpleado", new { id=item.IdEmpleado }) %> |
                <%: Html.ActionLink("Detalles", "DetallesEmpleado", new { id=item.IdEmpleado })%> |
                <%: Html.ActionLink("Borrar", "BorrarEmpleado", new { id=item.IdEmpleado  })%>
            </td>
            <td class="style4">
                <%: item.IdEmpleado %>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style8">
            <%: item.Nombre %>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Agregar empleado", "InsertarEmpleado") %>
   
<a href="/Home/Index"><strong style="font-size: x-small">Regresar a inicio</strong></a></p>
   
    <p>
        &nbsp;</p>
&nbsp;
</body>
</html>
