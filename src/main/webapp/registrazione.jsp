<%-- 
    Document   : registrazione
    Created on : 29 mag 2020, 18:46:36
    Author     : Gino
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrazione</title>
    </head>
    <body>
        <form name="registrazione" action="./registrazione" method="POST">
            <input type="text" id="nome" name="nome" " placeholder="Inserire nome.." required>
            <input type="text" id="cognome" name="cognome" " placeholder="Inserire cognome.." required> 
            <input type="text" id="password" name="password" " placeholder="Inserire password.." required> 
            <input type="text" id="cpassword" name="cpassword" " placeholder="Inserire cpassword.." required>
            <input type="text" id="username" name="username" " placeholder="Inserire username.." required> 
            <input class="submit" type="submit" value="Registrati">
			<input class ="reset" type="reset">
        </form>
       
    </body>
</html>
