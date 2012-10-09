/*Orizoyme san dynamic ta in_state kai gl_state giati emfanizontai mesa stin assert/1*/
:-dynamic in_state/5.
:-dynamic gl_state/5.


/*Minimata poy emfanizontai sto xristi kata tin ektelesi*/
:-nl,
  write('O xristis mporei na dilwsei monos tou tin arxiki katastasi,'),nl,nl,
  write('allazontas akoma kai to plithos twn ierapostolwn kai twn kanivalwn!!'),nl,nl,
  write('Thewroume oti se kathe oxthi mporoyme na exoyme mexri 100 ierapostoloys kai kanivaloys'),nl,nl,
  write('Kalese tin start(ML,CL,MR,CR,side)'),nl,nl,
  write('opou ML:Ierapostoloi aristera'),nl,nl,
  write('CL:kanivaloi aristera'),nl,nl,
  write('MR:kanivaloi dexia'),nl,nl,
  write('CR:kanivaloi dexia'),nl,nl,
  write('side:pleura right h left'),nl,nl.


/*Kanonas mesw toy opoiou orizoume tin arxiki kai tin teliki katastasi me vasi tin eisodo poy edwse o xristis*/
/*kanontas kai toys analogous elegxoys*/
start(ML,CL,MR,CR,Side):-		mnuml(ML),!,	/*elegxos gia ierapostoloys aristera*/
						cnuml(CL),!,	/*elegxos gia kanivalous aristera*/
						mnumr(MR),!,	/*elegxos gia ierapostoloys dexia*/
						cnumr(CR),!,	/*elegxos gia kanivalous dexia*/
						side(Side),!,	/*elegxos gia tin oxthi*/
						A is ML+MR,		/*plithos ierapostolwn kai stis dyo oxthes*/
						B is CL+CR,		/*plithos kanivalwn kai stis dyo oxthes*/
						cs(A,B),!,	/*elegxos gia to an exoume perissoteroys ierapostoloys apo oti kanivaloys synolika*/
						cl(ML,CL),!,	/*elegxos oti oi ierapostoloi einai perissoteroi h isoi me toys kanivaloys stin aristeri oxthi*/
						cr(MR,CR),!,	/*elegxos oti oi ierapostoloi einai perissoteroi h isoi me toys kanivaloys stin dexia oxthi*/
						assert(in_state([ML,CL,MR,CR,Side])),	/*prosthetei tin arxiki katastasi sto programma*/
						assert(gl_state([0,0,A,B,right])),		/*prosthetei tin teliki katastasi sto programma*/
						gobfs(_). 		/*ekteloyme ton algorithmo best first me vasi tis parapanw arxiki kai teliki katastasi*/


/*elegxos gia to an mas exei dothei swstos arithmos gia toys ierapostoloys stin aristeri oxthi*/
/*Thewroume oti se kathe oxthi mporoume na exoyme to poly 100 ierapostoloys*/
mnuml(X):-		X = 0;
			(X > 0, X < 101);
			(write('Oi ierapostoloi stin aristeri oxthi den exoyn parei swsti timi'),nl,nl, fail).


/*elegxos gia to an mas exei dothei swstos arithmos gia toys kanivalous stin aristeri oxthi*/
/*Thewroume oti se kathe oxthi mporoume na exoyme to poly 100 kanivaloys*/
cnuml(X):-		X = 0;
			(X > 0, X < 101);
			(write('Oi kanivaloi stin aristeri oxthi den exoyn parei swsti timi'),nl,nl, fail).


/*elegxos gia to an mas exei dothei swstos arithmos gia toys ierapostoloys stin dexia oxthi*/
/*Thewroume oti se kathe oxthi mporoume na exoyme to poly 100 ierapostoloys*/
mnumr(X):-		X = 0;
			(X > 0, X < 101);
			(write('Oi ierapostoloi stin dexia oxthi den exoyn parei swsti timi'),nl,nl, fail).


/*elegxos gia to an mas exei dothei swstos arithmos gia toys kanivalous stin dexia oxthi*/
/*Thewroume oti se kathe oxthi mporoume na exoyme to poly 100 kanivaloys*/
cnumr(X):-		X = 0;
			(X > 0, X < 101);
			(write('Oi kanivaloi stin dexia oxthi den exoyn parei swsti timi'),nl,nl, fail).


/*elegxos gia to an mas exei swsti oxthi.*/
/*Thewroyme oti swsti oxthi einai to right h to left otidipote allo to theroyme lanthasmeno kai emfanizetai analogo minima lathoys*/
side(X):-		X = right; 
			X = left; 
			write('H pleura pou dwsate den einai apodekti'),nl,nl,fail.	
				

/*Me ton kanona check_l elegxoyme oti stin aristeri oxthi toy potamou exoume perissoteroys ierapostoloys apo oti kanivalous*/
/*Epipleon elegxoume an to plithos twn ierapostolwn einai mideniko afoy se ayti thn periptwsi den mas noiazei to plithos twn kanivalwn*/
/*An den isxyei kapoio apo ta parapanw ektypwnoume minima lathoys kai termatizei to programma*/
cl(0,_).	

cl(X,Y):-		X>=Y; 
			write('oi ierapostoloi einai pio ligoi apo toys kanivalouss sti aristeri oxthi.Mi epitreptei katastasi'),nl,nl,fail.		%plithos ierapostolwn pio megalo apo plithos kanivalwn



/*Me ton kanona check_r elegxoyme oti stin dexia oxthi toy potamou exoume perissoteroys ierapostoloys apo oti kanivalous*/
/*Epipleon elegxoume an to plithos twn ierapostolwn einai mideniko afoy se ayti thn periptwsi den mas noiazei to plithos twn kanivalwn*/
/*An den isxyei kapoio apo ta parapanw ektypwnoume minima lathoys kai termatizei to programma*/
cr(0,_).

cr(X,Y):-		X>=Y; 
			write('oi ierapostoloi einai pio ligoi apo toys kanivalouss sti dexia oxthi.Mi epitreptei katastasi'),nl,nl,fail.		%plithos ierapostolwn pio megalo apo plithos kanivalwn


/*Kanonas mesw toy opoioy elegxoyme oti exoyme synolika perissoteroys ierapostoloys apo kanivaloys*/
/*h oti exoume to idio plithos kanivalwn kai ierapostolwn kai stis dyo oxthes*/
/*giati alliws to problima den mporei na lythei*/
cs(X,Y):-		X>=Y;
			write('Oi ierapostoloi einai pio ligoi se athroisma apo toys kanivaloys.Mi epitreptei katastasi'),nl,nl,fail.


/*Kanonas mesw toy opoioy vriskw tin timi tis eyretikis synartisis gia tin arxiki katastasi kai ektelw ton best first*/
gobfs(Solution):-		in_state(IS),			/*orizw tin arxiki katastasi san IS*/
				heuristic(IS,V),			/*vriskw tin timi tis eyretikis synartisis gia tin arxiki katastasi*/
				bfs([V-[IS]],Solution).		/*kalw ti synartisi bfs etsi wste na ektelestei o algorithmos best first*/


/*Kanonas mesw tou opoiou sygkrinoume tin kathe fora trexoysa katastasi me tin teliki katastasi*/
/*An i trexoysa katastasi einai idia me tin teliki katastasi afairw tin arxiki katastasi apo to programma*/
/*gia na mporei o xristis na to trexei me mia nea arxiki katastasi*/
bfs([_-[State|Path]|_],[State|Path]):-	gl_state(State),	
							retract(in_state(_)).

/*Kanonas mesw tou opoiou ekteleitai o algorithmos best first*/
bfs([V-[State|Path]|RestPaths],Solution):-	nl,	
								write('Efarmogi toy best first:'),
								write(V-State),
								nl,
/*me ton kanona expand vriskoyme tis katastaseis paidia pou den anikoun sto kleisto synolo*/
								expand(V-[State|Path],NewPaths),	
/*eisagoyme tis parapanw katastaseis sto metwpo anazitisis	*/
								append(NewPaths,RestPaths,Frontier),
/*taxinomoume to metwpo anazitisis me vasi tin timi tis eyretikis synartisis*/
/*to taxinomimeno metwpo anazitisis einai stin OrFrontier*/
								keysort(Frontier,OrFrontier),
/*ekteloume pali ston best first gia tin katastasi poy einai prwti sto metwpo anazitisis*/
/*diladi tin katastasi poy exei tin mikroteri timi stin eyretiki synartisi*/
								bfs(OrFrontier,Solution).

/*Kanonas pou ekteleitai otan h trexoysa katastasi den einai idia me tin teliki katastasi*/
/*alla kai to metwpo anazitisis einai adeio opote den mporoyme na ektelesoume ton best first kai na vroyme nea paidia */
/*Oysiastika me ton kanona ayton afairoyme tin arxiki katastasi gia na mporei o xristis na xanatrexei to programma me nea arxiki katastasi*/
bfs([_-[State|Path]|_],[State|Path]):-	write('Den mporei na vrethei lisi toy provlimatos'),
							retract(in_state(_)).
	


/*me ton parakatw kanona vriskoyme oles tis katastaseis paidia tis trexousas katastasis*/
/*poy den anikoun sto kleisto synolo.*/
/*Gia kathe mia apo tis katastaseis aytes ypologizoume tin timi tis eyretiki synartisi*/
/*Tis katastaseis aytes tis apothikeyoyme stin NewPaths*/
expand(_-[State|Path],NewPaths):-	findall( Value-[NewState,State|Path],	
										(operator(State,NewState),
										 not(member(NewState,Path)),
										 heuristic(NewState,HV),
										Value is HV),
										NewPaths).

/*Kanonas mesw toy opoioy ypologizoyme tin eyretiki synartisi gia kathe katastasi*/
/*Stin synexeia me vasi tin eyretiki synartisi vriskoume tin katastasi me tin mikroteri eyretiki timi*/
heuristic(State,V):-		findall(Value,
					h(State,Value),
					AllValues),
					min(AllValues,V),!.


/*Kanonas pou mas dinei tin katastasi me tin mikroteri eyretiki timi*/	
min([M],M):-!.
min([H|T],H):-
	min(T,M),
	H=<M.
min([H|T],M):-
	min(T,M),
	H>M.
