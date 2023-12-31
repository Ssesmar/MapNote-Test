﻿local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "itIT")
if not L then return end

-- 1 = General tab specific
-- 2 = Azeroth tab specific
-- 3 = Continent tab specific
-- 4 = Dungeon tab specific
-- 5 = Map Tabs together
-- 5 = Entrance/Exit/Passage nodes
-- 6 = Core specific
-- 7 = Specific


--1 General tab
L["Description"] = "Descrizione"
L["Show different symbols on different maps. All symbols are clickable (except on the minimap) and have a function Map symbols work with or without the shift key. Simply change the Shift function!"] = "Mostra simboli diversi su mappe diverse.  Tutti i simboli sono cliccabili (tranne sulla minimappa) e hanno una funzione. I simboli della mappa funzionano con o senza il tasto Maiusc.  Cambia semplicemente la funzione Shift!"
L["General"] = "Generale"
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Impostazioni generali che si applicano contemporaneamente alla mappa Azeroth/Continente/Dungeon"
L["General settings / Additional functions"] = "Impostazioni generali/Funzioni aggiuntive"
L["use Shift function!"] = "Funzione di spostamento!"
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many symbols in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."] = "Quando abilitato, è necessario premere Maiusc prima di fare clic con il tasto sinistro o destro per interagire con le icone di MapNotes.  Ma questo ha un vantaggio perché ci sono così tanti simboli nel gioco, anche da altri componenti aggiuntivi, quindi non clicchi accidentalmente su un simbolo e cambi la mappa, o crei erroneamente un punto TomTom."
L["symbol size"] = "dimensione del simbolo"
L["Changes the size of the symbols"] = "Cambia la dimensione del simboli"
L["symbol visibility"] = "visibilità dei simboli"
L["Changes the visibility of the symbols"] = "Modifica la visibilità dei simboli"
L["hide minimap button"] = "nascondi il pulsante della minimappa"
L["Hide the minimap button on the minimap"] = "Nascondi il pulsante della minimappa sulla minimappa"
L["hide MapNotes!"] = "nascondi MapNotes!"
L["-> Hide all MapNotes symbols <-"] = "-> Nascondi tutti i simboli MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Disabilita MapNotes, tutte le icone saranno nascoste su ciascuna mappa e tutte le categorie saranno disabilitate"
L["Adventure guide"] = "Guida all'avventura"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Facendo clic con il pulsante sinistro del mouse su un raid di MapNotes (verde), un dungeon (blu) o un'icona multipla (verde e blu) sulla mappa si apre il dungeon o la mappa del raid corrispondente nella Guida all'avventura (la mappa non deve essere aperta a schermo intero)"
L["TomTom waypoints"] = "Waypoint TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Maiusc+clic destro su un raid, un dungeon, un simbolo multiplo, un portale, una nave, uno zeppelin, un passaggio o un'uscita da MapNotes sul continente o sulla mappa del dungeon crea un waypoint TomTom fino a questo punto (ma per questo è necessario installare il componente aggiuntivo TomTom)"
L["killed Bosses"] = "hanno ucciso i boss"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "Per i dungeon e i raid in cui hai ucciso dei boss e ti è stato quindi assegnato un ID, questo simbolo sulla mappa di Azeroth e del continente ti mostrerà il numero di boss uccisi o rimasti non appena passi il mouse sopra questo dungeon o simbolo di raid (ad esempio 2/8 mitico, 4/7 eroico ecc.)"
L["gray symbols"] = "simboli grigi"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "Se sei assegnato a un dungeon o un'incursione e disponi di un ID, questa opzione renderà grigia l'icona del dungeon o dell'incursione fino a quando questo ID non verrà reimpostato in modo che tu possa vedere quale dungeon o incursione hai iniziato o completato"
L["multiple gray"] = "multiplo grigi"
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "Colora i multipunto dei dungeon e/o dei raid in grigio se sei assegnato a qualsiasi dungeon o raid di questo multipunto e hai un ID in modo da poter vedere che hai iniziato o completato qualsiasi dungeon o raid del multipunto"
L["enemy faction"] = "fazione nemica"
L["Shows enemy faction (horde/alliance) symbols"] = "Mostra i simboli della fazione nemica (orda/alleanza)."
L["Informations"] = "Informazioni"
L["Chat commands:"] = "Comandi della chat:"
L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"] = "per mostrare le informazioni di MapNotes nella chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"
L["to open MapNotes menu: /mno, /MNO"] = "per aprire il menu MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "per chiudere il menu MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "per mostrare il pulsante della minimappa: /mnb o /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "per nascondere il pulsante della minimappa: /mnbh o /MNBH"
--2 Azeroth tab specific "---------"
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "Informazione: i singoli simboli di Azeroth che sono troppo vicini ad altri simboli sulla mappa di Azeroth non sono posizionati accuratamente al 100% sulla mappa di Azeroth!  Per un coordinamento preciso utilizzate i punti sulla mappa dei continenti o sulla mappa delle zone"
L["Azeroth map"] = "Mappa di Azeroth"
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Impostazioni della mappa di Azeroth.  Alcuni simboli possono essere visualizzati o meno.  Se in questa categoria è stata attivata l'opzione (Attiva simboli)."
L["Activates the display of all possible symbols on the Azeroth map"] = "Attiva la visualizzazione di tutti i possibili simboli sulla mappa di Azeroth"
L["Show symbols of raids on the Azeroth map"] = "Mostra i simboli dei raid sulla mappa di Azeroth"
L["Show symbols of dungeons on the Azeroth map"] = "Mostra i simboli dei dungeon sulla mappa di Azeroth"
L["Show symbols of passage to raids and dungeons on the Azeroth map"] = "Mostra i simboli di passaggio ai raid e ai dungeon sulla mappa di Azeroth"
L["Show symbols of multiple on the Azeroth map"] = "Mostra simboli multipli sulla mappa di Azeroth"
L["Show symbols of portals on the Azeroth map"] = "Mostra i simboli dei portali sulla mappa di Azeroth"
L["Show symbols of zeppelins on the Azeroth map"] = "Mostra i simboli degli zeppelin sulla mappa di Azeroth"
L["Show symbols of ships on the Azeroth map"] = "Mostra i simboli delle navi sulla mappa di Azeroth"
L["Show symbols of other transport possibilities on the Azeroth map"] = "Mostra i simboli di altre possibilità di trasporto sulla mappa di Azeroth"
L["Show all MapNotes for a specific map"] = "Mostra tutte le MapNotes per una mappa specifica"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di Kalimdor MapNotes: dungeon, raid, portali, zeppelin e navi sulla mappa di Azeroth"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli dei dungeon, dei raid, dei portali, degli zeppelin e delle navi del Regno Orientale sulla mappa di Azeroth"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Northrend MapNotes sulla mappa di Azeroth"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Pandaria MapNotes sulla mappa di Azeroth"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Zandalar MapNotes sulla mappa di Azeroth"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Kul Tiras sulla mappa di Azeroth"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutta la mappa delle Isole DisperseNote sui simboli di dungeon, raid, portali, zeppelin e navi sulla mappa di Azeroth"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi della mappa di Dragon Isles sulla mappa di Azeroth"
--3 Continent tab specific "---------"
L["Continent map"] = "Mappa del continente"
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Impostazioni della mappa del continente.  Alcuni simboli possono essere visualizzati o meno.  Se in questa categoria è stata attivata l'opzione (Attiva simboli)."
L["Activates the display of all possible symbols on the continent map"] = "Attiva la visualizzazione di tutti i possibili simboli sulla mappa del continente"
L["Show symbols of raids on the continant map and minimap"] = "Mostra i simboli dei raid sulla mappa del continente e sulla minimappa"
L["Show symbols of dungeons on the continant map and minimap"] = "Mostra i simboli dei dungeon sulla mappa del continente e sulla minimappa"
L["Show symbols of passage to raids and dungeons on the continent map"] = "Mostra i simboli di passaggio alle incursioni e ai dungeon sulla mappa del continente"
L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"] = "Mostra i simboli di più (dungeon, incursioni) sulla mappa continentale e sulla minimappa"
L["Show symbols of portals on the continant map and minimap"] = "Mostra i simboli dei portali sulla mappa del continente e sulla minimappa"
L["Show symbols of zeppelins on the continant map and minimap"] = "Mostra i simboli degli zeppelin sulla mappa del continente e sulla minimappa"
L["Show symbols of ships on the continant map and minimap"] = "Mostra i simboli delle navi sulla mappa del continente e sulla minimappa"
L["Show symbols of other transport possibilities on the continent and minimap"] = "Mostra simboli di altre possibilità di trasporto nel continente e minimappa"
L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"] = "Mostra i simboli della Porta degli Ogre dalla Guarnigione nel continente di Draenor e sulla mappa della zona"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di Kalimdor MapNotes, dungeon, raid, portali, zeppelin e navi sulla mappa del continente"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli dei dungeon, dei raid, dei portali, degli zeppelin e delle navi del Regno Orientale sulla mappa del continente"
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli dei dungeon, dei raid, dei portali, degli zeppelin e delle navi delle note della mappa delle Outland sulla mappa del continente"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Northrend MapNotes sulla mappa del continente"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Pandaria MapNotes sulla mappa del continente"
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli dei dungeon, dei raid, dei portali, degli zeppelin e delle navi di Draenor MapNotes sulla mappa del continente"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli dei dungeon, dei raid, dei portali, degli zeppelin e delle navi delle Isole Disperse sulla mappa del continente"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Zandalar MapNotes sulla mappa del continente"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Kul Tiras sulla mappa del continente"
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Shadowlands MapNotes sulla mappa del continente"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Dragon Isles sulla mappa del continente"
--4 DungeonMap Tab specific "---------"
L["Dungeon map"] =  "Mappa dei sotterranei"
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Impostazioni della mappa del dungeon.  Alcuni simboli possono essere visualizzati o meno.  Se in questa categoria è stata attivata l'opzione (Attiva simboli).  Mostra i punti di uscita e di passaggio di MapNotes sulla mappa del dungeon (questi simboli sono solo a scopo di orientamento e non succede nulla quando si fa clic su di essi)"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Abilita la visualizzazione di tutti i possibili simboli sulla mappa del dungeon (questi simboli sono solo a scopo di orientamento e non succede nulla quando si fa clic su di essi)"
L["Exits"] = "Esce"
L["Show symbols of MapNotes dungeon exit on the dungeon map"] = "Mostra i simboli dell'uscita del dungeon di MapNotes sulla mappa del dungeon"
L["Show symbols of passage on the dungeon map"] = "Mostra i simboli di passaggio sulla mappa del dungeon"
L["Show symbols of portals on the dungeon map"] = "Mostra i simboli dei portali sulla mappa del dungeon"
L["Show symbols of other transport possibilities on the dungeon map"] = "Mostra i simboli di altre possibilità di trasporto sulla mappa del dungeon"
--5 Map Tabs together "---------"
L["Activate symbols"] = "Attiva i simboli"
L["Show individual symbols"] = "Mostra i singoli simboli"
L["Raids"] = "Raid"
L["Dungeons"] = "Dungeon"
L["Passages"] = "Passaggi"
L["Multiple"] = "Molteplici"
L["Portals"] = "Portali"
L["Zeppelins"] = "Zeppelin"
L["Ships"] = "Navi"
L["Transport"] = "Trasporto"
L["Ogre Waygate"] = "Porta dell'Orco"
L["Old Instances"] = "Vecchie istanze"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Mostra versioni vanilla di dungeon e incursioni come Naxxramas, Scholomance o Scarlet Monastero, che richiedono obiettivi o altre cose"
--Maps "---------"
L["Kalimdor"] = "Kalimdor"
L["Eastern Kingdom"] = "Regno d'Oriente"
L["Outland"] = "Outland"
L["Northrend"] = "Nordania"
L["Pandaria"] = "Pandaria"
L["Draenor"] = "Draenor"
L["Broken Isles"] = "Isole Disperse"
L["Zandalar"] = "Zandalar"
L["Kul Tiras"] = "Kul Tiras"
L["Shadowlands"] = "Terre d'Ombra"
L["Dragon Isles"] = "Isole del Drago"
--6 Core specific "--------"
L["Shift function"] = "Funzione di spostamento"
L["-> MiniMapButton <-"] = "-> Pulsante MiniMappa <-"
L["MapNotes menu window"] = "Finestra del menu MapNotes"
L["All set symbols have been restored"] = "Tutti i simboli impostati sono stati ripristinati"
L["All MapNotes symbols have been hidden"] = "Tutti i simboli di MapNotes sono stati nascosti"
L["is activated"] = "è attivato"
L["is deactivated"] = "è disattivato"
L["are shown"] = "sono mostrati"
L["are hidden"] = "sono nascosti"
L["Left-click => Open/Close"] = "Fare clic con il tasto sinistro => Apri/Chiudi"
L["Right-click => Open/Close"] = "Fare clic con il tasto destro => Apri/Chiudi"
L["Shift + Right-click => hide"] = "Maiusc + clic con il tasto destro => nascondi"
--transport "---------"
L["symbols"] = "simboli"
L["Exit"] = "Uscita"
L["Entrance"] = "Entrata"
L["Passage"] = "Passaggio"
L["Portal"] = "Portale"
L["Portalroom"] = "Sala del portale"
L["The Dark Portal"] = "Il Portale Oscuro"
L["Captain Krooz"] = "Capitano Krooz"
L["Use the Old Keyring"] = "Usa il vecchio portachiavi"
L["Travel"] = "Viaggio"
L["Old Keyring"] = "Vecchio portachiavi"
L["Old Version"] = "Vecchia versione"
L["Secret Portal"] = "Portale segreto"
L["Secret Entrance"]  = "Ingresso segreto"
L["Ogre Waygate to Garrison"] = "Porta degli Ogre alla Guarnigione"
L["in the basement"] = "nel seminterrato"
L["(on the tower)"] = "(sulla torre)"
L["(inside portal chamber)"] = "(all'interno della camera del portale)"
L["(inside building)"] = "(all'interno dell'edificio)"
--places "---------"
L["Graveyard"] = "Cimitero"
L["Library"] = "Biblioteca"
L["Cathedral"] = "Cattedrale"
L["Armory"] = "Armeria"
L["Ashran"] = "Ashran"
L["The Timeways"] = "I tempi"
L["Vol'mar"] = "Vol'mar"
--7 Specific "---------"
L["Shows locations of raids, dungeons, portals ,ship and zeppelins symbols on different maps"] = "Mostra le posizioni di raid, dungeon, portali, simboli di navi e zeppelin su diverse mappe"
L["(Wards of the Dread Citadel - Achievement)"] = "(Protezioni della Cittadella del Terrore - Impresa)"
L["(Memory of Scholomance - Achievement)"] = "(Memoria di Scholomance - Obiettivo)"
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "(viene visualizzato nel gioco solo se la tua fazione sta attualmente occupando Bashal'Aran)"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Questo portale degli Altopiani d'Arathi è attivo solo se la tua fazione sta attualmente occupando Ar'gorok"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Questo portale di Rivafosca è attivo solo se la tua fazione sta attualmente occupando Bashal'Aran"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Grand Ammiraglio Jes-Tereth) ti porterà a Vol'Dun, Nazmir o Zuldazar"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Dread-Admiral Tattersail) ti porterà a Drustvar, Tiragarde Sound o Stormsong Valley"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Vecchio portachiavi \n Ottieni la chiave scarlatta nella \n [Zucca piena di bottino] dall'[Evento di Fine delle Ombre] o dalla [Casa d'aste] \n ora puoi attivare il [Vecchio portachiavi] qui \n per attivare le vecchie versioni del dungeon dal Monastero Scarlatto"
L["Appears first after a certain instance progress \n or requires a certain achievement"] = "Appare per primo dopo un certo progresso \n o richiede un certo risultato"