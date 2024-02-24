% Hechos que representan el conocimiento directo
padece(pedro, gripe).
padece(pedro, hepatitis).
padece(juan, hepatitis).
padece(maria, gripe).
padece(carlos, intoxicacion).

sintoma(gripe, fiebre).
sintoma(hepatitis, cansancio).
sintoma(intoxicacion, diarrea).
sintoma(gripe, cansancio).

suprime(aspirina, fiebre).
suprime(lomotil, diarrea).

% Reglas de inferencia
alivia(Farmaco, Enfermedad) :- sintoma(Enfermedad, Sintoma), suprime(Farmaco, Sintoma).
deberiaTomar(Persona, Farmaco) :- padece(Persona, Enfermedad), alivia(Farmaco, Enfermedad).

% Consultas
% ¿Qué enfermedades padece Pedro?
?- padece(pedro, Enfermedad).

% ¿Cuáles son los síntomas de la gripe?
?- sintoma(gripe, Sintoma).

% ¿Qué fármacos alivian la fiebre?
?- alivia(Farmaco, fiebre).

% ¿Debería Pedro tomar algún fármaco?
?- deberiaTomar(pedro, Farmaco).
