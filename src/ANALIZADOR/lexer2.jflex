package ANALIZADOR;
import java_cup.runtime.Symbol; 
import java.util.LinkedList;
%%

%class LEXER2
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
cadenas="\""[^\"]*"\""
DD=[0-9]+("."[  |0-9]+)?


L=[a-zA-Z_]+
D=[0-9]+
id ={L}({L}|{D}|"_")*
comentariolinea ="//"(.)* 
COMENTARIOMULTI = "/*" [^/] ~"*/" | "/*" "/"+ "*/"
console = "console.log"



%%

"class"      {return new Symbol(sym.classs,yyline,yychar,yytext());} 
"var"        {return new Symbol(sym.varr,yyline,yychar, yytext());}
"let"        {return new Symbol(sym.lett,yyline,yychar, yytext());}
"const"      {return new Symbol(sym.constt,yyline,yychar, yytext());}
"if"         {return new Symbol(sym.iff,yyline,yychar, yytext());}
"else"       {return new Symbol(sym.elsee,yyline,yychar, yytext());}
"for"        {return new Symbol(sym.forr,yyline,yychar, yytext());}
"while"      {return new Symbol(sym.whilee,yyline,yychar, yytext());}
"do"         {return new Symbol(sym.doo,yyline,yychar, yytext());}
"switch"     {return new Symbol(sym.switchh,yyline,yychar, yytext());}
"case"       {return new Symbol(sym.casee,yyline,yychar, yytext());}
"default"    {return new Symbol(sym.defaultt,yyline,yychar, yytext());}
"break"      {return new Symbol(sym.breakk,yyline,yychar, yytext());}
"require"    {return new Symbol(sym.requiree,yyline,yychar, yytext());}


"{"             {return new Symbol(sym.llaveabierta,yyline,yychar, yytext());}
"}"             {return new Symbol(sym.llavecerrada,yyline,yychar, yytext());}
"("             {return new Symbol(sym.parizq,yyline,yychar, yytext());} 
")"             {return new Symbol(sym.parder,yyline,yychar, yytext());}
"="             {return new Symbol(sym.igual,yyline,yychar, yytext());}
"=="            {return new Symbol(sym.igualigual,yyline,yychar, yytext());}
"&&"            {return new Symbol(sym.and,yyline,yychar, yytext());}
"||"            {return new Symbol(sym.or,yyline,yychar, yytext());}
">"             {return new Symbol(sym.mayor,yyline,yychar, yytext());}
"<"             {return new Symbol(sym.menor,yyline,yychar, yytext());}
"%"             {return new Symbol(sym.modulo,yyline,yychar, yytext());}
"!="            {return new Symbol(sym.diferente,yyline,yychar, yytext());}
"!"              {return new Symbol(sym.not,yyline,yychar, yytext());}
">="             {return new Symbol(sym.mayorigual,yyline,yychar, yytext());}
"<="             {return new Symbol(sym.menorigual,yyline,yychar, yytext());}
";"              {return new Symbol(sym.puntoycoma,yyline,yychar, yytext());}
"-"              {return new Symbol(sym.menos,yyline,yychar, yytext());}
"+"              {return new Symbol(sym.mas,yyline,yychar, yytext());}
"*"              {return new Symbol(sym.por,yyline,yychar, yytext());}
","              {return new Symbol(sym.coma,yyline,yychar, yytext());}
"/"              {return new Symbol(sym.division,yyline,yychar, yytext());}
"**"              {return new Symbol(sym.potencia,yyline,yychar, yytext());}
":"              {return new Symbol(sym.dospuntos,yyline,yychar, yytext());}
"true"              {return new Symbol(sym.truee,yyline,yychar, yytext());}
"false"              {return new Symbol(sym.falsee,yyline,yychar, yytext());}

\n              {yychar=1;}

{BLANCOS}       {}
{cadenas}         {return new Symbol(sym.cadenas,yyline,yychar, yytext());} 
{comentariolinea} {compiproyecto1.PRINCIPAL.COMS.add(yytext());}
{COMENTARIOMULTI} {compiproyecto1.PRINCIPAL.COMM.add(yytext());}
{DD}              {return new Symbol(sym.decimal,yyline,yychar, yytext());} 
{id}              {return new Symbol (sym.id ,yyline,yychar,yytext());}  
{console}         {return new Symbol (sym.consolelog ,yyline,yychar,yytext());}  

. {
    System.out.println("Este es un error lexico: "+yytext()+", en la linea: "+yyline+", en la columna: "+yychar);
}

