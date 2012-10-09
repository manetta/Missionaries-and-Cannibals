/*sto arxeio ayto orizoume toys telestes metavasis toy provlimatos mas kathws kai tin eyretiki synartisi*/

%telestis T1:metafora 1 ierapostolou apo aristera se dexia
operator([ML,CL,MR,CR,left],[NML,NCL,NMR,NCR,right]):-		ML > 0,			/*elegxos oti yparxei enas ierapostolos gia na ton metaferw*/
										NML is ML-1,			/*ierapostoloi aristera*/
										NCL is CL,			/*kanivaloi aristera*/
										NMR is MR+1,			/*ierapostoloi dexia*/
										NCR is CR,			/*kanivaloi dexia*/
										valid(NML,NCL),		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin aristeri pleura h oti tha einai 0*/
										valid(NMR,NCR).		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin dexia pleura h oti tha einai 0*/
										


%telestis T2:metafora 1 kanivaloy apo aristera se dexia
operator([ML,CL,MR,CR,left],[NML,NCL,NMR,NCR,right]):-		CL > 0,			/*elegxos oti yparxei enas kanivalos gia na ton metaferw*/
										NML is ML,			/*ierapostoloi aristera*/
										NCL is CL-1,			/*kanivaloi aristera*/
										NMR is MR,			/*ierapostoloi dexia*/
										NCR is CR+1,			/*kanivaloi dexia*/
										valid(NML,NCL),		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin aristeri pleura h oti tha einai 0*/
										valid(NMR,NCR).		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin dexia pleura h oti tha einai 0*/


%telestis T3:metafora 2 ierapostolwn apo aristera pws ta dexia
operator([ML,CL,MR,CR,left],[NML,NCL,NMR,NCR,right]):-		ML > 1,			/*elegxos oti yparxoun dyo ierapostoloi gia na toys metaferw*/
										NML is ML-2,			/*ierapostoloi aristera*/
										NCL is CL,			/*kanivaloi aristera*/
										NMR is MR+2,			/*ierapostoloi dexia*/
										NCR is CR,			/*kanivaloi dexia*/
										valid(NML,NCL),		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin aristeri pleura h oti tha einai 0*/
										valid(NMR,NCR).		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin dexia pleura h oti tha einai 0*/


%telestis T4:metafora 2 kanivalwn apo aristera pws ta dexia
operator([ML,CL,MR,CR,left],[NML,NCL,NMR,NCR,right]):-		CL > 1,			/*elegxos oti yparxoun dyo kaniovaloi gia na toys metaferw*/
										NML is ML,			/*ierapostoloi aristera*/
										NCL is CL-2,			/*kanivaloi aristera*/
										NMR is MR,			/*ierapostoloi dexia*/
										NCR is CR+2,			/*kanivaloi dexia*/
										valid(NML,NCL),		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin aristeri pleura h oti tha einai 0*/
										valid(NMR,NCR).		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin dexia pleura h oti tha einai 0*/


%telestis T5:metafora 1 ierapostolou kai 1 kanivalou apo aristera pws ta dexia
operator([ML,CL,MR,CR,left],[NML,NCL,NMR,NCR,right]):-		ML > 0,			/*elegxos oti yparxei enas ierapostolos gia na ton metaferw*/
										CL > 0,			/*elegxos oti yparxei enas kanivalos gia na ton metaferw*/
										NML is ML-1,			/*ierapostoloi aristera*/
										NCL is CL-1,			/*kanivaloi aristera*/
										NMR is MR+1,			/*ierapostoloi dexia*/
										NCR is CR+1,			/*kanivaloi dexia*/
										valid(NML,NCL),		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin aristeri pleura h oti tha einai 0*/
										valid(NMR,NCR).		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin dexia pleura h oti tha einai 0*/


%telestis T6:metafora 1 ierapostolou apo dexia pros ta aristera
operator([ML,CL,MR,CR,right],[NML,NCL,NMR,NCR,left]):-		MR > 0,			/*elegxos oti yparxei enas ierapostolos gia na ton metaferw*/
										NML is ML+1,			/*ierapostoloi aristera*/
										NCL is CL,			/*kanivaloi aristera*/
										NMR is MR-1,			/*ierapostoloi dexia*/
										NCR is CR,			/*kanivaloi dexia*/
										valid(NML,NCL),		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin aristeri pleura h oti tha einai 0*/
										valid(NMR,NCR).		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin dexia pleura h oti tha einai 0*/


%telestis T7:metafora 1 kanivalou apo dexia pros ta aristera
operator([ML,CL,MR,CR,right],[NML,NCL,NMR,NCR,left]):-		CR > 0,			/*elegxos oti yparxei enas kanivalos gia na ton metaferw*/
										NML is ML,			/*ierapostoloi aristera*/
										NCL is CL+1,			/*kanivaloi aristera*/
										NMR is MR,			/*ierapostoloi dexia*/
										NCR is CR-1,			/*kanivaloi dexia*/
										valid(NML,NCL),		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin aristeri pleura h oti tha einai 0*/
										valid(NMR,NCR).		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin dexia pleura h oti tha einai 0*/

					

%telestis T8:metafora 2 ierapostolwn apo dexia pros ta aristera
operator([ML,CL,MR,CR,right],[NML,NCL,NMR,NCR,left]):-		MR > 1,			/*elegxos oti yparxoun dyo ierapostoloi gia na toys metaferw*/
										NML is ML+2,			/*ierapostoloi aristera*/
										NCL is CL,			/*kanivaloi aristera*/
										NMR is MR-2,			/*ierapostoloi dexia*/
										NCR is CR,			/*kanivaloi dexia*/
										valid(NML,NCL),		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin aristeri pleura h oti tha einai 0*/
										valid(NMR,NCR).		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin dexia pleura h oti tha einai 0*/


%telestis T9:metafora 2 kanivalwn apo dexia pros ta aristera
operator([ML,CL,MR,CR,right],[NML,NCL,NMR,NCR,left]):-		CR > 1,			/*elegxos oti yparxoun dyo kaniovaloi gia na toys metaferw*/
										NML is ML,			/*ierapostoloi aristera*/
										NCL is CL+2,			/*kanivaloi aristera*/
										NMR is MR,			/*ierapostoloi dexia*/
										NCR is CR-2,			/*kanivaloi dexia*/
										valid(NML,NCL),		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin aristeri pleura h oti tha einai 0*/
										valid(NMR,NCR).		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin dexia pleura h oti tha einai 0*/
							

%telestis T10:metafora 1 ierapostolou kai 1 kanivalou apo dexia pros ta aristera
operator([ML,CL,MR,CR,right],[NML,NCL,NMR,NCR,left]):-		CR > 0,			/*elegxos oti yparxei enas kanivalos gia na ton metaferw*/
										MR > 0,			/*elegxos oti yparxei enas ierapostolos gia na ton metaferw*/
										NML is ML+1,			/*ierapostoloi aristera*/
										NCL is CL+1,			/*kanivaloi aristera*/
										NMR is MR-1,			/*ierapostoloi dexia*/
										NCR is CR-1,			/*kanivaloi dexia*/
										valid(NML,NCL),		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin aristeri pleura h oti tha einai 0*/
										valid(NMR,NCR).		/*elegxos oti oi ierapostoloi den tha einai ligoteroi apo toys kanivalous stin dexia pleura h oti tha einai 0*/


/*Kanonas mesw toy opoiou elegxou oti toso stin aristeri oso kai stin dexia oxhi tou potamoy exoyme perissoteroys ierapostoloys apo oti kanivalous h isoys*/
valid(X,Y):-		X>=Y,!.
/*Elegxos den exoyme katholou ierapostoloys se kapoia oxthi toy potamoy opote den mas noiazei o arithmos twn kanivalwn*/
valid(0,_).

/*Mesw tou kanona h() ypologisoume tin ereutiki synartisi kathe katastasis*/
%H h pairnei 2 orismata to S opou einai i katastasi kai to V poy einai h timi tis eyretikis
h(S,V):-		evaluate(S,V).			%gia na ypologisoyme tin euretiki kaloume ton evaluate

evaluate([],0).			%i timi tis eyretikis einai 0

/*i euretiki synartisi einai to athroisma tou arithmou twn kanivalwn kai twn ierapostolwn stin aristela pleura
diladi mas deixnei posoys exoyme akoma na metaferoume
pairnei san orisma tin trexoysa katastasi se morfi listas kai tin timi tis eyretikis*/
/*Oi kanivaloi, oi ierapostoloi kai h thesi tis barkas den mas noiazei gia ayto stin thesi toys vazoume _*/
evaluate([ML,CL,_,_,_],V):-		V is ML+CL.			