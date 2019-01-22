<%--
  Created by IntelliJ IDEA.
  User: mawo
  Date: 1/21/19
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
- Page générée depuis une JSP -

<p>
    <%
        String attribut = (String) request.getAttribute("test");
        out.println( attribut );
        String parametre_lang = request.getParameter("lang");
        out.println("</br>Langue demandée : "+parametre_lang );
        String parametre_prix = request.getParameter("price");
        out.println("</br>Prix demandé : "+parametre_prix);
    %>
</p>

</body>
</html>
