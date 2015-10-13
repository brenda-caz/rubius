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
public class Departamento {
    private int idDepartamento;
    private String nombreDepartamento;

    public Departamento(String nombreDepartamento) {
        this.nombreDepartamento = nombreDepartamento;
    }

    public Departamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }


    public Departamento(int idDepartamento, String nombreDepartamento) {
        this.idDepartamento = idDepartamento;
        this.nombreDepartamento = nombreDepartamento;
  
    }

    public int getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public String getNombreDepartamento() {
        return nombreDepartamento;
    }

    public void setNombreDepartamento(String nombreDepartamento) {
        this.nombreDepartamento = nombreDepartamento;
    }

    
}
