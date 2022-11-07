programaDia4(Matriz, Coordenadas, MensagemDescodificada):-
    programaDia4(Matriz, Coordenadas, [], MensagemDescodificada).

programaDia4(_,[], MensagemDescodificada,MensagemDescodificada).

programaDia4(Matriz,[[X|Y]|Resto], Aux, MensagemDescodificada):-
   nth1(X, Matriz, Elemento),
   atomics_to_string(Y,Index),
   number_string(Indice,Index),
   nth1(Indice, Elemento, El),
   append(Aux, [El], NovaAux),
   programaDia4(Matriz, Resto, NovaAux, MensagemDescodificada).


