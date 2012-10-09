%arxiki katastasi
in_state([3,3,0,0,left]).

%teliki katastasi
gl_state([0,0,3,3,right]).

/*o kwdikas poy akolouthei einai idios me ayto toy arxeioy ier_cani sto fakelo best_first*/
%telestis T1:metafora 1 ierapostolou apo aristera se dexia
operator([ML,CL,MR,CR,left],[NML,NCL,NMR,NCR,right]):-	ML > 0,			
										NML is ML-1,		
										NCL is CL,			
										NMR is MR+1,		
										NCR is CR,			
										valid(NML,NCL),
										valid(NMR,NCR).


%telestis T2:metafora 1 kanivaloy apo aristera se dexia
operator([ML,CL,MR,CR,left],[NML,NCL,NMR,NCR,right]):-	CL > 0,													NML is ML,			
										NCL is CL-1,		
										NMR is MR,			
										NCR is CR+1,		
										valid(NML,NCL),	
										valid(NMR,NCR).


%telestis T3:metafora 2 ierapostolwn apo aristera pws ta dexia
operator([ML,CL,MR,CR,left],[NML,NCL,NMR,NCR,right]):-	ML > 1,
										NML is ML-2,
										NCL is CL,
										NMR is MR+2,
										NCR is CR,
										valid(NML,NCL),
										valid(NMR,NCR).


%telestis T4:metafora 2 kanivalwn apo aristera pws ta dexia
operator([ML,CL,MR,CR,left],[NML,NCL,NMR,NCR,right]):-	CL > 1,
										NML is ML,
										NCL is CL-2,
										NMR is MR,
										NCR is CR+2,
										valid(NML,NCL),
										valid(NMR,NCR).


%telestis T5:metafora 1 ierapostolou kai 1 kanivalou apo aristera pws ta dexia
operator([ML,CL,MR,CR,left],[NML,NCL,NMR,NCR,right]):-	ML > 0,
										CL > 0,
										NML is ML-1,
										NCL is CL-1,
										NMR is MR+1,
										NCR is CR+1,
										valid(NML,NCL),
										valid(NMR,NCR).


%telestis T6:metafora 1 ierapostolou apo dexia pros ta aristera
operator([ML,CL,MR,CR,right],[NML,NCL,NMR,NCR,left]):-	MR > 0,
										NML is ML+1,
										NCL is CL,
										NMR is MR-1,
										NCR is CR,
										valid(NML,NCL),
										valid(NMR,NCR).


%telestis T7:metafora 1 kanivalou apo dexia pros ta aristera
operator([ML,CL,MR,CR,right],[NML,NCL,NMR,NCR,left]):-	CR > 0,
										NML is ML,
										NCL is CL+1,
										NMR is MR,
										NCR is CR-1,
										valid(NML,NCL),
										valid(NMR,NCR).



						

%telestis T8:metafora 2 ierapostolwn apo dexia pros ta aristera
operator([ML,CL,MR,CR,right],[NML,NCL,NMR,NCR,left]):-	MR > 1,
										NML is ML+2,
										NCL is CL,
										NMR is MR-2,
										NCR is CR,
										valid(NML,NCL),
										valid(NMR,NCR).



%telestis T9:metafora 2 kanivalwn apo dexia pros ta aristera
operator([ML,CL,MR,CR,right],[NML,NCL,NMR,NCR,left]):-	CR > 1,
										NML is ML,
										NCL is CL+2,
										NMR is MR,
										NCR is CR-2,
										valid(NML,NCL),
										valid(NMR,NCR).

										

%telestis T10:metafora 1 ierapostolou kai 1 kanivalou apo dexia pros ta aristera
operator([ML,CL,MR,CR,right],[NML,NCL,NMR,NCR,left]):-	CR > 0,
										MR > 0,
										NML is ML+1,
										NCL is CL+1,
										NMR is MR-1,
										NCR is CR-1,
										valid(NML,NCL),
										valid(NMR,NCR).

valid(X,Y):-	X>=Y,!.
valid(0,_).
%valid(X,Y):-	X>=Y; X = 0; X = 3.

%h heurestic pairnei 2 orismata to S opou einai i katastasi kai to V poy einai h timi tis eyretikis
h(S,V):-		evaluate(S,V).			%gia na ypologisoyme tin euretiki kaloume tin evaluate

evaluate([],0).			%i timi tis eyretikis einai 0
%i euretiki synartisi einai to athroisma tou arithmou twn kanivalwn kai twn ierapostolwn stin aristela pleura
%diladi mas deixnei posoys exoyme akoma na metaferoume
%pairnei san orisma tin trexoysa katastasi se morfi listas kai tin timi tis eyretikis
evaluate([ML,CL,_,_,_],V):-		V is ML+CL.			