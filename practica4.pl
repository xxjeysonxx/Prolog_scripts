% Hechos que representan el conocimiento directo
vende("La mejor", sandias).
vende("La mejor", manzanas).
vende("La mejor", melones).

vende("La primera", cerezas).
vende("La primera", manzanas).
vende("La primera", naranjas).

vende("La especial", moras).
vende("La especial", naranjas).
vende("La especial", uvas).

gusta(camila, manzanas).
gusta(camila, cerezas).

gusta(pedro, sandias).

gusta(lucia, moras).
gusta(lucia, melones).

enBarrio("La mejor", bernal).
enBarrio("La primera", mataderos).
enBarrio("La especial", mataderos).

vive(camila, mataderos).
vive(pedro, mataderos).
vive(lucia, bernal).

% Reglas de inferencia
puedeComprarEn(Local, Persona) :- vende(Local, Fruta), gusta(Persona, Fruta).
puedeOfrecer(Local, Persona) :- vende(Local, Fruta), gusta(Persona, Fruta).
puedeIrCaminando(Local, Persona) :- enBarrio(Local, Barrio), vive(Persona, Barrio).
puedeComprarseAPie(Persona, Local) :- gusta(Persona, Fruta), vende(Local, Fruta), enBarrio(Local, Barrio), vive(Persona, Barrio).

% Consultas
% ¿Dónde puede ir Camila a comprarse fruta?
?- puedeIrCaminando(Local, camila), puedeComprarEn(Local, camila).
% Esta consulta te dará la lista de locales a los que Camila puede ir a comprarse fruta.

% ¿Dónde puede ir Pedro a comprarse fruta?
?- puedeIrCaminando(Local, pedro), puedeComprarEn(Local, pedro).
% Esta consulta te dará la lista de locales a los que Pedro puede ir a comprarse fruta.

% ¿Dónde puede ir Lucía a comprarse fruta?
?- puedeIrCaminando(Local, lucia), puedeComprarEn(Local, lucia).
% Esta consulta te dará la lista de locales a los que Lucía puede ir a comprarse fruta.

% ¿Dónde puede ir Camila a comprar frutas yendo a pie?
?- puedeComprarseAPie(camila, Local).
% Esta consulta te dará la lista de locales a los que Camila puede ir a pie a comprarse fruta.

% ¿Dónde puede ir Pedro a comprar frutas yendo a pie?
?- puedeComprarseAPie(pedro, Local).
% Esta consulta te dará la lista de locales a los que Pedro puede ir a pie a comprarse fruta.

% ¿Dónde puede ir Lucía a comprar frutas yendo a pie?
?- puedeComprarseAPie(lucia, Local).
% Esta consulta te dará la lista de locales a los que Lucía puede ir a pie a comprarse fruta.
