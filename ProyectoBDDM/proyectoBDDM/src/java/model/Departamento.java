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
    private int activoDepartamento;

    public Departamento(int idDepartamento, String nombreDepartamento, int activoDepartamento) {
        this.idDepartamento = idDepartamento;
        this.nombreDepartamento = nombreDepartamento;
        this.activoDepartamento = activoDepartamento;
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

    public int getActivoDepartamento() {
        return activoDepartamento;
    }

    public void setActivoDepartamento(int activoDepartamento) {
        this.activoDepartamento = activoDepartamento;
    }
    
    
}
