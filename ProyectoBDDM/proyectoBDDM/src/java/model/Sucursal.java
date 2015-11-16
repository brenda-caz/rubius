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

    public Sucursal(int idSucursal) {
        this.idSucursal = idSucursal;
    }
    
    

    public Sucursal(String nombreSucursal) {
        this.nombreSucursal = nombreSucursal;
    }


    public Sucursal(int idSucursal, String nombreSucursal) {
        this.idSucursal = idSucursal;
        this.nombreSucursal = nombreSucursal;
       
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

  
}
