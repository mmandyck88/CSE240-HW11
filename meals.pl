/* CSE 240 HW11 Lunch and Dinner meals */
/* Completion time 5 hours */
/* @author Melissa Mandyck */
/* February 18 2024 */
/* 2.1 Create facts for the entre */
% Entree Facts:
	entre(lunch,sandwhich).
	entre(dinner,spaghetti).

% Side Facts:
	side(lunch,chips).
	side(lunch,lemonade).
	side(dinner,bread).
	side(dinner,greentea).

% Ingredient Facts:
	ingredient(chips,potato).
	ingredient(chips,salt).
	ingredient(lemonade,lemon).
	ingredient(lemonade,sugar).
	ingredient(bread,egg).
	ingredient(bread,flour).
	ingredient(greentea,green).
	ingredient(greentea,tea).

/* 2.2 Create Rule meal */
meal(X,Y):-
    entre(X,Y);
    side(X,Y).

/* 2.3 Rule shoppinglist */
shoppinglist(X,Y):-
    side(X,Z),
    ingredient(Z,Y).
