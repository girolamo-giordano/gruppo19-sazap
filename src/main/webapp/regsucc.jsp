<%-- 
    Document   : errorelogin
    Created on : 30 mag 2020, 02:41:32
    Author     : Gino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <META http-equiv="refresh" content="3;URL=http://localhost:8080/SAZAP/home.jsp">
        <LINK rel= "stylesheet" href="login.css" type="text/css">
        
        
        <title>Login</title>
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
         
    <center>
        <div id="main" style="width: 950px;">
             
            <center> <form name="login" action="./login" method="POST">
                    <center> <h1 id="titolo">REGISTRAZIONE RIUSCITA</h1> </center>
                <label> HAI EFFETTUATO LA REGISTRAZIONE CON SUCCESSO, SARAI REINDIRIZZATO ALLA HOMEPAGE</label>
                
                
               
                
            </form>
                
            </center>

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
