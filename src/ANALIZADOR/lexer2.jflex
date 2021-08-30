package ANALIZADOR;
import java_cup.runtime.Symbol; 

%%

%class lexico2
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

DD=[0-9]+("."[  |0-9]+)?
id ={L}({L}|{D}|{"_"})*
comentariolinea ="//"(.)* 
COMENTARIOMULTI = "/*" [^/] ~"*/" | "/*" "/"+ "*/"
console ="console.log"



%%

"class"      {return new Symbol(sym.class,yyline,yychar,yytext());} 
"var"        {return new Symbol(sym.var,yyline,yychar, yytext());}
"let"         {return new Symbol(sym.let,yyline,yychar, yytext());}
"const"      {return new Symbol(sym.const,yyline,yychar, yytext());}
"if"         {return new Symbol(sym.if,yyline,yychar, yytext());}
"else"       {return new Symbol(sym.else,yyline,yychar, yytext());}
"for"        {return new Symbol(sym.for,yyline,yychar, yytext());}
"while"      {return new Symbol(sym.while,yyline,yychar, yytext());}
"do"         {return new Symbol(sym.do,yyline,yychar, yytext());}
"switch"     {return new Symbol(sym.switch,yyline,yychar, yytext());}
"case"       {return new Symbol(sym.case,yyline,yychar, yytext());}
"default"    {return new Symbol(sym.default,yyline,yychar, yytext());}
"break"      {return new Symbol(sym.break,yyline,yychar, yytext());}
"require"    {return new Symbol(sym.require,yyline,yychar, yytext());}


"{"             {return new Symbol(sym.llaveabierta,yyline,yychar, yytext());}
"}"             {return new Symbol(sym.llavecerrada,yyline,yychar, yytext());}
"("             {return new Symbol(sym.parizq,yyline,yychar, yytext());} 
")"             {return new Symbol(sym.parder,yyline,yychar, yytext());}
"="             {return new Symbol(sym.igual,yyline,yychar, yytext());}
"=="             {return new Symbol(sym.igualigual,yyline,yychar, yytext());}
"&&"             {return new Symbol(sym.and,yyline,yychar, yytext());}
"||"             {return new Symbol(sym.or,yyline,yychar, yytext());}
">"              {return new Symbol(sym.mayor,yyline,yychar, yytext());}
"<"              {return new Symbol(sym.menor,yyline,yychar, yytext());}
"%"              {return new Symbol(sym.modulo,yyline,yychar, yytext());}
"!="             {return new Symbol(sym.diferente,yyline,yychar, yytext());}
"!"              {return new Symbol(sym.not,yyline,yychar, yytext());}
">="             {return new Symbol(sym.mayorigual,yyline,yychar, yytext());}
"<="             {return new Symbol(sym.menorigual,yyline,yychar, yytext());}
";"              {return new Symbol(sym.puntoycoma,yyline,yychar, yytext());}
"-"              {return new Symbol(sym.menos,yyline,yychar, yytext());}
"+"              {return new Symbol(sym.mas,yyline,yychar, yytext());}
"*"               {return new Symbol(sym.por,yyline,yychar, yytext());}


\n              {yychar=1;}

{BLANCOS}       {} 
{comentariolinea} {return new Symbol(sym.comlin,yyline,yychar, yytext());}
{COMENTARIOMULTI} {return new Symbol(sym.commul,yyline,yychar, yytext());}
{DD}            {return new Symbol(sym.decimal,yyline,yychar, yytext());} 
{id}            {return new Symbol (sym.id ,yyline,yychar,yytext());}  
{console}        {return new Symbol (sym.consolelog ,yyline,yychar,yytext());}  

. {
    System.out.println("Este es un error lexico: "+yytext()+", en la linea: "+yyline+", en la columna: "+yychar);
}

