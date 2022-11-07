descodificaDia2(SequenciaFonte, SequenciaAlvo, MensagemCodificada, MensagemDescodificada) :-
    descodificaDia2(SequenciaFonte, SequenciaAlvo, MensagemCodificada,[], MensagemDescodificada).

descodificaDia2(_, _, [], MensagemDescodificada, MensagemDescodificada). % Base de recursao

descodificaDia2(SequenciaFonte, SequenciaAlvo,[Cab|Resto], NovaLista, MensagemDescodificada):-
    member(Cab,SequenciaAlvo),!,
    nth1(Index,SequenciaAlvo,Cab),
    nth1(Index, SequenciaFonte,Elemento),
    append(NovaLista,[Elemento],Aux),
    descodificaDia2(SequenciaFonte, SequenciaAlvo, Resto, Aux, MensagemDescodificada).

descodificaDia2(SequenciaFonte, SequenciaAlvo, [Cab|Resto], NovaLista, MensagemDescodificada):-
    not(member(Cab,SequenciaAlvo)), !,
    descodificaDia2(SequenciaFonte, SequenciaAlvo, Resto, NovaLista, MensagemDescodificada).



