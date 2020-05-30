

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
                <h2> INFORMAZIONI PERSONALI </h2>
                <label> Nome: </label>
                <input type="text" name="nome" value="Inserisci nome.." required/> <br>
                <label> Cognome: </label>
                <input type="text" name="cognome" value="Inserisci cognome.." required /> <br>
                
                <label> Username: </label>
                <input type="text" name="username" value="Inserisci username.." required/> <br>
                <label> Password: </label>
                <input type="password" name="password" value="Inserisci " required /> <br>
                <label> Conferma Password: </label>
                <input type="password" name="password" value="Conferma " /> <br>
                
                <h2> INFORMAZIONI AZIENDA </h2>
                <label> Nome Azienda: </label>
                <input type="text" name="nome" value="nome azienda.." required/> <br>
                <label> Indirizzo azienda: </label>
                <input type="text" name="cognome" value="indirizzo azienda.." required /> <br>
                <label> Telefono: </label>
                <input type="number" name="nome" value="Telefono azienda.." required/> <br>
                
                
                <input type="submit" value="REGISTRATI" name="submit" />
                <input class ="reset" type="reset">
            </form>
            <h2> SEI GIA' REGISTRATO? VAI AL <a href="login.jsp">LOGIN</a> </h2>
            </div>
        
        
            
            
        
    </body>
</html>

