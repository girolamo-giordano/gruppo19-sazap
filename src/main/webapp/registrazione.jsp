<%-- 
    Document   : Registrazione
    Created on : 30-mag-2020, 12.28.36
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <LINK rel= "stylesheet" href="registrazione.css" type="text/css">
        <title>Registrazione</title>
    </head>
    <body>
        <a href="home.jsp"><img src="SAZAPlogo2.png" width="300" height="300" alt="SAZAPlogo2"/> </a>
         <div class="container">
        
            <div class="sidenav">
             <a href="home.jsp">HOME</a>
             <a href="chisiamo.jsp">CHI SIAMO</a>

             <a href="registrazione.jsp">REGISTRAZIONE</a>
             <a href="login.jsp">LOGIN</a>
                          
            </div>
             
             <center> <div id="main">
                 <h2> SCEGLI IL TUO RUOLO </h2>
                 Sei un amministratore?<a href="registrazioneAmministratore.jsp"> Clicca qui!</a> <br>
                 <div id= dip style=" margin-top: 20px; "> Sei un dipendente?<a href="registrazioneDipendente.jsp">Clicca qui!</a> </div>
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
