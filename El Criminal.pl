%TALLER 1
%2. La ley dice que es un crimen para un Estadounidense vender armas a naciones
%hostiles. Corea del Sur, enemigo de Estados Unidos, tiene algunos misiles, y 
%todos sus misiles les fueron vendidos por el Coronel West, quien es Estadounidense.
%Pruebe que el Col. West es un criminal.

%hechos
ciudadano(coronel_west, usa).
es_enemigo(corea_sur, usa).
vende_armas(coronel_west, corea_sur).

% Reglas
hostil(Nacion) :- es_enemigo(Nacion, usa).

es_criminal(X) :-
    ciudadano(X, usa),
    vende_armas(X, Y),
    es_enemigo(Y, usa),
    hostil(Y).
