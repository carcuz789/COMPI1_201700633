/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ANALIZADOR2;

/**
 *
 * @author carcu
 */
public class COMPARE {
 private String ruta1;
 private String ruta2;
 private String esvar1;
 private String esvar2;

    public COMPARE(String ruta1, String ruta2, String esvar1, String esvar2) {
        this.ruta1 = ruta1;
        this.ruta2 = ruta2;
        this.esvar1 = esvar1;
        this.esvar2 = esvar2;
    }
    public String getRuta1() {
        return ruta1;
    }

    public void setRuta1(String ruta1) {
        this.ruta1 = ruta1;
    }

    public String getRuta2() {
        return ruta2;
    }

    public void setRuta2(String ruta2) {
        this.ruta2 = ruta2;
    }

    public String getEsvar1() {
        return esvar1;
    }

    public void setEsvar1(String esvar1) {
        this.esvar1 = esvar1;
    }

    public String getEsvar2() {
        return esvar2;
    }

    public void setEsvar2(String esvar2) {
        this.esvar2 = esvar2;
    }

    
 
}
