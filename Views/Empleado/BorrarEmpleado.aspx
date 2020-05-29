<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>BorrarEmpleado</title>
    <style type="text/css">
        a:link, a:visited{
    text-decoration: none;
    padding: 10px 3px;
    text-transform: uppercase;
    font-size: xx-small;
    color: white;
    width:63px;
    height:23px;
    text-align:center;
    display: inline-block;
    margin: 20px 20px 0 20px;
    background-color: #CC0000;
            font-weight: 700;
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
            font-weight: normal;
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
          .display-label
          {
              color: #FFFFFF;
          }
    </style>
</head>
<body style="background-color: #000000">
    <h1 class="style3"> <strong>Borrar Empleado</strong></h1>
    <hr style="background-color: #FFFFFF; height: 10px;" />
</head>
    <h3 style="color: #FFFFFF">¿Estas seguro de borrar la siguiente inforrmación?</h3>
    <fieldset>
        <legend style="color: #FFFFFF">Empleado</legend>
        
        <div class="display-label">
            <br />
            IdEmpleado</div>
        <div class="display-field"><%: Model.IdEmpleado %></div>
        
        <div class="display-label">Nombre</div>
        <div class="display-field"><%: Model.Nombre %></div>
        
        <div class="display-label">Direccion</div>
        <div class="display-field"><%: Model.Direccion %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Borrar Empleado" 
                style="height: 34px; width: 168px; color: #FFFFFF; font-weight: 700; margin-top: 0px; background-color: #CC0000" /> |
            </p>
        <p>
            <a href="/Empleado/Index"><strong style="font-size: x-small">Regresar a la lista</strong></a></p>
        </p>
    <% } %>

</body>
</html>

