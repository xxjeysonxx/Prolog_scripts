% Hechos que representan el conocimiento directo
rufian(bertoldo).
rufian(bartolo).
noble(romeo).
noble(bertoldo).
plebeyo(bartolo).
dama(gertrudis).
dama(julieta).
hermosa(julieta).

% Reglas de inferencia
desea(Plebeyo, Dama) :- plebeyo(Plebeyo), dama(Dama).
desea(Noble, Dama) :- noble(Noble), dama(Dama), hermosa(Dama).

raptan(Rufian, Persona) :- rufian(Rufian), desea(Rufian, Persona).

% Consultas
% ¿Quiénes son los rufianes?
?- rufian(X).
% Esto te dará una lista de rufianes.

% ¿Quiénes son los nobles?
?- noble(X).
% Esto te dará una lista de nobles.

% ¿Quiénes son los plebeyos?
?- plebeyo(X).
% Esto te dará una lista de plebeyos.

% ¿Quiénes son las damas?
?- dama(X).
% Esto te dará una lista de damas.

% ¿Quiénes son las damas hermosas?
?- hermosa(X), dama(X).
% Esto te dará una lista de damas hermosas.

% ¿Quiénes desean a las damas?
?- desea(X, Y).
% Esto te dará una lista de personas que desean a las damas.

% ¿Quiénes raptan a personas?
?- raptan(X, Y).
% Esto te dará una lista de personas que raptan a otras según sus deseos.
