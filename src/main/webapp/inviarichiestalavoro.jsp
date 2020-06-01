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
         
         <link href="inviaRichiestaLavoro.css" rel="stylesheet" type="text/css"/>
        <title>Richiesta lavoro</title>
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
            
        
        
        <center>
        <div id="inviaRichiesta" style="
    height: 500px;
">
        <form name="inviorichiestal" action="./inviorichiestalavoro" method="POST">
            <input type="hidden" name="idl" value="<%=request.getParameter("id")%>">
            
            <span><div class="nameField">Nome:</div>
                <div class="inputField"> <input type="text" name="nomel" value="<%=request.getParameter("nome")%>" readonly="readonly" /> </div></span>
            
            <span><div class="nameField">Azienda:</div>
                <div class="inputField"><input type="text" name="aziendal" value="<%=request.getParameter("azienda")%>" readonly="readonly" /> </div></span>
            
            <span><div class="nameField">Competenze:</div>
                <div class="inputField"><input type="text" name="competenzel" value="<%=request.getParameter("competenze")%>" readonly="readonly" /> </div></span>
                
            <span><div class="nameField">Giorno appuntamento:</div>
                <div class="inputField"><input type="date" name="appuntamentol " required  /> </div></span>
            
            <span><div class="nameField">Ora appuntamento:</div>
                <div class="inputField"> <input type="time" required  /> </div></span>
            
            <span><div class="nameField">Note:</div>
                <div class="inputField"><textarea rows="2" cols="20" name="notel" placeholder="Inserire ulteriori note"> </textarea> </div></span
            
            <div id="bottoni">
                <input type="submit" value="INVIA RICHIESTA" name="submit" class="butt" />
                <input type="reset" value="RESET"class="butt">
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
