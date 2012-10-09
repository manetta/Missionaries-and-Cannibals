

goastar(Solution):-
	                in_state(IS),
	                heuristic(IS,V),
	                astar( [ V-[IS] ],Solution ).



astar( [ _ - [State|Path] | _ ], [State|Path] ):-  gl_state(State).


astar([V-[State|Path]|RestPaths],Solution):-
	                                        nl, 
                                              write('Next state :'), 
                                              write(V-State),
                                              nl,
	                                        expand(V-[State|Path],NewPaths),
	                                        append(NewPaths,RestPaths,Frontier),
	                                        keysort(Frontier,OrderedFrontier),
	                                        astar(OrderedFrontier,Solution).




			 
expand(_-[State|Path],NewPaths):-
                                         	    findall( Value-[NewState,State|Path],
			                            (
			                                     operator(State,NewState),
			                                     not(member(NewState,Path)),
			                                     heuristic(NewState,HV),
			                                     length(Path,L),
			                                     Value is L+1+HV
			                             ),
		                                     NewPaths).




heuristic(State,V):-
         		                           findall( Value, h(State,Value), AllValues),
				                     min(AllValues,V),!.



	
min([M],M):-!.
min([H|T],H):-
	min(T,M),
	H=<M.
min([H|T],M):-
	min(T,M),
	H>M.
