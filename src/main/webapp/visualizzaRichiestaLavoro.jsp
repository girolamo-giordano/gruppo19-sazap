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
        <title>Visualizza Richiesta Lavoro</title>
    </head>
    <body>
           <%
            Dipendente dip= (Dipendente)request.getSession().getAttribute("loggatod");
            
            if(dip != null ){
        %>
        
        //lavoratore 
        <ul>
             <li><a href="home.jsp">HOME</a> </li>
             <li> <a href="areautente.jsp">AREA UTENTE</a> </li>
             <li><a href="chisiamo.jsp">CHI SIAMO</a> </li>
             <li><a href="agenda.jsp">AGENDA</a> </li>
             <li> <a href="inviarichiestalavoro.jsp">RICHIESTA LAVORO</a> <li> 
           
            <li> <a href="./logout">LOGOUT</a> </li>
        </ul>
        
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

        
    </body>
</html>
