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
        <link href="valutazioneRichiesta.css" rel="stylesheet" type="text/css"/>
        <title>Valutazione richiesta</title>
    </head>
    <body>
        <a href="home.jsp"><img src="SAZAPlogo2.png" width="300" height="300" alt="SAZAPlogo2"/> </a>
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
        <div id="valutazione">
        <form name="inviorichiestal" action="./valutazionerichiestalavoro" method="POST">
            
            <h2> VALUTAZIONE RICHIESTA </h2>
            <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
            
            <span> <div class="nameField">Azienda:</div>
            <input type="text" name="azienda" value="<%=request.getParameter("azienda")%>" readonly="readonly" /> </span>
            
            <span> <div class="nameField">Competenze:</div>
            <input type="text" name="competenze" value="<%=request.getParameter("competenze")%>" readonly="readonly" /> </span>
            
            <span> <div class="nameField">Giorno appuntamento:</div>
                <input type="text" name="appuntamento" value=" <%=request.getParameter("appuntamento")%>" readonly="readonly"  /> </span>
            
            <span> <div class="nameField">Ora appuntamento:</div>
                <input type="text" name="ora" value="<%=request.getParameter("ora")%>" readonly="readonly"  /> <span
            
            <span> <div class="nameField">Note:</div>
                  
                        <textarea name="note" value="<%=request.getParameter("note")%>" readonly="readonly" style="resize:none"><%=request.getParameter("note")%> </textarea> </span>
            
            <div id="bottoni">
                <input type="submit" value="ACCETTA" name="submit" class="butt" />
                
                </div>
               
        </form>
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
