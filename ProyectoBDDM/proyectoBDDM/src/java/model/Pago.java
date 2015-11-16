/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.logging.Logger;

/**
 *
 * @author BrendaCázares
 */
public class Pago {
      private int idPago;
    private String nombrePago;

    public Pago(int idPago, String nombrePago) {
        this.idPago = idPago;
        this.nombrePago = nombrePago;
    }

    public Pago(int idPago) {
        this.idPago = idPago;
    }
    

    public int getIdPago() {
        return idPago;
    }

    public String getNombrePago() {
        return nombrePago;
    }
    
    
}
