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
public class NivelEstudios {
    private int id;
    private String nombreNivelEstudios;

    public NivelEstudios(int id, String nombreNivelEstudios) {
        this.id = id;
        this.nombreNivelEstudios = nombreNivelEstudios;
    }

    public NivelEstudios(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreNivelEstudios() {
        return nombreNivelEstudios;
    }

    public void setNombreNivelEstudios(String nombreNivelEstudios) {
        this.nombreNivelEstudios = nombreNivelEstudios;
    }
    
    
}
