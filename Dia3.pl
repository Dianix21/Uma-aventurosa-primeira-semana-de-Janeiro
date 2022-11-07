programa1Dia3(SequenciaFonte, SequenciaAlvo, ListaParesCodigo):- programa1Dia3(SequenciaFonte, SequenciaAlvo,[], ListaParesCodigo).

%Base de recursao
programa1Dia3([],[],ListaParesCodigo,ListaParesCodigo).

programa1Dia3([Cab|Resto],[Cab1|Resto1],LstAux,ListaParesCodigo):-
    append(LstAux,[par(Cab,Cab1)],NovaAux),
    programa1Dia3(Resto,Resto1,NovaAux,ListaParesCodigo).



programa2Dia3(ListaParesCodigo, MensagemCodificada, MensagemDescodificada):-
    programa2Dia3(ListaParesCodigo,MensagemCodificada,[],MensagemDescodificada).

%Base de recursao
programa2Dia3(_,[],MensagemDescodificada,MensagemDescodificada).

programa2Dia3(ListaParesCodigo, [Head|Tail], Aux, MensagemDescodificada):-
    member(par(X,Head),ListaParesCodigo),!,
    append(Aux,[X],NovaAux),
    programa2Dia3(ListaParesCodigo, Tail, NovaAux, MensagemDescodificada).

programa2Dia3(ListaParesCodigo,[Head|Tail],Aux,MensagemDescodificada):-
    not(member(par(_,Head),ListaParesCodigo)),!,
    programa2Dia3(ListaParesCodigo, Tail, Aux, MensagemDescodificada).


