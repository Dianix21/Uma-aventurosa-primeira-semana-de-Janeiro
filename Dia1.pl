eliminaNumeros(Lista,ListaSemNumeros) :- eliminaNumeros(Lista, [], ListaSemNumeros).

eliminaNumeros([], ListaSemNumeros, ListaSemNumeros). % Base de recursao

eliminaNumeros([Cab|Resto], NovaLista, ListaSemNumeros) :- % Nada afecta Soma.
	not(number(Cab)), !, %se for letra acrescenta a novalista
        append(NovaLista,[Cab], NovoAcc),
	eliminaNumeros(Resto, NovoAcc, ListaSemNumeros).

eliminaNumeros([Cab|Resto],NovaLista, ListaSemNumeros) :- % Nada afecta Soma.
	number(Cab), !, % se for numero nao acresceta a novalista
	eliminaNumeros(Resto, NovaLista, ListaSemNumeros).


