<%-- 
    Document   : visualizzarichieste
    Created on : 30 mag 2020, 16:03:28
    Author     : Gino
--%>

<%@page import="entita.Richiestalavoro"%>
<%@page import="entita.Dipendente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Richieste Lavoro</title>
    </head>
    <body>
        <%Dipendente dip= (Dipendente)request.getSession().getAttribute("loggatod");
        if(dip.getRichiesteLavoro()!=null)
        {
            for(Richiestalavoro e:dip.getRichiesteLavoro())
            {
         %>
         <a href="valutazionerichiesta.jsp?id=<%=e.getId()%>&azienda=<%=e.getAzienda()%>&competenze=<%=e.getCompetenze()%>&appuntamento=<%=e.getData()%>&ora=<%=e.getOrario()%>&note=<%=e.getNote()%>"><%=e.toString()%></a>
         <%
                 
            }
        }
        
        %>
        
    </body>
</html>
