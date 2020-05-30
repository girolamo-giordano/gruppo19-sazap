<%-- 
    Document   : valutazionerichiesta
    Created on : 30 mag 2020, 16:19:24
    Author     : Gino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valutazione richiesta</title>
    </head>
    <body>
        <form name="inviorichiestal" action="./valutazionerichiestalavoro" method="POST">
            <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
            <label>Azienda:</label>
            <input type="text" name="azienda" value="<%=request.getParameter("azienda")%>" readonly="readonly" />
            <label>Competenze:</label>
            <input type="text" name="competenze" value="<%=request.getParameter("competenze")%>" readonly="readonly" />
            <label>Giorno appuntamento:</label>
            <input type="text" name="appuntamento" value=" <%=request.getParameter("appuntamento")%>" readonly="readonly"  />
            <label>Ora appuntamento:</label>
            <input type="text" name="ora" value="<%=request.getParameter("ora")%>" readonly="readonly"  />
            <label>Note:</label>
            <input type="text" name="note" value="<%=request.getParameter("note")%>" readonly="readonly"/>
            <input type="submit" value="Accetta" name="submit" />
               
        </form>
    </body>
</html>
