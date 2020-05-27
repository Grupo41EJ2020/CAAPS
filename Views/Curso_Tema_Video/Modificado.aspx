<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Modificado</title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center"> ¡Se ha <span class="style1"><em>modificado</em></span> de: Curso_Tema_Video!</h1>
    <p style="text-align: center">
        &nbsp;</p>
    <br />
    <br />
    <br />
    <%: Html.ActionLink("⇦ Volver ⇦", "Index")%>
</body>
</html>
