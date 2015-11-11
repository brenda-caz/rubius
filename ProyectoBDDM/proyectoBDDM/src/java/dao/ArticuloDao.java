/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Articulo;
import model.Departamento;
import model.Imagen;
import model.NivelEstudios;


/**
 *
 * @author BrendaCázares
 */
public class ArticuloDao {
    //busqueda general
     public static List<Articulo> buscarArticulos() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Articulo> articulos = new ArrayList();
            cs = connection.prepareCall("{ call listaArticulo() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Articulo art = new Articulo(
                        rs.getInt("idArticulo"), 
                        rs.getString("codigoArticulo"), 
                        rs.getString("descripcionCorta"),
                        rs.getString("descripcionLarga"),
                        rs.getDouble("precioPublico"),
                        rs.getString("unidadMedida"),
                        rs.getInt("existencia"),
                        rs.getInt("impuestos"), 
                        rs.getInt("descuento")      
                );

                Departamento dpto = new Departamento(
                       rs.getInt("idDepartamento"),
                       rs.getString("nombreDepartamento")
                );
                
                art.setDepartamento(dpto);                
                articulos.add(art);
            }
            return articulos;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     public static void borrarArticulo(int id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call eliminarArticulo(?) }");
            cs.setInt(1, id);
            cs.execute();            
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     public static void insertarArticulo(Articulo a) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call insertArticulo(?, ?, ?, ?, ?, ?, ?, ?, ?) }");
            cs.setString(1, a.getCodigoArticulo());
            cs.setInt(2, a.getDepartamento().getIdDepartamento());
            cs.setString(3, a.getDescripcionCorta());
            cs.setString(4, a.getDescripcionLarga());
            cs.setDouble(5, a.getPrecioPublico());
            cs.setString(6, a.getMedida());
            cs.setInt(7, a.getExistencia());
            cs.setDouble(8, a.getImpuesto());
            cs.setDouble(9, a.getDescuento());
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
     public static void actualizarArticulo(Articulo a) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call actualizarArticulo(?, ?, ?, ?, ?, ?, ?, ?, ?,?) }");
             cs.setInt(1, a.getIdArticulo());
            cs.setString(2, a.getCodigoArticulo());
            cs.setInt(3, a.getDepartamento().getIdDepartamento());
            cs.setString(4, a.getDescripcionCorta());
            cs.setString(5, a.getDescripcionLarga());
            cs.setDouble(6, a.getPrecioPublico());
            cs.setString(7, a.getMedida());
            cs.setInt(8, a.getExistencia());
            cs.setDouble(9, a.getImpuesto());
            cs.setDouble(10, a.getDescuento());
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     public static Articulo buscarArticulo(int id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = connection.prepareCall("{ call buscarArticulo(?) }");
            cs.setInt(1, id);
            rs = cs.executeQuery();
            if (rs.next()) {
                Articulo art = new Articulo( 
                        rs.getInt("idArticulo"), 
                        rs.getString("codigoArticulo"), 
                        rs.getString("descripcionCorta"),
                        rs.getString("descripcionLarga"),
                        rs.getDouble("precioPublico"),
                        rs.getString("unidadMedida"),
                        rs.getInt("existencia"),
                        rs.getInt("impuestos"), 
                        rs.getInt("descuento")        
                );
                Departamento de = new Departamento(rs.getInt("idDepartamento"));
                art.setDepartamento(de);
                return art;
            }
            return null;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     public static Articulo buscarArticuloC(int codigo) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = connection.prepareCall("{ call buscarArticuloC(?) }");
            cs.setInt(1, codigo);
            rs = cs.executeQuery();
            if (rs.next()) {
                Articulo art = new Articulo( 
                        rs.getInt("idArticulo"), 
                        rs.getString("codigoArticulo"), 
                        rs.getString("descripcionCorta"),
                        rs.getDouble("precioPublico"),
                        rs.getInt("existencia"),
                        rs.getInt("impuestos"), 
                        rs.getInt("descuento")        
                );
                Imagen img = new Imagen(rs.getString("pathImagen"));
                art.setImagen(img);
                return art;
            }
            return null;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
}
