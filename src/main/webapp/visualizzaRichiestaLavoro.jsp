<%-- 
    Document   : visualizzaRichiestaLavoro
    Created on : 30-mag-2020, 12.55.48
    Author     : Antonio
--%>

<%@page import="entita.Richiestalavoro"%>
<%@page import="entita.Dipendente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="visualizzaDipendenti.css" rel="stylesheet" type="text/css"/>
        <title>Visualizza Richiesta Lavoro</title>
    </head>
    <body>
         <a href="home.jsp"><img src="SAZAPlogo2.png" width="300" height="300" alt="SAZAPlogo2"/> </a>
           <%
            Dipendente dip= (Dipendente)request.getSession().getAttribute("loggatod");
            
            if(dip != null ){
        %>
        
        
        <div class="container">
       <div class="sidenav">
        
        <a href="home.jsp">HOME</a> </li>
        <a href="areautente.jsp">AREA UTENTE</a> 
             <a href="chisiamo.jsp">CHI SIAMO</a> 
             <a href="agenda.jsp">AGENDA</a> 
             <a href="visualizzaRichiestaLavoro.jsp">RICHIESTA LAVORO</a> 
           
             <a href="./logout">LOGOUT</a> 
        </div>
        
        <center>
                <div id="tab">
                    <h2> VISUALIZZAZIONE RICHIESTE LAVORI </h2>
        <table border="1" width="5">
            <thead>
                <tr>
                    <th>Azienda</th>
                    <th>Competenze</th>
                    <th>Giorno Appuntamento</th>
                </tr>
            </thead>
            <tbody>
                <%
                    if(dip.getRichiesteLavoro()!=null)
                    {
                        for(Richiestalavoro e:dip.getRichiesteLavoro())
                        {
                
                %>
                <tr>
                    <td><a href="valutazionerichiesta.jsp?id=<%=e.getId()%>&azienda=<%=e.getAzienda()%>&competenze=<%=e.getCompetenze()%>&appuntamento=<%=e.getData()%>&ora=<%=e.getOrario()%>&note=<%=e.getNote()%>"><%=e.getAzienda()%></a></td>
                    <td><a href="valutazionerichiesta.jsp?id=<%=e.getId()%>&azienda=<%=e.getAzienda()%>&competenze=<%=e.getCompetenze()%>&appuntamento=<%=e.getData()%>&ora=<%=e.getOrario()%>&note=<%=e.getNote()%>"><%=e.getCompetenze()%></a></td>
                    <td><a href="valutazionerichiesta.jsp?id=<%=e.getId()%>&azienda=<%=e.getAzienda()%>&competenze=<%=e.getCompetenze()%>&appuntamento=<%=e.getData()%>&ora=<%=e.getOrario()%>&note=<%=e.getNote()%>"><%=e.getData()%></a></td>
                </tr>
                <%  }
                    }
                    }
                  %>
                
            </tbody>
        </table>
        </div>
        </center>
        </div>
                  <footer>
                &copy; 2020, Sazap
                <br>
                All trademarks and registered trademarks appearing on  <br>
                this site are the property of their respective owners.
                
            </footer>  

        
    </body>
</html>
