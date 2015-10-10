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
import model.Sucursal;
import model.Departamento;
import model.Venta;
import model.Usuario;
import model.Pago;

/**
 *
 * @author BrendaCázares
 */
public class VentaDao {
     // buscar general
    public static List<Venta> buscaVentas() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Venta> ventas = new ArrayList();
            cs = connection.prepareCall("{ call listaVenta() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Venta ven = new Venta(
                        rs.getInt("idVenta"), 
                        rs.getInt("cantidadVenta"), 
                        rs.getDouble("subtotal"),
                        rs.getDate("fechaVenta")
                              
                );
                
               Sucursal suc = new Sucursal(
                       rs.getInt("idSucursal"),
                       rs.getString("nombreSucursal")
                );
                        
                Departamento dep = new Departamento(
                       rs.getInt("idDepartamento"),
                       rs.getString("nombreDepartamento")
                );
                
                 Usuario  usu = new Usuario(
                       rs.getInt("idUsuarioVenta")
                );
                 
                 Pago pag = new Pago(
                       rs.getInt("idPago")
                );
                
                 Articulo art = new Articulo(
                       rs.getInt("idArticulo")
                );
                    ven.setSucursalVenta(suc);
                    ven.setDepartamentoVenta(dep);
                    ven.setUsuarioVenta(usu);
                    ven.setPagoVenta(pag);
                    ven.setArticuloVenta(art);
                    ventas.add(ven);
            }
            return ventas;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
    public static void insertarVenta(Venta v) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call insertVenta(?, ?, ?, ?,?,?,?,?) }");
            cs.setInt(1, v.getSucursalVenta().getIdSucursal());
            cs.setInt(2, v.getDepartamentoVenta().getIdDepartamento());
            cs.setInt(3, v.getUsuarioVenta().getId());
            cs.setInt(4, v.getCantidadVenta());
            cs.setDouble(5, v.getSubtotal());
            cs.setInt(6, v.getPagoVenta().getIdPago());
            cs.setInt(7, v.getArticuloVenta().getIdArticulo());
            cs.setDate(8, v.getFechaVenta());
        
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
}
