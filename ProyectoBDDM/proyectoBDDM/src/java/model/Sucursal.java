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
public class Sucursal {
    private int idSucursal;
    private String nombreSucursal;
    private int activoSucursal;

    public Sucursal(int idSucursal, String nombreSucursal, int activoSucursal) {
        this.idSucursal = idSucursal;
        this.nombreSucursal = nombreSucursal;
        this.activoSucursal = activoSucursal;
    }

    public int getIdSucursal() {
        return idSucursal;
    }

    public void setIdSucursal(int idSucursal) {
        this.idSucursal = idSucursal;
    }

    public String getNombreSucursal() {
        return nombreSucursal;
    }

    public void setNombreSucursal(String nombreSucursal) {
        this.nombreSucursal = nombreSucursal;
    }

    public int getActivoSucursal() {
        return activoSucursal;
    }

    public void setActivoSucursal(int activoSucursal) {
        this.activoSucursal = activoSucursal;
    }
    
}
