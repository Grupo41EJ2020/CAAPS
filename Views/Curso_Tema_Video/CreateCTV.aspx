<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Create CTV</title>
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
    <h1 class="style3"> Crear<em style="background-color: #CC0000"> CTV</em></h1>
    <hr style="background-color: #FFFFFF; height: 10px;" />
</head>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend class="display-field">Informacion CTV</legend>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdCT) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IdCT) %>
                <%: Html.ValidationMessageFor(model => model.IdCT) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdVideo) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IdVideo) %>
                <%: Html.ValidationMessageFor(model => model.IdVideo) %>
            </div>
            
            <p>
                <input type="submit" value="Crear" />
            </p>
            <hr style="height: 9px; background-color: #FFFFFF" />
            <p>
                &nbsp;</p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Volver", "Index") %>
    </div>

</body>
</html>

