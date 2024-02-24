% Conocimiento sobre las personas y las herramientas que manejan
maneja(juan, pascal).
maneja(juan, clipper).
maneja(juan, prolog).

maneja(pedro, clipper).
maneja(pedro, basic).

maneja(ofelia, basic).
maneja(ofelia, pascal).

maneja(diana, pascal).
maneja(diana, access).
maneja(diana, prolog).

% Regla para determinar con quiénes puede trabajar una persona
puedenTrabajarJuntos(Persona1, Persona2) :- maneja(Persona1, Herramienta), maneja(Persona2, Herramienta), Persona1 \= Persona2.

% Conocimiento sobre los proyectos y las herramientas necesarias
necesitaHerramientas(a, prolog).
necesitaHerramientas(b, access).
necesitaHerramientas(b, basic).
necesitaHerramientas(c, pascal).
necesitaHerramientas(d, access).

% Regla para determinar quiénes pueden trabajar en un proyecto
puedeTrabajarEnProyecto(Persona, Proyecto) :- maneja(Persona, Herramienta), necesitaHerramientas(Proyecto, Herramienta).

% Consultas
% ¿Con quiénes puede trabajar Pedro?
?- puedenTrabajarJuntos(pedro, X).
% Esto te dará la lista de personas con las que Pedro puede trabajar.

% ¿Quiénes pueden trabajar juntos?
?- puedenTrabajarJuntos(X, Y), X \= Y.
% Esto te dará la lista de todas las parejas de personas que pueden trabajar juntas.

% ¿Quiénes pueden trabajar en el proyecto A?
?- puedeTrabajarEnProyecto(X, a).
% Esto te dará la lista de personas que pueden trabajar en el proyecto A.

% ¿Quiénes pueden trabajar en el proyecto B?
?- puedeTrabajarEnProyecto(X, b).
% Esto te dará la lista de personas que pueden trabajar en el proyecto B.

% ¿Quiénes pueden trabajar en el proyecto C?
?- puedeTrabajarEnProyecto(X, c).
% Esto te dará la lista de personas que pueden trabajar en el proyecto C.

% ¿Quiénes pueden trabajar en el proyecto D?
?- puedeTrabajarEnProyecto(X, d).
% Esto te dará la lista de personas que pueden trabajar en el proyecto D.
