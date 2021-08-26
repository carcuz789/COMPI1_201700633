package ANALIZADOR;
import java_cup.runtime.Symbol; 

%%

%class lexico
%public 
%line 
%char 
%cup 
%unicode
%ignorecase

%init{ 
    yyline = 1; 
    yychar = 1; 
%init} 

BLANCOS=[ \r\t]+
D=[0-9]+
DD=[0-9]+("."[  |0-9]+)?
id ={L}({L}|{D}|{"_"})*




%%

"calcular"      {return new Symbol(sym.calcular,yyline,yychar,yytext());} 

":"
";"             {return new Symbol(sym.ptcoma,yyline,yychar, yytext());} 
"("             {return new Symbol(sym.parizq,yyline,yychar, yytext());} 
")"             {return new Symbol(sym.parder,yyline,yychar, yytext());}
"$"             {return new Symbol(sym.dol,yyline,yychar, yytext());}
"+"             {return new Symbol(sym.mas,yyline,yychar, yytext());} 
"-"             {return new Symbol(sym.menos,yyline,yychar, yytext());} 
"*"             {return new Symbol(sym.por,yyline,yychar, yytext());} 
"/"             {return new Symbol(sym.dividido,yyline,yychar, yytext());} 

"definirglobales"   {return new Symbol(sym.defglobales,yyline,yychar, yytext());} 
"generarreporteestadistico" {return new Symbol(sym.repesta,yyline,yychar, yytext());} 
"compare"   {return new Symbol(sym.compare,yyline,yychar, yytext());} 
"graficabarras"  {return new Symbol(sym.graficabarras,yyline,yychar, yytext());} 
"titulo"  {return new Symbol(sym.titulo,yyline,yychar, yytext());} 
"ejex"  {return new Symbol(sym.ejex,yyline,yychar, yytext());} 
"valores"  {return new Symbol(sym.valores,yyline,yychar, yytext());} 
"titulox"  {return new Symbol(sym.titulox,yyline,yychar, yytext());} 
"tituloy"  {return new Symbol(sym.tituloy,yyline,yychar, yytext());} 
"graficapie" {return new Symbol(sym.graficapie,yyline,yychar, yytext());} 
"graficalineas" {return new Symbol(sym.graficalienas,yyline,yychar, yytext());} 


\n              {yychar=1;}

{BLANCOS}       {} 
{D}             {return new Symbol(sym.entero,yyline,yychar, yytext());} 
{DD}            {return new Symbol(sym.decimal,yyline,yychar, yytext());} 
{id}            {return new Symbol (sym.id ,yyline,yychar,yytext());}  
. {
    System.out.println("Este es un error lexico: "+yytext()+", en la linea: "+yyline+", en la columna: "+yychar);
}
