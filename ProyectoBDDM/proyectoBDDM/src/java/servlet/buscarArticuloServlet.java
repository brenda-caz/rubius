/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ArticuloDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Articulo;
import model.Usuario;

/**
 *
 * @author 
 */
@WebServlet(name = "buscarArticuloServlet", urlPatterns = {"/buscarArticuloServlet"})
public class buscarArticuloServlet extends HttpServlet {

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
        String description = request.getParameter("descr");
        HttpSession session = request.getSession();
        Usuario usu = (Usuario) session.getAttribute("user");
        int suc = usu.getSucursal().getIdSucursal();
        String msj = "";
        List<Articulo> arti = ArticuloDao.buscarArticuloDes(description, suc);
       
        if (arti != null) {
            for(int bc=0; bc < arti.size(); bc++)
            msj += "<tr id='ccl'><td>" + arti.get(bc).getDescripcionCorta()+ "</td>" + "<td> " + "<a href=" + "javascript:pasaros("+ arti.get(bc).getDescripcionCorta() +");" + "><img src='"+ arti.get(bc).getImagen().getPath() +"'/></a>" +" </td>";
           } else {
            msj = "Producto inexistente";
        }
        
        response.getWriter().write(msj);
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
