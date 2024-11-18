/* CSE 240 HW11 Database for family tree */
/* Completion time 10 hours */
/* @author Melissa Mandyck */
/* February 18 2024 */
/* Question 2.1 + The Remaining members of the family */
/* Facts */
male(abe).
male(rob).
male(jim).
male(mac).
male(bud).
male(ben).
male(kai).
male(roy).
male(tex).
female(joy).
female(ana).
female(kim).
female(zoe).
female(mae).
female(mia).
female(amy).
female(pam).
female(val).
father_of(abe, ana). /* abe is the father of ana */
father_of(abe, rob). /* abe is the father of ana */
father_of(abe, jim). /* abe is the father of ana */
father_of(jim, kim). /* jim is the father of kim */
father_of(jim, mac). /* jim is the father of mac */
father_of(bud, zoe). /* bud is the father of zoe */
father_of(bud, val). /* bud is the father of val */
father_of(bud, roy). /* bud is the father of roy */
father_of(bud, tex). /* bud is the father of tex */
father_of(ben, amy). /* ben is the father of amy */
father_of(ben, bud). /* ben is the father of bud */
father_of(kai, lee). /* kai is the father of lee */
mother_of(joy, rob). /* joy is the mother of rob */
mother_of(joy, jim). /* joy is the mother of rob */
mother_of(joy, ana). /* joy is the mother of rob */
mother_of(mia, kim). /* mia is the mother of kim */
mother_of(mia, mac). /* mia is the mother of mac */

/* Complete the facts given in the diagram above */
/* Rules */
/* Question 1.0 */
/* Question is_male */
is_male(X) :-
male(X);
father_of(X, _).

/* Question 2.2 is_female */
is_female(X) :-
female(X);
mother_of(X,_).


/* Question 2.3 Grandparents */
grandmother_of(X,Z) :-
parent_of(X,Y),parent_of(Y,Z),female(X).
grandfather_of(X,Z) :-
parent_of(X,Y),parent_of(Y,Z),male(X).

/* Question 2.4 sibling_of */
sibling_of(X,Y) :-
parent_of(Z,X),parent_of(Z,Y),not(X=Y).

/* Question 2.5 parent_of */
parent_of(X,Y) :-
father_of(X,Y);
mother_of(X,Y), male(X);female(X).

/* Question 2.6 descendent_of */
descendent_of(X,Y) :- parent_of(Y,Z),
descendent_of(Z,X).

