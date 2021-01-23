hombre(clyde).
hombre(alCapone).
hombre(osama).
hombre(marlon).
hombre(romeo).
hombre(bob).
hombre(pierre).
hombre(johnK).
hombre(obama).
hombre(johnL).
hombre(diego).
hombre(hernan).
hombre(radio).
hombre(marcoA).
hombre(jose).
hombre(adan).
hombre(guason).
hombre(freddyK).
hombre(voldemort).
hombre(darth).
hombre(homero).
hombre(otelo).
hombre(bauhaus).
hombre(y).
hombre(popocatepelt).
hombre(martin).
hombre(uranio).
hombre(sauron).
hombre(agSmith).
hombre(hades).
hombre(pluton).
hombre(duchamp).
hombre(agamenon).
hombre(breton).
hombre(pollock).
hombre(hefesto).
hombre(vulcano).
hombre(kandinsky).
hombre(morfeo).
hombre(patroclo).
hombre(harry).

mujer(polonia).
mujer(eva).
mujer(maria).
mujer(monica).
mujer(jacqueline).
mujer(yoko).
mujer(jude).
mujer(penny).
mujer(frida).
mujer(malintzin).
mujer(marie).
mujer(cleopatra).
mujer(lizT).
mujer(bonnie).
mujer(julieta).
mujer(alice).
mujer(draSmith).
mujer(atenea).
mujer(dada).
mujer(reggae).
mujer(x).
mujer(z).
mujer(marilyn).
mujer(michelle).
mujer(malinche).
mujer(judea).
mujer(andromaca).
mujer(lolita).
mujer(alemania).
mujer(afrodita).
mujer(venus).
mujer(hiphop).

% --- Primera Generacion ---

hijo(alCapone,clyde).
hijo(alCapone,bonnie).
hijo(osama,clyde).
hijo(osama,bonnie).

hijo(alice,romeo).
hijo(alice,julieta).
hijo(bob,romeo).
hijo(bob,julieta).

hijo(obama,johnK).
hijo(obama,jacqueline).
hijo(monica,johnK).
hijo(monica,jacqueline).

hijo(jude,johnL).
hijo(jude,yoko).
hijo(penny,johnL).
hijo(penny,yoko).

hijo(hernan,diego).
hijo(hernan,frida).
hijo(malintzin,diego).
hijo(malintzin,frida).

hijo(radio,pierre).
hijo(radio,marie).
hijo(polonia,pierre).
hijo(polonia,marie).

hijo(maria,adan).
hijo(maria,eva).
hijo(jose,adan).
hijo(jose,eva).

hijo(lizT,marcoA).
hijo(lizT,cleopatra).
hijo(marlon,marcoA).
hijo(marlon,cleopatra).

% --- Segunda Generación ---

hijo(voldemort,alCapone).
hijo(voldemort,alice).
hijo(darth,alCapone).
hijo(darth,alice).
hijo(draSmith,alCapone).
hijo(draSmith,alice).

hijo(guason,osama).
hijo(guason,lizT).
hijo(freddyK,osama).
hijo(freddyK,lizT).

hijo(atenea,bob).
hijo(atenea,maria).
hijo(homero,bob).
hijo(homero,maria).
hijo(otelo,bob).
hijo(otelo,maria).

hijo(bauhaus,obama).
hijo(bauhaus,penny).
hijo(reggae,obama).
hijo(reggae,penny).
hijo(dada,obama).
hijo(dada,penny).

hijo(x,monica).
hijo(x,hernan).
hijo(y,monica).
hijo(y,hernan).
hijo(z,monica).
hijo(z,hernan).

hijo(marilyn,jude).
hijo(marilyn,marlon).
hijo(michelle,jude).
hijo(michelle,marlon).

hijo(popocatepelt,malintzin).
hijo(popocatepelt,radio).
hijo(malinche,malintzin).
hijo(malinche,radio).
hijo(martin,malintzin).
hijo(martin,radio).

hijo(judea,polonia).
hijo(judea,jose).
hijo(uranio,polonia).
hijo(uranio,jose).

% --- Tercera Generacion ---

hijo(sauron,draSmith).
hijo(sauron,guason).
hijo(agSmith,draSmith).
hijo(agSmith,guason).

hijo(duchamp,dada).
hijo(duchamp,homero).
hijo(agamenon,dada).
hijo(agamenon,homero).
hijo(andromaca,dada).
hijo(andromaca,homero).
hijo(breton,dada).
hijo(breton,homero).

hijo(hefesto,bauhaus).
hijo(hefesto,atenea).
hijo(vulcano,bauhaus).
hijo(vulcano,atenea).
hijo(alemania,bauhaus).
hijo(alemania,atenea).
hijo(kandinsky,bauhaus).
hijo(kandinsky,atenea).
hijo(venus,bauhaus).
hijo(venus,atenea).
hijo(afrodita,bauhaus).
hijo(afrodita,atenea).

hijo(pollock,monica).
hijo(pollock,otelo).
hijo(lolita,monica).
hijo(lolita,otelo).

hijo(hades,malinche).
hijo(hades,uranio).
hijo(pluton,malinche).
hijo(pluton,uranio).

% --- Cuarta generacion ---

hijo(morfeo,agSmith).
hijo(morfeo,andromaca).
hijo(patroclo,agSmith).
hijo(patroclo,andromaca).

hijo(harry,voldemort).
hijo(harry,reggae).
hijo(hiphop,voldemort).
hijo(hiphop,reggae).


madre(X,Y):-mujer(X),hijo(Y,X).
padre(A,B):-hombre(A),hijo(B,A).
hermana(X,Y):-mujer(X),hijo(Y,W),hijo(X,W).
hermano(X,Y):-hombre(X),hijo(Y,W),hijo(X,W).
abuelo(X,Y):-hombre(X),hijo(Z,X),hijo(Y,Z).
abuela(X,Y):-mujer(X),hijo(Z,X),hijo(Y,Z).
%Tanto suegroH como suegraH son usados para el esposo de la relacion, para asi evitar que por alguna situacion nos muestre como suegro al madre del esposo
%y por el otro lado, suegroM y suegraM son para la esposa.
suegraH(C,D):-mujer(C),hijo(Z,D),madre(E,Z),madre(C,E).
suegroH(C,D):-hombre(C),hijo(Z,D),madre(E,Z),padre(C,E).
suegraM(C,D):-mujer(C),hijo(Z,D),padre(E,Z),madre(C,E).
suegroM(C,D):-hombre(C),hijo(Z,D),padre(E,Z),padre(C,E).
nuera(X,Y):-mujer(X),hijo(Z,Y),hijo(A,Z),madre(X,A).
tio(X,Y):-hombre(X),hijo(Y,Z),hermano(X,Z).
primo(X,Y):-hombre(X),hijo(Y,Z),hijo(Z,A),hijo(B,A),hijo(X,B).
