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

    public static List<Venta> buscaVentas(String fechaInicial, String fechaFinal, int idPagoV, int idDepartamento, int idSucursalV, int idUsuarioV) {       
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Venta> ventas = new ArrayList();
            cs = connection.prepareCall("{ call reporteVenta(?,?,?,?,?,?) }");
            cs.setString(1, fechaInicial);
            cs.setString(2, fechaFinal);
            cs.setInt(3, idUsuarioV);
            cs.setInt(4, idSucursalV);
            cs.setInt(5, idDepartamento);
            cs.setInt(6, idPagoV);
            rs = cs.executeQuery();
            while (rs.next()) {
                Venta ven = new Venta(
                        rs.getInt("idVenta"),
                        rs.getInt("cantidadVenta"),
                        rs.getDouble("subtotal"),
                        rs.getString("fechaVenta")
                );

                Sucursal suc = new Sucursal(
                        rs.getInt("idSucursalVenta"),
                        rs.getString("nombreSucursal")
                );

                Departamento dep = new Departamento(
                        rs.getInt("idDepartamentoVenta"),
                        rs.getString("nombreDepartamento")
                );

                Usuario usu = new Usuario(
                        rs.getInt("idUsuarioVenta"),
                        rs.getString("nombreUsuario")
                );

                Pago pag = new Pago(
                        rs.getInt("idMetodoPagoVenta"),
                        rs.getString("nombreMetodoPago")
                );

                Articulo art = new Articulo(
                        rs.getInt("idArticuloVenta"),
                        rs.getString("descripcionCorta"),
                        rs.getString("descripcionLarga"),
                        rs.getString("codigoArticulo"),
                        rs.getDouble("precioPublico"),
                        rs.getDouble("descuento"),
                        rs.getDouble("impuestos")
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
            cs.setString(8, v.getFecha());

            cs.execute();

        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
     public static List<Departamento> buscarDepartamentos() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Departamento> departamentos = new ArrayList();
            cs = connection.prepareCall("{ call listaDepartamento() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Departamento dpo = new Departamento(
                        rs.getInt("idDepartamento"), 
                        rs.getString("nombreDepartamento")       
                );

                    departamentos.add(dpo);
            }
            return departamentos;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
       public static List<Sucursal> buscarSucursales() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Sucursal> sucursales = new ArrayList();
            cs = connection.prepareCall("{ call listaSucursal() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Sucursal suc = new Sucursal(
                        rs.getInt("idSucursal"), 
                        rs.getString("nombreSucursal")
                );

             
                            
                sucursales.add(suc);
            }
            return sucursales;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
       
       public static List<Pago> buscarPagos() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Pago> pagos = new ArrayList();
            cs = connection.prepareCall("{ call listaPago() }");
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
       
       public static List<Usuario> buscarUsuarios() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Usuario> usuas = new ArrayList();
            cs = connection.prepareCall("{ call cajeroReporte() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Usuario usa = new Usuario(
                       
                      rs.getString("nombreUsuario"),
                        rs.getString("apellidoPaterno"),
                         rs.getInt("idUsuario")
                       
                );

             
                            
                usuas.add(usa);
            }
            return usuas;
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
