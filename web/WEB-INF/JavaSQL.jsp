<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: mawo
  Date: 1/23/19
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<p>
    <%
        ResultSet resultset = (ResultSet) request.getAttribute("Liste_Produits");
    %>
        <TABLE BORDER="1">
        <TR>
        <TH>ID</TH>
        <TH>Name</TH>
        <TH>City</TH>
        <TH>State</TH>
        <TH>Country</TH>
        </TR>
        <% while(resultset.next()){ %>
        <TR>
            <TD> <%= resultset.getString(1) %></td>
            <TD> <%= resultset.getString(2) %></TD>
            <TD> <%= resultset.getString(3) %></TD>
            <TD> <%= resultset.getString(4) %></TD>
            <TD> <%= resultset.getString(5) %></TD>
        </TR>
    <% } %>
    </TABLE>
</p>
</body>
</html>
