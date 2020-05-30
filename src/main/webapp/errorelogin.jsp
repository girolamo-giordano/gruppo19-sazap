<%-- 
    Document   : errorelogin
    Created on : 30 mag 2020, 02:41:32
    Author     : Gino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Errore login</title>
    </head>
    <body>
        Login errato.
        <%
            response.sendRedirect("./login.jsp");
            %>
    </body>
</html>
