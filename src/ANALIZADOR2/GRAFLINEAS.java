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
public class GRAFLINEAS {
     private String titulo;
     private String archivo;

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getArchivo() {
        return archivo;
    }

    public void setArchivo(String archivo) {
        this.archivo = archivo;
    }

    public GRAFLINEAS(String titulo, String archivo) {
        this.titulo = titulo;
        this.archivo = archivo;
    }
     
}
