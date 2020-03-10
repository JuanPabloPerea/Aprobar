enunciadoFacil("es el abuelo de Maria").
enunciadoFacil("es la Mama de Maria").
enunciadoFacil("son la segunda generacion de los descendientes de Jose").
enunciadoFacil("con quien se caso jose").
es_padre(juan, maria).
es_padre(pedro, muriel).
es_padre(ana, maria).
es_padre(jose, juan).
es_padre(jose, pedro).
es_padre(pedro, karen).
es_padre(pablo,sara).
es_padre(camila,sara).
es_padre(carmen,juan).
es_padre(ruth,pedro).
es_hermano(A,B):- es_padre(C,B),es_padre(C,A), A\==B. 
es_hijo(A,B):- es_padre(B,A).
es_primo(A,B):- es_padre(C,B), es_padre(D,A), es_hermano(C,D). 
es_abuelo(A,B):- es_padre(A,C), es_padre(C,B).
es_tio(A,B):- es_hermano(A,C), es_padre(C,B).


