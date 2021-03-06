/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.UsuarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;

/**
 *
 * @author 
 */
public class indexServlet extends HttpServlet {

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
        
        String accion = request.getParameter("accion");
        if ("borrar".equals(accion)) {
            HttpSession session = request.getSession();
            session.removeAttribute("user");
            session.invalidate();
            RequestDispatcher disp = getServletContext().
                        getRequestDispatcher("/index.jsp");
            disp.forward(request, response);
            
        } else {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            
            String encriptado = "";
            encriptado = Utilidades.Encriptar(password);      
            
            Usuario user = UsuarioDao.validarLogin(email, encriptado);
            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                if("A".equals(user.getPuesto()))
                {
                RequestDispatcher disp = getServletContext().
                        getRequestDispatcher("/usuarioConsultaServlet");
                disp.forward(request, response);
                }
                else
                {
                    List<Double> totales = new ArrayList<Double>();;
                    HttpSession sessionC = request.getSession();
                    sessionC.setAttribute("total", totales);
                    int idtabla=1;
                     HttpSession sessiont = request.getSession();
                    sessiont.setAttribute("idtabla", idtabla);
                    
                    RequestDispatcher disp = getServletContext().
                        getRequestDispatcher("/cajeroServlet");
                disp.forward(request, response);
                }
            } else {
                RequestDispatcher disp = getServletContext().
                        getRequestDispatcher("/index.jsp");
                disp.forward(request, response);
            }
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
