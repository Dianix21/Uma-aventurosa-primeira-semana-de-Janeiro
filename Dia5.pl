encontraSuspeitos(PessoasBanco, CaracteristicasCriminoso, Suspeitos):-
    encontraSuspeitos(PessoasBanco, CaracteristicasCriminoso,[], Suspeitos).

encontraSuspeitos([],_,Suspeitos,Suspeitos).

encontraSuspeitos([pessoa(Nome,Carac)|Resto],CaracteristicasCriminoso, Aux, Suspeitos):-
    subset(CaracteristicasCriminoso, Carac),!,
    append(Aux, [Nome], NovaAux),
    encontraSuspeitos(Resto, CaracteristicasCriminoso, NovaAux, Suspeitos).

encontraSuspeitos([_|Resto],CaracteristicasCriminoso, Aux, Suspeitos):-
    encontraSuspeitos(Resto,CaracteristicasCriminoso,Aux,Suspeitos).
