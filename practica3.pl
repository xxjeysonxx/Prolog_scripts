% Hechos que representan el conocimiento directo
alumno(maria).
alumno(alfredo).
alumno(tomas).
alumno(susana).
alumno(juan).

leeLibro(maria).
leeLibro(alfredo).

asisteClases(maria).
asisteClases(alfredo).

realizaEjercicios(maria).
realizaEjercicios(alfredo).

sabeTodo(tomas).

tutor(maria, juan).
tutor(juan, susana).

nota(maria, 10, 10).
nota(alfredo, 10, 7).
nota(tomas, 10, 10).
nota(susana, 5, 6).
nota(juan, 7, 9).

% Reglas de inferencia
preparado(X) :- sabeTodo(X).
preparado(X) :- asisteClases(X), realizaEjercicios(X), leeLibro(X).
preparado(X) :- tutor(Y, X), preparado(Y).

aprobado(X) :- preparado(X).

promedio10(X) :- nota(X, 10, _), asisteClases(X).
exento(X) :- promedio10(X).

% Consultas
% ¿Quiénes están preparados para el examen?
% Uso de findall para obtener una lista de alumnos preparados.
preparados(Alumnos) :- findall(X, preparado(X), Alumnos).

% ¿Quiénes aprobarán el examen?
% Uso de findall para obtener una lista de alumnos aprobados.
aprobados(Alumnos) :- findall(X, aprobado(X), Alumnos).

% ¿Quiénes están exentos?
% Uso de findall para obtener una lista de alumnos exentos.
exentos(Alumnos) :- findall(X, exento(X), Alumnos).
