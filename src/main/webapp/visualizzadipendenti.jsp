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
        <LINK rel= "stylesheet" href="visualizzaDipendenti.css" type="text/css">
        <title>Invia Richiesta Lavoro</title>
    </head>
    <body>
        <a href="home.jsp"><img src="SAZAPlogo2.png" width="300" height="300" alt="SAZAPlogo2"/> </a>

        <div id="container">
        <div class="sidenav">
             <a href="home.jsp">HOME</a> 
             <a href="areautente.jsp">AREA UTENTE</a> 
             <a href="chisiamo.jsp">CHI SIAMO</a> 
             <a href="visualizzadipendenti.jsp">VISUALIZZA DIPENDENTI</a> 
             
           
            <a href="./logout">LOGOUT</a>
            
        </div> 
        <%
           
            ArrayList<Dipendente> dipendenti =(ArrayList<Dipendente>)request.getSession().getAttribute("dipendenti");
            if(dipendenti!=null){
                for(Dipendente e:dipendenti){
                    
            
            %>
            
            <table border="3">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        
                    </tr>
                </thead>
                <tbody>
             
            </table>

            <a href="inviarichiestalavoro.jsp?id=<%=e.getId()%>&nome=<%=e.getNome()%>&azienda=<%=e.getAzienda()%>&competenze=<%=e.getCompetenze()%>&cognome=<%=e.getCognome()%>"><%=e.toString()%></a><br>
            
            <%
                        }
                    }
                %>
                
        </div>
          <footer>
                &copy; 2020, Sazap
                <br>
                All trademarks and registered trademarks appearing on  <br>
                this site are the property of their respective owners.
                
            </footer>  
    </body>
</html>
