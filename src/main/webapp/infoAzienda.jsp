<%-- 
    Document   : infoAzienda
    Created on : 1-giu-2020, 16.46.36
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="areaUtente.css" rel="stylesheet" type="text/css"/>
        <title>INFORMAZIONI AZIENDA</title>
    </head>
    <body>
        <a href="home.jsp"><img src="SAZAPlogo2.png" width="300" height="300" alt="SAZAPlogo2"/> </a>
           <div id="container">
               <div class="sidenav">
        
        <a href="home.jsp">HOME</a> </li>
        <a href="areautente.jsp">AREA UTENTE</a> 
             <a href="chisiamo.jsp">CHI SIAMO</a> 
             <a href="agenda.jsp">AGENDA</a> 
             <a href=visualizzaRichiestaLavoro.jsp">RICHIESTA LAVORO</a> 
           
             <a href="./logout">LOGOUT</a> 
        </div>
            
            <center>
            <div id="reg">
                <h1 id="titolo">INFORMAZIONI AZIENDA</h1>
            <form>
                <span> <div class="nameField"> Nome azienda: </div>
                    <div class="inputField"> <input type="text" name="nome" value=<%=%> readonly/> </div> </span>
                
                    <span> <div class="nameField"> Indirizzo: </div>
                        <div class="inputField"> <input type="text" name="indirizzo" value=<%=%> readonly /> </div>  </span>
                
                         <span>  <div class="nameField"> Telefono: </div>
                            <div class="inputField">  <input type="number" name="telefono" value=<%=%> readonly/> </div>  </span>
                   
                           
                
            </form>
            
            </div>
            </center>
                                    </div>
        
                
                <footer>
                &copy; 2020, Sazap
                 
                All trademarks and registered trademarks appearing on <br>  
                this site are the property of their respective owners.
                
            </footer>
    </body>
</html>
