/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.DepartamentoDao;
import dao.PagoDao;
import dao.SucursalDao;
import dao.UsuarioDao;
import dao.VentaDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Departamento;
import model.Pago;
import model.Sucursal;
import model.Usuario;
import model.Venta;

/**
 *
 * @author BrendaCázares
 */

public class reporteServlet extends HttpServlet {

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
        
         List<Sucursal> suc = VentaDao.buscarSucursales();
            request.setAttribute("sucursales", suc);
        
        List<Departamento> dep = VentaDao.buscarDepartamentos();
            request.setAttribute("departamentos", dep);
            
            List<Usuario> usu = VentaDao.buscarUsuarios();
            request.setAttribute("usuarios", usu);
            
              List<Pago> pag = VentaDao.buscarPagos();
            request.setAttribute("pagos", pag);
            
            String fechaInicial = request.getParameter("E1");
            String fechaFinal = request.getParameter("E2");
            if(!"".equals(fechaInicial) && !"".equals(fechaFinal))
            {
                
                String stridSucursal = request.getParameter("sucursalReporte");
                int idSucursal = 0;
            if (stridSucursal != null && !stridSucursal.equals("")) {
                idSucursal = Integer.parseInt(stridSucursal);
            }
            
            String stridDepartamento = request.getParameter("departamentoReporte");
                int idDepartamento = 0;
            if (stridDepartamento != null && !stridDepartamento.equals("")) {
                idDepartamento = Integer.parseInt(stridDepartamento);
            }
            
            
             String stridcajero = request.getParameter("cajeroReporte");
                int idcajero = 0;
            if (stridcajero != null && !stridcajero.equals("")) {
                idcajero = Integer.parseInt(stridcajero);
            
            
            String stridpago = request.getParameter("pagoReporte");
                int idpago = 0;
            if (stridpago != null && !stridpago.equals("")) {
                idpago = Integer.parseInt(stridpago);
            }
            List<Venta> venta = VentaDao.buscaVentas(fechaInicial,fechaFinal,idpago,idDepartamento,idSucursal,idcajero);
            request.setAttribute("Venta", venta);
            }
            }
            
             RequestDispatcher disp = getServletContext().
                    getRequestDispatcher("/reporteVentas.jsp");
            disp.forward(request, response);
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
