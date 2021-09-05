package ANALIZADOR2;
import java_cup.runtime.Symbol; 

%%

%class LEXER1
%type java_cup.runtime.Symbol
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


BLANCOS=[ \s|\t|\r|\n]+
L=[a-zA-Z_]+
D=[0-9]+
DD=[0-9]+("."[  |0-9]+)?

L=[a-zA-Z_]+
D=[0-9]+
id ={L}({L}|{D}|"_")*

comentariolinea ="##"(.)* 
cadenastring="\""[^\"]*"\""
COMENTARIOMULTI = "#*" [^/] ~"*#" | "#*" "/"+ "*#"

PGENERAL = "${PuntajeGeneral}"
PESPECIFICO = "$" "{" "PuntajeEspecifico" "," {cadenastring} "," {cadenastring} "," {cadenastring} "}"

%%



":"             {return new Symbol(sym.dospuntos,yyline,yychar, yytext());}
"="             {return new Symbol(sym.igual,yyline,yychar, yytext());}
","             {return new Symbol(sym.coma,yyline,yychar, yytext());}
";"             {return new Symbol(sym.ptcoma,yyline,yychar, yytext());} 
"("             {return new Symbol(sym.parizq,yyline,yychar, yytext());} 
")"             {return new Symbol(sym.parder,yyline,yychar, yytext());}
"["             {return new Symbol(sym.corcheteabierto,yyline,yychar, yytext());}
"]"             {return new Symbol(sym.corchetecerrado,yyline,yychar, yytext());}
"{"             {return new Symbol(sym.llaveabierta,yyline,yychar, yytext());}
"}"             {return new Symbol(sym.llavecerrada,yyline,yychar, yytext());}

"definirglobales"   {return new Symbol(sym.definirglobales,yyline,yychar, yytext());} 
"generarreporteestadistico" {return new Symbol(sym.generarreporteestadistico,yyline,yychar, yytext());} 
"compare"   {return new Symbol(sym.compare,yyline,yychar, yytext());} 
"graficabarras"  {return new Symbol(sym.graficabarras,yyline,yychar, yytext());} 
"titulo"  {return new Symbol(sym.titulo,yyline,yychar, yytext());} 
"ejex"  {return new Symbol(sym.ejex,yyline,yychar, yytext());} 
"valores"  {return new Symbol(sym.valores,yyline,yychar, yytext());} 
"titulox"  {return new Symbol(sym.titulox,yyline,yychar, yytext());} 
"tituloy"  {return new Symbol(sym.tituloy,yyline,yychar, yytext());} 
"graficapie" {return new Symbol(sym.graficapie,yyline,yychar, yytext());} 
"graficalineas" {return new Symbol(sym.graficalienas,yyline,yychar, yytext());} 
"string"    {return new Symbol(sym.string,yyline,yychar, yytext());}
"double"    {return new Symbol(sym.doublee,yyline,yychar, yytext());}
"archivo"    {return new Symbol(sym.archivo,yyline,yychar, yytext());}




{BLANCOS}       {} 
{comentariolinea} {}
{COMENTARIOMULTI} {}
{PGENERAL}             {return new Symbol(sym.pgen,yyline,yychar, yytext());} 
{PESPECIFICO}             {return new Symbol(sym.pesp,yyline,yychar, yytext());} 
{DD}            {return new Symbol(sym.decimal,yyline,yychar, yytext());} 
{id}            {return new Symbol (sym.id ,yyline,yychar,yytext());}  
{cadenastring} {return new Symbol (sym.cadenastring ,yyline,yychar,yytext());}  

. 
{
    System.out.println("Este es un error lexico: "+yytext()+", en la linea: "+yyline+", en la columna: "+yychar);
}
