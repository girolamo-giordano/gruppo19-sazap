
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
        <title>Login</title>
    </head>
    <body>
        
        <div id="log">
            <h1 id="titolo">Login</h1>
            <form name="login" action="./login" method="POST">
                
                <label> Username: </label>
                <input type="text" name="username" value="Inserisci username.." required=""/> <br>
                <label> Password: </label>
                <input type="password" name="password" value="Inserisci " required="" /> <br>
                
                <input type="submit" value="LOGIN" name="submit" />
                <input type="reset" value="Reset" name="reset" />
            </form>
            <h2> NON SEI ANCORA REGISTRATO? VAI A <a href="registrazione.jsp">REGISTRAZIONE</a> </h2>
            </div>
    </body>
</html>
