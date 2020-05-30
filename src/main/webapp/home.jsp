<%-- 
    Document   : home
    Created on : 29 mag 2020, 14:18:53
    Author     : antonio
--%>

<%@page import="entita.Amministratore"%>
<%@page import="entita.Dipendente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <LINK rel= "stylesheet" href="home.css" type="text/css">
        <title> HOME </title>
        
</head>
    <body>
        
        <%
            Dipendente dip= (Dipendente)request.getSession().getAttribute("loggatod");
            Amministratore amm= (Amministratore) request.getSession().getAttribute("loggatoa");
            if(dip != null && amm==null){
        %>
        
        //lavoratore <%=dip.toString()%>
        <ul>
             <li><a href="home.jsp">HOME</a> </li>
             <li> <a href="areautente.jsp">AREA UTENTE</a> </li>
             <li><a href="chisiamo.jsp">CHI SIAMO</a> </li>
             <li><a href="agenda.jsp">AGENDA</a> </li>
             <li> <a href="visualizzaRichiestaLavoro.jsp">RICHIESTA LAVORO</a> <li> 
           
            <li> <a href="./logout">LOGOUT</a> </li>
        </ul>
        <%
            } else if (amm != null && dip==null){
            %>
        
        //Amministratore <%=amm.toString()%>
        <ul>
             <li><a href="home.jsp">HOME</a> </li>
             <li> <a href="areautente.jsp">AREA UTENTE</a> </li>
             <li><a href="chisiamo.jsp">CHI SIAMO</a> </li>
             <li><a href="visualizzadipendenti.jsp">VISUALIZZA DIPENDENTI</a> </li>
             
           
            <li> <a href="./logout">LOGOUT</a> </li>
        </ul>
         <% }else{%>
        
        
        <ul> 
             <li><a href="home.jsp">HOME</a> </li>
             <li><a href="chisiamo.jsp">CHI SIAMO</a> </li>

             <li> <a href="registrazione.jsp">Registrazione</a> </li>
             <li><a href="login.jsp">Login</a> </li>
                          
        </ul>
        <%}%>
       
                      
        <div class="row">
            <div class="column">
                <img src="areaUtentefoto.jpeg" width="200" height="200" alt="areaUtentefoto"/>

            </div>
            <div class="column">
                <img src="chisiamofoto.jpeg" width="500" height="500" alt="chisiamofoto"/>

            </div> <br>
        </div>
        
        <div class="slideshow-container">

            <div class="mySlides fade">
              <div class="numbertext">1 / 2</div>
              <img src="terra.png" style="width:100%">
              
            </div>

            <div class="mySlides fade">
              <div class="numbertext">2 / 2</div>
              <img src="cambiare.png" style="width:100%">
              
            </div>

            

            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>

            </div>
            <br>

            <div style="text-align:center">
              <span class="dot" onclick="currentSlide(1)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
              
            </div>

            <script>
                var slideIndex = 1;
                showSlides(slideIndex);

                function plusSlides(n) {
                  showSlides(slideIndex += n);
                }

                function currentSlide(n) {
                  showSlides(slideIndex = n);
                }

                function showSlides(n) {
                  var i;
                  var slides = document.getElementsByClassName("mySlides");
                  var dots = document.getElementsByClassName("dot");
                  if (n > slides.length) {slideIndex = 1}    
                  if (n < 1) {slideIndex = slides.length}
                  for (i = 0; i < slides.length; i++) {
                      slides[i].style.display = "none";  
                  }
                  for (i = 0; i < dots.length; i++) {
                      dots[i].className = dots[i].className.replace(" active", "");
                  }
                  slides[slideIndex-1].style.display = "block";  
                  dots[slideIndex-1].className += " active";
                }
            </script>
        
        
    </body>
   
        

</html>
