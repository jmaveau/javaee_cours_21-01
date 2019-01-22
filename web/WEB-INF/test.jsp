<%@ page import="com.beans.Produit" %><%--
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
        Produit myProduct = (Produit) request.getAttribute("Produit1");

        out.println("</br>Nom du produit : "+ myProduct.getNom());
        out.println("</br>Prix demandé : "+ myProduct.getPrix_achat());
        out.println("</br>Description : "+ myProduct.getDescription());
        out.println("</br>Créé par : " + myProduct.getJeremy());

    %>
</p>

</body>
</html>
