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
import model.Usuario;

/**
 *
 * @author 
 */
public class UsuarioDao {
    
     public static List<Usuario> buscarUsuarios() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<Usuario> empleados = new ArrayList();
            cs = connection.prepareCall("{ call listaUsuarios() }");
            rs = cs.executeQuery();
            while (rs.next()) {
                Usuario emp = new Usuario(
                        rs.getInt("idUsuario"), 
                        rs.getString("nombreUsuario"), 
                        rs.getString("apellidoPaterno"), 
                        rs.getString("apellidoMaterno"),
                        rs.getString("puesto"),
                        rs.getString("sexo"),
                        rs.getDate("fechaNacimiento"),
                        rs.getString("nivelEstudios"),
                        rs.getString("calle"),
                        rs.getInt("numero"),
                        rs.getString("colonia"), 
                        rs.getInt("municipio"), 
                        rs.getInt("estado"), 
                        rs.getInt("codigoPostal"), 
                        rs.getString("RFC"),
                        rs.getString("CURP"),
                        rs.getInt("numeroNomina"),
                        rs.getBinaryStream(1),
                        rs.getString("correoUsuario"),
                        rs.getInt("activoUsuario")  
                );

                empleados.add(emp);
            }
            return empleados;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
            
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
    
     public static void insertarUsuario(Usuario e) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        CallableStatement cs = null;
        try {
            cs = connection.prepareCall("{ call insertUsuario(?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?, ?,?,?, ?, ?, ?,?,) }");
            cs.setString(1, e.getNombre());
            cs.setString(2, e.getApellido());
            cs.setString(3, e.getPuesto());
            cs.setString(4, e.getSexo());
            cs.setDate(5, e.getFechaNacimiento());
            cs.setString(6, e.getCalle());
            cs.setInt(7, e.getNumero());
            cs.setString(8, e.getColonia());
            cs.setInt(9, e.getMunicipio());
            cs.setInt(10, e.getEstado());
            cs.setInt(11, e.getPostal());
            cs.setString(12, e.getRFC());
            cs.setInt(13, e.getMunicipio());
            cs.setInt(14, e.getEstado());
            cs.setInt(15, e.getPostal());
            cs.setString(16, e.getRFC());
            cs.setString(17, e.getCURP());
            cs.setInt(18, e.getNomina());
            cs.setBlob(19, e.getFoto());
            cs.setString(20, e.getEmail());
            cs.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        } finally {
            DBUtil.closeStatement(cs);
            pool.freeConnection(connection);
        }
    }
     
     
}
