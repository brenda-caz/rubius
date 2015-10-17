/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author BrendaCázares
 */
public class Ciudad {
    private int idCiudad;
    private String nombreCiudad;
    private Estado estado;

    public Ciudad(int idCiudad, String nombreCiudad) {
        this.idCiudad = idCiudad;
        this.nombreCiudad = nombreCiudad;
    }

    public Ciudad(int idCiudad) {
        this.idCiudad = idCiudad;
    }
    
    

    public int getIdCiudad() {
        return idCiudad;
    }

    public String getNombreCiudad() {
        return nombreCiudad;
    }

    public Estado getEstado() {
        return estado;
    }

    public void getEstado(Estado est) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
