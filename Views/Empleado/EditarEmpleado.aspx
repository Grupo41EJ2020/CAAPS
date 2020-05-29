<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>EditarEmpleado</title>
    <style type="text/css">
        a:link, a:visited{
    text-decoration: none;
    padding: 10px 3px;
    text-transform: uppercase;
    font-size: xx-small;
    color: white;
    width:63px;
    height:24px;
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
    </style>
</head>
<body style="background-color: #000000">
    <h1 class="style3"> <strong>Modificar datos del empleado</strong></h1>
    <hr style="background-color: #FFFFFF; height: 10px;" />
    </head>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend style="color: #FFFFFF">Datos del empleado</legend>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nombre) %>
                <br />
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Direccion) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Direccion) %>
                <%: Html.ValidationMessageFor(model => model.Direccion) %>
            </div>
            
            <p>
                <input type="submit" value="Guardar modificaciones..." 
                    
                    style="color: #FFFFFF; background-color: #CC0000; height: 34px; width: 195px;" />
            </p>
        </fieldset>

    <% } %>

    <div>
    <a href="/Empleado/Index"><strong style="font-size: x-small">Regresar a la lista</strong></a></p>

    </div>

</body>
</html>

