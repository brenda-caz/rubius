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

/**
 *
 * @author BrendaCázares
 */
public class ArticuloDao {
     public static List<Articulo> buscarArticulo() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Articulo> articulos = new ArrayList();
            cs = connection.prepareCall("{ call listaUsuarios() }");
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
                        rs.getInt("descuento"), 
                        rs.getInt("activoArticulo")        
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
    
}
