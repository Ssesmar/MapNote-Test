local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "itIT")
if not L then return end

-- 0 = basics
-- 1 = General tab
-- 2 = Azeroth tab
-- 3 = Continent tab
-- 4 = Dungeon tab
-- 5 = Entrance/Exit/Passage nodes
-- 6 = Transport basics
-- 7 = dungeons/raids

--0
L["Shows locations of raids, dungeons, portals ,ship and zeppelins symbols on different maps"] = "Mostra le posizioni dei raid, dei dungeon, dei portali, dei simboli di navi e zeppelin su diverse mappe"
L["MapNotes menu window"] = "Finestra del menu MapNotes"
L["All set symbols have been restored"] = "Tutti i simboli impostati sono stati ripristinati"
L["All MapNotes symbols have been hidden"] = "Tutti i simboli di MapNotes sono stati nascosti"
L["is activated"] = "è attivato"
L["is deactivated"] = "è disattivato"
L["are shown"] = "sono mostrati"
L["are hidden"] = "sono nascosti"
L["symbols"] = "simboli"
L["Left-click => Open/Close"] = "Clic sinistro => Apri/Chiudi"
L["Right-click => Open/Close"] = "Clicca destro sul tasto destro => Apri/Chiudi"
L["Shift + Right-click => hide"] = "Maiusc + clic con il tasto destro => nascondi"


--1
L["General"] = "Generale"  --General tab
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Impostazioni generali che si applicano contemporaneamente alla mappa Azeroth/Continente/Dungeon"
L["General settings / Additional functions"] = "Impostazioni generali/Funzioni aggiuntive"
L["-> MiniMapButton <-"] = "-> Pulsante Minimappa <-"
L["hide minimap button"] = "nascondi il pulsante della minimappa"
L["Show the minimap button on the minimap"] = "Mostra il pulsante della minimappa sulla minimappa"
L["Hide the minimap button on the minimap"] = "Nascondi il pulsante della minimappa sulla minimappa"
L["hide MapNotes!"] = "nascondi MappaNota!"
L["-> Hide all MapNotes symbols <-"] = "-> Nascondi tutti i simboli MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Disabilita MapNotes, tutte le icone verranno nascoste su ciascuna mappa e tutte le categorie saranno disabilitate"
L["Resizes symbols on the azeroth, continent, zone, dungeon and minimap"] = "Ridimensiona i simboli su Azeroth, continente, zona, dungeon e minimappa"
L["symbol visibility"] = "visibilità dei simboli"
L["Changes the visibility of the symbols"] = "Modifica la visibilità dei simboli"
L["Adventure guide"] = "Guida all'avventura"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Facendo clic con il pulsante sinistro del mouse su un dungeon o raid di MapNotes sulla mappa di Azeroth o del continente si apre il diario (dungeon o raid) per il dungeon o il raid associato (la mappa non può essere visualizzata in modalità a schermo intero)"
L["TomTom waypoints"] = "Waypoint TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Maiusc+clic destro su un dungeon, un raid, un portale, una nave, uno zeppelin, un passaggio o un indicatore di uscita di MapNotes sulla mappa Continente o Dungeon, aggiungi un waypoint TomTom se è installato anche l'add-on TomTom"
L["killed Bosses"] = "hanno ucciso i boss"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "Mostra il numero di boss uccisi nel dungeon o nel raid assegnato quando si passa il mouse su un dungeon grigio o sui simboli del raid sulla mappa della zona o sulla mappa di Azeroth"
L["gray symbols"] = "grigio simboli"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "Utilizza simboli di colore grigio per dungeon e raid in cui hai ucciso dei boss e quindi sei assegnato a quel dungeon o raid fino a quando l'ID non viene reimpostato da Blizzard"
L["multiple points"] = "più punti"
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "Visualizza più punti in grigio se ti sono stati assegnati in >QUALSIASI< del dungeon o raid elencato del punto"
L["enemy faction"] = "fazione nemica"
L["Shows enemy faction (horde/alliance) symbols"] = "Mostra anche i simboli della fazione nemica (orda/alleanza)"
L["Old Instances"] = "Vecchie istanze"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Mostra versioni vanilla di dungeon e incursioni come Naxxramas, Scholomance o Scarlet Monastero, che richiedono obiettivi o altre cose"
L["Informations"] = "Informazioni"
L["Chat commands:"] = "Comandi di chat:"
L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"] = "per mostrare le informazioni di MapNotes nella chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"
L["to open MapNotes menu: /mno, /MNO"] = "per aprire il menu MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "per chiudere il menu MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "per mostrare il pulsante della minimappa: /mnb o /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "per nascondere il pulsante della minimappa: /mnbh o /MNBH"


--2
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "Informazione: i singoli simboli di Azeroth che sono troppo vicini ad altri simboli sulla mappa di Azeroth non sono posizionati accuratamente al 100% sulla mappa di Azeroth! Per un coordinamento preciso utilizzate i punti sulla mappa dei continenti o sulla mappa delle zone"
L["Azeroth map"] = "Mappa di Azeroth"  --Azeroth tab
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Impostazioni della mappa di Azeroth. Alcuni simboli possono essere visualizzati o meno. Se in questa categoria è stata attivata l'opzione (Attiva simboli)"
L["Activate symbols"] = "Attiva i simboli"
L["Activates the display of all possible symbols on the Azeroth map"] = "Attiva la visualizzazione di tutti i possibili simboli sulla mappa di Azeroth"
L["symbol size"] = "dimensione del simbolo"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "Ridimensiona i simboli sulla mappa della zona, sulla mappa di Azeroth e sulla minimappa"
L["Show individual symbols"] = "Mostra i singoli simboli"
L["Raids"] = "Raid"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the Azeroth map"] = "Mostra i simboli dei raid sulla mappa di Azeroth"
L["Dungeons"] = "Dungeon"  -- Dungeon anzeigen
L["Show symbols of dungeons on the Azeroth map"] = "Mostra i simboli dei dungeon sulla mappa di Azeroth"
L["Multiple"] = "Molteplici"  -- Gemischte anzeigen
L["Show symbols of multiple on the Azeroth map"] = "Mostra simboli multipli sulla mappa di Azeroth"
L["Portals"] = "Portali"  -- Portale anzeigen
L["Show symbols of portals on the Azeroth map"] = "Mostra i simboli dei portali sulla mappa di Azeroth"
L["Zeppelins"] = "Zeppelin"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the Azeroth map"] = "Mostra i simboli degli zeppelin sulla mappa di Azeroth"
L["Ships"] = "Navi"  -- Schiffe anzeigen
L["Show symbols of ships on the Azeroth map"] = "Mostra i simboli delle navi sulla mappa di Azeroth"
L["Show all MapNotes for a specific map"] = "Mostra tutte le MapNotes per una mappa specifica"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di Kalimdor MapNotes: dungeon, raid, portali, zeppelin e navi sulla mappa di Azeroth"
L["Eastern Kingdom"] = "Regno d'Oriente"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli dei dungeon, dei raid, dei portali, degli zeppelin e delle navi del Regno Orientale sulla mappa di Azeroth"
L["Northrend"] = "Nordania"  -- Nordend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Northrend MapNotes sulla mappa di Azeroth"
L["Pandaria"] = "Pandaria"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Pandaria MapNotes sulla mappa di Azeroth"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Zandalar MapNotes sulla mappa di Azeroth"
L["Kul Tiras"] = "Kul Tiras"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Kul Tiras sulla mappa di Azeroth"
L["Broken Isles"] = "Isole Disperse"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutta la mappa delle Isole DisperseNote sui simboli di dungeon, raid, portali, zeppelin e navi sulla mappa di Azeroth"
L["Dragon Isles"] = "Isole del Drago"  -- Dracheninseln anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi della mappa di Dragon Isles sulla mappa di Azeroth"


--3
L["Continent map"] = "Mappa del continente"  --Continent tab
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Impostazioni della mappa del continente. Alcuni simboli possono essere visualizzati o meno. Se in questa categoria è stata attivata l'opzione (Attiva simboli)."
L["Activate symbols"] = "Attiva i simboli"
L["Activates the display of all possible symbols on the continent map"] = "Attiva la visualizzazione di tutti i possibili simboli sulla mappa del continente"
L["symbol size"] = "dimensione del simbolo"
L["Resizes symbols on the continent map"] = "Ridimensiona i simboli sulla mappa del continente"
L["Show individual symbols"] = "Mostra i singoli simboli"
L["Raids"] = "Raid"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the continant map and minimap"] = "Mostra i simboli dei raid sulla mappa del continente e sulla minimappa"
L["Dungeons"] = "Dungeon"  -- Dungeon anzeigen
L["Show symbols of dungeons on the continant map and minimap"] = "Mostra i simboli dei dungeon sulla mappa del continente e sulla minimappa"
L["Multiple"] = "Molteplici"  -- Gemischte anzeigen
L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"] = "Mostra i simboli di più (dungeon, incursioni) sulla mappa continentale e sulla minimappa"
L["Portals"] = "Portali"  -- Portale anzeigen
L["Show symbols of portals on the continant map and minimap"] = "Mostra i simboli dei portali sulla mappa del continente e sulla minimappa"
L["Zeppelins"] = "Zeppelin"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the continant map and minimap"] = "Mostra i simboli degli zeppelin sulla mappa del continente e sulla minimappa"
L["Ships"] = "Navi"  -- Schiffe anzeigen
L["Show symbols of ships on the continant map and minimap"] = "Mostra i simboli delle navi sulla mappa del continente e sulla minimappa"
L["Ogre Waygate"] = "Porta dell'Orco"
L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"] = "Mostra i simboli della Porta degli Ogre dalla Guarnigione nel continente di Draenor e sulla mappa della zona"
L["Show all MapNotes for a specific map"] = "Mostra tutte le MapNotes per una mappa specifica"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di Kalimdor MapNotes, dungeon, raid, portali, zeppelin e navi sulla mappa del continente"
L["Eastern Kingdom"] = "Regno d'Oriente"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli dei dungeon, dei raid, dei portali, degli zeppelin e delle navi del Regno Orientale sulla mappa del continente"
L["Outland"] = "Outland"  -- Scherbenwelt anzeigen
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli dei dungeon, dei raid, dei portali, degli zeppelin e delle navi delle note della mappa delle Outland sulla mappa del continente"
L["Northrend"] = "Nordania"  -- Northrend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Northrend MapNotes sulla mappa del continente"
L["Pandaria"] = "Pandaria"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Pandaria MapNotes sulla mappa del continente"
L["Draenor"] = "Draenor"  -- Draenor anzeigen
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli dei dungeon, dei raid, dei portali, degli zeppelin e delle navi di Draenor MapNotes sulla mappa del continente"
L["Broken Isles"] = "Isole Disperse"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli dei dungeon, dei raid, dei portali, degli zeppelin e delle navi delle Isole Disperse sulla mappa del continente"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Zandalar MapNotes sulla mappa del continenten"
L["Kul Tiras"] = "Kul Tiras"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Kul Tiras sulla mappa del continente"
L["Shadowlands"] = "Terre d'Ombra"  -- Schattendlande anzeigen
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Shadowlands MapNotes sulla mappa del continente"
L["Dragon Isles"] = "Isole del Drago"  -- Dragonflight anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostra tutti i simboli di dungeon, raid, portali, zeppelin e navi di Dragon Isles sulla mappa del continente"


--4
L["Dungeon map"] = "mappa dei sotterranei" --DungeonMap Tab
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Impostazioni della mappa del dungeon. Alcuni simboli possono essere visualizzati o meno. Se in questa categoria è stata attivata l'opzione (Attiva simboli). Mostra i punti di uscita e di passaggio di MapNotes sulla mappa del dungeon (questi simboli sono solo a scopo di orientamento e quando si fa clic su di essi non accade nulla)"
L["Activate symbols"] = "Attiva i simboli"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Abilita la visualizzazione di tutti i possibili simboli sulla mappa del dungeon (questi simboli sono solo a scopo di orientamento e non succede nulla quando si fa clic su di essi)"
L["Exits"] = "Esce"
L["Show symbols of MapNotes dungeon exit on the dungeon map"] = "Mostra i simboli dell'uscita del dungeon di MapNotes sulla mappa del dungeon"
L["Passages"] = "Passaggi"
L["Show symbols of passage on the dungeon map"] = "Mostra i simboli di passaggio sulla mappa del dungeon"
L["Portals"] = "Portali"  -- Portale anzeigen
L["Show symbols of portals on the dungeon map"] = "Mostra i simboli dei portali sulla mappa del dungeon"


--5 Entrance/Exit/Passage
L["Exit"] = "Uscita"
L["Entrance"] = "Entrata"
L["Passage"] = "Passaggio"


--6 Transport basics
L["Portal"] = "Portale"
L["Ship"] = "Nave" 
L["Zeppelin"] = "Zeppelin"
L["Portalroom"] = "Sala del Portale"
L["(inside building)"] = "(all'interno dell'edificio)"
L["(at basement)"] = "(al seminterrato)"
L["(inside portal chamber)"] = "(all'interno della camera del portale)"
L["(on the tower)"] = "(sulla torre)"
-- Transport place -- Luoghi di trasporto
L["Ashran"] = "Ashran"
L["Azsuna"] = "Azsuna"
L["Boralus"] = "Boralo"
L["Boralus Harbor, Tiragarde Sound"] = "Porto di Boralus, Baia di Tiragarde"
L["Booty Bay, Stranglethorn Vale"] = "Baia del Bottino, Valle di Rovotorto"
L["Caverns of Time"] = "Caverna del tempo"
L["Drustvar"] = "Drustvar"
L["Deepholm"] = "Sfogliaprofonda"
L["Dalaran"] = "Dalaran"
L["Dalaran, Crystalsong Forest"] = "Dalaran, Foresta del Canto di Cristallo"
L["Dazar'alor"] = "Dazar'alor"
L["Exodar"] = "Exodar"
L["Eastern Plaguelands"] = "Plaguends orientale"
L["Echo Isles, Durotar"] = "Isole dell'Eco, Durotar"
L["Hellfire Peninsula"] = "Penisola del fuoco infernale"
L["Howling Fjord"] = "Fiordo ululante"
L["Hyjal"] = "Hyjal"
L["Ironforge"] = "Forgiardente"
L["Isle of Thunder"] = "Isola del Tuono"
L["Isle of Quel'Danas"] = "Isola di Quel'Danas"
L["Lion's Watch"] = "Guardia del leone"
L["Mechagon"] = "Meccagon"
L["Menethil Harbor, Wetlands"] = "Porto di Menethil, zone umide"
L["Nazjatar"] = "Nazzatar"
L["Nazmir"] = "Nazmir"
L["Ogre Waygate to Garrison"] = "Porta degli Ogre alla Guarnigione"
L["Ohn'ahran Plains"] = "Pianure di Ohn'ahran"
L["Orgrimmar"] = "Orgrimmar"
L["Oribos"] = "Oribo"
L["Ruins of Lordaeron, Undercity"] = "Rovine di Lordaeron, Sepulcra"
L["Ratchet, Northern Barrens"] = "Ratchet, Barrens settentrionali"
L["Stormsong Valley"] = "Valle del Canto della Tempesta"
L["Stormwind City"] = "Città di Stormwind"
L["Silithus"] = "Silito"
L["Stranglethorn"] = "Spina strangolatrice"
L["Shado-Pan Garrison, TownlongWastes"] = "Guarnigione Shandaren, Distese di Tong Long"
L["Silvermoon City"] = "Città di Luna d'Argento"
L["Stormshield, Ashran"] = "Scudo anti-Tempesta, Ashran"
L["Shattrath"] = "Shattrath"
L["The Dark Portal"] = "Il Portale Oscuro"
L["The Emerald Dream"] = "Il sogno di smeraldo"
L["Tol Barad"] = "Tol Barad"
L["Tiragarde Sound"] = "Suono di Tiragarde"
L["Twilight Highlands"] = "Altipiani del Crepuscolo"
L["Thunderbluff"] = "Blocco del tuono"
L["The Timeways"] = "Le vie del tempo"
L["Jade Forest"] = "Foresta di Giada"
L["Uldum"] = "Uldum"
L["Vol'Dun"] = "Vol'Dun"
L["Vol'mar"] = "Vol'mar"
L["Vashj'ir"] = "Vashj'ir"
L["Valdrakken"] = "Valdrakken"
L["Valiance Keep, Borean Tundra"] = "Forte del valore, tundra boreale"
L["Badlands"] = "Calanchi"
L["Warspear, Ashran"] = "Lancia da guerra, Ashran"
L["Waking Shores, Dragon Isles"] = "Risvegli del Risveglio, Isole del Drago"
L["Zuldazar"] = "Zuldazar"
L["Zandalar"] = "Zandalar"
-- other transport -- altri trasporti
L["Back to Zuldazar"] = "Ritorno a Zuldazar"
L["Back to Boralus"] = "Ritorno a Boralus"
L["(Captain Krooz) will take you to Mechagon"] = "(Il Capitano Krooz) ti porterà a Meccagon"
L["(Captain Krooz) will take you back to Zuldazar"] = "(Il Capitano Krooz) ti riporterà a Zuldazar"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Il Gran Ammiraglio Jes-Tereth) ti porterà a Vol'Dun, Nazmir o Zuldazar"
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "(viene visualizzato nel gioco solo se la tua fazione sta attualmente occupando Bashal'Aran)"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(L'Ammiraglio del Terrore Tattersail) ti porterà a Drustvar, alla Baia di Tiragarde o alla Valle dei Sacraonda"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Questo portale Arathi -hochland è attivo solo se la tua fazione è attualmente occupata da AR'GOROK"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Questo portale della costa oscura è attivo solo se la tua fazione è attualmente occupata da Bashal'aran"

--7 old dungeons/raids
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Vecchia versione dell'Armeria del Monastero Scarlatto \n (è necessario attivare il [Vecchio Portachiavi] a 48.33 55.88 all'interno del Monastero Scarlatto)"
L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"] = " Vecchia versione di Naxxramas - Ingresso segreto \n (Protezioni della Cittadella del Terrore - Impresa)"
L["Old version of Scarlet Monastery Cathedral \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = " Vecchia versione della Cattedrale del Monastero Scarlatto \n (è necessario attivare il [Vecchio Portachiavi] a 48.33 55.88 all'interno del Monastero Scarlatto)"
L["Old version of Scarlet Monastery Graveyard \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"]  " Vecchia versione del Cimitero del Monastero Scarlatto \n (è necessario attivare il [Vecchio Portachiavi] a 48.33 55.88 all'interno del Monastero Scarlatto"
L["Old version of Scarlet Monastery Library \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = " Vecchia versione della Biblioteca del Monastero Scarlatto \n (è necessario attivare il [Vecchio Portachiavi] a 48.33 55.88 all'interno del Monastero Scarlatto)"
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = " Vecchia versione dell'Armeria del Monastero Scarlatto \n (è necessario attivare il [Vecchio Portachiavi] a 48.33 55.88 all'interno del Monastero Scarlatto)"
L["Old version of Scholomance - Secret Entrance \n (Memory of Scholomance - Achievement)"] = " Vecchia versione di Scholomance - Ingresso segreto \n (Memoria di Scholomance - Obiettivo)"
L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"] = " Vecchio portachiavi \n Ottieni la chiave scarlatta nella \n [Zucca piena di bottino] dall'[Evento di Fine delle Ombre] o dalla [Casa d'aste] \n ora puoi attivare il [Vecchio portachiavi] qui \n per attivare le vecchie versioni del dungeon dal Monastero Scarlatto "