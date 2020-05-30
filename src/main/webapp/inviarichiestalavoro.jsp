<%-- 
    Document   : inviarichiestalavoro
    Created on : 30 mag 2020, 03:08:16
    Author     : Gino
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="entita.Dipendente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invia Richiesta Lavoro</title>
    </head>
    <body>
        <%
           
            ArrayList<Dipendente> dipendenti =(ArrayList<Dipendente>)request.getSession().getAttribute("dipendenti");
            if(dipendenti!=null){
                for(Dipendente e:dipendenti){
                    
            
            %>
            <%=e.toString()%><br>
            <%
                        }
                    }
                %>
            
    </body>
</html>
