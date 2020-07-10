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
        
        
        
        
        <a href="home.jsp"><img src="SAZAPlogo2.png" width="300" height="300" alt="SAZAPlogo2"/> </a>

        <div id="container">
        
        <%
            Dipendente dip= (Dipendente)request.getSession().getAttribute("loggatod");
            Amministratore amm= (Amministratore) request.getSession().getAttribute("loggatoa");
            if(dip != null && amm==null){
        %>
        
       
        
        <div class="sidenav">
        
        <a href="home.jsp">HOME</a> </li>
        <a href="areautente.jsp">AREA UTENTE</a> 
             <a href="chisiamo.jsp">CHI SIAMO</a> 
             <a href="agenda.jsp">AGENDA</a> 
             <a href="visualizzaRichiestaLavoro.jsp">RICHIESTA LAVORO</a> 
           
             <a href="./logout">LOGOUT</a> 
        </div>
        
        <div class="row">
            <div class="column">
                <a href="areautente.jsp"> <img src="areaUtentefoto.jpeg" width="300" height="300" alt="areaUtentefoto"/> </a>

            </div>
            <div class="column">
                <a href="chisiamo.jsp"> <img src="chisiamofoto.jpeg" width="300" height="300" alt="chisiamofoto"/> </a>

            </div> <br>
        </div>
        
        <div class="slideshow-container">

            <div class="mySlides fade">
              <div class="numbertext">1 / 2</div>
              <img src="terra.png" style="width:100%">
              
            </div>

            <div class="mySlides fade">
              <div class="numbertext">2 / 2</div>
              <img src="agricoltore.jpg" style="width:100%">
              
            </div>

            

            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>

            </div>
            <br>

            <div style="text-align:center">
              <span class="dot" onclick="currentSlide(1)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
              
            </div>
            
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
        
        <%
            } else if (amm != null && dip==null){
            %>
        
        
        
        <div class="sidenav">
             <a href="home.jsp">HOME</a> 
             <a href="areautente.jsp">AREA UTENTE</a> 
             <a href="chisiamo.jsp">CHI SIAMO</a> 
             <a href="visualizzadipendenti.jsp">VISUALIZZA DIPENDENTI</a> 
             
           
            <a href="./logout">LOGOUT</a>
            
        </div> 
        
        <div class="row">
            <div class="column">
                <a href="areautente.jsp"> <img src="areaUtentefoto.jpeg" width="300" height="300" alt="areaUtentefoto"/> </a>

            </div>
            <div class="column">
                <a href="chisiamo.jsp"> <img src="chisiamofoto.jpeg" width="300" height="300" alt="chisiamofoto"/> </a>

            </div> <br>
        </div>
        
        <div class="slideshow-container">

            <div class="mySlides fade">
              <div class="numbertext">1 / 2</div>
              <img src="terra.png" style="width:100%">
              
            </div>

            <div class="mySlides fade">
              <div class="numbertext">2 / 2</div>
              <img src="agricoltore.jpg" style="width:100%">
              
            </div>

            

            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>

            </div>
            <br>

            <div style="text-align:center">
              <span class="dot" onclick="currentSlide(1)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
              
            </div>
            
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
            
         <% }else{%>
        
         
        <div class="sidenav">
             <a href="home.jsp">HOME</a>
             <a href="chisiamo.jsp">CHI SIAMO</a>

             <a href="registrazione.jsp">REGISTRAZIONE</a>
             <a href="login.jsp">LOGIN</a>
                          
        </div>
         
         <div class="row">
            <div class="column">
                <a href="login.jsp"> <img src="areaUtentefoto.jpeg" width="300" height="300" alt="areaUtentefoto"/> </a>

            </div>
            <div class="column">
                <a href="chisiamo.jsp"> <img src="chisiamofoto.jpeg" width="300" height="300" alt="chisiamofoto"/> </a>

            </div> <br>
        </div>
        
        <div class="slideshow-container">

            <div class="mySlides fade">
              <div class="numbertext">1 / 2</div>
              <img src="terra.png" style="width:100%">
              
            </div>

            <div class="mySlides fade">
              <div class="numbertext">2 / 2</div>
              <img src="agricoltore.jpg" style="width:100%">
              
            </div>

            

            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>

            </div>
            <br>

            <div style="text-align:center">
              <span class="dot" onclick="currentSlide(1)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
              
            </div>
            
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
         
        <%}%>
       
        
                      
        
            
            <footer>
                &copy; 2020, Sazap
                <br>
                All trademarks and registered trademarks appearing on  <br>
                this site are the property of their respective owners.
                
            </footer>
                
        
        
    </body>
   
        

</html>
