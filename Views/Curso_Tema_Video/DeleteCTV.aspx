<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Borrar CTV</title>
        <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
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
    </style>
   
</head>
<body style="background-color: #000000">
    <h1 class="style3"> <em style="background-color: #CC0000">Borrar CTV</em></h1>
    <hr style="background-color: #FFFFFF; height: 10px;" />
</head>
<body>
    <h3 class="style1">¿Seguro queres borrar de CTV?</h3>
    <fieldset>
        <legend class="style1">I<strong>nformacion CTV</strong></legend>
        
        <div class="style1">IdCTV</div>
        <div class="display-field"><%: Model.IdCTV %></div>
        
        <div class="style1">IdCT</div>
        <div class="display-field"><%: Model.IdCT %></div>
        
        <div class="style1">IdVideo</div>
        <div class="display-field"></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <hr style="height: 8px; background-color: #FFFFFF" />
    <% } %>

    <p>
		    <input type="submit" value="Borrar" /></p>
              <%: Html.ActionLink("↺ Volver", "Index")%>

</body>
</html>

