/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.EmpresaDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Video;

/**
 *
 * @author 
 */
@WebServlet(name = "masVidios", urlPatterns = {"/masVidios"})
public class masVidios extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        List<Video> vid = null;
        
            vid = EmpresaDao.VideoReproducir(1);
            request.setAttribute("vidios", vid);
            
            if(vid== null || vid.size()<= 0)
            {
                vid = EmpresaDao.VideoReproducir(2);
            request.setAttribute("vidios", vid);
            }
            
            String nom = "";
            String fecha = "";
            String hora = "";
            String todo = "";
            
            for(int bc = 0; bc < vid.size(); bc++)
            {
                
                nom += vid.get(bc).getPathVideo();
                fecha += vid.get(bc).getFechaVideo();
                hora += vid.get(bc).getHoraVideo();
                
                if (bc < vid.size() - 1) {
                        nom += ",";
                        fecha += ",";
                        hora += ",";
                    }
            }
            
            todo = nom + "|" + fecha + "|" + hora;
            
            response.getWriter().write(todo);
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
