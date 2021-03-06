/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.EmpresaDao;
import dao.SucursalDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import javax.print.attribute.standard.DateTimeAtCompleted;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Imagen;
import model.Video;


/**
 *
 * @author BrendaCázares
 */

public class imagenesVideosServlet extends HttpServlet {

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
       
                HttpSession session = request.getSession();
        if (session.getAttribute("user") != null) {
            
                String accion = request.getParameter("accion");
                String fech = request.getParameter("fech");
                String hora = request.getParameter("hora");
                
               String strId = request.getParameter("id");
            int id = 0;
            if (strId != null && !strId.equals("")) {
                id = Integer.parseInt(strId);
            }
                
                if("editarImagen".equals(accion))
                {
                    Imagen im = new Imagen(id, fech, hora);
                    EmpresaDao.actualizarImagen(im);
                }
                else if ("editarVideo".equals(accion))
                {
                    Video vid = new Video(id, fech, hora);
                    EmpresaDao.actualizarVideo(vid);
                }
                
                List<Imagen> imagenes = EmpresaDao.ImagenEmpresa();
                request.setAttribute("imagenes", imagenes);
                
                 List<Video> videos = EmpresaDao.VideoEmpresa();
                request.setAttribute("videos", videos);
                

                RequestDispatcher disp = getServletContext().getRequestDispatcher("/gestionImagenVideo.jsp");
                disp.forward(request, response);
                
                
                } else {
            RequestDispatcher disp = getServletContext().
                    getRequestDispatcher("/index.jsp");
            disp.forward(request, response);
        }
        
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
