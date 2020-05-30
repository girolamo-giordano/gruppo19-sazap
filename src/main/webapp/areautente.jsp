<%-- 
    Document   : areautente
    Created on : 30 mag 2020, 02:53:59
    Author     : Gino
--%>

<%@page import="entita.Dipendente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area Utente</title>
    </head>
    <body>
        <%
            Dipendente dip= (Dipendente)request.getSession().getAttribute("loggato");
            
            
            if(dip != null){
            %>
            ciao <%=dip.getNome()%><br> <%=dip.getCognome()%><br> <%=dip.getId()%>
            <%
                }
                %>
    </body>
</html>
