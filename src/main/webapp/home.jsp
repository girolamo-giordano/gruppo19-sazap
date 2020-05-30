<%-- 
    Document   : home
    Created on : 29 mag 2020, 14:18:53
    Author     : Gino
--%>

<%@page import="entita.Dipendente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
    </head>
    <body>
        
        <a href="chisiamo.jsp">Chi siamo</a>
        <a href="inviarichiestalavoro.jsp">Richiesta Lavoro</a>
        <%
            Dipendente dip= (Dipendente)request.getSession().getAttribute("loggato");
            
            
            if(dip != null){
            %>
            ciao <%=dip.getNome()%>  <%=dip.getCognome()%> <%=dip.getId()%>
            <a href="areautente.jsp">Area utente</a>
            <a href="./logout">Logout</a>
            <%
                }else{
                %>
              
                    <a href="registrazione.jsp">Registrati qui</a>
                    <a href="login.jsp">Login qui</a>
                      <%}        %>
        
        
    </body>
   
        

</html>
