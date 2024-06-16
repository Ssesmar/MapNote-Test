local ADDON_NAME = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "deDE")
if not L then return end

--0 Restore
L["Restore all deleted icons for different types of maps"] = "Stellen Sie alle gelöschten Symbole für verschiedene Kartentypen wieder her"
L["Restore all deleted icons"] = "Stellen Sie alle gelöschten Symbole wieder her"
L["which you removed with Alt + middle mouse button function"] = "die Sie mit Alt + mittlerer Maustaste entfernt haben"
L["All deleted icons have been restored"] = "Alle gelöschten Symbole wurden wiederhergestellt"
--0.1 Sync function
L["synchronizes"] = "synchronisiert"
L["Synchronizes the Zones tab with the Minimap tab"] = "Synchronisiert die Registerkarte „Zonen“ mit der Registerkarte „Minikarte“"
L["Which deactivates the functions from the Minimap tab and is now controlled together by the Zones tab"] = "Dadurch werden die Funktionen auf der Registerkarte „Minikarte“ deaktiviert und jetzt gemeinsam über die Registerkarte „Zonen“ gesteuert"
L["This will delete all Minimap settings and replace them with those from Zones tab"] = "Dadurch werden alle Minikarteneinstellungen gelöscht und durch die Einstellungen auf der Registerkarte „Zonen“ ersetzt"
L["Synchronizes the Capitals tab with the Capitals - Minimap tab"] = "Synchronisiert die Registerkarte „Hauptstädte“ mit der Registerkarte „Hauptstädte – Minikarte“"
L["Which deactivates the functions from the Capitals - Minimap tab and is now controlled together by the Capitals tab"] = "Dadurch werden die Funktionen der Registerkarte „Hauptstädte – Minikarte“ deaktiviert und werden nun gemeinsam über die Registerkarte „Hauptstädte“ gesteuert"
L["This will delete all Capitals - Minimap settings and replace them with those from Capitals tab"] = "Dadurch werden alle Einstellungen für „Hauptstädte – Minikarte“ gelöscht und durch die Einstellungen auf der Registerkarte „Hauptstädte“ ersetzt"
--1 Capitals
L["Leather Armor"] = "Lederrüstung"
L["Heavy Armor"] = "Kettenrüstung"
L["Plate Armor"] = "Plattenrüstung"
L["Cloth Armor"] = "Stoffrüstung"
L["Quartermaster"] = "Rüstmeister"
L["The Scryers"] = "Die Seher"
L["The Aldor"] = "Die Aldor"
L["Paths"] = "Wege"
L["Capitals"] = "Hauptstädte"
L["Alchemy"] = "Alchemie"
L["Engineer"] = "Ingenieur"
L["Jewelcrafting"] = "Juwelierkunst"
L["Leatherworking"] = "Lederverarbeitung"
L["Blacksmithing"] = "Schmiedekunst"
L["Tailoring"] = "Schneiderei"
L["Skinning"] = "Kürschnerei"
L["Mining"] = "Bergbau"
L["Herbalism"] = "Kräuterkunde"
L["Enchanting"] = "Verzauberungskunst"
L["Warspear"] = "Kriegspeer"
L["Stormshield"] = "Sturmschild"
L["Shrine2Moons"] = "Schrein2Monde"
L["Shrine7Stars"] = "Schrein7Sterne"
L["Starting on the first Sunday of each month for one week"] = "Beginnt jeweils am ersten Sonntag im Monat für eine Woche"
L["Enables the display of icons for a specific capital city"] = "Aktiviert die Anzeige von Symbolen für eine bestimmte Hauptstadt"
L["This MapNotes icons shows various icons that are too close to each other together"] = "Durch dieses MapNotes Symbol werden verschiedene Symbole, die zu nahe beieinander liegen zusammengefasst dargestellt"
L["Only affects instance passage icons, not path icons such as exit icons or icons on an instance map or the Capitals category / Minimap Capitals"] = "Betrifft nur Instanzdurchgangssymbole, nicht Wegesymbole wie Ausgangssymbole oder Symbole auf einer Instanzkarte oder der Kategorie Hauptstädte / Minikarte Hauptstädte"
L["Zones"] = "Zonen"
L["Continents"] = "Kontinente"
--2 Unexplored Areas function
L["Unexplored Areas"] = "Unerforschte Gebiete"
L["Unexplored Areas visibility"] = "Sichtbarkeit Unerforschte Gebiete"
L["Changes the visibility of unexplored areas"] = "Ändert die Sichtbarkeit unerforschter Gebiete"
L["Fog"] = "Nebel"
L["Mist of the Unexplored"] = "Nebel des Unerforschten"
L["Leaves the unexplored areas revealed but adds a slight fog so you can still see which ones you haven't explored yet"] = "Lässt die unerforschten Gebiete aufgedeckt aber fügt einen leichten Nebel  hinzu, damit man trotzdem sehen kann, welche man noch nicht erforscht hat"
L["Reveals unexplored areas and shows the individual areas of each zone that are actually still unexplored"] = "Deckt unerforschte Gebiete auf und zeigt die einzelnen Gebiete jeder Zone an, die eigentlich noch unerforscht sind"
--3 Info tab
L["Info"] = "Info"
L["A description of what this addon does and what functions it offers"] = "Eine Beschreibung, was dieses Addon macht und welche Funktionen es bietet"
L["A collection of various icons on various maps from previous expansions up to Dragonflight"] = "Eine Sammlung von verschiedenen Symbolen auf verschiedenen Karten von allen Erweiterungen"
L["Displays instance entrances, portals, ships, zeppelins, exits, passage, enemy faction and other transport icons"] = "Zeigt Instanzen, Portale, Schiffe, Zeppeline, Ausgänge, Passagen, feindliche Fraktionen und andere symbole an"
L["All icons can be activated or deactivated separately!"] = "Alle Symbole können separat aktiviert oder deaktiviert werden!"
L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] = "Shift Funktion Option: Sie können die MapNotes-Symbole mit oder ohne Umschalt-Klick verwenden"
L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"] = "MapNotes ausblenden! Option: Alle Symbole können mit einem einzigen Klick aus/angezeigt werden"
L["Normally on a maximized map you cannot use instance icons from Blizzard or other addons that would open the adventure guide. But not for MapNotes! You can use all functions on minimized or maximized maps!"] = "Normalerweise können Sie auf einer maximierten Karte keine Instanzsymbole von Blizzard oder anderen Addons verwenden, die den Abenteuerführer öffnen würden. Aber nicht für MapNotes! Sie können alle Funktionen auf minimierten oder maximierten Karten nutzen!"
L["Worldmap function"] = "Weltkarte Funktion"
L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] = "Rechtsklick auf ein Symbol fügt einen TomTom-Wegpunkt hinzu (außer auf Azeroth und Minikarte)"
L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] = "Linksklick auf ein Instanzsymbol öffnet den entsprechenden Dungeon im Abenteuerführer"
L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] = "Azeroth/Kontinentkarte: Linksklick auf ein Transportsymbol, öffnet sich die Karte wo das Symbol ist"
L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"] = "Zonenkarte: Linksklick auf ein Transportsymbol, öffnet sich die Karte, vom Ziel des Symbols"
L["Example zone map: => Orgrimmar. Left-click on this icon opens the map of Orgrimmar"] = "Beispiel Zonenkarte: '=> Orgrimmar' Linksklick auf dieses Symbol, öffnet sich die Karte von Orgrimmar"
L["Example Azeroth/continent map: 'Jade Forest Portal => Orgrimmar' Left-click on this symbol opens the map of the Jade Forest. So you can see where you need to go to get to the portal"] = "Beispiel Azeroth/Kontinentkarte: 'Jadewald Portal => Orgrimmar' Linksklick auf das Symbol, öffnet die Karte vom Jadewald. Damit Sie sehen, wo Sie hingehen müssen, um zum Portal zu gelangen"
L["Maximized Map function"] = "Maximierte Kartenfunktion"
L["After the adventure guide is opened using a MapNote instance icon and you then switch to the dungeon map using the 'Show map' option in the adventure guide, the map is shown reduced in size so that you can move with the character within the instance and see where you have to go. This minimized map feature ends when you close the map or once! Press the “World map on/off” button (which you have set under 'ESC - Keyboard assignment - Interface function'), whereupon the map will be maximized"] = "Nachdem der Abenteuerführer durch ein MapNote Instanzsymbol geöffnet wurde und man dann durch die Option 'Karte anzeigen' im Abenteuerführer auf die Dungeonkarte wechselt, wird die Karte verkleinert angezeigt, damit man sich mit dem Charakter innerhalb der Instanz bewegen kann und sieht wohin man gehen muss. Diese minimierte Kartenfunktion endet, wenn Sie die Karte schließen oder einmal! auf die Taste „Weltkarte ein/aus“ drücken (die Sie unter 'ESC - Tastaturbelegung - Interfacefunktion' eingestellt haben), woraufhin die Karte maximiert wird"
L["Minimap button function"] = "Minikartenfunktion"
L["Left-click opens or close the MapNote setting menu"] = "Linksklick öffnet oder schließt das MapNote Einstellungsmenü"
L["Right-click opens or close the HandyNote setting menu"] = "Rechtsklick öffnet oder schließt das HandyNote Einstellungsmenü"
L["Shift+Right-click hide the minimap button"] = "Shift+Rechtsklick, blendet den Minikartenknopf aus"
L["Chat commands"] = "Chat-Befehle"
--4 General
L["Description"] = "Beschreibung"
L["Position of the real Instance Entrance"] = "Position des wirklichen Instanzeingangs"
L["Way to the Instance Entrance"] = "Weg zum Instanzeingang"
L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] = "Deaktiviert auch alle Blizzard Instance Symbole auf der Zonenkarte. Diese können aber auf der Karte rechts oben bei der Lupe 'Kartenfilter' Dungeoneingänge wieder aktiviert werden. Ein erneutes deaktivieren und aktivieren von MapNotes VS. blizzard, deaktiviert die Instance Symbole auf der Zonenkarte wieder"
L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] = "Versteckt bestimmte Blizzard-Symbole (z. B. Hauptstädte Symbole der Horde/Allianz / Neutrale oder allgemeine Reisesymbole auf der Karte) und ersetzt sie durch fast identiesche MapNotes-Symbole, die zusätzlichen Informationen und Funktionen bietet"
L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"] = "Entfernt die Blizzard Symbole nur dort, wo sich MapNotes-Symbole und Blizzard Symbole überschneiden, dadurch wird der Tooltip und die Funktion der MapNote Symbole auf den überschneidenden Punkten wieder benutzbar"
L["If the map is open, after enabling or disabling this option, the map must be reopened once for the changes to display correctly"] = "Wenn die Karte geöffnet ist, muss die Karte nach dem Aktivieren oder Deaktivieren dieser Option einmal erneut geöffnet werden, damit die Änderungen korrekt angezeigt werden"
L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"] = "Linksklick auf ein Symbole auf dieser Karte öffnet die dazugehörige Instanz im Abenteuerführer oder die Karte, in dem sich das Portal, Schiff, Zeppelin oder das besondere Transport Symbol befindet"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "Links-klick auf eines dieser Symbole auf einer Karte, öffnet sich der Abenteuerführer oder die Karte des Ziels"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "Wenn Sie mit der linken Maustaste auf ein Mehrfachsymbol klicken, wird die Karte geöffnet, auf der sich die Dungeons befinden"
L["At the same time, all icons representing additional instance inputs are removed"] = "Gleichzeitig werden alle Symbole entfernt die zusätzliche Instanz Eingänge darstellen"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "Ändert alle Durchgangssymbole auf allen Karten in Dungeon-, Schlachtzug- oder Mehrfachsymbole. Darüber hinaus wird die Passage-Option überall deaktiviert und die Symbole zu den jeweiligen Schlachtzug, Dungeons oder Mehrfach Optionen hinzugefügt (Die Dungeon-Karte bleibt von all dem unverändert)"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "Zeigt verschiedene Symbole auf verschiedenen Karten an. Alle Symbole sind anklickbar (außer auf der Minikarte) und haben eine Funktion. MapNotes Symbole funktionieren mit oder ohne Shift. Ändern Sie einfach die Shift-Funktion!"
L["Generally"] = "Allgemein"
L["General"] = "Allgemeine"
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Allgemeine Einstellungen, die gleichzeitig für Azeroth/Kontinent/Dungeon-Karte gelten"
L["General settings / Additional functions"] = "Allgemeine Einstellungen / Zusatzfunktionen"
L["Shift function!"] = "Shift-Funktion!"
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."] = "Wenn diese Option aktiviert ist, müssen Sie die Umschalttaste drücken, bevor Sie mit der linken oder rechten Maustaste klicken, um mit MapNotes-Symbolen zu interagieren. Dies hat jedoch einen Vorteil, da es so viele Symbole im Spiel gibt, auch von anderen Add-ons, sodass Sie nicht versehentlich auf ein klicken Symbol und ändern Sie die Karte oder erstellen Sie versehentlich einen TomTom-Punkt"
L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"] = "Sie müssen jetzt immer gleichzeitig Shift + Maustaste drücken, um mit den MapNotes-Symbolen zu interagieren"
L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"] = "Sie können jetzt mit MapNotes-Symbolen interagieren, ohne gleichzeitig Shift + Maustaste drücken zu müssen"
L["Settings apply to the zone map and the mini map at the same time"] = "Einstellungen gelten für die Zonen-Karte sowie für die Mini-Karte gleichzeitig"
L["symbol size"] = "Symbolgröße"
L["Changes the size of the icons"] = "Ändert die Größe der Symbole"
L["symbol visibility"] = "Symbolsichtbarkeit"
L["Changes the visibility of the icons"] = "Ändert die Sichtbarkeit der Symbole"
L["hide minimap button"] = "Minikartenknopf ausblenden"
L["Hide the MapNotes button on the minimap"] = "MapNotes-Knopf auf der Minikarte ausblenden"
L["hide worldmap button"] = "Weltkartenknopf ausblenden"
L["Hide the MapNotes button on the worldmap"] = "MapNotes-Knopf auf der Weltkarte ausblenden"
L["hide MapNotes!"] = "MapNotes ausblenden!"
L["-> Hide all MapNotes icons <-"] = "-> Alle MapNotes-Symbole ausblenden <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "MapNotes deaktivieren, alle Symbole werden auf jeder Karte ausgeblendet und alle Kategorien werden deaktiviert"
L["Adventure guide"] = "Abenteuerführer"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Ein Linksklick auf einen MapNotes-Raid (grün), Dungeon (blau) oder mehrere Symbole (grün und blau) auf der Karte öffnet die entsprechende Dungeon- oder Raid-Karte im Abenteuerführer (die Karte darf nicht im Vollbildmodus geöffnet sein)"
L["TomTom waypoints"] = "TomTom-Wegpunkte"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Umschalt+Rechtsklick auf einen Raid, einen Dungeon, ein Mehrfachsymbol, ein Portal, ein Schiff, einen Zeppelin, eine Passage oder einen Ausgang aus MapNotes auf der Kontinent- oder Dungeonkarte erstellt einen TomTom-Wegpunkt zu diesem Punkt (hierfür muss jedoch das TomTom-Add-on installiert sein). )"
L["extra information"] = "Zusatzinformation"
L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"] = "Zeigt zusätzliche Informationen für Dungeons oder Raids an. Z.B. die Anzahl der bereits getöteten Bosse"
L["gray single"] = "Einzelne Grau"
L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"] = "Färbt nur einzelpunkte zugewiesener Dungeons und Raids in grau(wenn Sie eine ID haben)"
L["gray all"] = "Alle Grau"
L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"] = "Färbt ALLE! zugewiesenen Dungeons und Raids grau auch Mehrfachpunkte (wenn du eine ID hast)"
L["enemy faction"] = "Feindliche Fraktion"
L["Shows enemy faction (horde/alliance) icons"] = "Zeigt Symbole der feindlichen Fraktion (Horde/Allianz)"
L["chat message"] = "Chatnachrichten"
L["Disables MapNotes status chat messages excluding core information"] = "Deaktiviert MapNotes Status Chatnachrichten ausgenommen von Kerninformationen"
L["Shows special transport icons like"] = "Zeigt spezielle Transport symbole an wie"
L["Combines several different grouped symbols that lie on one point, thus showing all possible transport/instance symbols that are located here instead of just one of several possible ones"] = "Fasst mehrere verschieden gruppierte Symbole zusammen, die auf einem Punkt liegen, und zeigt somit alle möglichen Transport-/Instanzsymbole an, die sich hier befinden, anstatt nur eines von mehreren möglichen"
L["Left-clicking on one of these symbols on the map opens the corresponding map, which contains all of the points listed by the symbol on the map"] = "Linksklick auf eines dieser Symbol auf der Karte öffnet die dazugehörige Karte, in der sich alle der vom Symbol auf der Karte aufgelisteten Punkte befinden"
L["Informations"] = "Informationen"
L["Chat commands:"] = "Chat-Befehle:"
L["to show MapNotes info in chat: /mn, /MN"] = "Um MapNotes-Informationen im Chat anzuzeigen: /mn, /MN"
L["to open MapNotes menu: /mno, /MNO"] = "zum Öffnen des MapNotes-Menüs: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "MapNotes-Menü schließen: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "Um die Minikartenknopf anzuzeigen: /mnb oder /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "Minikartenknopf ausblenden: /mnbh oder /MNBH"
--5 Tab specific
L["Left-clicking on a symbol on this map type opens the corresponding map in which the symbol is located"] = "Linksklick auf ein Symbol auf diesem Kartentyp öffnet die entsprechende Karte, in dem sich das Symbol befindet"
L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"] = "Einige Instanzsymbole können nicht ausgeblendet werden, da sie von Blizzard selbst und nicht von MapNotes erstellt wurden"
L["Azeroth map"] = "Azeroth-Karte"
L["Continent map"] = "Kontinent-Karte"
L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"] = "Symbolgröße 2.0 wäre die Standardgröße von Blizzards eigenen Instanzsymbolen auf der Zonenkarte"
L["Zone map"] = "Zonen-Karte"
L["Dungeon map"] = "Dungeon-Karte"
--6 Map Tabs together
L["Instance Entrance"] = "Instanzeingang"
L["switches weekly between"] = "wechselt wöchentlich zwischen"
L["Activate icons"] = "Symbole aktivieren"
L["Show individual icons"] = "Einzelne Symbole anzeigen"
L["Exits"] = "Ausgänge"
L["Raids"] = "Schlachtzüge"
L["Dungeons"] = "Dungeons"
L["Passages"] = "Durchgänge"
L["Multiple"] = "Mehrfache"
L["Portals"] = "Portale"
L["Zeppelins"] = "Zeppeline"
L["Ships"] = "Schiffe"
L["Transport"] = "Transport"
L["Special"] = "Besondere"
L["Ogre Waygate"] = "Ogerportale"
L["Old Instances"] = "Alte Instanzen"
L["Show icons of passage on this map"] = "Durchgangssymbole auf dieser Karte Anzegen"
L["Show icons of raids on this map"] = "Symbole von Raids auf dieser Karte anzeigen"
L["Show icons of dungeons on this map"] = "Symbole von Dungeons auf dieser Karte anzeigen"
L["Show icons of multiple on this map"] = "Symbole mehrerer auf dieser Karte anzeigen"
L["Show icons of portals on this map"] = "Symbole von Portalen auf dieser Karte anzeigen"
L["Show icons of zeppelins on this map"] = "Symbole von Zeppelinen auf dieser Karte anzeigen"
L["Show icons of ships on this map"] = "Symbole von Schiffen auf dieser Karte anzeigen"
L["Show all MapNotes for a specific map"] = "Alle MapNotes Symbole für eine bestimmte Karte anzeigen"
L["Show icons of MapNotes dungeon exit on this map"] = "MapNotes Dungeonausgangssymbole auf dieser Karte anzeigen"
L["Enables the display of all possible icons on this map"] = "Ermöglicht die Anzeige aller möglichen Symbole auf dieser Karte"
L["Show icons of passage to raids and dungeons on this map"] = "Zeige Symbole für den Durchgang zu Raids und Dungeons auf dieser Karte."
L["Show Ogre Waygate icons from Garrison on this map"] = "Zeige Ogerportale Symbole aus Garrison auf dieser Karte."
L["Activates the display of all possible icons on this map"] = "Aktiviert die Anzeige aller möglichen Symbole auf dieser Karte"
L["Show icons of multiple (dungeons,raids) on this map"] = "Zeige Symbole mehrerer (Dungeons, Raids) auf dieser Karte"
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von der Scherbenwelt auf dieser Karte anzeigen"
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von Draenor auf dieser Karte anzeigen"
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von den Schattenlanden auf dieser Karte anzeigen"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von Kalimdor auf dieser Karte anzeigen"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von den Östlichen Königreichen auf dieser Karte anzeigen"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von Nordend auf dieser Karte anzeigen"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von Pandaria auf dieser Karte anzeigen"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von Zandalar auf dieser Karte anzeigen"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von Kul Tiras auf dieser Karte anzeigen"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von den zerbrochenen Inseln auf dieser Karte anzeigen"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von den Dracheninseln auf dieser Karte anzeigen"
L["Show all Khaz Algar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Alle MapNotes Dungeon-, Raid-, Portal-, Zeppelin- und Schiffssymbole von Khaz Algar auf dieser Karte anzeigen"
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "Bestimmte Symbole können angezeigt oder nicht angezeigt werden. Wenn in dieser Kategorie die Option (Symbole aktivieren) aktiviert wurde"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Zeige Vanilla-Versionen von Dungeons und Raids wie Naxxramas, Scholomance oder Scarlet Monastery, die Erfolge oder andere Dinge erfordern."
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "Einzelne Symbole, die zu nah an anderen Symbolen auf dieser Karte liegen, werden auf dieser Karte nicht 100 % genau platziert! Für genauere Koordinaten nutzen Sie bitte die Punkte auf der Zonenkarte"
--7 maps
L["Kalimdor"] = "Kalimdor"
L["Eastern Kingdom"] = "Östliches Königreich"
L["Outland"] = "Scherbenwelt"
L["Northrend"] = "Nordend"
L["Pandaria"] = "Pandaria"
L["Draenor"] = "Draenor"
L["Broken Isles"] = "Verheerte Inseln"
L["Zandalar"] = "Zandalar"
L["Kul Tiras"] = "Kul Tiras"
L["Shadowlands"] = "Schattenlande"
L["Dragon Isles"] = "Dracheninseln"
--8 Core spec
L["Shift function"] = "Shift-Funktion"
L["-> MiniMapButton <-"] = "-> MiniMapknopf <-"
L["-> WorldMapButton <-"] = "-> Weltkartenknopf <-"
L["MapNotes menu window"] = "MapNotes-Menüfenster"
L["All set icons have been restored"] = "Alle eingestellten Symbole wurden wiederhergestellt"
L["All MapNotes icons have been hidden"] = "Alle MapNotes-Symbole wurden ausgeblendet"
L["is activated"] = "ist aktiviert"
L["is deactivated"] = "ist deaktiviert"
L["are shown"] = "werden angezeigt"
L["are hidden"] = "werden versteckt"
L["Left-click => Open/Close"] = "Linksklick => Öffnen/Schließen"
L["Right-click => Open/Close"] = "Rechtsklick => Öffnen/Schließen"
L["Shift + Right-click => hide"] = "Umschalt + Rechtsklick => ausblenden"
L["Middle-Mouse-Button => Open/Close"] = "Mittlere-Maus-Taste => Öffnen/Schließen"
--9 transport
L["icons"] = "Symbole"
L["Exit"] = "Ausgang"
L["Entrance"] = "Eingang"
L["Passage"] = "Durchgang"
L["Portal"] = "Portal"
L["Ship"] = "Schiff"
L["Zeppelin"] = "Zeppelin"
L["Portalroom"] = "Portalraum"
L["The Dark Portal"] = "Das dunkle Portal"
L["Captain Krooz"] = "Kapitän Krooz"
L["Use the Old Keyring"] = "Verwenden Sie den alten Schlüsselring"
L["Travel"] = "Reisen"
L["Old Keyring"] = "Alter Schlüsselanhänger"
L["Old Version"] = "Alte Version"
L["Secret Portal"] = "Geheimes Portal"
L["Secret Entrance"]  = "Geheimer Eingang"
L["Ogre Waygate to Garrison"] = "Ogerportale zur Garnison"
L["in the basement"] = "im Keller"
L["(on the tower)"] = "(auf dem Turm)"
L["(inside portal chamber)"] = "(in der Portalkammer)"
L["(inside building)"] = "(im Gebäude)"
L["Teleporter"] = "Teleporter"
--10 places
L["Auberdine"] = "Auberdine"
L["Ratchet"] = "Ratchet"
L["Theramore Isle"] = "Insel Theramore"
L["Dire Maul"] = "Düsterbruch"
L["Blackfathom Deeps"] = "Tiefschwarze Grotte"
L["Stormwind"] = "Sturmwind"
L["Shadowfang Keep"] = "Burg Schattenfang"
L["Undercity"] = "Unterstadt"
L["Rut'theran"] = "Ruttheran"
L["Azuremyst Isle"] = "Azurmythosinsel"
L["Bel'ameth, Amirdrassil"] = "Bel'ameth, Amirdrassil"
L["Darnassus"] = "Darnassus"
L["Teldrassil"] = "Teldrassil"
L["Graveyard"] = "Friedhof"
L["Library"] = "Bibliothek"
L["Cathedral"] = "Kathedrale"
L["Armory"] = "Armory"
L["Ashran"] = "Ashran"
L["The Timeways"] = "Die Zeitwege"
L["Vol'mar"] = "Vol'mar"
L["Zuldazar"] = "Zuldazar"
L["Thunder Bluff"] = "Donnerfels"
L["Silvermoon City"] = "Silbermond"
L["Boralus, Tiragarde Sound"] = "Boralus, Tiragardesund"
L["Valdrakken"] = "Valdrakken"
L["Badlands"] = "Ödland"
L["Oribos"] = "Oribos"
L["Azsuna"] = "Azsuna"
L["Uldum"] = "Uldum"
L["Dazar'alor"] = "Dazar'alor"
L["Shattrath City"] = "Shattrath"
L["Echo Isles, Durotar"] = "Echo-Inseln, Durotar"
L["Silithus"] = "Silithus"
L["Nazjatar"] = "Nazjatar"
L["Emerald Dream"] = "Smaragdgrüner Traum"
L["Thunder Bluff"] = "Donnerfels"
L["Howling Fjord"] = "Heulender Fjord"
L["Ruins of Lordaeron"] = "Ruinen von Lordaeron"
L["Isle of Thunder"] = "Insel des Donners"
L["Twilight Highlands"] = "Schattenhochland"
L["Vashj'ir"] = "Vashj'ir"
L["The Waking Shores, Dragon Isles"] = "Küste des Erwachsens, Dracheninseln"
L["Shado-Pan Garrison, Townlong Steppes"] = "Shado-Pan-Garnison, Tonlongsteppe"
L["Grom'gol, Stranglethorn Vale"] = "Grom'gol, Schlingendorntal"
L["Exodar"] = "Exodar"
L["Jade Forest"] = "Jadewald"
L["Drustvar"] = "Drustvar"
L["Gorgrond"] = "Gorgrond"
L["Ohn'ahran Plains"] = "Ebenen von Ohn'ahra"
L["Borean Tundra"] = "Boreanische Tundra"
L["Tirisfal Glades"] = "Tirisfal"
L["Wintergrasp"] = "Tausendwinter"
L["Boralus"] = "Boralus"
L["Stormsong Valley"] = "Sturmsangtal"
L["Tiragarde Sound"] = "Tiragardesund"
L["Ironforge"] = "Eisenschmiede"
L["Blasted Lands"] = "Verwüstete Lande"
L["Darkshore"] = "Dunkelküste"
L["Durotar"] = "Durotar"
L["Dustwallow Marsh"] = "Düstermarschen"
L["Vale of Eternal Blossoms"] = "Tal der ewigen Blüten"
L["Arathi Highlands"] = "Arathihochland"
L["Nazmir"] = "Nazmir"
L["Vol'dun"] = "Vol'dun"
L["Isle of Quel'Danas"] = "Insel Quel'Danas"
L["Hellfire Peninsula"] = "Höllenfeuerhalbinsel"
L["Korthia"] = "Korthia"
L["The Maw"] = "Der Schlund"
L["Zereth Mortis"] = "Zereth Mortis"
L["Barnard 'The Smasher' Bayswort"] = "Bernhard 'die Wucht' Weertwiek"
L["Desha Stormwallow"] = "Desha Sturmschwelger"
L["Daria Smithson"] = "Daria Schmidtke"
L["Swellthrasher"] = "Schwalldrescherin"
L["Grok Seahandler"] = "Grok Seeschleuser"
L["Erul Dawnbrook"] = "Erul Dämmerbach"
L["Dread-Admiral Tattersail"] = "Schreckensadmiralin Segelriss"
L["Grand Admiral Jes-Tereth"] = "Großadmiralin Jes-Tereth"
L["Naxxramas"] = "Naxxramas"
L["Scholomance"] = "Scholomance"
L["Temple of Ahn'Qiraj"] = "Tempel von Ahn'Qiraj"
L["Lorewalker Han"] = "Lehrensucher Han"
L["Archmage Timear"] = "Erzmagier Timear"
L["Kiku"] = "Kiku"
L["Eppu"] = "Eppu"
L["Ta'elfar"] = "Ta'elfar"
L["Seer Kazal"] = "Kazal der Seher"
L["Auridormi"] = "Auridormi"
L["Registrant"] = "Anmelder"
L["Scarlet Instances"] = "Scharlachroten Instanzen"
L["hide Cosmos map symbols"] = "Kosmos Symbole ausblenden"
L["Shows the locations of Raidbrowser applicants for old Raids"] = "Zeigt die Position von Schlachtzugsbrowser Anmeldern für alte Schlachtzüge"
L["Deactivates the display of all possible icons on this map"] = "Deaktiviert die Anzeige aller möglichen Symbole auf dieser Karte"
--11 Specific
L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] = "Dieser Instanzeingang befindet sich in einer anderen Zeitlinie. Andere Zeitlinie aktivierbar bei Zidormi"
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "Zeigt Standorte von Raids, Dungeons, Portalen, Schiffs- und Zeppelinsymbolen auf verschiedenen Karten"
L["(Wards of the Dread Citadel - Achievement)"] = "(Schutzzauber der Schreckenszitadelle – Erfolg)"
L["(Memory of Scholomance - Achievement)"] = "(Erinnerung an Scholomance – Erfolg)"
L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] = "(Es wird nur im Spiel angezeigt, wenn Ihre\n Fraktion derzeit Bashal'Aran besetzt)"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Dieses Portal im Arathi-Hochland ist nur aktiv, wenn Ihre Fraktion derzeit Ar'gorok besetzt."
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Dieses Dunkelküsten-Portal ist nur aktiv, wenn Ihre Fraktion derzeit Bashal'Aran besetzt."
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Großadmiral Jes-Tereth) wird Sie nach Vol'Dun, Nazmir oder Zuldazar bringen."
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Dread-Admiral Flickensegel) bringt Sie nach Drustvar, zum Tiragarde-Sund oder ins Sturmsangtal."
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Alter Schlüsselring \n Den Scharlachroten Schlüssel erhältst du im \n [Beutegefüllter Kürbis] beim [Hallow's End Event] oder im [Auktionshaus] \n jetzt kannst du den [Alten Schlüsselring] aktivieren \n um die alten Dungeonversionen aus dem Scharlachroten Kloster zu aktivieren"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "Erscheint zuerst nach einem bestimmten Instanzfortschritt\n oder erfordert einen bestimmten Erfolg" 
--12 Classic
L["Ulduar"] = "Ulduar"
L["Trial of the Champion"] = "Prüfung des Champions"
L["Trial of the Crusader"] = "Prüfung des Kreuzfahrers"
L["Azjol-Nerub"] = "Azjol-Nerub"
L["Drak'Tharon Keep"] = "Feste Drak'Tharon"
L["Utgarde Pinnacle"] = "Turm Utgarde"
L["Utgarde Keep"] = "Burg Utgarde"
L["Magisters' Terrace"] = "Terrasse der Magister"
L["Karazhan"] = "Karazhan"
L["The Culling of Stratholme"] = "Das Ausmerzen von Stratholme"
L["Old Hillsbrad Foothills"] = "Vorgebirge des Alten Hügellands"
L["The Oculus"] = "Das Oculus"
L["The Ruby Sanctum"] = "Das Rubinsanktum"
L["Black Temple"] = "Der Schwarze Tempel"
L["Auchenai Crypts"] = "Auchenaikrypta"
L["Sethekk Halls"] = "Sethekkhallen"
L["The Arcatraz"] = "Die Arkatraz"
L["Reforge"] = "Umschmieden"
--13 The War Within
L["Khaz Algar"] = "Khaz Algar"
L["Dornogal"] = "Dornogal"
L["Catalyst"] = "Katalysator"
L["Merchant for Renown items"] = "Händler für Ruhm Gegenstände"
L["Council of Dornogal"] = "Rat von Dornogal"
L["The Assembly of the Deeps"] = "Der Konvent der Tiefen"
L["Hallowfall Arathi"] = "Arathi von Heilsturz"