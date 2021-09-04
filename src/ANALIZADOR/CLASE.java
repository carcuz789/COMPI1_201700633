/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ANALIZADOR;

import java.util.LinkedList;

/**
 *
 * @author carcu
 */
public class CLASE {

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getLineas() {
        return lineas;
    }

    public void setLineas(int lineas) {
        this.lineas = lineas;
    }
    private String id;
    private  LinkedList<METODO> METODOS = new LinkedList<>();
     private  LinkedList<String> VARIABLES = new LinkedList<>();

    public CLASE(String id, int lineas,LinkedList<METODO> METODOS,LinkedList<String> VARIABLES) {
        this.id = id;
        this.lineas = lineas;
        this.METODOS=METODOS;
        this.VARIABLES = VARIABLES;
    }
    private int lineas;
    
    
    
}
