/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ANALIZADOR;
import java.util.ArrayList;
/**
 *
 * @author carcu
 */
public class GRAFBARRAS {
    private String titulo;
    private ArrayList<String> EJEX = new ArrayList<String>();
    private  ArrayList<String> VALORES = new ArrayList<String>();
    private String titulox;
    private String tituloy;

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public ArrayList<String> getEJEX() {
        return EJEX;
    }

    public void setEJEX(ArrayList<String> EJEX) {
        this.EJEX = EJEX;
    }

    public ArrayList<String> getVALORES() {
        return VALORES;
    }

    public void setVALORES(ArrayList<String> VALORES) {
        this.VALORES = VALORES;
    }

    public String getTitulox() {
        return titulox;
    }

    public void setTitulox(String titulox) {
        this.titulox = titulox;
    }

    public String getTituloy() {
        return tituloy;
    }

    public void setTituloy(String tituloy) {
        this.tituloy = tituloy;
    }
    
}
