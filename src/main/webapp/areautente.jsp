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
            
            
            <div id="reg">
            <h1 id="titolo">AREA UTENTE</h1>
            <form>
                <label> Nome: </label>
                <input type="text" name="nome" value=<%=dip.getNome()%> readonly/> <br>
                <label> Cognome: </label>
                <input type="text" name="cognome" value=<%=dip.getCognome()%> readonly /> <br>
                <label> Username: </label>
                <input type="text" name="username" value=<%=dip.getUsername()%> readonly /> <br>
                <label> Password: </label>
                <input type="password" name="password" value="*******" /> <br>
                
            </form>
            
            </div>
            <%
                }
                %>
    </body>
</html>
