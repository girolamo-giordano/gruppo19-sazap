
<%-- 
    Document   : login
    Created on : 29-mag-2020, 21.57.41
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
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
                    <center> <h1 id="titolo">LOGIN</h1> </center>
                <label> Username: </label>
                <input type="text" name="username" placeholder="Inserisci username.." required=""/> <br>
                <label> Password: </label>
                <input type="password" name="password" placeholder="Inserisci password " required="" /> <br>
                
                <div id="radio" style="margin-top: 10px;">
                <label> Amministratore: </label>
                <input type="radio" name="ruolo" value="amministratore" checked="checked" /> <br>
                <label> Dipendente: </label>
                <input type="radio" name="ruolo" value="dipendente" /> <br>
                </div>
                <input type="submit" value="LOGIN" class="submit" name="submit" />
                <input type="reset" value="RESET" class="reset" name="reset" />
                <h2> NON SEI ANCORA REGISTRATO? VAI A <a href="registrazione.jsp">REGISTRAZIONE</a> </h2>
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
