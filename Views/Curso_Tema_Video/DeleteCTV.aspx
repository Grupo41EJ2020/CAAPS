<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>DeleteCTV</title>
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
        .style3
        {
            color: #FFFFFF;
            text-align: center;
            background-color: #CC0000;
        }
          .display-label
          {
              color: #FFFFFF;
          }
    </style>
   
</head>
<body style="background-color: #000000">
    <h1 class="style3"> <em style="background-color: #CC0000">Opciones Curso_Tema_Video 
        </em> </h1>
    <hr style="background-color: #FFFFFF; height: 8px;" />
    <h3 class="display-label">¿Seguro de querer borrar esto?</h3>
    <fieldset>
        <legend style="color: #FFFFFF; font-weight: 700">Informacion CTV</legend>
        
        <div class="display-label">IdCTV</div>
        <div class="display-field"><%: Model.IdCTV %></div>
        
        <div class="display-label">IdCT</div>
        <div class="display-field"><%: Model.IdCT %></div>
        
        <div class="display-label">IdVideo</div>
        <div class="display-field"><%: Model.IdVideo %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>

  <hr style="background-color: #FFFFFF; height: 6px;" />

		    <input type="submit" value="Eliminar" /> |
		    <%: Html.ActionLink("Volver", "Index") %>
        </p>
    <% } %>

</body>
</html>

