/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import entita.Dipendente;
import entita.Richiestalavoro;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gino
 */
@WebServlet(name = "inviorichiestalavoro", urlPatterns = {"/inviorichiestalavoro"})
public class inviorichiestalavoro extends HttpServlet {

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
        ArrayList<Dipendente> dipendenti =(ArrayList<Dipendente>)request.getSession().getAttribute("dipendenti");
        String id= request.getParameter("idl");
        String nomel=request.getParameter("nomel");
        String aziendal=request.getParameter("aziendal");
        String competenzel=request.getParameter("competenzel");
        String appuntamentol=request.getParameter("appuntamentol");
        String oral=request.getParameter("oral");
        String notel=request.getParameter("notel");
        Richiestalavoro rl= new Richiestalavoro();
        rl.setAzienda(aziendal);
        rl.setCompetenze(competenzel);
        rl.setData(appuntamentol);
        rl.setOrario(oral);
        rl.setNome(nomel);
        rl.setNote(notel);
        for(Dipendente e:dipendenti){
            if(e.getId()==Integer.parseInt(id))
            {
                e.getRichiesteLavoro().add(rl);
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
