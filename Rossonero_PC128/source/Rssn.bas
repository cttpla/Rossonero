'
' Once Upon A Sprite '19
'
' Rossonero
' v.1.0.0
'
' Coded by Paolo Cattaneo
' just as a demo game for
' PC128 Olivetti Prodest
'
' Draft version -
' Feel free to edit as you want
'
' Don't look at the code unless
' you want to spoil the game :p
'
'
0005 IF DID=0 THEN DID=1:GOSUB 40000
'
0010 POKE &H2019,PEEK(&H2019) OR 8  		  'NO BUZZER 'POKE &H2076,0:keyb delay
0100 CPP=7:CFN=0:CLS:SCREEN CPP,CFN,CFN ' colore ppiano e fondo
0105 QSTURA=1:CORSIC=2:APPART=3:CCCIR=4:BARBAB=5
0110 HOWMCLK=23:HOWMIND=21:DIM CLCX(HOWMCLK):DIM CLCY(HOWMCLK):DIM CLK(HOWMCLK):DIM SCP(HOWMIND):DIM SSPRITE%(10)
0115 LUOG$(QSTURA)="Questura":LUOG$(CORSIC)="Via Corsico (luogo delitto)":LUOG$(APPART)="Appartamento vittima"
0116 LUOG$(CCCIR)="Circolo Togliatti":LUOG$(BARBAB)="Bar Babila"
' RENEW	
0120 FOR I=1 TO HOWMIND:SCP(I)=0:NEXT
0130 FOR I=1 TO 5:LUOGHI(I)=0:NEXT:LUOGHI(1)=QSTURA:LUOGO=1:LUOGO=1:THISLUOG=0
0200 CLCX(0)=41:CLCY(0)=44:CLK(0)=1 'mano dx
0205 CLCX(1)=76:CLCY(1)=43:CLK(1)=2 'tasca giubbotto
0210 CLCX(2)=49:CLCY(2)=82:CLK(2)=3 'sangue
0220 CLCX(3)=92:CLCY(3)=32:CLK(3)=4 'tasca jeans davanti
0230 CLCX(4)=96:CLCY(4)=24:CLK(4)=5 'tasca jeans dietro
0240 CLCX(5)=125:CLCY(5)=85:CLK(5)=6 'scarpe
0250 CLCX(6)=49:CLCY(6)=66:CLK(6)=7 'mano sx
0260 CLCX(7)=55:CLCY(7)=32:CLK(7)=8 'capello biondo
0270 CLCX(8)=39:CLCY(8)=64:CLK(8)=9 'cicatrice
0280 CLCX(9)=68:CLCY(9)=100:CLK(9)=3 'sangue
0290 CLCX(10)=58:CLCY(10)=71:CLK(10)=3 'sangue
0300 CLCX(11)=113:CLCY(11)=93:CLK(11)=6 'scarpe
0310 CLCX(12)=125:CLCY(12)=92:CLK(12)=6 'scarpe
0320 CLCX(13)=55:CLCY(13)=94:CLK(13)=3 'sangue
0330 CLCX(14)=70:CLCY(14)=100:CLK(14)=3 'sangue
'
' APPART:
'
0340 CLCX(15)=36:CLCY(15)=43:CLK(15)=10 'tessera partito
0350 CLCX(16)=23:CLCY(16)=29:CLK(16)=11 'foto del che
0360 CLCX(17)=53:CLCY(17)=62:CLK(17)=12 'telefono, pennarello
0370 CLCX(18)=84:CLCY(18)=17:CLK(18)=13 'bandiera partito
0380 CLCX(19)=130:CLCY(19)=22:CLK(19)=14 'cassaforte
0390 CLCX(20)=122:CLCY(20)=64:CLK(20)=15 'foto tipa
0400 CLCX(21)=86:CLCY(21)=68:CLK(21)=16 'volantini+fumo
0410 CLCX(22)=131:CLCY(22)=71:CLK(22)=17 'anello
0420 CLCX(23)=104:CLCY(23)=67:CLK(23)=18 'bandiera milan

' 19 = motorino nero che faceva fumo
'
'
' SCREENS
0460 GRNAVIGL=0:GRCORPO=1:GRIMBARC=2:GRAPART=3:GRCCCIR=4:GRBARBAB=5:GRQUESTR=6:GRRITA=7:GRBRANDO=8:GRMILAN=9
0470 OFST=0:FOR I=0 TO 4: SSPRITE%(I)=&H6000+OFST:OFST=OFST+2002:NEXT 'bank 5
0480 OFST=0:FOR I=5 TO 9: SSPRITE%(I)=&H6000+OFST:OFST=OFST+2002:NEXT 'bank 4
0490 TSTRIT=0:MRSCD=0:BBB=0:DEJABAR=0:DEJACIR=0:INVCCIR=0
'
'
'
' ... Basic128 Logic starts here ...
'
' X% IS WHERE WE WANT TO DRAW THE SPRITE WITH USR2
'
0550 X%=0  'screen position to draw, in HEX
0570 ADR = VARPTR(X%) ' get LSB address
0580 POKE &H42BE, ADR@256 ' integer division to get MSB of address
0590 POKE &H42BF, ADR AND 255 ' bit mask to get LSB of address
'
1000 CLS:LOCATE 0,0,0
'
3050 BANK 5:SS%=USR2(SSPRITE%(GRNAVIGL)):BANK 1              'draw sprite at X% 
3060 BOXF(161,0)-(319,100),-1:LOCATE 22,1:PRINT"Gio 5 Feb, 1976":LOCATE 22,3:PRINT"Via Corsico, ":LOCATE 22,4:PRINT"Navigli."
3070 CONSOLE 13,24:COLOR CPP
3100 LOCATE 0,13:PRINT"Sono le 5.43 di un dannato giovedi'":PRINT"mattina quando ricevo la chiamata":PRINT"del questore."
3110 PRINT"Arrivo verso le 6.03 e i ragazzi sono":PRINT"già sul ponte che parlottano davanti"
3120 PRINT"al cadavere.":PRINT"Uomo sulla ventina, 4 coltellate":PRINT"al torace, di cui una che trafigge":PRINT"il cuore.":PRINT
3400 GOSUB 30000
3420 PRINT:PRINT"Io sono stanco e nervoso. E' stata una":PRINT"delle mie solite nottatacce a base di":PRINT"insonnia, rum e N80 senza filtro."
3430 PRINT:PRINT"Moretti mi apre la pagina centrale del":PRINT"Privato che sta leggendo: 'guarda che":PRINT"roba questa qui.'":PRINT
3450 GOSUB 30000
3470 PRINT:PRINT"Chiedo a Costa chi ha dato l'allarme.":PRINT"Mi presenta il povero metronotte che":PRINT"ha visto il corpo passando di qua:"
3480 PRINT:PRINT"- 'L'ho trovato cosi', non saprei da":PRINT"   quanto sia successo. Ho chiamato ":PRINT"   dalla cabina di via Vigevano.'":PRINT
3490 GOSUB 30000
3510 PRINT:PRINT"- 'Ti abbiamo aspettato', mi dicono i":PRINT"   ragazzi, 'tra poco lo portano":PRINT"   via, meglio dare un'occhiata.'":PRINT
3530 GOSUB 30000
'
3615 SND$="A0L4O3LAO5LA":BOXF(161,0)-(319,100),-1
3620 BANK 5:SS%=USR2(SSPRITE%(GRCORPO)):BANK 1
3630 MINCLK=0:MAXCLK=14

' ISPEZIONE CADAVERE
10000 GOSUB 20000
10110 INMOUSE C,L:IF C>160 THEN C=160
10115 IF L>100 THEN L=100
10120 TURTLE1,C-10,L-10
10130 K$=INKEY$:IF K$=CHR$(32) THEN GOSUB 18000 ELSE IF K$=CHR$(13) THEN GOTO 11000
10150 GOTO 10110

' Fine esamina corpo
11000 SHOW0:PLAY SND$:PRINT:PRINT"Costa e Moretti mi avvisano:":PRINT:PRINT"- 'Sei a posto cosi'? I portantini":PRINT"   devono portarlo via, non":
11010 PRINT"   potrai più esaminarlo.'":PRINT:COLOR3:PRINT"[INVIO = OK, altro = NO]":COLOR CPP
11020 K$=INKEY$:IF K$="" THEN 11020 ELSE IF K$=CHR$(13) THEN 11030 ELSE PRINT:PRINT "- 'Ti pareva ...'":SHOW1:PRINT:GOTO 10000
11030 PLAY SND$:PRINT:PRINT"Do' l'ok e il corpo viene portato via."
11040 BOXF(161,0)-(319,100),-1:BANK 5:SS%=USR2(SSPRITE%(GRNAVIGL)):BANK 1

' NAVIGLI 2
11050 LOCATE 22,1:PRINT"Gio 5 Feb, 1976":LOCATE 22,3:PRINT"Via Corsico, ":LOCATE 22,4:PRINT"Navigli."
11060 LOCATE 0,23:PRINT:PRINT"Cominciamo a fare qualche ipotesi."
11070 PRINT "L'autopsia ci dirà di più, ma il":PRINT"decesso dovrebbe essere avvenuto":PRINT"verso le 5:20, e anche se di questi"
11080 PRINT "tempi le strade sono pericolose,":PRINT"non è comunque facile essere":PRINT"rapinati a quell'ora.":PRINT
11085 GOSUB 30000
11090 PRINT:PRINT"E men che meno è facile che"
11100 PRINT "un rapinatore arrivi a dare ben":PRINT"4 coltellate di tale violenza."
11110 PRINT "- 'Ecco, mi fa strano soprattutto il":PRINT"   modus', osserva Costa, 'non ci"
11120 PRINT "   sono segni di colluttazione, il":PRINT"   colpevole ha agito in velocità.'"
11130 PRINT "- 'Praticamente un'esecuzione.', gli fa":PRINT"   eco Moretti. Concordo.":PRINT    
11140 GOSUB 30000
'
11200 IF SCP(7)=0 THEN 11300 ' se trovato tatoo
11205 PRINT:PRINT "Anche se lo scongiuriamo con":PRINT"tutte le nostre forze, il sospetto":PRINT"di essere di fronte ad un omicidio"
11210 PRINT"politico è forte. E lo stiamo":PRINT"scongiurando perchè sarebbe l'ennesimo":PRINT"in una Milano esausta di scontri."
11220 PRINT"In più, c'è quel tatuaggio.":PRINT
11240 GOSUB 30000
'
11300 IF SCP(1)=0 THEN 11400 ' se trovato numero
11305 PRINT:PRINT "Il numero di telefono era ancora fresco":PRINT"di inchiostro, come se fosse stato":PRINT"scritto in queste ultime ore."
11340 PRINT:GOSUB 30000
'
11400 IF SCP(2)=0 THEN 11500 ' se trovato documento
11410 PRINT:PRINT "Abitava qui vicino, in via Argelati, se":PRINT"proveniva da casa sua ha attraversato":PRINT"il ponte e dopo essere stato colpito"
11420 PRINT"si è trascinato sul ponte, forse per":PRINT"raggiungere casa, mi chiedo se ha":PRINT"gridato aiuto e se qualcuno ha sentito."
11430 PRINT:GOSUB 30000
'
11500 IF SCP(5)=0 THEN 11580 ' se viste scarpe
11505 PRINT:PRINT "Mi fa pensare che sia uscito":PRINT"senza allacciarsi le scarpe":PRINT"nonostante il freddo, come se"
11510 PRINT"avesse fatto di fretta o sapesse":PRINT"che sarebbe tornato a breve."
11540 PRINT:GOSUB 30000
'
11580 IF LUOGHI(2)=0 AND LUOGHI(3)=0 THEN PRINT:PRINT"Torniamo in questura.":PRINT:GOSUB 30000:GOTO 14000 'questura
'
11600 PRINT:PRINT"Lasciamo andare il metronotte."
11605 PRINT"Dico ai ragazzi di tornare":PRINT"in questura. C'è da redarre il":PRINT"rapporto e fare gli altri controlli."
11610 PRINT"Io intanto medito la prossima mossa.":PRINT"In primis, capire dove stava":PRINT"andando il nostro amico e perchè."
11620 PRINT:GOSUB 30000
'
11650 IF LUOGHI(2)=0 OR LUOGHI(3)=0 THEN 11800
11700 PRINT:COLOR2:PRINT"Da dove iniziamo?":PRINT:COLOR CPP
11710 COLOR3:PRINT"1";:COLOR 2:PRINT" - ";:COLOR CPP:PRINT"Dal luogo dell'accoltellamento." 
11720 COLOR3:PRINT"2";:COLOR 2:PRINT" - ";:COLOR CPP:PRINT"Da casa della vittima." 
11740 K$=INKEY$:IF K$="" THEN 11740
11750 IF K$="1" THEN PLAY SND$:GOTO 12000 ELSE IF K$="2" THEN PLAY SND$:GOTO 13000 ELSE 11740
11760 'scp(2) = appartamento scp(2) imbarco
11800 PLAY SND$:IF LUOGHI(2)=APPART THEN 13000 ELSE 12000
'
12000 THISLUOG=CORSIC ' imbarco
12010 BANK 5:SS%=USR2(SSPRITE%(GRIMBARC)):BANK 1:LOCATE 22,1:PRINT"Gio 5 Feb, 1976":LOCATE 22,3:PRINT"Via Corsico,    ":LOCATE 22,4:PRINT"Navigli."
12020 LOCATE0,24:PRINT:PRINT"IMBARCO":PRINT:PRINT"Qui è stato ucciso il soggetto.":PRINT"La strada su questo versante del ponte"
12025 PRINT"è aperta ad auto e ciclomotori.":PRINT"Dall'altra parte invece il traffico":PRINT"è interdetto per lavori in corso."
12035 PRINT:GOSUB 19500
12040 PLAY SND$:IF K$="1" THEN 12045 ELSE IF K$="2" THEN PRINT:GOTO 19000 
12045 IF SCP(19)=1 THEN PRINT:PRINT"Non ho trovato altre novità.":GOTO 12035
12050 PRINT:PRINT"Cercando in giro testimoni, incontro":PRINT"Titti, che purtroppo conosciamo per":PRINT"essere una dei tanti dipendenti da"
12060 PRINT"eroina che bazzicano queste parti.":PRINT"Quando la fisso negli occhi chiedendole":PRINT"se ha visto qualcosa, li abbassa come"
12070 PRINT"se avesse paura di parlare. Poi mi":PRINT"chiede se ho spiccioli.":PRINT:GOSUB 30000
12080 IF SCP(5)=1 THEN PRINT:PRINT"- 'Se ti do' questi gettoni mi aiuti?'":PRINT"- 'Ma guarda che io non ho visto nulla!'":GOSUB 30000
12090 IF SCP(16)=0 THEN 12170 ELSE PRINT:PRINT"- 'Ti interessano 2 grammi di hascisc?',   le chiedo.":PRINT:PRINT"Improvvisamente il suo sguardo cambia."
12100 PRINT:GOSUB 30000:PRINT:PRINT"- 'Titti, per me li puoi prendere, ma":PRINT"   devi dirmi cos'hai visto."
12110 PRINT:PRINT"- 'Se te lo dico, come faccio a sapere":PRINT"   che qualcuno non me la farà pagare?'":PRINT:GOSUB 30000
12120 PRINT:PRINT"- 'Se mi aiuti a capire cos'è successo":PRINT"   ci pensero' io a proteggerti.":PRINT"   Dimmelo, avanti ...'":PRINT:GOSUB 30000
12130 PRINT:PRINT"- 'Ero lontana, ma ho visto un motorino":PRINT"   nero allontanarsi mentre un tipo":PRINT"   perdeva sangue.'"
12140 PRINT"- 'Ricordi altro? Dimmi tutto cio' che     puoi ricordare.'":PRINT"- 'Sono scappata dalla paura, ricordo":PRINT"   solo un gran fumo bianco."
12150 PRINT"   Si distingueva in mezzo alla nebbia.'":GOSUB 30000
12160 PRINT:PRINT"Non ricorda altro, ma direi che ho una":PRINT"nuova pista da seguire.":PRINT:SCP(19)=1:GOSUB 30000
12170 GOTO 12035 'gettoni e hascisc
'
13000 THISLUOG=APPART ' appartamento
13010 BANK 5:SS%=USR2(SSPRITE%(GRAPART)):BANK 1:GOSUB 13125
13020 LOCATE0,24:PRINT:PRINT"APPARTAMENTO":MINCLK=15:MAXCLK=23
13025 PRINT:PRINT"Arredamento in pieno stile DDR."
13030 PRINT"La porta era chiusa senza mandate,":PRINT"questo rafforza la tesi che sia uscito":PRINT"di corsa o per tornare a breve."
13040 PRINT:GOSUB 19500
13050 PLAY SND$:IF K$="1" THEN 13060 ELSE IF K$="2" THEN PRINT:GOTO 19000  
13060 ' ISPEZIONE APPARTAMENTO
13070 GOSUB 20000
13080 INMOUSE C,L:IF C>160 THEN C=160
13090 IF L>100 THEN L=100
13100 TURTLE1,C-10,L-10
13110 K$=INKEY$:IF K$=CHR$(32) THEN GOSUB 13130 ELSE IF K$=CHR$(13) THEN PLAY SND$:GOTO 13120 ELSE GOTO 13080
13120 BOXF(161,0)-(319,100),-1:LOCATE 22,1:GOSUB 13125:LOCATE0,24:GOTO 13040
13125 LOCATE 22,1:PRINT"Gio 5 Feb, 1976":LOCATE 22,3:PRINT"via Argelati 6, ":LOCATE 22,4:PRINT"Navigli.":RETURN
13130 GOSUB 18000:GOTO 13080
'
' questura

'se disponi controllo telefono ascolti voce
'se sei stato al circolo e hai parlato con mauro 
'riconosci voce e capisci che Mauro era complice,
'se non riconosci voce non sai chi lo ha chiamato
'e se non controlli telefono ometti la questione 
'lotta armata dal rapporto
'
14000 THISLUOG=QSTURA:BOXF(161,0)-(319,100),-1 ' questura
14010 LOCATE 22,1:PRINT"Gio 5 Feb, 1976":LOCATE 22,3:PRINT"Questura, via":LOCATE 22,4:PRINT"Fatebenefratelli.":LOCATE0,24:PRINT:PRINT"QUESTURA"
14015 BANK 4:SS%=USR2(SSPRITE%(GRQUESTR)):BANK 1
14020 IF SCP(4)=0 THEN 14950 ELSE IF LUOGHI(2)=0 AND LUOGHI(3)=0 THEN 14900 
14030 PRINT:PRINT"Che facciamo?":PRINT:COLOR3:PRINT"1";:COLOR 2:PRINT" - ";:COLOR CPP:PRINT"Aggiorniamo le informazioni."
14032 COLOR3:PRINT"2";:COLOR 2:PRINT" - ";:COLOR CPP:PRINT"Interrogatorio.":COLOR3:PRINT"3";:COLOR 2:PRINT" - ";:COLOR CPP:PRINT"Cambia zona."
14034 COLOR3:PRINT"4";:COLOR 2:PRINT" - ";:COLOR CPP:PRINT"Rinuncia e ricominca da capo."
14040 K$=INKEY$:IF K$="" THEN 14040 ELSE IF VAL(K$)<=0 OR VAL(K$)>4 THEN 14040
14050 PLAY SND$:IF K$="3" THEN PRINT:GOTO 19000 
14060 IF K$="4" THEN PRINT:PRINT"Sicuro di voler rinunciare al caso?":COLOR3:PRINT:PRINT"[INVIO = OK, altro = NO]":COLOR CPP ELSE 14090
14070 K$=INKEY$:IF K$="" THEN 14070 ELSE IF K$=CHR$(13) THEN 14080 ELSE PRINT:PRINT "- 'Bene ...'":PRINT:GOTO 14030
14080 PLAY SND$:PRINT:PRINT"Il questore si incazza:":PRINT:PRINT"- 'Te ghè ciapà la vaca per i ball!!!":PRINT"   Ma và a scuà 'l mar!! Pirla!!'"
14085 PRINT:PRINT"Forse ci era sfuggito qualche indizio.":PRINT:GOSUB 30000:PRINT:GOTO 120
14090 ON VAL(K$) GOSUB 14100, 15000
14095 GOTO 14015 'torna a menu
14100 PRINT ' Raccolta indizi
14110 PRINT"Facciamo il punto della situazione":PRINT"con i ragazzi:":PRINT:GOSUB 30000:PRINT
'indizi in questura
14115 PRINT"La vittima si chiama Stefano Bralba,":PRINT"di anni 22. Il corpo viene trovato":PRINT"alle 5.34 sul ponte di via Corsico.":PRINT:GOSUB 30000:PRINT
14120 IF SCP(1)=0 THEN 14130 ELSE PRINT"Moretti ha controllato il numero":PRINT"trovato sulla mano del ragazzo:":PRINT"il telefono risulta inesistente."
14125 PRINT"Quindi o non è un telefono oppure":PRINT"c'è qualcos'altro.":PRINT:GOSUB 30000:PRINT
14130 IF SCP(8)=0 THEN 14140 ELSE PRINT"Ho fatto archiviare tra gli elementi":PRINT"rinvenuti anche il capello biondo.":PRINT:GOSUB 30000:PRINT
14140 IF SCP(12)=0 THEN 14200 ELSE PRINT"Ho con me i tabulati telefonici che":PRINT"ho richiesto dopo l'ispezione a casa":PRINT"della vittima."
14145 PRINT"Ci sono due cose interessanti.":PRINT:GOSUB 30000:PRINT:PRINT"La prima: Stefano ha ricevuto chiamata":PRINT"alle 5.18, dalla cabina telefonica di"
14150 PRINT"via Vigevano, che dista 10 minuti a":PRINT"piedi da casa sua.":PRINT:GOSUB 30000:PRINT
14155 IF SCP(5)=1 THEN PRINT"Stefano aveva dei gettoni con sè,":PRINT"si stava dirigendo forse verso":PRINT"quella cabina?":PRINT"Quindi là lo aspettava qualcuno"
14160 IF SCP(5)=1 THEN PRINT"o quel qualcuno gli ha detto di":PRINT"richiamarlo da quel punto per poi":PRINT"appostarsi e assalirlo?":PRINT:GOSUB 30000:PRINT
14165 PRINT"La seconda cosa è ben più interessante:":PRINT"la cabina era già sotto registrazione,":PRINT"abbiamo l'audio della chiamata. In una"
14170 PRINT"Milano come quella di questi anni,":PRINT"senza le intercettazioni e le soffiate":PRINT"saremmo già fottuti da un pezzo.":PRINT:GOSUB 30000:PRINT
14175 PRINT"Non abbiamo la copertura di tutti i":PRINT"telefoni pubblici, ma questo era nel":PRINT"mucchio. Ogni tanto un po' di fortuna.":PRINT"L'audio dice:"
14180 PRINT:PRINT"- 'Si fa. Cabina di via Vigevano tra":PRINT"   10 minuti. Chiama 377573.'":PRINT"                            >CLICK!<":SCP(1)=1:PRINT:GOSUB 30000:PRINT
14190 IF INVCCIR=0 THEN 14200 ELSE PRINT"Riconosco la voce del chiamante.":PRINT"E' quella di ";:COLOR 3:PRINT"Mauro Sgarba";:COLOR CPP:PRINT".":IF SCP(21)=0 THEN PLAY SND$
14195 SCP(21)=1:PRINT:GOSUB 30000:PRINT
14198 IF MRSCD=1 THEN PRINT"Mauro si è nel frattempo ucciso, come":PRINT"se avesse da nascondere qualcosa di":PRINT"cui si vergognava.":PRINT:GOSUB 30000:PRINT  
14200 IF SCP(15)=0 THEN 14220 ELSE PRINT"La ragazza vista in foto si chiama":COLOR 3:PRINT"Rita Corsi";:COLOR CPP:PRINT".":PRINT"E' la fidanzata della vittima":PRINT"Fa la fotografa."
14205 PRINT"Era finita in una retata in piazza":PRINT"San Babila molti anni fa, poi non":PRINT"l'abbiamo più incrociata."
14210 IF TSTRIT=0 THEN PRINT:COLOR 2:PRINT "[NUOVO INTERROGATORIO OTTENUTO]":COLOR CPP:PLAY SND$:TSTRIT=1
14215 PRINT:GOSUB 30000:PRINT 
14220 IF SCP(14)=0 THEN 14260 ELSE PRINT"Faccio mettere a verbale la pistola.":PRINT"Mi chiedo dove abbia preso quei":PRINT"10 milioni in contanti."
14230 IF SCP(16)=1 THEN PRINT"Va capito se Stefano, visti i volantini":PRINT"trovati a casa, si stesse interessando":PRINT"alla lotta armata.":PRINT:GOSUB 30000:PRINT
14240 IF SCP(19)=1 THEN PRINT"Qualcuno ha visto un motorino nero":PRINT"allontanarsi dal luogo del delitto":PRINT"a quell'ora.":PRINT:GOSUB 30000:PRINT
14250 IF SCP(20)=1 THEN PRINT"La ragazza mi ha dato un nome su cui":PRINT"approfondire: Brando Carelli."
14260 PRINT:RETURN 'menu questura
 
'No locations found!
14900 PRINT:PRINT"Il questore rimane giusto un filo ":PRINT"deluso quando gli dico che non ho":PRINT"perlustrato nessuna zona.":PRINT
14905 GOSUB 30000:PRINT:PRINT"- 'Qui ci pensano già gli altri, pirla!":PRINT"   Tu dovevi battere il quartiere!":PRINT"   Ti sollevo dal caso, sparisci,"
14915 PRINT"   Và a ciapa' i ratt, pantula!":PRINT:PRINT"Forse ci era sfuggito qualche indizio.":PRINT:GOSUB 30000:PRINT:GOTO 120
14920 GOTO 19000
'worst ending no documenti
14950 PRINT:PRINT"Il questore rimane giusto un filo ":PRINT"deluso quando gli dico che non ho":PRINT"nemmeno trovato i documenti del ragazzo:"
14955 GOSUB 30000:PRINT:PRINT"- 'Meno male che li ha presi Costa!!":PRINT"   Deficiente! Cazzone! Ti sollevo dal":PRINT"   caso e levati dal cazzo, fatti"
14985 PRINT"   una doccia, và a dà via i ciapp!!'":PRINT:PRINT"Forse ci era sfuggito qualche indizio.":PRINT:GOSUB 30000:PRINT:GOTO 120
14990 GOTO 19000

15000 PRINT ' Interrogatorio
15010 IF TSTRIT=0 THEN PRINT"Dovrei prima capire chi convocare.":PRINT:RETURN
15015 IF SCP(20)=1 THEN PRINT"Rita l'ho già sentita abbastanza.":PRINT:RETURN
15020 BANK 4:SS%=USR2(SSPRITE%(GRRITA)):BANK 1
15030 PRINT"- 'Grazie per essere qui, sig.na Corsi.":PRINT"   Mi dispiace per il momento.":PRINT"   Le faro' solo alcune domande.'"
15040 PRINT"- 'Capisco. Mi dica pure.'":PRINT:GOSUB 30000:PRINT
'
'interrogatorio tipa:
'- In che condizioni economiche era Stefano?
'- Povere, non stavo certo con lui per soldi.
'(SE ANELLO) Quindi questo anello? E' tuo vero? Sì, comprato da sola.
'(SE SOLDI) Ho trovato questi soldi, ne sapevi nulla? No.
'(SE CIRCOLO TATUAGGIO) E' vero che un nazi ce l'aveva con lui? In tanti.
'                      (SE ANELLO + SOLDI) Stai mentendo, fammi quel nome e spiegami i soldi. - ok
'
15045 PRINT:PRINT"- 'Da quanto non vedeva Stefano?":PRINT"- 'Da ieri l'altro.'"
15050 PRINT"- 'Stefano è stato ammazzato in via":PRINT"   Corsico alle 5.34, ha un'idea di":PRINT"   come mai fosse là a quell'ora?'"
15055 PRINT"- 'Pensavo poteste dirmelo voi.'":PRINT:GOSUB 30000:PRINT
15060 IF SCP(5)=0 THEN 15080 ELSE PRINT "- 'Aveva in tasca dei gettoni,"
15065 IF SCP(21)=0 THEN PRINT"   se fosse uscito per telefonare ha":PRINT"   idea di chi possa aver chiamato?'" ELSE PRINT"   stava andando a telefonare, lo":PRINT"   ha chiamato un certo Mauro Sgarba.'"
15070 PRINT "- 'Mi dispiace, non so aiutarla.'":PRINT:GOSUB 30000:PRINT
15080 IF SCP(8)=1 THEN PRINT"- 'Sul corpo di Stefano abbiamo trovato":PRINT"   un capello biondo.":PRINT"   Potrebbe essere suo?'":PRINT"- 'Potrebbe, certo.'":PRINT:GOSUB 30000:PRINT
15090 IF SCP(10)=1 THEN PRINT"- 'Circolo Togliatti, lo conosceva?":PRINT"   Stefano era un iscritto.'":PRINT"- 'Lo so, mai non ci sono mai stata.'":PRINT:GOSUB 30000:PRINT
15100 IF SCP(16)=0 THEN 15120 ELSE PRINT"- 'Questi volantini erano a casa di":PRINT"   Stefano, aveva mai manifestato":PRINT"   interesse per la lotta armata?'":PRINT:GOSUB 30000:PRINT 
15105 PRINT"- 'Non mi sarei stupita, il futuro è":PRINT"   tutto del potere privato, protetto":PRINT"   dai soggetti come voi, pagati":PRINT"   con i nostri soldi ma sempre"
15110 PRINT"   pronti a difendere i soprusi del":PRINT"   capitale schiavista.'":PRINT"- 'Puo' rispondere alla domanda?'":PRINT"- 'La risposa è no.'":PRINT:GOSUB 30000:PRINT 
15115 PRINT"- 'So che qualche anno fa lei è stata":PRINT"   negli scontri di piazza. Ha smesso?'":PRINT"- 'Da quel giorno si, ho capito che":PRINT"   eravamo solo dei burattini.'":PRINT:GOSUB 30000:PRINT
15120 PRINT"- 'In che condizioni economiche si":PRINT"   trovava Stefano?'":PRINT"- 'Beh, di certo non stavo con lui":PRINT"   per soldi. Disoccupato saltuario.'":PRINT:GOSUB 30000:PRINT 
15130 IF SCP(17)=1 THEN PRINT"- 'Questo anello è suo?'":PRINT"- 'Si, dimenticato a casa sua.'":PRINT:GOSUB 30000:PRINT 
15140 IF SCP(14)=0 THEN 15350 ELSE PRINT"- 'Dei 10 milioni trovati nella sua":PRINT"   cassaforte, insieme ad una pistola,":PRINT"   ne sapeva niente?'"
15150 PRINT"- '... Veramente no.'":PRINT:GOSUB 30000:PRINT
15160 IF SCP(9)=0 THEN 15350 ELSE PRINT"- 'Giusto per curiosità ... si":PRINT"   ricorda come Stefano si è fatto":PRINT"   quella cicatrice sotto l'occhio?'"
15170 PRINT"- 'Quando l'ho conosciuto ce l'aveva":PRINT"   già. Mi sembra fosse caduto":PRINT"   da bambino.'":PRINT:GOSUB 30000:PRINT
15180 IF SCP(14)=1 AND BBB=1 THEN 15190 ELSE 15350
15190 PRINT"Non mi convince. Evasiva su tutto.":PRINT"Proviamo con un po' di pressione":PRINT"psicologica.":PRINT:GOSUB 30000:PRINT 
15220 PRINT"- 'Quell'anello: regalo di Stefano?'":PRINT"- 'Certo, perchè?'":PRINT"- 'E glielo ha regalato quando?'":PRINT"- 'Qualche ... mese fa.'"
15230 PRINT"- 'Lei era spesso da lui, vero? Avrà":PRINT"   notato la cassaforte ...'":PRINT:GOSUB 30000:PRINT
15240 PRINT"- 'Dove vuole arrivare?":PRINT"- 'Non si è mai chiesta dove avesse":PRINT"   preso i soldi per l'anello?'":PRINT"- 'Cioè? In che senso?'"
15250 PRINT"- 'Lei sa cose che non mi vuole dire!":PRINT"   Al circolo hanno parlato di lei,":PRINT"   di quella volta in cui Stefano":PRINT"   ha avuto grane con quel camerata"
15260 PRINT"   e si è fatto quella cicatrice!":PRINT:GOSUB 30000:PRINT:PRINT"   E' cosi', vero? Perchè se poi lo":PRINT"   scopro da solo, incrimino pure lei!'":PRINT:GOSUB 30000:PRINT
15270 PRINT"La cosa sembra aver funzionato, perchè":PRINT"queste parole la fanno scoppiare":PRINT"in lacrime.":PRINT"Da come piange, capisco che":PRINT"l'omicidio di Stefano è legato ad"
15280 PRINT"una questione che li riguarda.":PRINT"E' il momento di rabbonirla.":PRINT:GOSUB 30000:PRINT
15290 PRINT"- 'Mi creda, io non sospetto di lei.":PRINT"   Voglio solo che mi faccia il":PRINT"   nome di quel camerata. Al resto":PRINT"   ci pensero' io.'"
15300 PRINT"- 'Va bene ... si chiama ...":COLOR 3:PRINT"   Brando Carelli";:COLOR CPP:PRINT".":PLAY SND$:PRINT:GOSUB 30000:PRINT
15310 PRINT"   Stavo con lui molti anni fa ...":PRINT"   ... era sempre cosi' sicuro di sè.":PRINT"   Poi è cambiato.'":PRINT"- 'E' diventato violento?'"
15320 PRINT"- 'Beh, non solo, diciamo che non":PRINT"   mi trovavo più bene ...'":PRINT:GOSUB 30000:PRINT
15330 PRINT"- 'Non ho più intenzione di cercarla.":PRINT"   Grazie per la collaborazione.'":SCP(20)=1:GOTO 15360
15350 PRINT"- 'Grazie per la collaborazione,":PRINT"   non ho bisogno di altro al momento.'"
15360 PRINT:GOSUB 30000:PRINT
15900 RETURN 

'
'se all'arrivo non hai certi indizi, game over.
'menù questura: esamina le informazioni, cambia zona
'dopo tot mosse game over
'esamina informazioni : riassume quanto scoperto e fa il match degli indizi:
'ascolti voce tel e matchi con mauro (SCP(21))
'controlli foto tipa e sblocchi interrogatorio
' 
16000 THISLUOG=BARBAB: BOXF(161,0)-(319,100),-1 ' bar
16010 BANK 4:SS%=USR2(SSPRITE%(GRBARBAB)):BANK 1:LOCATE 22,1:PRINT"Gio 5 Feb, 1976":LOCATE 22,3:PRINT"Bar 'Barbab',":LOCATE 22,4:PRINT"p.zza San Babila."
16020 LOCATE0,24:PRINT:PRINT"BAR BARBAB":PRINT:PRINT"Uno dei tanti bar della piazza dove":PRINT"già di prima mattina si riunisce la":PRINT"giovane forza di destra milanese."
16030 IF DEJABAR=1 THEN 16085 ELSE PRINT:GOSUB 30000:PRINT:PRINT"I ragazzi mi riconoscono subito: fino a":PRINT"sei anni fa ero nella celere, quando"
16040 PRINT"nacque Giovane Italia io portavo già":PRINT"una divisa, nei primi scontri di piazza":PRINT"sono intervenuto decine di volte prima"
16050 PRINT"di capire che era meglio ambire ad una":PRINT"promozione.":PRINT:GOSUB 30000
16060 PRINT:PRINT"La voce sul morto si è sparsa in":PRINT"fretta e i ragazzi hanno voglia":PRINT"di scherzare:":PRINT:PRINT"- 'Uè cummenda! Sei qui per la"
16070 PRINT"   zecca rossa? Ogni tanto una":PRINT"   buona notizia eh?'"
16080 PRINT:GOSUB 30000:DEJABAR=1
16085 PRINT:GOSUB 19500
16090 PLAY SND$:IF K$="1" THEN 16100 ELSE IF K$="2" THEN PRINT:GOTO 19000
 '- cerchiamo brando, se non sappiamo il suo nome non possiamo, se lo troviamo e sappiamo del motorino trovi foto gay, se trovi capello ok se no game over
16100 IF SCP(20)=1 THEN 16105 ELSE PRINT:PRINT"Faccio le solite domande generiche e":PRINT"ottengo le solite risposte generiche." 
16102 PRINT"A volte, con le buone o con le cattive,":PRINT"qualcuno ti aiuta, ma stavolta fanno":PRINT"tutti gli gnorri, sta cosa non mi piace.":PRINT"Non so chi beccare."
16103 PRINT:GOSUB 30000:PRINT:IF SCP(19)=1 THEN PRINT"Tra l'altro è pieno di motorini neri.":PRINT"Sarebbe un casino controllarli tutti.":PRINT:GOSUB 30000:PRINT:GOTO 16085 ELSE GOTO 16085
16105 PRINT:PRINT"- 'Camerata Carelli, cerco proprio lei.":PRINT"   Facciamo due chiacchiere?'"
16110 PRINT"- 'A disposizione, commissario!'":PRINT"- 'Scommetto che eri a casa a dormire.'":PRINT"- 'Se viene a prendere un caffè a casa"
16120 PRINT"   mia glielo confermeranno i miei.'"::PRINT:GOSUB 30000:PRINT:PRINT"Sono anni che questo delinquente pesta,":PRINT"vandalizza e oltraggia ogni cosa gli"
16130 PRINT"capita a tiro, e ogni volta riesce a":PRINT"non finire dentro solo perchè arriva":PRINT"il papi con una delle sue tante amiciziealtolocate a tirar fuori dal cappello":
16140 PRINT"testimoni e mazzette varie.":PRINT:GOSUB 30000:PRINT
16150 IF SCP(3)=0 THEN 31000 ELSE IF SCP(19)=0 THEN PRINT"Dovrei trovare una pista su cui":PRINT"incalzarlo.":GOTO 16085
16160 PRINT"- 'Camerata Carelli, sarebbe tanto":PRINT"   gentile da farmi dare un'occhiata al":PRINT"   suo bel motorino nero?'"
16170 PRINT:PRINT"Carelli cambia espressione.":PRINT:PRINT"- 'Lo metta in moto.'":PRINT:GOSUB 30000:PRINT:PRINT"- 'Va... va bene, tra l'altro lo"
16175 PRINT"   sto usando poco perchè ha":PRINT"   problemi di marmitta...'":PRINT"- 'Vedo eccome, anzi, era quello":PRINT"   che volevo vedere."
16180 PRINT"   Un gran bel fumo bianco.'":PRINT:GOSUB 30000:PRINT
16185 PRINT"Un minuto dopo, in piazza San Babila":PRINT"esplode una bomba atomica.":PRINT:GOSUB 30000:PRINT:PRINT"Nel bauletto del motorino trovo":PRINT"delle foto."
16190 PRINT"Foto di Brando e di un ragazzo.":PRINT"Insieme.":PRINT"Si stanno baciando.":PRINT"E qualcuno li ha fotografati.":PRINT:GOSUB 30000:PRINT
16200 IF SCP(8)=1 THEN 32000 ELSE GOTO 30500 ' GOOD ENDING, avevi trovato il capello biondo, or BAD ENDING
'
17000 THISLUOG=CCCIR: BOXF(161,0)-(319,100),-1 ' cccp
17010 BANK 5:SS%=USR2(SSPRITE%(GRCCCIR)):BANK 1:LOCATE 22,1:PRINT"Gio 5 Feb, 1976":LOCATE 22,3:PRINT"Circolo Togliatti,":LOCATE 22,4:PRINT"via Tenca 9."
17020 LOCATE0,24:PRINT:PRINT"CIRCOLO CULTURALE":IF MRSCD=1 THEN 17280 ELSE IF SCP(21)=1 THEN 17250
17022 PRINT:PRINT"Conosco bene il circolo perchè lo":PRINT"abbiamo ramazzato un paio di volte."
17025 IF DEJACIR=1 THEN 17038 ELSE PRINT:GOSUB 30000:PRINT
17030 PRINT"Tempo fa pizzicai questo Mauro Sgarba inun vecchio deposito partigiano mentre":PRINT"preparava bombe carta con dei compagni."
17032 PRINT"L'ho graziato con la scusa che sua madreera malata, ma nessuno ha mai saputo":PRINT"che in realtà mi aveva cantato qualche"
17036 PRINT"nome utile all'interrogatorio.":PRINT:GOSUB 30000:PRINT:PRINT"Adesso gestisce questo posto. Rimane di":PRINT"sasso quando lo informo di Stefano."
17038 DEJACIR=1:PRINT:GOSUB 19500
17040 PLAY SND$:IF K$="1" THEN 17045 ELSE IF K$="2" THEN PRINT:GOTO 19000 
17045 PRINT:PRINT"- 'Mi dica come posso aiutarla. ":PRINT"   Almanakko era un bravo compagno.":INVCCIR=1
17050 PRINT"   Lo chiamavamo cosi' perchè non si":PRINT"   teneva a mente mai un cazzo. Nomi,":PRINT"   indirizzi, telefoni: tu glieli"
17055 PRINT"   dicevi, e già 5 secondi dopo glieli":PRINT"   dovevi ridire. Tranne le date.":PRINT:GOSUB 30000:PRINT
17060 PRINT"   Dal giorno di nascita di Marx fino":PRINT"   all'ultima volta in cui era stato":PRINT"   al cinema: sulle date aveva":PRINT"   una memoria di ferro.":PRINT:GOSUB 30000
17070 IF SCP(1)=1 THEN PRINT:PRINT"- '377573, dice niente questo numero?":PRINT"   Stefano lo aveva sulla mano.'":PRINT"- '... No, mi spiace.'":PRINT:GOSUB 30000
17080 IF SCP(14)=1 THEN PRINT:PRINT"Gli chiedo se conosceva le condizioni":PRINT"economiche del ragazzo:":PRINT:PRINT"- 'Mi sembra fosse figlio di operai.'":PRINT:GOSUB 30000
17085 IF SCP(9)=0 THEN 17090 ELSE PRINT:PRINT"- 'Hai presente la cicatrice che":PRINT"   aveva sotto l'occhio?'"
17087 PRINT"- 'Ora che me lo ricorda, si. E mi":PRINT"   sembra che a fargliela fu un":PRINT"   celerino durante un corteo.'":PRINT:GOSUB 30000
17090 IF SCP(16)=0 THEN 17125 ELSE PRINT:PRINT"- 'Che mi dici di questi volantini?":PRINT"   Li ho trovati a casa sua.'"
17100 PRINT"- 'Lucia Arni e Sandro Rea. Lei sa":PRINT"   che morirono negli scontri con":PRINT"   la celere davanti alla BPM."
17110 PRINT"   Erano pur sempre nostri amici." :PRINT"   Nakko non sopportava che fossero":PRINT"   morti per colpa di una Polizia":PRINT"   che protegge la borghesia fascista.'"
17120 PRINT:GOSUB 30000
17125 IF SCP(14)=0 THEN 17150 ELSE PRINT:PRINT"- 'Questa P38 l'ho trovata a casa sua.":PRINT"   Stefano ti aveva mai parlato di":PRINT"   entrare nella lotta armata?"
17130 PRINT"- 'Sapeva che io avevo chiuso con la":PRINT"   corrente. Pero' si', mi ha chiesto":PRINT"   di parlargliene qualche volta."
17135 PRINT"   Io ho sempre rifiutato.'":PRINT:GOSUB 30000:PRINT
17140 PRINT"-  'Stefano è uscito alle 5 forse":PRINT"   per andare a telefonare da un":PRINT"   posto che non fosse rintracciabile.":PRINT"   Non potrebbe riguardare un"
17145 PRINT"   eventuale arruolamento?'":PRINT"-  'Le modalità sarebbero quelle, si,":PRINT"   ce ne sono diverse ma quella è una.":PRINT:GOSUB 30000
17150 PRINT:PRINT"Faccio un giro e parlo con gli altri":PRINT"ragazzi. Molti mi chiedono:":PRINT:PRINT"- 'Ma sono stati i fasci?'":PRINT
17152 PRINT"Rispondo che non sappiamo ancora.":PRINT:GOSUB 30000
17155 PRINT:PRINT"- 'Il nome non mi dice niente, dammi":PRINT"   qualche altro dettaglio.', mi":PRINT"chiede un tipo.":PRINT:GOSUB 30000
17160 IF SCP(7)=0 AND SCP(9)=0 THEN PRINT:PRINT"Non riesco a fornire nulla che lo aiuti.":GOTO 17190
17162 IF SCP(7)=1 THEN PRINT:PRINT"- 'Tatuaggio comunista sulla mano?'" ELSE IF SCP(9)=1 THEN PRINT:PRINT"- 'Cicatrice sotto l'occhio?'"
17165 PRINT"- 'Ah SI!', e va da Mauro:":PRINT"- 'Mauro, ma non era lui che aveva":PRINT"   grane con quel sanbabilino?'"
17168 PRINT:GOSUB 30000:PRINT:PRINT"- 'Si beh, non so quanto sia utile, di":PRINT"   grane cosi' ce ne sono mille.'":PRINT"- 'Di cosa parlate?', chiedo."
17170 PRINT"- 'Beh, si era menato due o tre volte":PRINT"   con un fascio di sanbabila, ma più":PRINT"   che altro perchè c'era di mezzo":PRINT"   la sua ragazza.'"
17175 PRINT:GOSUB 30000:PRINT:PRINT"- 'San Babila quindi uno che bazzica il":PRINT"   Barbab e tutto quel giro là?'":PRINT"- 'Esatto, ma non so il suo nome." 
17178 PRINT"   Se non erro, la cicatrice sotto":PRINT"   l'occhio gliela fece quel nazi.'":PRINT"- 'Hmm, a me sembrava fosse stato un":PRINT"   celerino.', dice Mauro.":PRINT
17180 IF BBB=0 THEN PRINT:GOSUB 30000:PRINT: PLAY SND$:LUOGO=LUOGO+1:LUOGHI(LUOGO)=BARBAB:COLOR 2:PRINT:PRINT "[NUOVA LOCATION OTTENUTA]":COLOR CPP:BBB=1
17190 PRINT:GOSUB 30000:PRINT:GOTO 17038
'mauro suicida
17250 PRINT"Quando torno al circolo, c'è":PRINT"un'altra sorpresa: Mauro si è":PRINT"impiccato in bagno.":MRSCD=1
17260 PRINT"Chiamo una squadra, e intanto che arrivacerco nel suo ufficio per trovare":PRINT"qualche indizio. Sotto il cuscino del"
17270 PRINT"divano trovo 1 milione di lire":PRINT"in contanti.":PRINT:GOSUB 30000:PRINT:GOTO 19000
'circolo chiuso
17280 PRINT:PRINT"Il circolo è chiuso, una squadra":PRINT"di colleghi sta mettendo i sigilli.":PRINT:GOTO 19000
'
17620 END
'
' check turtle click
18000 GT=0:FOR I=MINCLK TO MAXCLK:IF ABS(C - CLCX(I)) < 5 AND ABS(L - CLCY(I)) < 5 THEN GT = CLK(I):EXIT ELSE NEXT
'
'mano dx, 'tasca giubbotto, 'sangue, 'tasca jeans davanti, 'tasca jeans dietro, 'scarpe, 'mano sx, 'capello biondo, 'cicatrice
'da 18400:
'tessera di partito, 'foto del che, 'controllo telefono, 'bandiera partito, 'cassaforte, 'foto, 'volantini+hascisc, 'anello, 'bandiera del milan
18010 ON GT GOSUB 18100,18130,18160,18200,18230,18260,18290,18320,18340,18400,18450,18500,18550,18600,18650,18700,18750,18800
18050 IF GT=0 THEN PRINT:PRINT" Niente di rilevante."
18055 PRINT:PRINT "Chissà se c'è altro da notare ..."
18057 'PRINT C;L;
18060 RETURN
'
'NUMERO SCRITTO mano dx
18100 IF SCP(1)=1 THEN PRINT:PRINT"377573, già segnato.":RETURN
18105 PLAY SND$:PRINT:PRINT "Sulla mano destra c'è un numero scritto col pennarello."
18110 PRINT "- '";:COLOR3:PRINT"377573";:COLOR CPP:PRINT": Moretti, vediamo di scoprire"
18120 PRINT "   a chi appartiene sto telefono.'":SCP(1)=1:RETURN
'CHIAVI DI CASA tasca giubbotto
18130 IF SCP(2)=1 THEN PRINT:PRINT"Chiavi di casa già trovate.":RETURN
18135 PLAY SND$:PRINT:PRINT "Nella tasca della giacca ci sono":COLOR3:PRINT "un paio di chiavi.":COLOR CPP
18140 PRINT "Probabilmente casa sua.":PRINT "Sarebbe meglio farci un salto."
18150 SCP(2)=1:IF SCP(2)=1 AND SCP(4)=1 THEN LUOGO=LUOGO+1:LUOGHI(LUOGO)=APPART:COLOR 2:PRINT "[NUOVA LOCATION OTTENUTA]":COLOR CPP
18155 RETURN
'SCIA SANGUE sangue
18160 IF SCP(3)=1 THEN PRINT:PRINT"Abbiamo già visto da dove parte la scia.":RETURN
18165 PLAY SND$:PRINT:PRINT "-'Non è stato accoltellato qui."
18170 PRINT "  Ha lasciato una lunga scia di":PRINT "  sangue. Costa, vai a ritroso, ":PRINT"  vediamo da dove parte.'":COLOR2:PRINT:GOSUB 30000
18175 COLOR CPP:PRINT:PRINT "Dopo una ventina di minuti il buon":PRINT "Costa mi urla dall'imbarco"
18180 PRINT "di via Corsico: - 'Quaggiù!":PRINT"Ha fatto giusto in tempo a risalire"
18185 PRINT "e si è accasciato in cima al ponte.":PRINT"Lo hanno preso qui al cancelletto.'"
18190 COLOR 2:PRINT "[NUOVA LOCATION OTTENUTA]":COLOR CPP:IF SCP(3)=0 THEN LUOGO=LUOGO+1:LUOGHI(LUOGO)=CORSIC:SCP(3)=1
18195 RETURN
'TASCA JEANS DAVANTI
18200 IF SCP(4)=1 THEN PRINT:PRINT"Documenti già presi.":RETURN
18203 PLAY SND$:PRINT:PRINT "Qui ci sono i documenti del giovane.":PRINT:PRINT "Si chiama ";:COLOR3:PRINT"Stefano Bralba";:COLOR7:PRINT", 26 anni."
18205 PRINT"Abita qui vicino, in via Argelati 9."
18207 SCP(4)=1:IF SCP(2)=1 AND SCP(4)=1 THEN LUOGO=LUOGO+1:LUOGHI(LUOGO)=APPART:COLOR 2:PRINT "[NUOVA LOCATION OTTENUTA]":COLOR CPP
18210 PRINT:PRINT "- 'Moretti, senti se lo conosciamo già.'- 'Ok, avviso la centrale.'"
18215 PRINT:PRINT "Rispondono che è incensurato."
18220 RETURN
'TASCA JEANS DIETRO
18230 IF SCP(5)=1 THEN PRINT:PRINT"Gettoni già presi.":RETURN
18235 PLAY SND$:PRINT:COLOR3:PRINT "Gettoni per telefonare ";:COLOR CPP:PRINT"in questa tasca.":PRINT "Non aveva altro denaro con sè."
18240 PRINT "Costa: - 'Beh, forse è stato rapinato.'":SCP(5)=1:RETURN
'SCARPE
18260 IF SCP(6)=1 THEN PRINT:PRINT "Già notate le scarpe slacciate.":RETURN
18265 PLAY SND$:PRINT:PRINT "Scarpe slacciate.":PRINT "Cialtronaggine o è uscito di fretta?":PRINT
18270 PRINT "- 'Mio figlio ad esempio non le allaccia   mai', mi fa Moretti, 'un giorno o"
18280 PRINT "   l'altro ci inciampa e poi mi tocca":PRINT"   recuperarlo al pronto soccorso.'":SCP(6)=1:RETURN
'MANO SX
18290 IF SCP(7)=1 THEN PRINT:PRINT "Tatuaggio già visto.":RETURN
18295 PLAY SND$:PRINT:PRINT "- 'Moretti, qui sulla mano sinistra?'"
18300 PRINT "- 'Ah, un compagno. Che bel ";:COLOR 3:PRINT"tatuaggio ":COLOR CPP:PRINT"   di falce e martello.'";
18305 PRINT "- 'Da esporre a pugno alzato. Cosa pensi   di questa nuova moda dei tatuaggi?'"  
18310 PRINT "- 'Una pagliacciata. Se mio figlio se":PRINT"   lo fa, lo calcio fuori di casa.'":SCP(7)=1:RETURN
'CAPELLO BIONDO
18320 IF SCP(8)=1 THEN PRINT:PRINT "Capello già preso.":RETURN
18325 PLAY SND$:PRINT:PRINT "Un ";:COLOR 3:PRINT "lungo capello biondo";:COLOR CPP:PRINT"."
18330 PRINT "Portiamolo in laboratorio.":PRINT"Magari non è niente, ma non si sa mai.":SCP(8)=1:RETURN
'CICATRICE
18340 IF SCP(9)=1 THEN PRINT:PRINT"Cicatrice già vista.":RETURN
18345 PLAY SND$:PRINT:PRINT "Una ";:COLOR 3:PRINT "cicatrice ";:COLOR CPP:PRINT"sotto l'occhio destro."
18350 PRINT "Ma sembra roba vecchia.":SCP(9)=1:RETURN
'
'TESSERA PARTITO
18400 IF SCP(10)=1 THEN PRINT:PRINT "Tessera già vista.":RETURN 
18410 PLAY SND$:PRINT:PRINT"E' la ";:COLOR 3:PRINT"tessera ";:COLOR CPP:PRINT"di un circolo comunista.":PRINT"Ho segnato l'indirizzo."
18420 SCP(10)=1:LUOGO=LUOGO+1:LUOGHI(LUOGO)=CCCIR:COLOR 2:PRINT"[NUOVA LOCATION OTTENUTA]":COLOR CPP:RETURN
'FOTO CHE
18450 IF SCP(11)=1 THEN PRINT:PRINT"Uno scatto che ritrae Cheguevara in":PRINT"un giorno emblematico.":RETURN 
18455 PLAY SND$:PRINT:PRINT"Guerillero Heroico.":PRINT"Milano è tappezzata di questi poster."
18460 PRINT"Uno scatto che ritrae Cheguevara in":PRINT"un giorno emblematico.":SCP(11)=1:RETURN 
'CONTROLLO TEL
18500 IF SCP(12)=1 THEN PRINT:PRINT"Ho già segnato di controllarlo.":RETURN 
18510 PLAY SND$:PRINT:PRINT"Questo è interessante: vicino al":PRINT"telefono c'è un pennarello nero."
18520 IF SCP(1)=1 THEN PRINT"Forse lo stesso con cui ha scritto":PRINT"il numero."
18530 PRINT"Faro' controllare il telefono.":SCP(12)=1:RETURN
'BANDIERA PART
18550 SCP(13)=1:PRINT:PRINT"E' una bandierina comunista.":RETURN
'CASSAFORTE
18600 IF SCP(14)=1 THEN PRINT:PRINT "Già aperta.":RETURN 
18610 PLAY SND$:PRINT:PRINT"Una cassaforte che potrebbe contenere":PRINT"qualcosa di interessante.":PRINT"Provo ad aprirla?"
18615 COLOR3::PRINT:PRINT"[INVIO = OK, altro = NO]":COLOR CPP
18620 K$=INKEY$:IF K$="" THEN 18620 ELSE IF K$=CHR$(13) THEN 18630 ELSE PRINT:PRINT "- 'Ok ...'":RETURN
18630 PRINT "Quale combinazione provo (8 numeri) ?":CMBN=0:CMB$=""
18632 K$=INKEY$:IF K$="" THEN 18632 ELSE IF VAL(K$)<0 OR VAL(K$)>9 THEN 18632
18634 PLAY"L5O4SI":PRINT K$;:CMB$=CMB$+K$:CMBN=CMBN+1:IF CMBN<8 THEN 18632
18636 IF CMB$<>"05031960" THEN PRINT:PRINT"Niente da fare...":RETURN
18638 SCP(14)=1:PLAY SND$:PRINT:PRINT"BINGO! La data dello scatto della famosafoto del Che. Cos'abbiamo qui?" 
18640 PRINT:PRINT"- Una ";:COLOR3:PRINT"Walther P38";:COLOR CPP:PRINT", forse la pistola":PRINT"  più diffusa tra i gruppi extra":PRINT"  parlamentari."
18642 PRINT"- Ben ";:COLOR3:PRINT"10 milioni di lire";:COLOR CPP:PRINT" in contanti, ":PRINT"  che andrebbe capito come li ha fatti.":RETURN
'FOTO
18650 IF SCP(15)=1 THEN PRINT:PRINT "Ho già notato la foto.":RETURN 
18660 PLAY SND$:PRINT:PRINT"La foto di quella che è probabilmente":COLOR3:PRINT"la sua ragazza";:COLOR CPP:PRINT". Lei potrebbe aiutarci a"
18670 PRINT"capire se Stefano si fosse fatto qualchenemico.":SCP(15)=1:RETURN
'VOLANT+HASC
18700 IF SCP(16)=1 THEN PRINT:PRINT "Qui ho già preso i volantini e il fumo.":RETURN 
18710 PLAY SND$:PRINT:PRINT"Guarda guarda ...":PRINT"C'è della colla, giornali vecchi, roba":PRINT"per fare volantini e materiale di":PRINT"propaganda. "; 
18715 PRINT"C'è anche qualche volantino di":PRINT"Proletari Combattenti:":PRINT:GOSUB 30000:PRINT
18720 PRINT"            POSSANO MILLE":PRINT"         E MILLE MANI ANCORA":PRINT"          IMPUGNARE LE ARMI":PRINT"         VENDICARE I COMPAGNI":PRINT"           LUCIA E SANDRO"
18725 PRINT:GOSUB 30000:PLAY SND$:PRINT:PRINT"E sempre qui, guarda cosa troviamo:":COLOR3:PRINT"2 grammi di hascisc";:COLOR CPP:PRINT".":SCP(16)=1:RETURN
'ANELLO
18750 IF SCP(17)=1 THEN PRINT:PRINT "Si, ho già notato l'anello.":RETURN 
18760 PLAY SND$:PRINT:PRINT"Un ";:COLOR3:PRINT"anello di diamanti";:COLOR CPP:PRINT", vorrei capire"
18765 PRINT"meglio la situazione economica in cui":PRINT"viaggiava il ragazzo.":SCP(17)=1:RETURN
'BAND.MILAN
18800 SCP(18)=1:PRINT:PRINT"Una bandiera del Milan.":RETURN

'***************

'SELECT LUOGO
19000 FOR I=1 TO 5:NXLOC(I)=0:NEXT:PRINT:COLOR3:PRINT"Dove andiamo?":COLOR CPP:PRINT
19010 CHC=1:FOR I=1 TO 5
19020 IF LUOGHI(I)>0 AND LUOGHI(I)<> THISLUOG THEN COLOR3:PRINT CHC;:COLOR 2:PRINT"- ";:COLOR CPP:PRINT LUOG$(LUOGHI(I)):NXLOC(CHC)=LUOGHI(I):CHC=CHC+1
19030 NEXT
19040 K$=INKEY$:IF VAL(K$)<=0 OR VAL(K$)>CHC THEN 19040
'12000 ' imbarco
'13000 ' appartamento
'14000 ' questura
'16000 ' bar
'17000 ' cccp
19050 PLAY SND$:ON NXLOC(VAL(K$)) GOTO 14000, 12000, 13000, 17000, 16000
19060 GOTO 19040

' SELECT ACTION
19500 PRINT"Che facciamo?":PRINT:COLOR3:PRINT"1";:COLOR 2:PRINT" - ";:COLOR CPP:PRINT"Investighiamo la zona."
19510 COLOR3:PRINT"2";:COLOR 2:PRINT" - ";:COLOR CPP:PRINT"Cambiamo zona."
19520 K$=INKEY$:IF K$="" THEN 19520
19530 IF K$<>"1" AND K$<>"2" THEN GOTO 19520 ELSE RETURN

'MECCANICA MIRINO
'
20000 BOXF(161,0)-(319,100),-1:LOCATE 22,1:PRINT"Muovi il mirino":LOCATE 22,2:PRINT"col mouse."
20010 LOCATE 22,4:PRINT"Premi SPAZIO":LOCATE 22,5:PRINT"per esaminare."
20020 LOCATE 22,7:PRINT"Premi ENTER":LOCATE 22,8:PRINT"per finire."
20030 LOCATE 0,24,1:TURTLE1,10,10,"L0U5R64U5L0D4L64D4L64D4L64D4":SHOW1
20040 PRINT:COLOR3:PRINT" - ISPEZIONE -":PRINT:COLOR CPP:PRINT"Muovi il mirino col mouse.":PRINT"Premi SPAZIO per esaminare un dettaglio.Premi ENTER quando hai finito."
20050 RETURN

' Sospensione testo e attesa tasto utente
30000 COLOR2:PRINT"[PREMI UN TASTO ...]":COLOR CPP
30010 K$=INKEY$:IF K$="" THEN 30010
30020 RETURN

' ENDINGS

' BAD ENDING: INCRIMINATO MA NON DA TE
30500 PRINT"Brando me le strappa di mano:":PRINT:PRINT"- 'COSA FAI, STRONZO?'":PRINT"- 'Come, scusi?', rispondo mentre metto":PRINT"la mano in tasca per infilarla nel"
30510 PRINT"tirapugni:":PRINT:GOSUB 30000:PRINT:PRINT"Ma non appena sposto gli occhi,":PRINT"intravedo la sagoma del Sig. Carelli,":PRINT"chiamato dal bar:":PRINT:GOSUB 30000:PRINT
30520 PRINT"- 'Qualche problema, agente?'":PRINT"- 'Stavo controllando il motorino":PRINT"   di suo figlio per una segnalazione,":PRINT"   stamattina è stato ucciso un"
30530 PRINT"   ragazzo e stiamo indagando su":PRINT"   cose che abbiamo sentito.'":PRINT:GOSUB 30000:PRINT
30540 PRINT"- 'Capisco. Brando, resta qui a":PRINT"   disposizione dell'agente,":PRINT"   io torno subito.'":PRINT
30550 PRINT"Chiedo a Brando chi ha scattato":PRINT"quelle foto, e lui non risponde,":PRINT"si ingrugnisce mentre gli si":PRINT"bagnano piano piano gli occhi.":PRINT:GOSUB 30000:PRINT
30560 PRINT"- 'Brando, qualcuno ti ricattava?":PRINT"   Era Stefano, vero? Quei":PRINT"   10 milioni che ho trovato nel":PRINT"   suo appartamento erano tuoi.'":PRINT:GOSUB 30000:PRINT
30570 PRINT"Mentre Brando pare che stia per dirmi":PRINT"qualcosa, arrivano 4 volanti: da una":PRINT"di esse spunta fuori il questore.":PRINT"Ma non è qui per Brando."
30580 PRINT"Si scusa col padre davanti a tutti":PRINT"e poi mi riporta in questura, dove mi":PRINT"solleva dall'indagine.":PRINT:GOSUB 30000:PRINT
30590 CONSOLE 0,24,0:PRINT:PRINT" - Epilogo -":PRINT:PRINT"Qualche tempo dopo vengo a sapere che":PRINT"Brando è finito dentro. Stavo seguendo":PRINT"la pista giusta, che poi quello"
30600 PRINT"di me ha ereditato per prendersene":PRINT"tutti i meriti.":PRINT:PRINT"Ah, quel qualcuno è Moretti. E' venuto":PRINT"a trovarmi qui in archivio per"
30610 PRINT"ringraziarmi. Mi ha raccontato tutta":PRINT"la dinamica dei fatti, ma francamente":PRINT"non me la voglio ricordare."
30620 PRINT:PRINT"Mi ha detto di rifare domanda di":PRINT"promozione, che ci pensa lui a":PRINT"ritirarmi su, ma ovviamente"
30630 PRINT"sappiamo entrambi che questo becero":PRINT"ipocrita mi sta prendendo per il culo.":PRINT:PRINT"E comunque, l'archivio mi piace.":PRINT
30640 GOSUB 30000:PRINT:PRINT"Hai risolto il caso, ma non te":PRINT"ne sei preso i meriti."
30650 GOSUB 34000:PRINT ' score
30680 PRINT"[ PREMI UN TASTO PER RIGIOCARE ... ]"
30690 K$=INKEY$:IF K$="" THEN 30690 ELSE GOTO 120

' BAD ENDING neutralizzato dalla famiglia 
31000 PRINT:PRINT"Mentre l'istinto mi suggerisce sempre":PRINT"di più che lui sia responsabile di":PRINT"qualcosa, dalla centrale arriva una":PRINT"chiamata:"
31010 PRINT:PRINT"- 'Il questore ti vuole. Ora.'":PRINT:GOSUB 30000:PRINT:PRINT"Mentre mi allontano, Carelli mi guarda":PRINT"sorridendomi con aria di sfida.":PRINT:GOSUB 30000:PRINT
31020 THISLUOG=QSTURA:BOXF(161,0)-(319,100),-1 ' questura
31030 LOCATE 22,1:PRINT"Gio 5 Feb, 1976":LOCATE 22,3:PRINT"Questura, via":LOCATE 22,4:PRINT"Fatebenefratelli.":LOCATE0,24:PRINT:PRINT"QUESTURA"
31040 BANK 4:SS%=USR2(SSPRITE%(GRQUESTR)):BANK 1
31050 PRINT"Dal bar hanno chiamato il padre di":PRINT"Carelli, che ha avvisato il questore:":PRINT:PRINT"- 'Ma che cazzo fai? Sai chi è":PRINT"   suo padre?":PRINT:GOSUB 30000:PRINT
31060 PRINT"   Se chiama i suoi amici":PRINT"   a Roma io rischio il culo,":PRINT"   se devi menare il torrone al":PRINT"   figlio, abbi almeno uno straccio"
31070 PRINT"   di elemento probatorio!!!":PRINT:GOSUB 30000:PRINT:PRINT"   Ti sollevo dall'indagine":PRINT"   prima che fai chiudere":PRINT"   tutta la questura,"
31080 PRINT"   imbecille, va' bèn a fèr":PRINT"   dal pugnàt la prossima volta!'":PRINT:PRINT"Forse ci era sfuggito qualche indizio.":PRINT:GOSUB 30000:PRINT:GOTO 120  

' GOOD ENDING
32000 PRINT"Brando fa per strapparmi le foto di manoquando noto una capello biondo rimasto":PRINT"appiccicato nel mazzo. Allontano le"
32010 PRINT"foto e capisco che è il momento di":PRINT"provocarlo, sperando che funzioni.":PRINT:GOSUB 30000:PRINT
32020 PRINT"- 'Brando, queste chi le ha fatte?":PRINT"   scommetto una certa Rita, vero?'":PRINT:PRINT"Il ragazzo rimane come impietrito.":PRINT:GOSUB 30000:PRINT
32030 PRINT"- 'Brando, come mai ho trovato lo":PRINT"   stesso capello sul corpo di Stefano?":PRINT"   Non sarà mica che ti ricattava?":PRINT:GOSUB 30000:PRINT
32035 PRINT"   Erano tuoi i soldi a casa sua,":PRINT"   non sarà mica che lo hai ucciso tu?'" 
32040 PRINT:PRINT"Preso dal panico, il ragazzo si dà alla fuga.":PRINT:GOSUB 30000:PRINT
32050 PRINT"Lo raggiungo in volata all'angolo con":PRINT"c.so Matteotti e lo butto per terra.":PRINT"Inizia a dimenarsi e poi mi colpisce":PRINT"da terra con un gancio allo zigomo."
32060 PRINT"E' in queste occasioni che benedico chi":PRINT"ha inventato il reato di resistenza":PRINT"a pubblico ufficiale.":PRINT:GOSUB 30000:PRINT
32070 PRINT"Lo saccagno cosi' forte che il suono":PRINT"dei ceffoni rimbomba per i portici":PRINT"della piazza. Poi lo ammanetto e":PRINT"lancio le foto per terra, vicino a"
32080 PRINT"lui, in modo che i suoi 'amici'":PRINT"vedano l'unica cosa di cui si":PRINT"sarebbe vergognato di fronte a loro.":PRINT:GOSUB 30000:PRINT
32090 PRINT"Arriva anche il padre, ma ormai le":PRINT"manette sono scattate.":PRINT:GOSUB 30000:PRINT
32100 THISLUOG=QSTURA:BOXF(161,0)-(319,100),-1 ' questura
32110 LOCATE 22,1:PRINT"Gio 5 Feb, 1976":LOCATE 22,3:PRINT"Questura, via":LOCATE 22,4:PRINT"Fatebenefratelli.":LOCATE0,24:PRINT:PRINT"QUESTURA"
32120 BANK 4:SS%=USR2(SSPRITE%(GRBRANDO)):BANK 1:LOCATE 0,24
32130 PRINT"Rita aveva scoperto che Brando, al di":PRINT"là delle apparenze, era gay, e lo aveva lasciato.":PRINT"Qualche tempo dopo conosce Stefano e si mette con lui. ";
32140 PRINT"Stefano è un attivista ":PRINT"impegnato, e si scontra molto spesso":PRINT"con i fascisti, tra cui anche il gruppo":PRINT"in cui milita Brando." :PRINT:GOSUB 30000:PRINT
32150 PRINT"Brando viene a sapere che Stefano sta":PRINT"con Rita, e un giorno lo aggredisce":PRINT"facendogli una ferita sotto l'occhio."
32160 PRINT"I due decidono di vendicarsi iniziando":PRINT"a fotografarlo di nascosto per poi":PRINT"ricattarlo.":PRINT:GOSUB 30000:PRINT
32170 PRINT"Brando paga per non vedere rovinata la":PRINT"sua reputazione, ma alla lunga si":PRINT"stufa e si organizza per eliminarlo."
32180 PRINT"Viene a sapere che Stefano vuole entrarenella lotta armata, e va quindi da":PRINT"Mauro Sgarba.":PRINT:GOSUB 30000:PRINT
32190 PRINT"Sfruttandone la fragilità di carattere":PRINT"ed economica, lo corrompe per fargli":PRINT"fare la chiamata e far uscire il topo":PRINT"dalla tana.":PRINT:GOSUB 30000:PRINT
32200 PRINT"Poco dopo, lo aspetta all'angolo con":PRINT"via Corsico, dove puo' ucciderlo in modoveloce e scappare col motorino in"
32210 PRINT"un orario dove nessuno, o quasi, lo":PRINT"puo' vedere.":PRINT:GOSUB 30000:PRINT
32220 PRINT"Naturalmente avevo capito anche la":PRINT"paura di Rita: si era resa complice di":PRINT"estorsione, non proprio una cosa su":PRINT"cui vorresti che ti indagassero."
32230 PRINT"Purtroppo dovrà anche lei":PRINT"rispondere ad un giudice.":PRINT:GOSUB 30000:PRINT
32300 THISLUOG=100:BOXF(161,0)-(319,100),-1 ' questura
32310 LOCATE 22,1:PRINT"Gio 5 Feb, 1976":LOCATE 22,3:PRINT"Piazza":LOCATE 22,4:PRINT" Duomo":LOCATE0,24:PRINT:PRINT"PIAZZA DUOMO"
32320 BANK 4:SS%=USR2(SSPRITE%(GRMILAN)):BANK 1:LOCATE 0,24
32330 PRINT"Stasera ho voglia di stare fuori.":PRINT"Compro l'edizione serale del Corriere:":PRINT"Il caso è già finito in prima pagina."
32340 PRINT"L'occhiello dice: 'risolto a tempo":PRINT"di record'. Ogni tanto buone notizie.":PRINT:GOSUB 30000:PRINT
32350 PRINT"L'articolista cita un film che il":PRINT"regista Lizzani ha finito di girare da":PRINT"poco e che uscirà ad Aprile, forse":PRINT"andro' a vederlo.":PRINT:GOSUB 30000:PRINT
32360 PRINT"Mi fermo su una panchina a leggere,":PRINT"era da tanto che non mi rilassavo.":PRINT"La pagina economica riporta un articolo":PRINT"dove ipotizzano di separare la Banca"
32370 PRINT"D'Italia dal Ministero del Tesoro.":PRINT"E un po' ripenso alle parole di Rita,":PRINT"al fatto di essere solo dei burattini.":PRINT:GOSUB 30000:PRINT
32380 PRINT"Sono anni difficili e continueranno":PRINT"ad esserlo, ma quando guardo il Duomo":PRINT"prendo coraggio e mi convinco che li":PRINT"supereremo.":PRINT:GOSUB 30000:PRINT
32390 PRINT:PRINT"HAI RISOLTO BRILLANTEMENTE IL CASO !"
32400 GOSUB 34000:PRINT ' score
32410 PRINT"[ PREMI UN TASTO PER RIGIOCARE ... ]"
32420 K$=INKEY$:IF K$="" THEN 32420 ELSE GOTO 120
'
33000 END

'score
34000 SCR=0:FOR I=1 TO HOWMIND:SCR=SCR+SCP(I):NEXT:SCR=SCR+BBB+MRSCD
34010 PRINT"Hai totalizzato";SCR;"su 23 punti.":RETURN


' ASM routines addresses:
'
' $42B0 - draw sprite (get sprite address) 
' $5000 - sprites dictionary
'
40000 CLS:SCREEN 7,0,0:PRINT:PRINT:PRINT"           - ROSSONERO -":PRINT"           -  v1.0.0   -":PRINT:PRINT"     Un piccolo gioco scritto"
40010 PRINT"     da Paolo Cattaneo":PRINT"     per Once Upon A Sprite 2019"
40020 PRINT:PRINT "     Attendi cinque minuti,":PRINT"     carico la grafica ...":PRINT    
40030 PRINT "     Se giochi da emulatore":PRINT"     puoi lasciare la finestra"    
40040 PRINT "     in sottofondo a caricare."    
40050 PRINT:PRINT "     Se giochi su real hardware":PRINT"     ... sei un mito." 
40060 PRINT:PRINT "     A caricamento ultimato, il":PRINT"     gioco non richiederà" 
40070 PRINT "     caricamenti ulteriori.":PRINT:PRINT    
'
40110 FOR I=&H42B0 TO &H42B0+111      'read/draw sprite draw routine
40120 READ A$
40130 POKE I, VAL("&H"+A$)            'put asm code at address
40140 NEXT I
40150 DEF USR2=&H42B0
'
'read sprites dictionary
40200 OPEN "I", #1, "GRPART1":BANK 5
40260 FOR I=&H6000 TO &H6000 + (2001 * 5) '5   
40370 INPUT #1, A$
40380 POKE I, VAL("&H"+A$)             'put asm code at address
40390 NEXT I                           'no execution needed
40395 CLOSE #1:BANK 1
'
40400 OPEN "I", #2, "GRPART2":BANK 4
40460 FOR I=&H6000 TO &H6000 + (2001 * 5)    
40470 INPUT #2, A$
40480 POKE I, VAL("&H"+A$)             'put asm code at address
40490 NEXT I                           'no execution needed
40495 CLOSE #2:BANK 1
'
41000 RETURN
'
' draw sprite routine asm code
41300 DATA 1A, 80, 86, 00, B7, 43, 17, B7, 43, 18, EE, 02, 10, BE, 42, A0  
41310 DATA 10, BF, 43, 13, E6, C0, F7, 43, 15, E6, C0, F7, 43, 16, B6, A7 
41320 DATA C0, 8A, 01, B7, A7, C0, E6, C0, E7, A0, B6, 43, 17, 4C, B7, 43  
41330 DATA 17, B1, 43, 15, 25, F0, 86, 00, B7, 43, 17, FC, 43, 13, C3, 00  
41340 DATA 28, FD, 43, 13, 10, BE, 43, 13, B6, 43, 18, 4C, B7, 43, 18, B1
41350 DATA 43, 16, 25, D2, 39, 03, 02, 10, FF, 23, F1, 10, FF, 10, FF, 75  
41360 DATA F1, 10, FF, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
'
'
' ... E O F ...

