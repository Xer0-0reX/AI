sumlista([],0).
sumlista([X|L],N) :-
	sumlista(L,C),
	N is C + X.

revertir([],[]).
revertir([X|T],N):- revertir([X|T],[],N).
revertir([],Zs,Zs).
revertir([X|Xs],Ys,Zs):- revertir(Xs,[X|Ys],Zs).

rango(I,I,[I]).
rango(I,K,[I|L]):-
	I<K,
	I1 is I + 1,
	rango(I1,K,L).


ultimo(X,Y):-
	append(Y,X,R).
	
ultimo2(X,Y,L):-
	L=[Y|X].
	
