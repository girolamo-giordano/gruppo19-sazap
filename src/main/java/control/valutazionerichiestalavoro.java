/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import entita.Dipendente;
import entita.Lavoroaccettato;
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
@WebServlet(name = "valutazionerichiestalavoro", urlPatterns = {"/valutazionerichiestalavoro"})
public class valutazionerichiestalavoro extends HttpServlet {

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
        Dipendente dip= (Dipendente)request.getSession().getAttribute("loggatod");
        String id= request.getParameter("id");
        String aziendal=request.getParameter("azienda");
        String competenzel=request.getParameter("competenze");
        String appuntamentol=request.getParameter("appuntamento");
        String oral=request.getParameter("ora");
        String notel=request.getParameter("note");
        ArrayList<Richiestalavoro> richieste=dip.getRichiesteLavoro();
        Lavoroaccettato la= new Lavoroaccettato();
        Richiestalavoro elimin= new Richiestalavoro();
        for(Richiestalavoro r:richieste)
        {
            if(r.getId()==Integer.parseInt(id))
            {
                
                la.setAzienda(aziendal);
                la.setCompetenze(competenzel);
                la.setData(appuntamentol);
                la.setOrario(oral);
                la.setNote(notel);
                dip.getRichiesteLavoroAcc().add(la);
                elimin=r;
                
            }
        }
        dip.getRichiesteLavoro().remove(elimin);
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
