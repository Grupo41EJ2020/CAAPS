<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>DetallesEmpleado</title>
    <style type="text/css">
        a:link, a:visited{
    text-decoration: none;
    padding: 10px 3px;
    text-transform: uppercase;
    font-size: xx-small;
    color: white;
    width:66px;
    height:25px;
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
          .display-label
          {
              color: #FFFFFF;
          }
    </style>
</head>
<body style="background-color: #000000">
<h1 class="style3"> Detalles del empleado</h1>
    <hr style="background-color: #FFFFFF; height: 10px;" />
    <head />
    <body>
    <fieldset>
        <legend  style="color: #FFFFFF">Empleado </legend>
        
        <div class="display-label">
            <br />
            IdEmpleado: </div>
        <div class="display-field"><%: Model.IdEmpleado %></div>
        
        <div class="display-label">Nombre: </div>
        <div class="display-field"><%: Model.Nombre %></div>
        
        <div class="display-label">Direccion: </div>
        <div class="display-field"><%: Model.Direccion %></div>
        
    </fieldset>
    <p>
    <a href="/Empleado/Index"><strong style="font-size: x-small">Regresar a la lista</strong></a></p>
       
    </p>

</body>
</html>

