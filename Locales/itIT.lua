﻿local ADDON_NAME = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "itIT")
if not L then return end

L["Zones"] = "Zone"
L["Continents"] = "Continenti"
--Unexplored Areas function
L["Unexplored Areas"] = "Unerforschte Gebiete"
L["Unexplored Areas visibility"] = "Visibilità Aree inesplorate"
L["Changes the visibility of unexplored Areas"] = "Cambia la visibilità delle aree inesplorate"
L["Fog"] = "Nebbia"
L["Mist of the Unexplored"] = "Nebbia del inesplorato"
L["Leaves the unexplored areas revealed but adds a slight fog so you can still see which ones you haven't explored yet"] = "Lascia le aree inesplorate rivelate ma aggiunge una leggera nebbia in modo da poter ancora vedere quali non hai ancora esplorato"
L["Reveals unexplored areas and shows the individual areas of each zone that are actually still unexplored"] = "Rivela le aree inesplorate e mostra le singole aree di ciascuna zona che in realtà sono ancora inesplorate"
--0 Info tab
L["Info"] = "Info"
L["A description of what this addon does and what functions it offers"] = "Una descrizione di ciò che fa questo componente aggiuntivo e di ciò che offre funzioni"
L["A collection of various icons on various maps from previous expansions up to Dragonflight"] = "Una raccolta di simboli diversi su carte diverse da tutte le estensioni"
L["Displays instance entrances, portals, ships, zeppelins, exits, passage, enemy faction and other transport icons"] = "Visualizza istanze, portali, navi, zeppeline, output, passaggi, fazioni nemiche e altri simboli"
L["All icons can be activated or deactivated separately!"] = "Tutti i simboli possono essere attivati ​​o disattivati ​​separatamente!"
L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] = "Opzione Funzione di spostamento: è possibile utilizzare i simboli Mapnotes con o senza clic di Shift "
L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"] = "Nascondi mapnotes! Opzione: tutti i simboli possono essere visualizzati con un solo clic"
L["Normally on a maximized map you cannot use instance icons from Blizzard or other addons that would open the adventure guide. But not for MapNotes! You can use all functions on minimized or maximized maps!"] = "Di solito non è possibile utilizzare la bufera di neve o altri simboli di istanza di componenti aggiuntivi su una scheda massimizzata che aprirebbe la guida all'avventura. Ma non per mapnotes! Puoi usare tutte le funzioni su carte ridotte o massimizzate!"
L["Worldmap function"] = "Funzione mappa del mondo"
L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] = "Fare clic con il tasto destro su un simbolo aggiunge un wayground TomTom (tranne su Azeroth e Mini Card)"
L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] = "Fare clic con il sinistra su un simbolo di istanza apre il dungeon corrispondente nella Guida all'avventura"
L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] = "AZeroth/Continent Map: clic sinistra su un simbolo di trasporto, la carta si apre dove si trova il simbolo"
L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"] = "Scheda Zona: clic sinistra su un simbolo di trasporto, la carta si apre, dal bersaglio del simbolo"
L["Example zone map: => Orgrimmar. Left-click on this icon opens the map of Orgrimmar"] = "Esempio di scheda Zona: '=> Orgrimar' Click a sinistra su questo simbolo, la mappa di Orgrimar si apre"
L["Example Azeroth/continent map: 'Jade Forest Portal => Orgrimmar' Left-click on this symbol opens the map of the Jade Forest. So you can see where you need to go to get to the portal"] = "Esempio AZeroth/Continent Map: 'Jadewald Portal => Orgrimar' Click sinistro sul simbolo, apre la carta dalla foresta di giada. In modo da vedere dove devi andare per arrivare al portale"
L["Maximized Map function"] = "Funzione della scheda massimizzata"
L["After the adventure guide is opened using a MapNote instance icon and you then switch to the dungeon map using the 'Show map' option in the adventure guide, the map is shown reduced in size so that you can move with the character within the instance and see where you have to go. This minimized map feature ends when you close the map or once! Press the “World map on/off” button (which you have set under 'ESC - Keyboard assignment - Interface function'), whereupon the map will be maximized"] = "Dopo che il leader dell'avventura è stato aperto da un simbolo di istanza e poi è passato alla scheda Dungeon nella Guida all'avventura attraverso l'opzione 'Mostra la scheda', la scheda viene visualizzata in riduzione in modo da poter muoverti con il personaggio all'interno dell'istanza e vedere dove devi andare. Questa funzione della scheda minimizzata termina quando si chiude la carta o una volta! Premere il pulsante 'Mappa del mondo On/Off' (che hai impostato in 'ESC - Layout della tastiera - InterfaceFunfunction'), quindi la scheda è massimizzata"
L["Minimap button function"] = "Funzione mini -garden"
L["Left-click opens or close the MapNote setting menu"] = "Sinistra -clic apre o chiude il menu di impostazione MapNote"
L["Right-click opens or close the HandyNote setting menu"] = "Il tasto destro si apre o chiude il menu di impostazione del sinote del telefono cellulare"
L["Shift+Right-click hide the minimap button"] = "Maiusc+Right -click, nascondi il Mini Garden Button"
L["Chat commands"] = "Comandi di chat"
--1 General tab
L["Description"] = "Descrizione"
L["Position of the real Instance Entrance"] = "Posizione dell'input di istanza reale"
L["Way to the Instance Entrance"] = "Modo per l'input di istanza"
L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] = "Disattiva anche tutti i simboli di istanza di bufera di neve sulla scheda Zona. Tuttavia, questi possono essere riattivati ​​sulla mappa nella parte superiore del dungeon input di Dungeon 'filtro della scheda'. Una re -deattivazione e attivazione di mapnotes vs. Blizzard, disattiva di nuovo i simboli di istanza sulla scheda Zona"
L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] = "Nascosti alcuni simboli di bufera di neve (ad es. Simboli dei capitali dell'Orda / Alleanza / Simboli di viaggio neutri o generali sulla mappa) e li sostituisce con simboli di mapnote quasi identici che offrono ulteriori informazioni e funzioni"
L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"] = "Rimuove i simboli di bufera di neve solo dove i simboli mapnotes e i simboli di sovrapposizione della bufera di neve, il che significa che la titoli e la funzione dei simboli MapNote possono essere nuovamente utilizzati sui punti sovrapposti"
L["If the map is open, after enabling or disabling this option, the map must be reopened once for the changes to display correctly"] = "Se la scheda è aperta, la scheda deve essere nuovamente aperta dopo aver attivato o disattivato questa opzione in modo che le modifiche vengano visualizzate correttamente"
L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"] = "Facendo clic con il tasto sinistro su un'icona su questa mappa si apre l'istanza corrispondente nella guida all'avventura o sulla mappa in cui si trova l'icona del portale, della nave, dello zeppelin o del trasporto speciale"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "Se si preme uno di questi simboli su una scheda con il pulsante sinistro del mouse, si apre la guida di avventura associata o la mappa del bersaglio"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "Se si fa clic su un simbolo multiplo con il pulsante del mouse sinistro, la scheda su cui si trovano i sotterranei verranno aperti"
L["At the same time, all icons representing additional instance inputs are removed"] = "Allo stesso tempo, tutte le icone che rappresentano gli input di istanze aggiuntive vengono rimosse"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "Cambia tutti attraverso i simboli su tutte le carte in sotterraneo, raid o più simboli. Inoltre, l'opzione di passaggio è disattivata ovunque e vengono aggiunti i simboli dei rispettivi raid, sotterranei o più opzioni (la scheda Dungeon rimane invariata da tutto questo)"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "Mostra icone diverse su mappe diverse. Tutte le icone sono cliccabili (tranne sulla minimappa) e hanno una funzione. Le icone della mappa funzionano con o senza il tasto Maiusc. Cambia semplicemente la funzione Maiusc!"
L["General"] =  "Generale" 
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Impostazioni generali che si applicano contemporaneamente alla mappa Azeroth / Continente / Dungeon"
L["General settings / Additional functions"] = "Impostazioni generali/Funzioni aggiuntive"
L["Shift function!"] = "Funzione di cambio!"
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."] = "Se abilitato, devi premere Maiusc prima di fare clic con il tasto sinistro o destro per interagire con le icone di MapNotes. Ma questo ha un vantaggio perché ci sono così tante icone nel gioco, comprese quelle di altri componenti aggiuntivi, quindi non fai clic accidentalmente su un simbolo e modificare la mappa o creare erroneamente un punto TomTom."
L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"] = "Devi sempre premere il pulsante Maiusc + Mouse contemporaneamente per interagire con i simboli MapNotes"
L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"] = "Ora puoi interagire con i simboli di mapnotes senza dover premere il pulsante Maiusc + Mouse contemporaneamente"
L["Settings apply to the zone map and the mini map at the same time"] = "Le impostazioni si applicano alla scheda Zona e alla Mini Card contemporaneamente"
L["symbol size"] = "dimensione del simbolo"
L["Changes the size of the icons"] = "Cambia la dimensione delle icone"
L["symbol visibility"] = "visibilità del simbolo"
L["Changes the visibility of the icons"] = "Modifica la visibilità delle icone"
L["hide minimap button"] = "nascondi pulsante minimappa"
L["Hide the MapNotes button on the minimap"] = "Nascondi il pulsante Mapnotes sulla Mini Card"
L["hide worldmap button"] = "Nascondi il pulsante della mappa del mondo"
L["Hide the MapNotes button on the worldmap"] = "Nascondi il pulsante Mapnotes sulla mappa del mondo"
L["hide MapNotes!"] = "nascondi MapNotes!"
L["-> Hide all MapNotes icons <-"] = "-> Nascondi tutte le icone di MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Disabilita MapNotes, tutte le icone verranno nascoste su ciascuna mappa e tutte le categorie saranno disabilitate"
L["Adventure guide"] = "Guida all'avventura"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Facendo clic con il tasto sinistro del mouse su un raid MapNotes (verde), un dungeon (blu) o un'icona multipla (verde e blu) sulla mappa si apre il dungeon o la mappa del raid corrispondente nella Guida all'avventura (la mappa non deve essere aperta a schermo intero)"
L["TomTom waypoints"] = "Waypoint TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Shift+clic destro su un raid, un dungeon, un simbolo multiplo, un portale, una nave, uno zeppelin, un passaggio o un'uscita da MapNotes sulla mappa del continente o del dungeon crea un punto di passaggio TomTom fino a questo punto (ma per questo è necessario installare il componente aggiuntivo TomTom )"
L["extra information"] = "ulteriori informazioni"
L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"] = "Visualizza ulteriori informazioni per sotterranei o raid. Ad esempio, il numero di boss già uccisi"
L["gray single"] = "Grigio individuale"
L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"] = "Solo punti individuali colorati di sotterranei e incursioni assegnate in grigio (se hai un ID)"
L["gray all"] = "Tutto grigio"
L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"] = "Colora tutti! Dungeon e raid assegnati grigi anche più punti (se hai un ID)"
L["enemy faction"] = "fazione nemica"
L["Shows enemy faction (horde/alliance) icons"] = "Mostra le icone della fazione nemica (orda/alleanza)"
L["chat message"] = "Messaggi di chat" 
L["Disables MapNotes status chat messages excluding core information"] = "Notizie di chat di stato mapnotes disattivate ad eccezione delle informazioni fondamentali"
L["Shows special transport icons like"] = "Mostra icone speciali di trasporto come"
L["Combines several different grouped symbols that lie on one point, thus showing all possible transport/instance symbols that are located here instead of just one of several possible ones"] = "Combina diversi simboli raggruppati che si trovano su un punto, mostrando così tutti i possibili simboli di trasporto/istanza che si trovano qui anziché solo uno dei tanti possibili"
L["Left-clicking on one of these symbols on the map opens the corresponding map, which contains all of the points listed by the symbol on the map"] = "Facendo clic con il tasto sinistro su uno di questi simboli sulla mappa si apre la mappa corrispondente, che contiene tutti i punti elencati dal simbolo sulla mappa"
L["Informations"] = "Informazioni"
L["Chat commands:"] = "Comandi chat:"
L["to show MapNotes info in chat: /mn, /MN"] = "per mostrare le informazioni di MapNotes nella chat: /mn, /MN"
L["to open MapNotes menu: /mno, /MNO"] = "per aprire il menu MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "per chiudere il menu MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "per mostrare il pulsante della minimappa: /mnb o /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "per nascondere il pulsante della minimappa: /mnbh o /MNBH"
--2a MiniMap Tab specific
L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"] = "Alcune icone di istanza non possono essere nascoste perché sono state create da Blizzard stesso e non da Mapnotes"
--2 Azeroth tab specific
L["Azeroth map"] = "Mappa di Azeroth"
--3 Continent tab specific
L["Continent map"] = "Mappa del continente"
--4 Zone tab specific
L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"] = "La dimensione dell'icona 2.0 sarebbe la dimensione predefinita delle icone di istanza di Blizzard sulla mappa della zona"
L["Zone map"] = "Mappa della zona"
--5 DungeonMap Tab specific 
L["Dungeon map"] =  "Mappa del dungeon" 
--6 Map Tabs together 
L["Instance Entrance"] = "Ingresso dell'istanza"
L["switches weekly between"] = "cambia settimanalmente tra"
L["Activate icons"] = "Attiva icone"
L["Show individual icons"] = "Mostra icone individuali"
L["Exits"] = "Esce"
L["Raids"] = "Raid"
L["Dungeons"] = "Dungeon"
L["Passages"] = "Passaggi"
L["Multiple"] = "Multiplo"
L["Portals"] = "Portali"
L["Zeppelins"] = "Zeppelin"
L["Ships"] = "Navi"
L["Transport"] = "Trasporto"
L["Special"] = "Speciale"
L["Ogre Waygate"] = "Porta dell'Orco"
L["Old Instances"] = "Vecchie istanze"
L["Show icons of passage on this map"] = "Mostra icone di passaggio su questa mappa"
L["Show icons of raids on this map"] = "Mostra le icone dei raid su questa mappa"
L["Show icons of dungeons on this map"] = "Mostra le icone dei dungeon su questa mappa"
L["Show icons of multiple on this map"] = "Mostra icone di più persone su questa mappa"
L["Show icons of portals on this map"] = "Mostra le icone dei portali su questa mappa"
L["Show icons of zeppelins on this map"] = "Mostra le icone degli zeppelin su questa mappa"
L["Show icons of ships on this map"] = "Mostra le icone delle navi su questa mappa"
L["Show all MapNotes for a specific map"] = "Mostra tutte le MapNotes per una mappa specifica"
L["Show icons of MapNotes dungeon exit on this map"] = "Mostra le icone dell'uscita del dungeon di MapNotes su questa mappa"
L["Enables the display of all possible icons on this map"] = "Abilita la visualizzazione di tutte le possibili icone su questa mappa"
L["Show icons of passage to raids and dungeons on this map"] = "Mostra le icone di passaggio ai raid e ai dungeon su questa mappa"
L["Show Ogre Waygate icons from Garrison on this map"] = "Mostra le icone della Porta degli Ogre da Garrison su questa mappa"
L["Activates the display of all possible icons on this map"] = "Attiva la visualizzazione di tutte le possibili icone su questa mappa"
L["Show icons of multiple (dungeons,raids) on this map"] = "Mostra icone di più (dungeon, raid) su questa mappa"
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Outland MapNotes su questa mappa"
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Draenor MapNotes su questa mappa"
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Shadowlands MapNotes su questa mappa"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Kalimdor MapNotes su questa mappa"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi del Regno Orientale su questa mappa"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Northrend MapNotes su questa mappa"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Pandaria MapNotes su questa mappa"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Zandalar MapNotes su questa mappa"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Kul Tiras MapNotes su questa mappa"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi delle Note della mappa delle Isole Disperse su questa mappa"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Dragon Isles MapNotes su questa mappa"
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "Alcune icone possono essere visualizzate o meno. Se in questa categoria è stata attivata l'opzione (Attiva icone)"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Mostra versioni vanilla di dungeon e incursioni come Naxxramas, Scholomance o Scarlet Monastero, che richiedono risultati o altre cose"
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "I singoli simboli che sono troppo vicini ad altri simboli su questa mappa non sono posizionati al 100 % proprio su questa carta! Per coordinate più dettagliate, utilizzare i punti sulla scheda Zona"
--7 Maps --7 mappe
L["Kalimdor"] = "Kalimdor"
L["Eastern Kingdom"] = "Regno Orientale"
L["Outland"] = "Outland"
L["Northrend"] = "Nord"
L["Pandaria"] = "Pandaria"
L["Draenor"] = "Draenor"
L["Broken Isles"] = "Isole Disperse"
L["Zandalar"] = "Zandalar"
L["Kul Tiras"] = "Kul Tiras"
L["Shadowlands"] = "Terre d'ombra"
L["Dragon Isles"] = "Isole del Drago"
--8 Core specific
L["Shift function"] = "Funzione di cambio"
L["-> MiniMapButton <-"] = "-> Pulsante MiniMappa <-"
L["-> WorldMapButton <-"] = "-> Pulsante della scheda mondiale <-"
L["MapNotes menu window"] = "Finestra del menu MapNotes"
L["All set icons have been restored"] = "Tutte le icone impostate sono state ripristinate"
L["All MapNotes icons have been hidden"] = "Tutte le icone di MapNotes sono state nascoste"
L["is activated"] = "è attivato"
L["is deactivated"] = "è disattivato"
L["are shown"] = "sono mostrati"
L["are hidden"] = "sono nascosti"
L["Left-click => Open/Close"] = "Clic sinistro => Apri/Chiudi"
L["Right-click => Open/Close"] = "Click destro => Apri/Chiudi"
L["Shift + Right-click => hide"] = "Maiusc + clic con il tasto destro => nascondi"
L["Middle-Mouse-Button => Open/Close"] = "Pulsante mouse centrale => Apri/Chiudi"
--9 transport
L["icons"] = "icone"
L["Exit"] = "Uscita"
L["Entrance"] = "Entrata"
L["Passage"] = "Passaggio"
L["Portal"] = "Portale"
L["Ship"] = "Nave"
L["Zeppelin"] = "zepelín"
L["Portalroom"] = "Sala del Portale"
L["The Dark Portal"] = "Il Portale Oscuro"
L["Captain Krooz"] = "Capitano Krooz"
L["Use the Old Keyring"] = "Usa il vecchio portachiavi"
L["Travel"] = "Viaggio"
L["Teleporter"] = "Teletrasporto"
L["Old Keyring"] = "Vecchio portachiavi"
L["Old Version"] = "Vecchia versione"
L["Secret Portal"] = "Portale segreto"
L["Secret Entrance"] = "Ingresso segreto"
L["Ogre Waygate to Garrison"] = "Porta degli Ogre alla Guarnigione"
L["in the basement"] = "nel seminterrato"
L["(on the tower)"] = "(sulla torre)"
L["(inside portal chamber)"] = "(all'interno della camera del portale)"
L["(inside building)"] = "(all'interno dell'edificio)"
--10 places
L["Auberdine"] = "Auberdine"
L["Ratchet"] = "Porto Paranco"
L["Theramore Isle"] = "Isola di Theramore"
L["Dire Maul"] = "Dire Maul"
L["Blackfathom Deeps"] = "Blackfathom Deeps"
L["Stormwind"] = "Roccavento"
L["Shadowfang Keep"] = "Forte di Zannascura"
L["Undercity"] = "Undercity"
L["Rut'theran"] = "Rut'theran"
L["Azuremyst Isle"] = "Isola Brumazzurra"
L["Bel'ameth, Amirdrassil"] = "Bel'ameth, Amirdrassil"
L["Darnassus"] = "Darnasso"
L["Teldrassil"] = "Teldrassil"
L["Graveyard"] = "Cimitero"
L["Library"] = "Biblioteca"
L["Cathedral"] = "Cattedrale"
L["Armory"] = "Armeria"
L["Ashran"] = "Ashran"
L["The Timeways"] = "Le vie del tempo"
L["Vol'mar"] = "Vol'mar"
L["Zuldazar"] = "Zuldazar"
L["Thunder Bluff"] = "Bluff del tuono"
L["Silvermoon City"] = "Città di Luna d'Argento"
L["Boralus, Tiragarde Sound"] = "Boralus, suono di Tiragarde"
L["Valdrakken"] = "Valdrakken"
L["Badlands"] = "Calanchi"
L["Oribos"] = "Oribo"
L["Azsuna"] = "Azsuna"
L["Uldum"] = "Uldum"
L["Dazar'alor"] = "Dazar'alor"
L["Shattrath City"] = "Città di Shattrath"
L["Echo Isles, Durotar"] = "Isole dell'Eco, Durotar"
L["Silithus"] = "Silito"
L["Nazjatar"] = "Nazzatar"
L["Emerald Dream"] = "Sogno di smeraldo"
L["Thunder Bluff"] = "Bluff del tuono"
L["Howling Fjord"] = "Fiordo ululante"
L["Ruins of Lordaeron"] = "Rovine di Lordaeron"
L["Isle of Thunder"] = "Isola del Tuono"
L["Twilight Highlands"] = "Altipiani del Crepuscolo"
L["Vashj'ir"] = "Vashj'ir"
L["The Waking Shores, Dragon Isles"] = "Le rive del risveglio, le Isole del Drago"
L["Shado-Pan Garrison, Townlong Steppes"] = "Guarnigione Shandaren, Steppe di Tong Long"
L["Grom'gol, Stranglethorn Vale"] = "Grom'gol, Valle di Rovotorto"
L["Exodar"] = "Esodar"
L["Jade Forest"] = "Foresta di giada"
L["Drustvar"] = "DRUSTVAR"
L["Gorgrond"] = "Gorgronda"
L["Ohn'ahran Plains"] = "Pianure di Ohn'ahran"
L["Borean Tundra"] = "Tundra boreale"
L["Tirisfal Glades"] = "Radure di Tirisfal"
L["Wintergrasp"] = "Presa invernale"
L["Boralus"] = "Boralo"
L["Stormsong Valley"] = "Valle del Canto della Tempesta"
L["Tiragarde Sound"] = "Suono di Tiragarde"
L["Ironforge"] = "Forgiardente"
L["Blasted Lands"] = "Terre devastate"
L["Darkshore"] = "Riva Oscura"
L["Durotar"] = "Durotar"
L["Dustwallow Marsh"] = "Palude polverosa"
L["Vale of Eternal Blossoms"] = "Vale dell'Eterna Primavera"
L["Arathi Highlands"] = "Altipiani d'Arathi"
L["Nazmir"] = "Nazmir"
L["Vol'dun"] = "Vol'dun"
L["Isle of Quel'Danas"] = "Isola di Quel'Danas"
L["Hellfire Peninsula"] = "Penisola del Fuoco Infernale"
L["Korthia"] = "Corzia"
L["The Maw"] = "Le Fauci"
L["Zereth Mortis"] = "Zereth Mortis"
L["Barnard 'The Smasher' Bayswort"] = "Barnard 'The Smasher' Bayswort"
L["Desha Stormwallow"] = "Desha Stormwallow"
L["Daria Smithson"] = "Daria Smithson"
L["Swellthrasher"] = "Swellthrasher"
L["Grok Seahandler"] = "Grok Addestratore del Mare"
L["Erul Dawnbrook"] = "Erul Dawnbrook"
L["Dread-Admiral Tattersail"] = "Tattersail dell'Ammiraglio del Terrore"
L["Grand Admiral Jes-Tereth"] = "Grandammiraglio Jes-Tereth" 
L["Naxxramas"] = "Naxxramas"
L["Scholomance"] = "Scholomance"
L["Temple of Ahn'Qiraj"] = "Ahn'Qiraj"
L["Lorewalker Han"] = "Ramingo della Sapienza Han"
L["Archmage Timear"] = "Arcimago Timear"
L["Kiku"] = "Kiku"
L["Eppu"] = "Eppu"
L["Ta'elfar"] = "Ta'elfar"
L["Seer Kazal"] = "Veggente Kazal"
L["Auridormi"] = "Auridormi"
L["Registrant"] = "Registrazione"
L["Scarlet Instances"] = "Istanze rosso scarlatto"
L["hide Cosmos map symbols"] = "Nascondi i simboli del cosmo"
L["Shows the locations of Raidbrowser applicants for old Raids"] = "Mostra la posizione del browser del macello da attribuire al vecchio macello"
L["Deactivates the display of all possible icons on this map"] = "Disattiva la visualizzazione di tutte le possibili icone su questa scheda"
--11 Specific
L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] = "Questo ingresso dell'istanza è in una sequenza temporale diversa. Un'altra sequenza temporale può essere attivata su zidormi"
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "Mostra le posizioni di raid, dungeon, portali, icone di navi e zeppelin su diverse mappe"
L["(Wards of the Dread Citadel - Achievement)"] = "(Protezioni della Cittadella del Terrore - Impresa)"
L["(Memory of Scholomance - Achievement)"] = "(Memoria di Scholomance - Obiettivo)"
L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] = "(viene visualizzato nel gioco solo se la tua fazione\n sta attualmente occupando Bashal'Aran)"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Questo portale degli Altopiani d'Arathi è attivo solo se la tua fazione sta attualmente occupando Ar'gorok"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Questo portale di Rivafosca è attivo solo se la tua fazione sta attualmente occupando Bashal'Aran"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Il Gran Ammiraglio Jes-Tereth) ti porterà a Vol'Dun, Nazmir o Zuldazar"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(L'Ammiraglio del Terrore Tattersail) ti porterà a Drustvar, alla Baia di Tiragarde o alla Valle dei Sacraonda"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Vecchio portachiavi \n Ottieni la chiave scarlatta nella \n [Zucca piena di bottino] dall'[Evento di Fine delle Ombre] o dalla [Casa d'aste] \n ora puoi attivare il [Vecchio portachiavi] qui \n per attivare il vecchio versioni dei dungeon del Monastero Scarlatto"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "Appare per primo dopo un certo progresso nell'istanza\n o richiede un certo risultato" 
--12 Classic
L["Ulduar"] = "Ulduar"
L["Trial of the Champion"] = "Trial of the Champion"
L["Trial of the Crusader"] = "Trial of the Crusader"
L["Azjol-Nerub"] = "Azjol-Nerub"
L["Drak'Tharon Keep"] = "Drak'Tharon Keep"
L["Utgarde Pinnacle"] = "Utgarde Pinnacle"
L["Utgarde Keep"] = "Utgarde Keep"
L["Magisters' Terrace"] = "Terrazza dei Magisteri"
L["Karazhan"] = "Karazhan"
L["The Culling of Stratholme"] = "The Culling of Stratholme"
L["Old Hillsbrad Foothills"] = "Old Hillsbrad Foothills"
L["The Oculus"] = "The Oculus"
L["The Ruby Sanctum"] = "The Ruby Sanctum"
L["Black Temple"] = "Black Temple"
L["Auchenai Crypts"] = "Auchenai Crypts"
L["Sethekk Halls"] = "Sethekk Halls"
L["The Arcatraz"] = "The Arcatraz"