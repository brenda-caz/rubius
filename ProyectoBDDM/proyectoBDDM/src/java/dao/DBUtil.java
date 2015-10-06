/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author 
 */
public class DBUtil {
 
    public static void closeStatement(Statement s) {
        try {
            if (s != null) {
                s.close();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    public static void closeResultSet(ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}