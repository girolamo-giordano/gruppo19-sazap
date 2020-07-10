

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
        <LINK rel= "stylesheet" href="registrazioneAmministratore.css" type="text/css">
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
            
            <center>
        <div id="reg">
            <h1 id="titolo">REGISTRAZIONE</h1>
            <form name="registrazione" action="./registrazione" method="POST">
                <h2> INFORMAZIONI PERSONALI </h2>
                 <input type="hidden" id="custId" name="valr" value="0">
                 <span>
                 <div class="nameField"> Nome: </label></div>
                 <div class="inputField">  <input type="text" name="nome" placeholder="Inserisci nome.." required/> </div> </span> 
                
                 <span><div class="nameField"> Cognome: </div>
                     <div class="inputField"><input type="text" name="cognome" placeholder="Inserisci cognome.." required /></div></span> 
                
                     <span><div class="nameField"> Username: </div>
                         <div class="inputField"><input type="text" name="username" placeholder="Inserisci username.." required/></div> </span> 
                
                         <span> <div class="nameField"> Password: </div>
                             <div class="inputField"><input type="password" name="password" placeholder="Inserisci password " id="password" required /> </div> </span> 
                
                             <span> <div class="nameField"> Conferma Password: </div>
                                 <div class="inputField"><input type="password" name="cpassword" placeholder="Conferma password " id="confirm_password" onfocusout='check();'/> </div> </span>
                                 <span id='message'></span>
                
                <h2> INFORMAZIONI AZIENDA </h2>
                <span> <div class="nameField"> Nome Azienda: </div>
                    <div class="inputField"> <input type="text" name="nomeaz" placeholder="nome azienda.." required/> </div> </span>  
                
                    <span> <div class="nameField"> Indirizzo azienda: </div>
                        <div class="inputField"> <input type="text" name="indaz" placeholder="indirizzo azienda.." required /> </div> </span> 
                
                        <span> <div class="nameField"> Telefono: </div>
                            <div class="inputField"> <input type="number" name="telefa" placeholder="Telefono azienda.." required/> </div></span> 
                
                <div id="bottoni">
                <input type="submit" value="REGISTRATI" name="submit" class="butt" id="but" />
                <input type="reset" value="RESET"class="butt">
                </div>
            </form>
            
            </div>
                <h2> SEI GIA' REGISTRATO? VAI AL <a href="login.jsp">LOGIN</a> </h2>
            </center>
        </div>
                
        
        <footer>
                &copy; 2020, Sazap
                <br>
                All trademarks and registered trademarks appearing on  <br>
                this site are the property of their respective owners.
                
        </footer>
        
        
            
            
        
    </body>
    <script>
    var check = function() {
  if (document.getElementById('password').value ==
    document.getElementById('confirm_password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = '';
    document.getElementById('but').disabled=false;
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'Password e conferma password non corrispondono';
    document.getElementById('but').disabled=true;
  }
}
</script>
</html>

