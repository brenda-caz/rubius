/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.InputStream;

/**
 *
 * @author BrendaCázares
 */
public class Empresa {
    private int idEmpresa;
    private String eslogan;
    private InputStream logo;

    public Empresa(int idEmpresa, String eslogan, InputStream logo) {
        this.idEmpresa = idEmpresa;
        this.eslogan = eslogan;
        this.logo = logo;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }

    public String getEslogan() {
        return eslogan;
    }

    public InputStream getLogo() {
        return logo;
    }
    
    
}
