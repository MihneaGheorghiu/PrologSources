drapel(X, Y, Z):-member(X,[alb,galben,verde,rosu,albastru]), 
		 member(Y,[galben,verde]),
		 member(Z,[alb,galben,verde,rosu,albastru]),
		 X \= Y, Y \= Z, X \= Z.
