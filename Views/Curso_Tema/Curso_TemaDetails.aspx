<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso_TemaDetails</title>
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
          .display-field
          {
              color: #FFFFFF;
          }
    </style>
   
</head>
<body style="background-color: #000000">
<body>
    <fieldset>
        <legend style="font-weight: 700; color: #FFFFFF">Datos</legend>
        
        <div class="display-label">IdCT</div>
        <div class="display-field"><%: Model.IdCT %></div>
        
        <div class="display-label">IdCurso</div>
        <div class="display-field"><%: Model.IdCurso %></div>
        
        <div class="display-label">IdTema</div>
        <div class="display-field"><%: Model.IdTema %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Editar", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
        <%: Html.ActionLink("Regresar", "Index") %>
    </p>

</body>
</html>

