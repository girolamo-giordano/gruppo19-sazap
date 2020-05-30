<%-- 
    Document   : login.jsp
    Created on : 30 mag 2020, 02:42:22
    Author     : Gino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form name="login" action="./login" method="POST">
            <input type="text" id="username" name="username" " placeholder="Inserire username.." required> 
            <input type="text" id="password" name="password" " placeholder="Inserire password.." required>
            <input class="submit" type="submit" value="Login">
			<input class ="reset" type="reset">
        </form>
    </body>
</html>
