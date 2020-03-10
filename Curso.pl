%datos de estudiantes
es_estudiante("kick",[12,4.5,2.3],[11,2.2,3.2],[4.0]).
es_estudiante("kick1",[12,4,3.3],[11,4.2,3.2],[5.0]).
es_estudiante("kick2",[12,3.5,4.3],[11,3.2,3.2],[3.0]).
es_estudiante("kick3",[12,2.5,5],[11,2.9,3.2],[2.0]).
es_estudiante("kick4",[12,1.5,1.2],[11,2.8,3.2],[5.0]).
es_estudiante("kick5",[12,1.5,1.2],[11,2.8,1.2],[3.0]).
es_estudiante("kick6",[12,1.5,1.2],[11,2.8,1.2],[3.0]).
es_estudiante("kick7",[12,3.5,3.2],[11,2.8,3.2],[5.0]).

%Funciones
crear_est(Nombre,Corte1,Corte2,Corte3):-
    read(Nombre),
    read(Corte1),
    read(Corte2),
    read(Corte3),
    string(Nombre).
aprobar([X,Y,Z],A):-A is (X+Y+Z), A>=3.
corte([X,Y,Z], Co):-Co is (X+Y+Z).
asistencia([Xs,_,_], As):- As is ((Xs*5)/15)*0.05.
taller([_,Xs,_],T):- T is Xs*0.1.
examen([_,_,Xs], E):-E is Xs*0.2.
examen1([Xs],X):-X is Xs*0.3.
%Sintaxis de pedir al programa los resultados de las notas
%
es_estudiante(Nombre,B,C,D),
asistencia(B, As),
taller(B, Ta),
examen(B, Ex),
corte([As,Ta,Ex], Co1),
asistencia(C, As1),
taller(C, Ta1),
examen(C, Ex1),
corte([As1,Ta1,Ex1], Co2),
examen1(D, Ex2),
aprobar([Co1,Co2,Ex2], NotaFinal).
