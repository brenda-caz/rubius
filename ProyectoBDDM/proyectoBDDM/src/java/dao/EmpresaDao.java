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
import model.Empresa;
import model.Imagen;
import model.Video;

/**
 *
 * @author BrendaCázares
 */
public class EmpresaDao {
        // buscar general
    public static List<Empresa> buscarEmpresa() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Empresa> empresas = new ArrayList();
            cs = connection.prepareCall("{ call listaEmpresa() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Empresa emp = new Empresa(
                        rs.getInt("idEmpresa"), 
                        rs.getString("eslogan"),  
                        rs.getBinaryStream(1)        
                );
                
              
                    empresas.add(emp);
            }
            return empresas;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
     public static List<Imagen> ImagenEmpresa() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Imagen> imagenes = new ArrayList();
            cs = connection.prepareCall("{ call listaImagen(?,?) }");
             cs.setInt(1, 1);
             cs.setInt(2, 0);
            rs = cs.executeQuery();
            while (rs.next()) {
                Imagen img = new Imagen(
                        rs.getInt("idImagen"), 
                        rs.getString("pathImagen"),  
                        rs.getString("fechaImagen"),
                        rs.getString("horaImagen")
                );
                    imagenes.add(img);
            }
            return imagenes;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
     public static List<Video> VideoEmpresa() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Video> Videos = new ArrayList();
            cs = connection.prepareCall("{ call listaVideo(?,?) }");
             cs.setInt(1, 1);
             cs.setInt(2, 0);
            rs = cs.executeQuery();
            while (rs.next()) {
                Video vid = new Video(
                        rs.getInt("idVideo"), 
                        rs.getString("pathVideo"),  
                        rs.getString("fechaVideo"),
                        rs.getString("horaVideo")
                );
                    Videos.add(vid);
            }
            return Videos;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     
     public static List<Video> VideoReproducir(int id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Video> Videos = new ArrayList();
            cs = connection.prepareCall("{ call videoReproducir(?) }");
             cs.setInt(1, id);
            rs = cs.executeQuery();
            while (rs.next()) {
                Video vid = new Video(
                        rs.getInt("idVideo"), 
                        rs.getString("pathVideo").replace(".mp4","")
                );
                    Videos.add(vid);
            }
            return Videos;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     
     
     public static void actualizarImagen(Imagen i) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call actualizarImagen(?, ?, ?) }");
            cs.setInt(1, i.getIdImagen());
            cs.setString(2, i.getFechaImagen());
            cs.setString(3, i.getHoraImagen());   
            cs.execute();

        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }        
    }
     
     
      public static void actualizarVideo(Video v) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call actualizarVideo(?, ?, ?) }");
            cs.setInt(1, v.getIdVideo());
            cs.setString(2, v.getFechaVideo());
            cs.setString(3, v.getHoraVideo());   
            cs.execute();

        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }        
    }
     
    
}
