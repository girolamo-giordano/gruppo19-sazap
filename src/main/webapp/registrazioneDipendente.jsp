

<%-- 
    Document   : newjsp
    Created on : 29-mag-2020, 14.22.01
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrazione</title>
    </head>
    <body>
        <div id="reg">
            <h1 id="titolo">REGISTRAZIONE</h1>
            <form name="registrazione" action="./registrazione" method="POST">
                <input type="hidden" id="custId" name="valr" value="1">
                <label> Nome: </label>
                <input type="text" name="nome" value="Inserisci nome.." required/> <br>
                <label> Cognome: </label>
                <input type="text" name="cognome" value="Inserisci cognome.." required /> <br>
                
                <label> Azienda: </label>
                <input type="text" name="azienda" value="Inserisci azienda.." required /> <br>
                
                <label> Competenza: </label>
                <input type="text" name="competenze" value="Inserisci competenza.." required /> <br>
                
                <label> Username: </label>
                <input type="text" name="username" value="Inserisci username.." required/> <br>
                <label> Password: </label>
                <input type="password" name="password" value="Inserisci " required /> <br>
                <label> Conferma Password: </label>
                <input type="password" name="cpassword" value="Conferma " /> <br>
                <input type="submit" value="REGISTRATI" name="submit" />
                <input class ="reset" type="reset">
            </form>
            <h2> SEI GIA' REGISTRATO? VAI AL <a href="login.jsp">LOGIN</a> </h2>
            </div>
        
        
            
            
        
    </body>
</html>

