Rilascio un piccola avventura poliziesca per PC128 Olivetti Prodest che ho scritto 
in queste ultime notti in occasione della "challenge" per Once Upon A Sprite 2019.

Il gioco si chiama "Rossonero" e come da topic dell'evento si ambienta in una Milano 
del 1976 attraversata dal clima degli scontri di piazza, in cui sarete chiamati a 
risolvere un misterioso caso di omicidio.

Link al gioco nel primo commento.
Nello zip trovate il .k7 per giocare con l'emulatore, l'emulatore,
i sorgenti del gioco e le istruzioni per giocare.

COME LANCIARE IL GIOCO DA EMULATORE

- Eseguire DCMOTO.exe (http://dcmoto.free.fr/)
- Dal menù emulatore selezionare Opzioni ... e selezionare "PC128" nella sezione
  "Computer"
- Dal menù "Supporti removibili" selezionare "Carica..." sul campo "Cassette", 
  e selezionare "RSSN.k7" come file da caricare. Uscire dal menù.
- Nella schermata con la piramide iniziale, premere 1  
- Digitare RUN"RSSN" e premere INVIO 
 (assicurarsi che il contagiri del registratore sia su 0000 quando carica il gioco)

Il gioco è per lo più narrativo ed è molto verboso, ma presenta in totale 10 schermate
grafiche che vengono svelate man mano che il giocatore riesce ad avanzare nella storia.

L'interazione si divide in due fasi: nelle scene di ispezione dovrete "cliccare" in
giro per trovare indizi utili a progredire nell'indagine, altrimenti vi sarà solo
richiesto di selezionare delle opzioni dal menù che si presenterà di volta in volta.
Più indizi scoprite, più possibilità avete di risolvere il caso.
Ci sono diverse ending, ma solo una è quella davvero buona.
E' anche possibile rimanere bloccati senza possibilità di risolvere il caso, quindi
se pensate di essere arrivati su un binario morto potrete sempre rinunciare e
ricominciare da capo.


Qualche avvertenza.

- Il gioco deve caricare 10 schermate da 160x100 pixel, e i confort sono quelli 
  degli anni '80, quindi c'è da aspettare 5 minuti: se giocate da emulatore 
  potete lasciare la finestra in sottofondo mentre i dati vengono caricati
  
- Il gioco presenta tematiche e linguaggio rivolti ad un pubblico adulto

- Il gioco presenta un tipo di difficoltà molto basata sul trial and error
  tipica delle vecchie avventure dell'epoca, c'è qualche bottleneck cattivello
  

NOTE TECNICHE:  

Il gioco è stato realizzato in occasione di Once Upon A Sprite 2019.
La grafica è stata ottenuta partendo da foto vere che sono state ridotte al
formato 160x100x2: in questo modo è stato possibile preservare i byte della
memoria forma nel porting dell'immagine senza rischiare che il color clash
ne alterasse la resa. Le immagini sono convertite da bitmap a sequenze di 
ottetti.
Per disegnare gli ottetti ho realizzato una routine in ASM 6809 in grado di 
leggere i byte della grafica e di scriverli secondo uno schema larghezza x
altezza nella memoria video.
I byte della grafica sono stati inseriti nei BANK swappabili 4 e 5 a partire
dall'address &H6000. Inizialmente avevo inserito questi dati nel codice,
con l'ingrandirsi del gioco si è reso invece necessario il deposito degli
stessi su supporto magnetico. Ho quindi estrapolato il codice che conteneva
i dati grafici e l'ho salvato a parte come programma per scriverli su nastro,
in modo da poterli leggere successivamente dal codice della business logic.

Questo è anche il primo gioco completo che abbia mai realizzato su questa
macchina, al netto di tante cose iniziate e mai finite. 
Ai tempi non avrei MAI potuto scrivere questo gioco su macchina reale, sia
perchè non avrei avuto i mezzi per convertire da foto a immagine a 2 colori,
sia perchè scrivere cotanto codice usando solo l'editor della macchina 
avrebbe richiesto tempi mastodontici, la perdita di diverse diottrie e numerose
emicranie per orientarsi nel programma.

Enjoy ed happy coding a tutti :)

Paolo Cattaneo,
24/10/2019

EOF
