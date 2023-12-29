local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "deDE")
if not L then return end

-- 0 = basics
-- 1 = General tab
-- 2 = Azeroth tab
-- 3 = Continent tab
-- 4 = Dungeon tab
-- 5 = Entrance/Exit/Passage nodes
-- 6 = Transport basics
-- 7 = dungeons/raids

--0 basics
L["Shows locations of raids, dungeons, portals ,ship and zeppelins symbols on different maps"] = "Zeigt die Positionen von Schlachtzügen, Portalen, Schiffe und Zeppeline-symbolen auf verschiedenen Karten an"
L["MapNotes menu window"] = "MapNotes Menüfenster"
L["All set symbols have been restored"] = "Alle eingestellten Symbole wurden wiederhergestellt"
L["All MapNotes symbols have been hidden"] = "Alle MapNotes Symbole wurden ausgeblendet"
L["is activated"] = "ist aktiviert"
L["is deactivated"] = "ist deaktiviert"
L["are shown"] = "werden angezeigt"
L["are hidden"] = "werden ausgeblendet"
L["symbols"] = "Symbole"
L["Left-click => Open/Close"] = "Linksclick => Öffnen/Schließen"
L["Right-click => Open/Close"] = "Rechtsclick => Öffne/Schließen"
L["Shift + Right-click => hide"] = "Shift + Rechtsklick => verstecke"


--1 General tab
L["General"] = "Allgemein"  
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Allgemeine Einstellungen die für Azeroth / Continent / Dungeon Karte gleichzeitig gelten"
L["General settings / Additional functions"] = "Allgemeine einstellung / Zusatz Funktionen"
L["-> MiniMapButton <-"] = "Minikarten Knopf"
L["hide minimap button"] = "verstecke Minikarten Knopf"
L["Show the minimap button on the minimap"] = "Zeigt den Minimapknopf auf der Minimap an"
L["Hide the minimap button on the minimap"] = "Versteckt den Minimapknopf auf der Minimap an"
L["hide MapNotes!"] = "verstecke MapNotes!"
L["-> Hide all MapNotes symbols <-"] = "-> Verstecke alle MapNotes Symbole <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Alle Symbole werden auf jeder Karte ausgeblendet und alle Kategorien werden deaktiviert"
L["Resizes symbols on the azeroth, continent, zone, dungeon and minimap"] = "Ändert die Größe der Symbole auf Azeroth, Kontinent, Zone, Dungeon und Minikarte"
L["symbol visibility"] = "Symbolsichtbarkeit"
L["Changes the visibility of the symbols"] = "Verändert die Sichbarkeit der Symbole"
L["Adventure guide"] = "Abenteuerführer"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Linksklick auf ein Schlachtzug (grün), Dungeon (blau) oder Mehrfachsymbol (grün&blau) von MapNotes auf der Karte öffnet die dazugehörige Karte des Dungeons oder Schlachtzug im Abenteuerführers (die Karte darf nicht im Vollbild geöffnet sein)"
L["TomTom waypoints"] = "Wegpunkte"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Shift+Rechtsklick auf ein Schlachtzug, Dungeon, Mehrfachsymbol, Portale, Schiffe, Zeppeline, Durchgänge oder Ausgänge von MapNotes auf der Kontinent oder Dungeonkarte erzeugt einen TomTom wegpunkt zu diesem Punkt (dafür muss aber das Addon TomTom installiert sein)"
L["killed Bosses"] = "getötete Bosse"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "Bei Dungeons und Schlachtzüge bei denen du Bosse getötet hast und somit eine ID zugewiesen wurde, wird dir bei diesem Symbol auf der Azeroth und Kontinentkarte die Anzahl der getötteten bzw noch übrigen Bosse angezeigt, sobald du mit der Maus über dieses Dungeon oder Schlachtzugsymbol darüber gehst (zum beispiel 2/8 Mythisch, 4/7 Heroisch usw)"
L["gray symbols"] = "graue Symbole"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "Bist du bei einem Dungeon oder Schlachtzug zugewiesen also hast eine ID, färbt diese Option das Symbol des Dungeons oder Raids in grau ein bis diese ID zurückgesetzt wurde , damit du siehst, welchen Dungeon oder Schlachtzug du angefangen bzw erledigt hast"
L["multiple points"] = "Mehrfache"
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "Färbt Mehrfachpunkte von Dungeons und oder Schlachtzügen in grau ein, wenn du bei irgendeinem Dungeon oder Schlachtzug dieses Mehrfachpunktes zugewiesen bist also eine ID hast, damit du siehst, dass du irgendeinem Dungeon oder Schlachtzug des Mehrfachpunktes angefangen bzw erledigt hast"
L["enemy faction"] = "Fraktionen"
L["Shows enemy faction (horde/alliance) symbols"] = "Zeige die Symbole der gegnerischen Fraktion (Horde/Allianz) an"
L["Old Instances"] = "Alte Instanzen"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Zeige Vanilla Versionen von Dungeons und Schlachtzügen an wie zum beispiel Naxxramas, Scholomance oder das Scharlachrote Kloster wofür Erfolge oder andere Sachen vorrausgesetzt werden"
L["Informations"] = "Informationen"
L["Chat commands:"] = "Chat Befehle:"
L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"] = "Zum Informationen im Chat anzuzeigen: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"
L["to open MapNotes menu: /mno, /MNO"] = "zum öffnen des MapNotes menüs: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "zum schließen des MapNotes menüs: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "zum anzeigen des Minikarten Knopfs: /mnb oder /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "zum verstecken des Minikarten knopfs: /mnbh oder /MNBH"


--2 Azeroth tab
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "Information: Einzelne Azeroth Symbole die zunah an anderen Symbolen auf der Azerothkarte sind, sind auf der Azerothkarte nicht 100% genau plaziert!"
L["Azeroth map"] = "Azeroth Karte" 
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Einstellungen für die Azeroth Karte. Hier können bestimmte Symbole angezeigt oder nicht angezeigt werden. Solange die Option (Azeroth Symbole aktivieren) aktiviert wurde"
L["Activate symbols"] = "Symbole aktivieren"
L["Activates the display of all possible symbols on the Azeroth map"] = "Aktiviert die Anzeige aller MapNotes Symbole auf der Azeroth Karte"
L["symbol size"] = "Symbolgröße"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "Verändert die Größe von MapNotes Symbolen auf der Zonenkarte, Azeroth Karte und Minikarte"
L["Show individual symbols"] = "einzelne MapNotes Symbole anzeigen"
L["Raids"] = "Schlachtzüge"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the Azeroth map"] = "Zeigt alle MapNotes Schlachtzugsymbole auf der Azeroth Karte an"
L["Dungeons"] = "Dungeons"  -- Dungeon anzeigen
L["Show symbols of dungeons on the Azeroth map"] = "Zeigt alle MapNotes Dungeonsymbole auf der Azeroth Karte an"
L["Multiple"] = "Mehrfach"  -- Gemischte anzeigen
L["Show symbols of multiple on the Azeroth map"] = "Zeigt alle MapNotes Mehrfachsymbole auf der Azeroth Karte an"
L["Portals"] = "Portale"  -- Portale anzeigen
L["Show symbols of portals on the Azeroth map"] = "Zeigt alle MapNotes Portalsymbole auf der Azeroth Karte an"
L["Zeppelins"] = "Zeppeline"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the Azeroth map"] = "Zeigt alle MapNotes Zeppelinsymbole auf der Azeroth Karte an"
L["Ships"] = "Schiffe"  -- Schiffe anzeigen
L["Show symbols of ships on the Azeroth map"] = "Zeigt alle MapNotes Schiffsymbole auf der Azeroth Karte an"
L["Show all MapNotes for a specific map"] = "Alle Kartenpunkte für eine bestimmte Karte anzeigen"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Kalimdor MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte an"
L["Eastern Kingdom"] = "Östliche Königreiche"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Östliche Königreich MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte an"
L["Northrend"] = "Nordend"  -- Nordend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Nordend MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte an"
L["Pandaria"] = "Pandaria"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Pandaria MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte an"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Zandalar MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte an"
L["Kul Tiras"] = "Kul Tiras"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Kul Tiras MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte an"
L["Broken Isles"] = "Verheerten Inseln"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Verheerten Inseln MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte an"
L["Dragon Isles"] = "Dracheninseln"  -- Dracheninseln anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Dracheninsel MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte an"


--3 Continent tab
L["Continent map"] = "Kontinent Karte" 
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Kontinentkarteneinstellungen. Bestimmte Symbole können angezeigt oder nicht angezeigt werden. Sofern in dieser Kategorie die Option (Symbole aktivieren) aktiviert wurde"
L["Activate symbols"] = "Symbole aktivieren"
L["Activates the display of all possible symbols on the continent map"] = "Aktiviert die Anzeige aller MapNotes Symbole auf der Kontinent Karte"
L["symbol size"] = "Symbolgröße"
L["Resizes symbols on the continent map"] = "Verändert die Größe von MapNotes Symbolen auf der Kontinent Karte"
L["Show individual symbols"] = "einzelne MapNotes Symbole anzeigen"
L["Raids"] = "Schlachtzüge"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the continant map and minimap"] = "Zeigt alle MapNotes Schlachtzugsymbole auf der Kontinent Karte und Minikarte an"
L["Dungeons"] = "Dungeons"  -- Dungeon anzeigen
L["Show symbols of dungeons on the continant map and minimap"] = "Zeigt alle MapNotes Dungeonsymbole auf der Kontinent Karte und Minikarte an"
L["Multiple"] = "Mehrfach"  -- Gemischte anzeigen
L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"] = "Zeigt alle MapNotes Mehrfachsymbole auf der Kontinent Karte und Minikarte an"
L["Portals"] = "Portale"  -- Portale anzeigen
L["Show symbols of portals on the continant map and minimap"] = "Zeigt alle MapNotes Portalsymbole auf der Kontinent Karte und Minikarte an"
L["Zeppelins"] = "Zeppeline"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the continant map and minimap"] = "Zeigt alle MapNotes Zeppelinsymbole auf der Kontinent Karte und Minikarte an"
L["Ships"] = "Schiffe"  -- Schiffe anzeigen
L["Show symbols of ships on the continant map and minimap"] = "Zeigt alle MapNotes Schiffsymbole auf der Kontinent Karte und Minikarte an"
L["Ogre Waygate"] = "Ogerportale"
L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"] = "Zeigt Ogerportale der Garnison auf der Draenor Kontinent und Zonenkarte an"
L["Show all MapNotes for a specific map"] = "Alle Kartenpunkte für eine bestimmte Karte anzeigen"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Kalimdor MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["Eastern Kingdom"] = "Östliche Königreiche"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Östliche Königreiche MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["Outland"] = "Scherbenwelt"  -- Scherbenwelt anzeigen
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Scherbenwelt MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["Northrend"] = "Nordend"  -- Northrend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Northend MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["Pandaria"] = "Pandaria"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Pandaria MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["Draenor"] = "Draenor"  -- Draenor anzeigen
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Draenor MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["Broken Isles"] = "Verheerten Inseln"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Verheerten Inseln MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Zandalar MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["Kul Tiras"] = "Kul Tiras"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Kul Tiras MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["Shadowlands"] = "Schattenlande"  -- Schattendlande anzeigen
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Schattenlande MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["Dragon Isles"] = "Dracheninseln"  -- Dragonflight anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Dracheninsel MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"


--4 DungeonMap Tab
L["Dungeon map"] = "Dungeon Karte" 
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Dungeon-Karteneinstellungen. Bestimmte Symbole können angezeigt oder nicht angezeigt werden. Sofern in dieser Kategorie die Option (Symbole aktivieren) aktiviert wurde. Zeigt MapNotes-Ausgangs- und Durchgangspunkte auf der Dungeon-Karte an (diese Symbole dienen lediglich der Orientierung und es passiert nichts, wenn man darauf klickt)"
L["Activate symbols"] = "Symbole aktivieren"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Aktiviert die Anzeige aller möglichen Symbole auf der Dungeon Karte (diese Symbole dienen lediglich der Orientierung und es passiert nichts, wenn man darauf klickt)"
L["Exits"] = "Ausgänge"
L["Show symbols of MapNotes dungeon exit on the dungeon map"] = "Zeige Ausgänge auf der Dungeonkarte"
L["Passages"] = "Durchgänge"
L["Show symbols of passage on the dungeon map"] = "Zeige Durchgänge auf der Dungeonkarte"
L["Portals"] = "Portale"  -- Portale anzeigen
L["Show symbols of portals on the dungeon map"] = "Zeige Portale auf der Dungeonkarte"


--5 Entrance/Exit/passage nodes
L["Exit"] = "Ausgang"
L["Entrance"] = "Eingang"
L["Passage"] = "Durchgang"


--6 Transport basics
L["Portal"] = "Portal"
L["Ship"] = "Schiff"
L["Zeppelin"] = "Zeppelin"
L["Portalroom"] = "Portalraum"
L["(inside building)"] = "(im Gebäude)"
L["(at basement)"] = "(im Keller)"
L["(inside portal chamber)"] = "(in der Portalkammer)"
L["(on the tower)"] = "(auf dem Turm)"
-- Transport places
L["Ashran"] = "Ashran"
L["Azsuna"] = "Azsuna"
L["Boralus"] = "Boralus"
L["Boralus Harbor, Tiragarde Sound"] = "Hafen von Boralus, Tiragardesund"
L["Booty Bay, Stranglethorn Vale"] = "Beutebucht, Schlingendorntal"
L["Caverns of Time"] = "Höhlen der Zeit"
L["Drustvar"] = "Drustvar"
L["Deepholm"] = "Exodar"
L["Dalaran"] = "Dalaran"
L["Dalaran, Crystalsong Forest"] = "Dalaran, Kristallsangwald"
L["Dazar'alor"] = "Dazar'alor"
L["Exodar"] = "Exodar"
L["Eastern Plaguelands"] = "Östliche Pestländer"
L["Echo Isles, Durotar"] = "Echo Inseln, Durotar"
L["Hellfire Peninsula"] = "Höllenfeuerhalbinsel"
L["Howling Fjord"] = "Heulender Fjord"
L["Hyjal"] = "Hyjal"
L["Ironforge"] = "Eisenschmiede"
L["Isle of Thunder"] = "Insel des Donners"
L["Isle of Quel'Danas"] = "Insel von Quel'Danas"
L["Lion's Watch"] = "Löwenwacht"
L["Mechagon"] = "Mechagon"
L["Menethil Harbor, Wetlands"] = "Hafen von Menethil, Sumpfland"
L["Nazjatar"] = "Nazjatar"
L["Nazmir"] = "Nazmir"
L["Ogre Waygate to Garrison"] = "Ogerportal zur Garnison"
L["Ohn'ahran Plains"] = "Ebenen von Ohn'ahra"
L["Orgrimmar"] = "Orgrimmar"
L["Oribos"] = "Oribos"
L["Ruins of Lordaeron, Undercity"] = "Ruinen von Lordaeron, Unterstadt"
L["Ratchet, Northern Barrens"] = "Ratschet, Nördliches Brachland"
L["Stormsong Valley"] = "Sturmsangtal"
L["Stormwind City"] = "Sturmwind"
L["Silithus"] = "Silithus"
L["Stranglethorn"] = "Schlingendorntal"
L["Shado-Pan Garrison, TownlongWastes"] = "Shado-Pan Garnison, Tonlongsteppe"
L["Silvermoon City"] = "Silbermond"
L["Stormshield, Ashran"] = "Sturmschild, Ashran"
L["Shattrath"] = "Shattrath"
L["The Dark Portal"] = "Das Dunkle Portal"
L["The Emerald Dream"] = "Der Smaragdgrüne Traum"
L["Tol Barad"] = "Tol Barad"
L["Tiragarde Sound"] = "Tiragardesund"
L["Twilight Highlands"] = "Schattenhochland"
L["Thunderbluff"] = "Donnerfels"
L["The Timeways"] = "die Zeitwege"
L["Jade Forest"] = "Jadewald"
L["Uldum"] = "Uldum"
L["Vol'Dun"] = "Vol'Dun"
L["Vol'mar"] = "Vol'mar"
L["Vashj'ir"] = "Vashj'ir"
L["Valdrakken"] = "Valdrakken"
L["Valiance Keep, Borean Tundra"] = "Valianzfeste, Boreanische Tundra"
L["Badlands"] = "Ödland"
L["Warspear, Ashran"] = "Kriegsspeer, Ashran"
L["Waking Shores, Dragon Isles"] = "Küste des Erwachens, Dracheninseln"
L["Zuldazar"] = "Zuldazar"
L["Zandalar"] = "Zandalar"
--9 other transports
L["Back to Zuldazar"] = "Zurück nach Zuldazar"
L["Back to Boralus"] = "Zurück nach Boralus"
L["(Captain Krooz) will take you to Mechagon"] = "(Kapitänin Kruus) bringt dich nach Mechagon"
L["(Captain Krooz) will take you back to Zuldazar"] = "(Kapitänin Kruus) bringt dich zurück nach Zuldazar"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Großadmiral Jes-Tereth) bringt dich nach Vol'Dun, Nazmir oder Zuldazar"
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "(Es wird nur im Spiel angezeigt, wenn Ihre Fraktion derzeit Bashal'Aran besetzt)"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Schreckensadmiralin Segelriss) bringt dich nach Drustvar, Tiragardesund oder Sturmsangtal"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Dieses Arathihochland Portal ist nur aktiv, wenn eure Fraktion gerade Ar'gorok besetzt"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Dieses Dunkelküste Portal ist nur aktiv, wenn eure Fraktion gerade Bashal'Aran besetzt"

--7 old dungeons/raids
L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"] = "Alte Version von Naxxramas Geheimer Eingang \n (Schutze der Zitadelle des Schreckens – Erfolg)"
L["Old version of Scarlet Monastery Cathedral \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Alte Version der Kathedrale des Scharlachroten Klosters \n (der alte Schlüsselbund muss bei 48,33 55,88 im Scharlachroten Kloster aktiviert werden)"
L["Old version of Scarlet Monastery Graveyard \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Alte Version der Friedhof des Scharlachroten Klosters \n (der alte Schlüsselbund muss bei 48,33 55,88 im Scharlachroten Kloster aktiviert werden)"
L["Old version of Scarlet Monastery Library \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Alte Version der Bibliothek des Scharlachroten Klosters \n (der alte Schlüsselbund muss bei 48,33 55,88 im Scharlachroten Kloster aktiviert werden)"
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Alte Version der Waffenkammer des Scharlachroten Klosters \n (der alte Schlüsselbund muss bei 48,33 55,88 im Scharlachroten Kloster aktiviert werden)"
L["Old version of Scholomance - Secret Entrance \n (Memory of Scholomance - Achievement)"] = "Alte Version von Scholomance – Geheimer Eingang \n (Erinnerung an Scholomance – Erfolg)"
L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Alter Schlüsselbund \n Den Scharlachroten Schlüssel erhältst du im \n [Beutegefüllter Kürbis] beim [Schlotternächte Event] oder im [Auktionshaus] \n jetzt kannst du den [Alten Schlüsselbund] hier aktivieren \n um alte Dungeonversionen zu aktivieren aus dem Scharlachroten Kloster"