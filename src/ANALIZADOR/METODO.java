/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ANALIZADOR;

/**
 *
 * @author carcu
 */
public class METODO {
     private String id;

    public METODO(String id, Double parametros, int lineas) {
        this.id = id;
        this.parametros = parametros;
        this.lineas = lineas;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Double getParametros() {
        return parametros;
    }

    public void setParametros(Double parametros) {
        this.parametros = parametros;
    }

    public int getLineas() {
        return lineas;
    }

    public void setLineas(int lineas) {
        this.lineas = lineas;
    }
     private Double parametros;
     private int lineas;
    
}
