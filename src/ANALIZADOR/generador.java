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
public class generador {
     public static void main(String[] args) 
    {
        generarAnalizadores2() ;
       
    }
    
   
      private static void generarAnalizadores2() 
    {
        try {
            String ruta = "src/ANALIZADOR/";
            String opcFlex[] = {ruta + "lexer2.jflex", "-d", ruta};
            jflex.Main.generate(opcFlex);
            
            String opcCUP[] = {"-destdir", ruta, "-parser", "SINTACTICO2", ruta + "SINTACTICO3.cup"};
            java_cup.Main.main(opcCUP);
        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
}
