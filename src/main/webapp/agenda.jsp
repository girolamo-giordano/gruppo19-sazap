<%-- 
    Document   : agenda
    Created on : 1-giu-2020, 16.39.37
    Author     : Antonio
--%>

<%@page import="entita.Lavoroaccettato"%>
<%@page import="java.util.Comparator"%>
<%@page import="entita.Richiestalavoro"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Collections"%>
<%@page import="entita.Dipendente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="agenda.css" rel="stylesheet" type="text/css"/>
        
        <link href="agenda.css" rel="stylesheet" type="text/css"/>
        <title>AGENDA</title>
    </head>
    <body>
        <a href="home.jsp"><img src="SAZAPlogo2.png" width="300" height="300" alt="SAZAPlogo2"/> </a>
        <div class="container">
       <div class="sidenav">
        
        <a href="home.jsp">HOME</a> </li>
        <a href="areautente.jsp">AREA UTENTE</a> 
             <a href="chisiamo.jsp">CHI SIAMO</a> 
             <a href="agenda.jsp">AGENDA</a> 
             <a href="visualizzaRichiestaLavoro.jsp">RICHIESTA LAVORO</a> 
           
             <a href="./logout">LOGOUT</a> 
        </div>
       <%
           Dipendente dip= (Dipendente)request.getSession().getAttribute("loggatod");
           Collections.sort(dip.getRichiesteLavoroAcc());

           %>
        <center>
                <div id="tab">
                    <h2> LA MIA AGENDA </h2>
                    
        <table border="1">
            <%
                 boolean [] matrix=new boolean[12];
                    int i;
                    for(i=0;i<12;i++)
                    {
                        matrix[i]=false;
                    }
                for(Lavoroaccettato e: dip.getRichiesteLavoroAcc())
                {
                    
                
                    %>
                    <%
                   
                    if(e.getData().substring(6,8).equals("01"))
                    {
                        
                        if(matrix[0]==false){
                        matrix[0]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>GENNAIO</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">  Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %> </a></td>
                </tr>
            </tbody>
            <%}
                %>
                <%
                   
                    if(e.getData().substring(6,8).equals("02"))
                    {
                        
                        if(matrix[1]==false){
                        matrix[1]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>FEBBRAIO</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %></a></td>
                </tr>
            </tbody>
            <%}
                %>
                <%
                   
                    if(e.getData().substring(6,8).equals("03"))
                    {
                        
                        if(matrix[2]==false){
                        matrix[2]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>MARZO</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %> </a></td>
                </tr>
            </tbody>
            <%}
                %>
                <%
                   
                    if(e.getData().substring(6,8).equals("04"))
                    {
                        
                        if(matrix[3]==false){
                        matrix[3]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>APRILE</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %> </a></td>
                </tr>
            </tbody>
            <%}
                %>
                <%
                   
                    if(e.getData().substring(6,8).equals("05"))
                    {
                        
                        if(matrix[4]==false){
                        matrix[4]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>MAGGIO</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %> </a></td>
                </tr>
            </tbody>
            <%}
                %>
                <%
                   
                    if(e.getData().substring(6,8).equals("06"))
                    {
                        
                        if(matrix[5]==false){
                        matrix[5]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>GIUGNO</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %> </a></td>
                </tr>
            </tbody>
            <%}
                %>
                <%
                   
                    if(e.getData().substring(6,8).equals("07"))
                    {
                        
                        if(matrix[6]==false){
                        matrix[6]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>LUGLIO</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %> </a></td>
                </tr>
            </tbody>
            <%}
                %>
            <%
                   
                    if(e.getData().substring(6,8).equals("08"))
                    {
                        
                        if(matrix[7]==false){
                        matrix[7]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>AGOSTO</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %></a></td>
                </tr>
            </tbody>
            <%}
                %>
                <%
                   
                    if(e.getData().substring(6,8).equals("09"))
                    {
                        
                        if(matrix[8]==false){
                        matrix[8]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>SETTEMBRE</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %> </a></td>
                </tr>
            </tbody>
            <%}
                %>
                <%
                   
                    if(e.getData().substring(6,8).equals("10"))
                    {
                        
                        if(matrix[9]==false){
                        matrix[9]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>OTTOBRE</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %> </a></td>
                </tr>
            </tbody>
            <%}
                %>
                <%
                   
                    if(e.getData().substring(6,8).equals("11"))
                    {
                        
                        if(matrix[10]==false){
                        matrix[10]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>NOVEMBRE</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %> </a></td>
                </tr>
            </tbody>
            <%}
                %>
                <%
                   
                    if(e.getData().substring(6,8).equals("12"))
                    {
                        
                        if(matrix[11]==false){
                        matrix[11]=true;    
                        
                    %>
            <thead>
                <tr>
                    <th>DICEMBRE</th>
                </tr>
            </thead>
            <%}
                %>
            <tbody>
                <tr>
                    <td><a href="infoAzienda.jsp?nomeaz=<%=e.getAzienda()%>">Nome Azienda:<%=e.getAzienda()%> || Data: <%=e.getData() %> || Ora: <%=e.getOrario() %> </a></td>
                </tr>
            </tbody>
            <%}
                %>
            <%
                }%>
        </table>

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
