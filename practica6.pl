% Hechos que representan las afirmaciones
siempreJoven(Estudiante) :- estudiante(Estudiante).

soltero(Joven) :- joven(Joven), estudia(Joven).
casado(Estudiante) :- estudiante(Estudiante), trabaja(Estudiante).
soltero(Seminario) :- estudiante(Seminario), trabaja(Seminario), institucion(Seminario, seminario).
soltero(Independiente) :- independiente(Independiente).

incompatibles(soltero, casado).

estudiante(maria).
estudiante(jorge).
estudiante(natalia).

joven(maria).
joven(jorge).
joven(natalia).

estudia(maria).
casado(jorge).

independiente(natalia).
gusta(natalia, daniel).

trabaja(jorge).
institucion(jorge, empresa).

trabaja(natalia).
institucion(natalia, empresa).

institucion(maria, universidad).
institucion(jorge, empresa).
institucion(natalia, empresa).

% Consultas de ejemplo
% ¿Quiénes son estudiantes?
?- estudiante(X).

% ¿Quiénes son jóvenes?
?- joven(X).

% ¿Quiénes son estudiantes jóvenes?
?- siempreJoven(X).

% ¿Quiénes son jóvenes solteros que estudian?
?- soltero(X), estudia(X).

% ¿Quiénes son estudiantes que trabajan y están casados?
?- casado(X), trabaja(X).

% ¿Quiénes son estudiantes del Seminario que trabajan y están solteros?
?- soltero(X), trabaja(X), institucion(X, seminario).

% ¿Quiénes son personas independientes que están solteras?
?- soltero(X), independiente(X).

% ¿Cuáles son los estados incompatibles?
?- incompatibles(X, Y).

% ¿María estudia?
?- estudia(maria).

% ¿Jorge está casado?
?- casado(jorge).

% ¿A Natalia le gusta Daniel?
?- gusta(natalia, daniel).
