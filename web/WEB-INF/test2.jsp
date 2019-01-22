<%@ page import="com.beans.Produit" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.IOException" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <%

        ArrayList<Produit> myList_Product = (ArrayList<Produit>) request.getAttribute("Liste_Produits");

        out.println("</br><h1>Première méthode : </h1>");
        for (int i = 0; myList_Product.size() > i ; i++) {
            try {
                out.println("</br>Nom du produit : " + myList_Product.get(i).getNom());
                out.println("</br>Prix demandé : " + myList_Product.get(i).getPrix_achat());
                out.println("</br>Description : " + myList_Product.get(i).getDescription());
                out.println("</br>Créé par : " + myList_Product.get(i).getJeremy());
                out.println("</br>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    %>
<h1>Deuxième méthode :</h1>
<table>
    <th>Nom</th>
    <th>Description</th>
    <th>Prix</th>
    <th>Jeremy</th>
    <c:forEach items="${Liste_Produits}" var="produit">
        <tr>
            <td><c:out value="${produit.nom}" /><td>
            <td><c:out value="${produit.description}" /><td>
            <td><c:out value="${produit.prix_achat}" /><td>
            <td><c:out value="${produit.jeremy}" /><td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
