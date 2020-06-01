/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import entita.Amministratore;
import entita.Azienda;
import entita.Dipendente;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gino
 */
@WebServlet(name = "registrazione", urlPatterns = {"/registrazione"})
public class registrazione extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String password= request.getParameter("password");
        String cpassword=request.getParameter("cpassword");
        String valr=request.getParameter("valr");
        Random rand= new Random();
        
        ArrayList<Dipendente> dipendenti= (ArrayList<Dipendente>)request.getSession().getAttribute("dipendenti");
        ArrayList<Amministratore> amministratori=(ArrayList<Amministratore>)request.getSession().getAttribute("amministratori");
        ArrayList<Azienda> aziende=(ArrayList<Azienda>)request.getSession().getAttribute("aziende");
        if(valr.equals("1"))
        {
            if(dipendenti==null)
            {
                dipendenti= new ArrayList<Dipendente>();
            }

            if(password.equals(cpassword)){

                Dipendente dip= new Dipendente();
                dip.setNome(request.getParameter("nome"));
                dip.setCognome(request.getParameter("cognome"));
                dip.setUsername(request.getParameter("username"));
                dip.setPassword(password);
                dip.setId(rand.nextInt(20000));
                dip.setAzienda(request.getParameter("azienda"));
                dip.setCompetenze(request.getParameter("competenze"));
                dipendenti.add(dip);
                request.getSession().setAttribute(dip.getUsername(), dip);
                request.getSession().setAttribute("dipendenti", dipendenti);

            }
        }
        else if(valr.equals("0"))
        {
            if(amministratori==null)
            {
                amministratori= new ArrayList<Amministratore>();
            }
            
            if(aziende==null)
            {
                aziende= new ArrayList<Azienda>();
            }

            if(password.equals(cpassword)){

                Amministratore dip= new Amministratore();
                Azienda az= new Azienda();
                dip.setNome(request.getParameter("nome"));
                dip.setCognome(request.getParameter("cognome"));
                dip.setUsername(request.getParameter("username"));
                dip.setPassword(password);
                dip.setId(rand.nextInt(20000));
                amministratori.add(dip);
                az.setNome(request.getParameter("nomeaz"));
                az.setIndirizzo(request.getParameter("indaz"));
                az.setNumerotel(request.getParameter("telefa"));
                dip.setAzienda(az);
                aziende.add(az);
                request.getSession().setAttribute(dip.getUsername(), dip);
                request.getSession().setAttribute("amministratori", amministratori);
                request.getSession().setAttribute("aziende", aziende);

            }
            
        }
        
        response.sendRedirect("./home.jsp");
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
