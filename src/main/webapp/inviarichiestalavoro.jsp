<%-- 
    Document   : inviarichiestadipendente
    Created on : 30 mag 2020, 14:32:42
    Author     : Gino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Richiesta lavoro</title>
    </head>
    <body>
        <%=request.getParameter("id")%>
        <form name="inviorichiestal" action="./inviorichiestalavoro" method="POST">
            <input type="hidden" name="idl" value="<%=request.getParameter("id")%>">
            <label>Nome:</label>
            <input type="text" name="nomel" value="<%=request.getParameter("nome")%>" readonly="readonly" />
            <label>Azienda:</label>
            <input type="text" name="aziendal" value="<%=request.getParameter("azienda")%>" readonly="readonly" />
            <label>Competenze:</label>
            <input type="text" name="competenzel" value="<%=request.getParameter("competenze")%>" readonly="readonly" />
            <label>Giorno appuntamento:</label>
            <input type="text" name="appuntamentol" value=" "  />
            <label>Ora appuntamento:</label>
            <input type="text" name="oral" value=""  />
            <label>Note:</label>
            <input type="text" name="notel" value=""/>
            <input type="submit" value="Invia richiesta" name="submit" />
                <input type="reset" value="Reset" name="reset" />
        </form>
                
    </body>
</html>
