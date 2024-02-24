% Hechos que representan la divisibilidad
divide(2, 6).
divide(2, 12).
divide(3, 6).
divide(3, 12).

% Regla que verifica si un número es divisible por 6
divide(6, N) :- divide(2, N), divide(3, N).

% (1) ¿Existe algún múltiplo de 2?
tieneMultiploDe2 :- divide(2, _).

% (2) ¿Cuáles son los divisores de 6?
divisoresDe6(Divisores) :- findall(X, divide(X, 6), Divisores).

% (3) ¿Conocemos algún múltiplo de 6?
tieneMultiploDe6 :- divide(6, _).
s