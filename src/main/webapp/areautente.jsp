<%-- 
    Document   : areautente
    Created on : 30 mag 2020, 02:53:59
    Author     : Gino
--%>

<%@page import="entita.Amministratore"%>
<%@page import="entita.Dipendente"%>
<%@page import="entita.Azienda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="areaUtente.css" rel="stylesheet" type="text/css"/>
        <title>Area Utente</title>
    </head>
    <body>
           <a href="home.jsp"><img src="SAZAPlogo2.png" width="300" height="300" alt="SAZAPlogo2"/> </a>
           <div id="container">

        <%
            Dipendente dip= (Dipendente)request.getSession().getAttribute("loggatod");
            Amministratore amm= (Amministratore)request.getSession().getAttribute("loggatoa");
            if(dip != null && amm== null){
            %>
            
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
            <h1 id="titolo">AREA UTENTE</h1>
            <form>
                <span> <div class="nameField"> Nome: </div>
                    <div class="inputField"> <input type="text" name="nome" value=<%=dip.getNome()%> readonly/> </div> </span>
                
                    <span> <div class="nameField"> Cognome: </div>
                        <div class="inputField"> <input type="text" name="cognome" value=<%=dip.getCognome()%> readonly /> </div>  </span>
                
                         <span>  <div class="nameField"> Azienda: </div>
                            <div class="inputField">  <input type="text" name="azienda" value=<%=dip.getAzienda()%> readonly/> </div>  </span>
                   
                             <span>  <div class="nameField"> Competenza: </div>
                                <div class="inputField"> <input type="text" name="competenza" value=<%=dip.getCompetenze()%> readonly /> </div>  </span>
                
                                 <span> <div class="nameField"> Username: </div>
                                    <div class="inputField"> <input type="text" name="username" value=<%=dip.getUsername()%> readonly /> </div>  </span>
                
                                     <span>  <div class="nameField"> Password: </div>
                                        <div class="inputField"> <input type="password" name="password" value="*******" /> </div>  </span>
                
            </form>
            
            </div>
            </center>
            <%
                }
                %>
         <%
            
            
            
            if(amm != null && dip == null){
               
            %>
            
            <div class="sidenav">
             <a href="home.jsp">HOME</a> 
             <a href="areautente.jsp">AREA UTENTE</a> 
             <a href="chisiamo.jsp">CHI SIAMO</a> 
             <a href="visualizzadipendenti.jsp">VISUALIZZA DIPENDENTI</a> 
             
           
            <a href="./logout">LOGOUT</a>
            
        </div> 
            
            <center>
            <div id="reg">
            <h1 id="titolo">AREA UTENTE</h1>
            <form>
                
                <h2> INFORMAZIONI PERSONALI </h2>
                <span> <div class="nameField"> Nome: </div>
                    <div class="inputField"> <input type="text" name="nome" value=<%=amm.getNome()%> readonly/> </div> </span>
                
                <span><div class="nameField"> Cognome: </div>
                    <div class="inputField"> <input type="text" name="cognome" value=<%=amm.getCognome()%> readonly /> </div> </span>
                
                <span><div class="nameField"> Username: </div>
                <div class="inputField"> <input type="text" name="username" value=<%=amm.getUsername()%> readonly /> </div> </span>
                
               <span> <div class="nameField"> Password: </div>
                <div class="inputField">  <input type="password" name="password" value="*******" />  </div> </span>
                
                <h2> INFORMAZIONI AZIENDA </h2>
               <span> <div class="nameField"> Nome Azienda: </div>
                <div class="inputField">  <input type="text" name="nome" value=<%=amm.getAzienda().getNome()%> readonly/>  </div> </span>
                
                <span><div class="nameField"> Indirizzo azienda: </div>
                <div class="inputField"> <input type="text" name="cognome" value=<%=amm.getAzienda().getIndirizzo()%> readonly /> </div> </span>
                
                <span><div class="nameField"> Telefono: </div>
                <div class="inputField"> <input type="number" name="nome" value=<%=amm.getAzienda().getNumerotel()%> readonly/>  </div> </span>
                
            </form>
            
            </div>
            </center>
            <%
                }
                %>
                
           </div>
                
                <footer>
                &copy; 2020, Sazap
                 
                All trademarks and registered trademarks appearing on <br>  
                this site are the property of their respective owners.
                
            </footer>
                
    </body>
</html>
