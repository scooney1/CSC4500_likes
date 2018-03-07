%% Demo coming from http://clwww.essex.ac.uk/course/LG519/2-facts/index_1
%% You can also run this demo online at
%% http://swish.swi-prolog.org/?code=https://github.com/SWI-Prolog/swipl-devel/raw/master/demo/likes.pl&q=likes(sam,Food).

/** <examples>
?- likes(sam,dahl).
?- likes(sam,chop_suey).
?- likes(sam,pizza).
?- likes(sam,chips).
?- likes(sam,curry).
*/

likes(brian,Food) :-
    indian(Food),
    spicy(Food).
likes(brian,Food) :-
    chinese(Food),
    noodles(Food).
likes(brian,Food) :-
    italian(Food).
likes(brian,cookies).

likes(sam,Food) :-
    indian(Food),
    mild(Food).
likes(sam,Food) :-
    chinese(Food).
likes(sam,Food) :-
    italian(Food).
likes(sam,chips).

hates(sam,Food) :-
    spicy(Food).
hates(sam,Food) :-
    mexican(Food).

hates(brian,Food) :-
    indian(Food),
    mild(Food).
hates(brian,Food) :-
    mexican(Food).

cooks(john,Food) :-
    mexican(Food).
cooks(john,Food) :-
    indian(Food),
    mild(Food).
cooks(john,Food) :-
    chinese(Food).

indian(rista).
indian(curry).
indian(dahl).
indian(tandoori).
indian(kurma).
indian(vindaloo).

mild(dahl).
mild(tandoori).
mild(kurma).

spicy(curry).
spicy(rista).
spicy(vindaloo).

chinese(chow_mein).
chinese(chop_suey).
chinese(sweet_and_sour).
chinese(lo_mein).
chinese(fried_rice).

noodles(chow_mein).
noodles(chop_suey).
noodles(lo_mein).

italian(pizza).
italian(spaghetti).
italian(meatballs).

mexican(burrito).
mexican(taco).
mexican(guacamole).

