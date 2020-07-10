<%-- 
    Document   : chisiamo
    Created on : 30 mag 2020, 02:58:39
    Author     : Gino
--%>

<%@page import="entita.Amministratore"%>
<%@page import="entita.Dipendente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <LINK rel= "stylesheet" href="chiSiamo.css" type="text/css">
        <title>Chi siamo</title>
    </head>
    <body>
         <a href="home.jsp"><img src="SAZAPlogo2.png" width="300" height="300" alt="SAZAPlogo2"/> </a>

        <div id="container">
        
        <%
            Dipendente dip= (Dipendente)request.getSession().getAttribute("loggatod");
            Amministratore amm= (Amministratore) request.getSession().getAttribute("loggatoa");
            if(dip != null && amm==null){
        %>
        
        
        
        <div class="sidenav">
        
        <a href="home.jsp">HOME</a> </li>
        <a href="areautente.jsp">AREA UTENTE</a> 
             <a href="chisiamo.jsp">CHI SIAMO</a> 
             <a href="agenda.jsp">AGENDA</a> 
             <a href="visualizzaRichiestaLavoro.jsp">RICHIESTA LAVORO</a> 
           
             <a href="./logout">LOGOUT</a> 
        </div>
        
        <%
            } else if (amm != null && dip==null){
            %>
        
        
        
        <div class="sidenav">
             <a href="home.jsp">HOME</a> 
             <a href="areautente.jsp">AREA UTENTE</a> 
             <a href="chisiamo.jsp">CHI SIAMO</a> 
             <a href="visualizzadipendenti.jsp">VISUALIZZA DIPENDENTI</a> 
             
           
            <a href="./logout">LOGOUT</a>
            
        </div> 
        
         <% }else{%>
        
         
        <div class="sidenav">
             <a href="home.jsp">HOME</a>
             <a href="chisiamo.jsp">CHI SIAMO</a>

             <a href="registrazione.jsp">REGISTRAZIONE</a>
             <a href="login.jsp">LOGIN</a>
                          
        </div>
         
        <%}%>
         
            <center>    
                <div id="chiSiamo">
                    <img src="chisiamofoto.jpeg" width="300" height="300" alt="chisiamofoto"/> <br>
                    <div id="text"> Azienda esperta nel settore agricolo con l'obiettivo di <br>
                        Migliorare la vita di tutte le persone del settore </div>

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
