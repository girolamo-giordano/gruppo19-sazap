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
        <title>Area Utente</title>
    </head>
    <body>
        <%
            Dipendente dip= (Dipendente)request.getSession().getAttribute("loggatod");
            Amministratore amm= (Amministratore)request.getSession().getAttribute("loggatoa");
            if(dip != null && amm== null){
            %>
            
            
            <div id="reg">
            <h1 id="titolo">AREA UTENTE</h1>
            <form>
                <label> Nome: </label>
                <input type="text" name="nome" value=<%=dip.getNome()%> readonly/> <br>
                <label> Cognome: </label>
                <input type="text" name="cognome" value=<%=dip.getCognome()%> readonly /> <br>
                
                <label> Azienda: </label>
                <input type="text" name="azienda" value=<%=dip.getAzienda()%> readonly/> <br>
                <label> Competenza: </label>
                <input type="text" name="competenza" value=<%=dip.getCompetenze()%> readonly /> <br>
                
                <label> Username: </label>
                <input type="text" name="username" value=<%=dip.getUsername()%> readonly /> <br>
                <label> Password: </label>
                <input type="password" name="password" value="*******" /> <br>
                
            </form>
            
            </div>
            <%
                }
                %>
         <%
            
            
            
            if(amm != null && dip == null){
               
            %>
            
            
            <div id="reg">
            <h1 id="titolo">AREA UTENTE</h1>
            <form>
                
                <h2> INFORMAZIONI PERSONALI </h2>
                <label> Nome: </label>
                <input type="text" name="nome" value=<%=amm.getNome()%> readonly/> <br>
                <label> Cognome: </label>
                <input type="text" name="cognome" value=<%=amm.getCognome()%> readonly /> <br>
                <label> Username: </label>
                <input type="text" name="username" value=<%=amm.getUsername()%> readonly /> <br>
                <label> Password: </label>
                <input type="password" name="password" value="*******" /> <br>
                
                <h2> INFORMAZIONI AZIENDA </h2>
                <label> Nome Azienda: </label>
                <input type="text" name="nome" value=<%=amm.getAzienda().getNome()%> readonly/> <br>
                <label> Indirizzo azienda: </label>
                <input type="text" name="cognome" value=<%=amm.getAzienda().getIndirizzo()%> readonly /> <br>
                <label> Telefono: </label>
                <input type="number" name="nome" value=<%=amm.getAzienda().getNumerotel()%> readonly/> <br>
                
            </form>
            
            </div>
            <%
                }
                %>
    </body>
</html>
