%datos de estudiantes
es_estudiante(kick,[12,4.5,2.3],[11,2.2,3.2],[13,4.0,3.4]).

%Funciones
con_apro().
con_corte().
nota([X,Y,Z],A):-A is (X+Y+Z), A >= 3.
corte([X,Y,Z], Co):-Co is (X+Y+Z).
asistencia([Xs,_,_], As):- As is ((Xs*5)/15)*0.05.
taller([_,Xs,_],T):- T is Xs*0.1.
examen([_,_,Xs], E):-E is Xs*0.2.

%Manera de pedir al programa los resultados de las notas
%
%es_estudiante(A,B,C,D),
%asistencia(B, As),
%taller(B, Ta),
%examen(B, Ex),
%corte([As,Ta,Ex], Co1),
%asistencia(C, As1),
%taller(C, Ta1),
%examen(C, Ex1),
%corte([As1,Ta1,Ex1], Co2),
%asistencia(D, As2),
%taller(D, Ta2),
%examen(D, Ex2),
%corte([As2,Ta2,Ex2], Co3),
%aprobar([Co1,Co2,Co3], Ap).
