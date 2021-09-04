    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ANALIZADOR2;

import ANALIZADOR.*;

/**
 *
 * @author carcu
 */
public class generador2 {
     public static void main(String[] args) 
    {
        generarAnalizadores() ;
       
    }
    
     private static void generarAnalizadores() 
    {
        try {
            String ruta = "src/ANALIZADOR2/";
            String opcFlex[] = {ruta + "lexer.jflex", "-d", ruta};
            jflex.Main.generate(opcFlex);
            
            String opcCUP[] = {"-destdir", ruta, "-parser", "sintactico", ruta + "sintactico.cup"};
            java_cup.Main.main(opcCUP);
        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
     
}
