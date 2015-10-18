/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;


import dao.ArticuloDao;
import dao.DepartamentoDao;
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
import javax.servlet.http.Part;
import model.Articulo;
import model.Departamento;
import model.Estado;


/**
 *
 * @author BrendaCázares
 */

public class articuloInsertarServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
     private final String directorio = "archivos";
    
    private String extractExtension(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                String filename = s.substring(s.indexOf("=") + 2, s.length() - 1);
                return filename.substring(filename.indexOf(".") - 1, filename.length());
            }
        }
        return "";
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Departamento> dep = DepartamentoDao.buscarDepartamentos();
            request.setAttribute("departamentos", dep);
            
            String strinicio = request.getParameter("inicio");
             String strId = request.getParameter("id");
            int id = 0;
            if (strId != null && !strId.equals("")) {
                id = Integer.parseInt(strId);
            }
            
        if(!"no".equals(strinicio))
        {
        response.setContentType("text/html;charset=UTF-8");
     
            String strcodigoArticulo = request.getParameter("codigoArticulo");
            String strprecioArticulo = request.getParameter("precioArticulo");
             double preshio = 0;
            if (strprecioArticulo != null && !strprecioArticulo.equals("")) {
                preshio = Double.parseDouble(strprecioArticulo);
            }
            String strdescriCorta = request.getParameter("descriCorta");
            String strdescriLarga = request.getParameter("descriLarga");
            String strDepartamento = request.getParameter("departamento");   
            int departamentosh = 0;
            if (strDepartamento != null && !strDepartamento.equals("")) {
                departamentosh = Integer.parseInt(strDepartamento);
            }
            String strmedida = request.getParameter("medida");
            String strexistencia = request.getParameter("existencia");
            int existenshia = 0;
            if (strexistencia != null && !strexistencia.equals("")) {
                existenshia = Integer.parseInt(strexistencia);
            }
            String strcalle = request.getParameter("calle");
            String strimpuesto = request.getParameter("impuesto");
          int impuestosh = 0;
            if (strimpuesto != null && !strimpuesto.equals("")) {
                impuestosh = Integer.parseInt(strimpuesto);
            }
            String strdescuento = request.getParameter("descuento");
             int descuentosh = 0;
            if (strdescuento != null && !strdescuento.equals("")) {
                descuentosh = Integer.parseInt(strdescuento);
            }
            Articulo a = new Articulo(strcodigoArticulo,strdescriCorta,strdescriLarga,preshio,strmedida,existenshia,impuestosh,descuentosh);
            Departamento d = new Departamento(departamentosh);
            a.setDepartamento(d);

            if (id > 0) {
                a.setIdArticulo(id);
               ArticuloDao.actualizarArticulo(a);
            } else {
                ArticuloDao.insertarArticulo(a);
            }

            RequestDispatcher disp = getServletContext().getRequestDispatcher("/articuloConsultaServlet");
            disp.forward(request, response);        
        }
         else
        {
            RequestDispatcher disp = getServletContext().getRequestDispatcher("/gestionArticulos.jsp");
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
