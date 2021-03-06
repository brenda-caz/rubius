/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.CiudadDao;
import dao.EstadoDao;
import dao.SucursalDao;
import dao.UsuarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Ciudad;
import model.Estado;
import model.NivelEstudios;
import model.Sucursal;
import model.Usuario;

/**
 *
 * @author
 */
public class usuarioConsultaServlet extends HttpServlet {

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
        
         HttpSession session = request.getSession();
        if (session.getAttribute("user") != null) {
        
        String accion = request.getParameter("accion");
        String strIdUsuario = request.getParameter("id");
        int id = 0;
        if (strIdUsuario != null && !strIdUsuario.equals("")) {
            id = Integer.parseInt(strIdUsuario);
        }

        if ("borrar".equals(accion) && strIdUsuario != "") {
            UsuarioDao.borrar(id);
            List<Usuario> usuarios = UsuarioDao.buscarUsuarios();
            request.setAttribute("usuarios", usuarios);

            RequestDispatcher disp = getServletContext().getRequestDispatcher("/consuUsuario.jsp");
            disp.forward(request, response);
        } else if ("editar".equals(accion) && strIdUsuario != "") {
            Usuario usua = UsuarioDao.buscarUsuario(id);
            request.setAttribute("usuario", usua);
            List<NivelEstudios> nes = UsuarioDao.buscarNivelEstudios();
            request.setAttribute("estudios", nes);
            List<Ciudad> ciu = UsuarioDao.buscarCiudades();
            request.setAttribute("ciudades", ciu);
            List<Estado> est = UsuarioDao.buscarEstados();
            request.setAttribute("estados", est);
            List<Sucursal> suc = SucursalDao.buscarSucursales();
            request.setAttribute("sucursal", suc);
            RequestDispatcher disp = getServletContext().getRequestDispatcher("/gestionUsuarios.jsp");
            disp.forward(request, response);
        } else {

            List<Usuario> usuarios = UsuarioDao.buscarUsuarios();
            request.setAttribute("usuarios", usuarios);

            RequestDispatcher disp = getServletContext().getRequestDispatcher("/consuUsuario.jsp");
            disp.forward(request, response);
        }
        
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
