%-- Code Written by Spiros Ark
%-----------------------------------------------------------------------------------------



q1(C1,C2) :-
	event(_,C1,D1),
	event(_,C2,D2),
	D1 =:=D2.
	

q2(X,Y,C) :-
	at(X,A1,B1,C),
	at(Y,A2,B2,C),
	dif(X,Y),((A1=<A2,A2=<B1) ; (A1=<B2,B2=<B1)).
	
	
q3(S) :-
	country(C1,S),country(C2,S),country(C3,S),
	(event(E1,C1,D1),event(E2,C2,D2),event(E3,C3,D3)),
	(dif(E1,E2)),(dif(E2,E3)),(dif(E1,E3)),
	(((D3-D1)=<6) , ((D2>=D1) , (D2=<D3))).

	
q4(X) :-
	at(X,A1,B1,C1),at(X,A2,B2,C2),
	country(C1,S1),country(C2,S2),
	dif(S1,S2),
	event(_,C1,D1),event(_,C2,D2),
	(((D1>=A1),(D1=<B1)),((D2>=A2),(D2=<B2))).
	

%-----------------------------------------------------------------------------------------



e(A,B) :-
	(A \= B), (A<B),
	(plane(A,B); boat(A,B); train(A,B)).
	
	e(A,B) :-
	A \= B, A<B,
	(plane(A,Y); boat(A,Y); train(A,Y)),
	e(Y,B).
	

q(A,B) :-
	(A\=B),(A<B),
	(plane(A,B); boat(A,B); train(A,B)).

q(A,B) :-
	(A\=B),(A<B),
	train(A,D),
	q(D,B).

q(A,B) :-
	(A\=B),(A<B),
	(plane(A,D); boat(A,D)),
	q2(D,B).

q2(A,B) :-
	(A\=B),(A<B),
	train(A,B).

q2(A,B) :-
	(A\=B),(A<B),
	train(A,D),
	q2(D,B).

	
	
	
	
	


p(A,B,N) :- fail.






%-----------------------------------------------------------------------------------------



thesis(A,B,C,S) :-
	{A>100};(B>100);(C>100);{A<0};(B<0);(C<0),
	S=0.
	
thesis(A,B,C,S) :-
	A=B,
	B=c,
	S is A.







%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------

%-- MHN TROPOPOIHSETE TO PARAKATW TMHMA KWDIKA 


dif(X,Y) :- X \= Y.


at(tiger,1,14,'Berlin').
at(tiger,15,15,'Hamburg').
at(tiger,16,37,'Athens').
at(tiger,38,50,'Rome').
at(wolf,1,4,'Rome').
at(wolf,5,5,'London').
at(wolf,6,7,'Rome').
at(wolf,8,8,'Rotterdam').
at(wolf,9,24,'Rome').
at(wolf,25,25,'Athens').
at(wolf,26,30,'Rome').
at(wolf,31,40,'Paris').
at(wolf,41,41,'Rome').
at(wolf,42,42,'Barcelona').
at(wolf,43,50,'Rome').
at(hawk,1,10,'Berlin').
at(hawk,11,20,'Stuttgart').
at(hawk,21,35,'Hamburg').
at(hawk,36,50,'Frankfurt').
at(shark,1,16,'Amsterdam').
at(shark,17,20,'London').
at(shark,21,29,'Paris').
at(shark,30,45,'Rome').
at(shark,43,48,'Brussels').
at(shark,49,50,'London').
at(spider,1,12,'Brussels').
at(spider,13,17,'Berlin').
at(spider,18,50,'Brussels').
at(snake,1,10,'Rome').
at(snake,11,20,'Milan').
at(snake,21,50,'Berlin').




event(e001,'Berlin',2).
event(e002,'Madrid',3).
event(e003,'London',5).
event(e004,'Rome',7).
event(e005,'Bristol',10).
event(e006,'Stuttgart',13).
event(e007,'Milan',17).
event(e008,'Amsterdam',17).
event(e009,'Rotterdam',18).
event(e010,'Hamburg',24).
event(e011,'Amsterdam',24).
event(e012,'Athens',25).
event(e013,'Groningen',25).
event(e014,'Paris',31).
event(e015,'Strasbourg',31).
event(e016,'Paris',37).
event(e017,'Brussels',40).
event(e018,'Brussels',41).
event(e019,'Barcelona',42).
event(e020,'Frankfurt',43).
event(e021,'Brussels',43).
event(e022,'London',47).



country('Amsterdam','Netherlands').
country('Athens','Greece').
country('Barcelona','Spain').
country('Berlin','Germany').
country('Bristol','United Kingdom').
country('Brussels','Belgium').
country('Frankfurt','Germany').
country('Groningen','Netherlands').
country('Hamburg','Germany').
country('London','United Kingdom').
country('Madrid','Spain').
country('Milan','Italy').
country('Paris','France').
country('Rome','Italy').
country('Rotterdam','Netherlands').
country('Strasbourg','France').
country('Stuttgart','Germany').




train(2,3).
train(3,4).
train(5,6).
train(6,7).
train(7,8).
train(7,9).
train(10,11).
train(10,13).
train(11,12).
train(12,13).
train(14,15).

boat(1,4).
boat(4,5).
boat(5,9).
boat(9,10).
boat(12,15).

plane(1,3).
plane(1,6).
plane(3,11).
plane(6,9).
plane(6,11).
plane(6,16).
plane(15,16).