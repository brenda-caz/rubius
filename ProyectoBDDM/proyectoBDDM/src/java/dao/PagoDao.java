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

import model.Pago;

/**
 *
 * @author BrendaCázares
 */
public class PagoDao {
    //busqueda general
     public static List<Pago> buscarPagos() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Pago> pagos = new ArrayList();
            cs = connection.prepareCall("{ call listaCiudadEstado() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Pago pag = new Pago(
                        rs.getInt("idMetodoPago"), 
                        rs.getString("nombreMetodoPago")       
                );

             
                            
                pagos.add(pag);
            }
            return pagos;
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
