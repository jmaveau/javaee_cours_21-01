<%@ page import="com.beans.Produit" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.IOException" %><%--
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
        ArrayList<Produit> myList_Product = (ArrayList<Produit>) request.getAttribute("Liste_Produits");

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
</p>

</body>
</html>
