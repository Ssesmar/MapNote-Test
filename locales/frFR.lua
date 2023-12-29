local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "frFR")
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
L["Shows locations of raids, dungeons, portals ,ship and zeppelins symbols on different maps"] = "Affiche les emplacements des raids, des donjons, des portails, des symboles de navires et de zeppelins sur différentes cartes"
L["MapNotes menu window"] = "Fenêtre du menu MapNotes"
L["All set symbols have been restored"] = "Tous les symboles définis ont été restaurés"
L["All MapNotes symbols have been hidden"] = "Tous les symboles MapNotes ont été masqués"
L["is activated"] = "est activé"
L["is deactivated"] = "est désactivé"
L["are shown"] = "sont indiqués"
L["are hidden"] = "sont cachés"
L["symbols"] = "symboles"
L["Left-click => Open/Close"] = "Clic gauche => Ouvrir/Fermer"
L["Right-click => Open/Close"] = "Clic droit => Ouvrir / fermer"
L["Shift + Right-click => hide"] = "Maj + clic droit => masquer"
L["(also opens MapNotes if hiding was unwanted)"] = "(ouvre MapNotes si le masquage n'était pas souhaité)"


--1
L["General"] = "en général"  --General tab
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Paramètres généraux qui s'appliquent simultanément à la carte Azeroth / Continent / Donjon"
L["General settings / Additional functions"] = "Paramètres généraux / Fonctions supplémentaires"
L["-> MiniMapButton <-"] = "-> Bouton Mini-Carte <-"
L["hide minimap button"] = "masquer le bouton de la mini-carte"
L["Show the minimap button on the minimap"] = "Afficher le bouton de la mini-carte sur la mini-carte"
L["Hide the minimap button on the minimap"] = "Masquer le bouton de la mini-carte sur la mini-carte"
L["hide MapNotes!"] = "masquer MapNotes!"
L["-> Hide all MapNotes symbols <-"] = "-> Masquer tous les symboles MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Désactivez MapNotes, toutes les icônes seront masquées sur chaque carte et toutes les catégories seront désactivées"
L["Resizes symbols on the azeroth, continent, zone, dungeon and minimap"] = "Redimensionne les symboles sur Azeroth, le continent, la zone, le donjon et la mini-carte"
L["symbol visibility"] = "visibilité des symboles"
L["Changes the visibility of the symbols"] = "Modifie la visibilité des symboles"
L["Adventure guide"] = "Guide d'aventure"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Un clic gauche sur un raid MapNotes (vert), un donjon (bleu) ou une icône multiple (vert et bleu) sur la carte ouvre la carte du donjon ou du raid correspondant dans le Guide d'aventure (la carte ne doit pas être ouverte en plein écran)"
L["TomTom waypoints"] = "Points de cheminement TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Maj+clic droit sur un raid, un donjon, un symbole multiple, un portail, un navire, un zeppelin, un passage ou une sortie de MapNotes sur la carte du continent ou du donjon crée un waypoint TomTom jusqu'à ce point (mais le module complémentaire TomTom doit être installé pour cela)"
L["killed Bosses"] = "boss tués"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "Pour les donjons et raids dans lesquels vous avez tué des boss et auquel vous avez donc attribué un identifiant, ce symbole sur la carte d'Azeroth et du continent vous indiquera le nombre de boss tués ou restants dès que vous survolerez ce symbole de donjon ou de raid (par exemple 2/8 mythique, 4/7 héroïque etc.)"
L["gray symbols"] = "grise symboles"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "Si vous êtes affecté à un donjon ou à un raid et que vous disposez d'un identifiant, cette option rendra l'icône du donjon ou du raid grise jusqu'à ce que cet identifiant soit réinitialisé afin que vous puissiez voir quel donjon ou raid vous avez commencé ou terminé"
L["multiple points"] = "plusieurs points"
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "Colore les multi-points des donjons et/ou raids en gris si vous êtes affecté à un donjon ou raid de ce multi-point et que vous disposez d'un identifiant afin que vous puissiez voir que vous avez commencé ou terminé n'importe quel donjon ou raid du multi-point"
L["enemy faction"] = "faction ennemie"
L["Shows enemy faction (horde/alliance) symbols"] = "Affiche également les symboles de la faction ennemie (horde/alliance)"
L["Old Instances"] = "Anciennes instances"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Afficher des versions vanille de donjons et de raids tels que Naxxramas, Scholomance ou Scarlet Ministry, qui nécessitent des succès ou d'autres choses"
L["Informations"] = "Informations"
L["Chat commands:"] = "Commandes de discussion:"
L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"] = "pour afficher les informations MapNotes dans le chat : /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"
L["to open MapNotes menu: /mno, /MNO"] = "pour ouvrir le menu MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "pour fermer le menu MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "pour afficher le bouton de la mini-carte: /mnb ou /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "pour masquer le bouton de la mini-carte: /mnbh ou /MNBH"


--2
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "Information : Les symboles individuels d'Azeroth qui sont trop proches des autres symboles sur la carte d'Azeroth ne sont pas placés avec précision à 100 % sur la carte d'Azeroth ! Pour une coordination précise, veuillez utiliser les points sur la carte du continent ou la carte des zones"
L["Azeroth map"] = "Carte d'Azeroth"  --Azeroth tab
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Paramètres de la carte Azeroth. Certains symboles peuvent être affichés ou non. Si l'option (Activer les symboles) a été activée dans cette catégorie"
L["Activate symbols"] = "Activer les symboles"
L["Activates the display of all possible symbols on the Azeroth map"] = "Active l'affichage de tous les symboles possibles sur la carte d'Azeroth"
L["symbol size"] = "taille du symbole"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "Redimensionne les symboles sur la carte de zone, la carte d'Azeroth et la mini-carte"
L["Show individual symbols"] = "Afficher les symboles individuels"
L["Raids"] = "Raids"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the Azeroth map"] = "Afficher les symboles des raids sur la carte d'Azeroth"
L["Dungeons"] = "Donjons"  -- Dungeon anzeigen
L["Show symbols of dungeons on the Azeroth map"] = "Afficher les symboles des donjons sur la carte d'Azeroth"
L["Multiple"] = "Plusieurs"  -- Gemischte anzeigen
L["Show symbols of multiple on the Azeroth map"] = "Afficher les symboles de plusieurs sur la carte d'Azeroth"
L["Portals"] = "Portails"  -- Portale anzeigen
L["Show symbols of portals on the Azeroth map"] = "Afficher les symboles des portails sur la carte d'Azeroth"
L["Zeppelins"] = "Zeppelin"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the Azeroth map"] = "Afficher les symboles des zeppelins sur la carte d'Azeroth"
L["Ships"] = "Navires"  -- Schiffe anzeigen
L["Show symbols of ships on the Azeroth map"] = "Afficher les symboles des navires sur la carte d'Azeroth"
L["Show all MapNotes for a specific map"] = "Afficher toutes les MapNotes pour une carte spécifique"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires Kalimdor MapNotes sur la carte d'Azeroth"
L["Eastern Kingdom"] = "Royaume de l'Est"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Eastern Kingdom MapNotes sur la carte d'Azeroth"
L["Northrend"] = "Norfendre"  -- Nordend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires Northrend MapNotes sur la carte d'Azeroth"
L["Pandaria"] = "Pandarie"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Pandaria MapNotes sur la carte d'Azeroth"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires Zandalar MapNotes sur la carte d'Azeroth"
L["Kul Tiras"] = "Koul Tiras"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Kul Tiras MapNotes sur la carte d'Azeroth"
L["Broken Isles"] = "Îles Brisées"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires MapNotes des Îles Brisées sur la carte d'Azeroth"
L["Dragon Isles"] = "Îles du Dragon"  -- Dracheninseln anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Dragon Isles MapNotes sur la carte d'Azeroth"


--3
L["Continent map"] = "Carte des continents"  --Continent tab
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Paramètres de la carte des continents. Certains symboles peuvent être affichés ou non. Si l'option (Activer les symboles) a été activée dans cette catégorie"
L["Activate symbols"] = "Activer les symboles"
L["Activates the display of all possible symbols on the continent map"] = "Active l'affichage de tous les symboles possibles sur la carte du continent"
L["symbol size"] = "taille du symbole"
L["Resizes symbols on the continent map"] = "Redimensionne les symboles sur la carte du continent"
L["Show individual symbols"] = "Afficher les symboles individuels"
L["Raids"] = "Raids"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the continant map and minimap"] = "Afficher les symboles des raids sur la carte du continent et la mini-carte"
L["Dungeons"] = "Donjons"  -- Dungeon anzeigen
L["Show symbols of dungeons on the continant map and minimap"] = "Afficher les symboles des donjons sur la carte du continent et la mini-carte"
L["Multiple"] = "Plusieurs"  -- Gemischte anzeigen
L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"] = "Afficher les symboles de plusieurs (donjons, raids) sur la carte du continent et la mini-carte"
L["Portals"] = "Portails"  -- Portale anzeigen
L["Show symbols of portals on the continant map and minimap"] = "Afficher les symboles des portails sur la carte du continent et la mini-carte"
L["Zeppelins"] = "Zeppelin"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the continant map and minimap"] = "Afficher les symboles des zeppelins sur la carte du continent et la mini-carte"
L["Ships"] = "Navires"  -- Schiffe anzeigen
L["Show symbols of ships on the continant map and minimap"] = "Afficher les symboles des navires sur la carte du continent et la mini-carte"
L["Ogre Waygate"] = "Porte de passage ogre"
L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"] = "Afficher les symboles Ogre Waygate de Garrison sur le continent et la carte des zones de Draenor"
L["Show all MapNotes for a specific map"] = "Afficher toutes les MapNotes pour une carte spécifique"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Kalimdor MapNotes sur la carte du continent"
L["Eastern Kingdom"] = "Royaume de l'Est"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Eastern Kingdom MapNotes sur le continent mapan"
L["Outland"] = "Outreterre"  -- Scherbenwelt anzeigen
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires d'Outland MapNotes sur la carte du continent"
L["Northrend"] = "Norfendre"  -- Northrend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Northrend MapNotes sur la carte du continent"
L["Pandaria"] = "Pandarie"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Pandaria MapNotes sur la carte du continent"
L["Draenor"] = "Draenor"  -- Draenor anzeigen
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Draenor MapNotes sur la carte du continent"
L["Broken Isles"] = "Îles Brisées"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Broken Isles MapNotes sur la carte du continent"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Zandalar MapNotes sur la carte du continent"
L["Kul Tiras"] = "Koul Tiras"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Kul Tiras MapNotes sur la carte du continent"
L["Shadowlands"] = "Terres de l'Ombre"  -- Schattendlande anzeigen
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Afficher tous les symboles des donjons, raids, portails, zeppelins et navires de Shadowlands MapNotes sur la carte du continent"
L["Dragon Isles"] = "Îles du Dragon"  -- Dragonflight anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Afficher tous les symboles de donjon, raid, portail, zeppelin et navire Dragon Isles MapNotes sur la carte du continent"


--4
L["Dungeon map"] = "Cartes de donjon" --DungeonMap Tab
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Paramètres de la carte du donjon. Certains symboles peuvent être affichés ou non. Si l'option (Activer les symboles) a été activée dans cette catégorie. Affiche les points de sortie et de passage MapNotes sur la carte du donjon (ces symboles sont uniquement à des fins d'orientation et rien ne se passe lorsque vous cliquez dessus)"
L["Activate symbols"] = "Activer les symboles"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Permet l'affichage de tous les symboles possibles sur la carte du donjon (ces symboles sont uniquement à des fins d'orientation et rien ne se passe lorsque vous cliquez dessus)"
L["Exits"] = "Sorties"
L["Show symbols of MapNotes dungeon exit on the dungeon map"] = "Afficher les symboles de sortie du donjon MapNotes sur la carte du donjon"
L["Passages"] = "Passages"
L["Show symbols of passage on the dungeon map"] = "Afficher les symboles de passage sur la carte du donjon"
L["Portals"] = "Portails"  -- Portale anzeigen
L["Show symbols of portals on the dungeon map"] = "Afficher les symboles des portails sur la carte du donjon"


--5 Entrance/Exit/Passage
L["Exit"] = "Sortie"
L["Entrance"] = "Entrée"
L["Passage"] = "Passage"


--6 Transport basics
L["Portal"] = "Portail"
L["Ship"] = "Bateau" 
L["Zeppelin"] = "Zeppelin"
L["Portalroom"] = "Salle du portail"
L["(inside building)"] = "(à l'intérieur du bâtiment)"
L["(at basement)"] = "(au sous-sol)"
L["(inside portal chamber)"] = "(à l'intérieur de la chambre du portail)"
L["(on the tower)"] = "(sur la tour)"
-- Transport place -- Lieux de transports
L["Ashran"] = "Ashran"
L["Azsuna"] = "Azsuna"
L["Boralus"] = "Boralus"
L["Boralus Harbor, Tiragarde Sound"] = "Port de Boralus, détroit de Tiragarde"
L["Booty Bay, Stranglethorn Vale"] = "Booty Bay, Strangleronce Vale"
L["Caverns of Time"] = "Cavernes du temps"
L["Drustvar"] = "Drustvar"
L["Deepholm"] = "Tréfonds Holm"
L["Dalaran"] = "Dalaran"
L["Dalaran, Crystalsong Forest"] = "Dalaran, forêt du chant de cristal"
L["Dazar'alor"] = "Dazar'alor"
L["Exodar"] = "Exodar"
L["Eastern Plaguelands"] = "Plaguelais orientaux"
L["Echo Isles, Durotar"] = "Îles Écho, Durotar"
L["Hellfire Peninsula"] = "Péninsule des Flammes Infernales"
L["Howling Fjord"] = "Fjord Hurlant"
L["Hyjal"] = "Hyjal"
L["Ironforge"] = "Forge de fer"
L["Isle of Thunder"] = "L'île du Tonnerre"
L["Isle of Quel'Danas"] = "Île de Quel'Danas"
L["Lion's Watch"] = "Gardien de lion lion"
L["Mechagon"] = "Mécagone"
L["Menethil Harbor, Wetlands"] = "Port de Menethil , zones humides"
L["Nazjatar"] = "Nazjatar"
L["Nazmir"] = "Nazmir"
L["Ogre Waygate to Garrison"] = "Ogre Waygate vers la garnison"
L["Ohn'ahran Plains"] = "Plaines d'Ohn'ahran"
L["Orgrimmar"] = "Orgrimmar"
L["Oribos"] = "Oribos"
L["Ruins of Lordaeron, Undercity"] = "Ruines de Lordaeron, Fossoyeuse"
L["Ratchet, Northern Barrens"] = "Ratchet, Tarides du Nord"
L["Stormsong Valley"] = "Vallée Chantorage"
L["Stormwind City"] = "La ville de Hurlevent"
L["Silithus"] = "Silithus"
L["Stranglethorn"] = "étranglement"
L["Shado-Pan Garrison, TownlongWastes"] = "Garnison Shado-Pan, TownlongWastes"
L["Silvermoon City"] = "La ville de Lune d'Argent"
L["Stormshield, Ashran"] = "Bouclier tempête, Ashran"
L["Shattrath"] = "Shattrath"
L["The Dark Portal"] = "Le portail des ténèbres"
L["The Emerald Dream"] = "Le rêve d'émeraude"
L["Tol Barad"] = "Tol Barad"
L["Tiragarde Sound"] = "Le son de Tiragarde"
L["Twilight Highlands"] = "Hautes Terres du Crépuscule"
L["Thunderbluff"] = "Tonnerre"
L["The Timeways"] = "Les voies temporelles"
L["Jade Forest"] = "Forêt de Jade"
L["Uldum"] = "Uldum"
L["Vol'Dun"] = "Vol'Dun"
L["Vol'mar"] = "Vol'mar"
L["Vashj'ir"] = "Vashj'ir"
L["Valdrakken"] = "Valdrakken"
L["Valiance Keep, Borean Tundra"] = "Donjon de la Valiance, toundra boréenne"
L["Badlands"] = "Badlands"
L["Warspear, Ashran"] = "Lance de guerre, Ashran"
L["Waking Shores, Dragon Isles"] = "Waking Shores, Îles du Dragon"
L["Zuldazar"] = "Zuldazar"
L["Zandalar"] = "Zandalar"
-- other transport -- autres transports
L["Back to Zuldazar"] = "Retour à Zuldazar"
L["Back to Boralus"] = "Retour à Boralus"
L["(Captain Krooz) will take you to Mechagon"] = "(Le Capitaine Krooz) vous emmènera à Mécagone"
L["(Captain Krooz) will take you back to Zuldazar"] = "(Le Capitaine Krooz) vous ramènera à Zuldazar"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Le Grand Amiral Jes-Tereth) vous emmènera à Vol'Dun, Nazmir ou Zuldazar"
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "(il n'apparaît dans le jeu que si votre faction occupe actuellement Bashal'Aran)"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Dread-Admiral Tattersail) vous emmènera à Drustvar, au détroit de Tiragarde ou à la vallée Chantorage"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Ce portail Arathi -Hochland n'est actif que si votre faction est actuellement occupée par Ar'gorok"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Ce portail de la côte sombre n'est actif que si votre faction est juste occupée par Bashal'aran"

--7 old dungeons/raids
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Ancienne version de l'armurerie du monastère écarlate \n (nécessité d'activer l'[ancien porte-clés] au 48.33 55.88 à l'intérieur du monastère écarlate)"
L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"] = " Ancienne version de Naxxramas - Entrée secrète \n (Quartiers de la Citadelle d'Effroi - Succès)"
L["Old version of Scarlet Monastery Cathedral \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = " Ancienne version de la cathédrale du monastère écarlate \n (nécessité d'activer l'[Ancien porte-clés] au 48.33 55.88 à l'intérieur du monastère écarlate)"
L["Old version of Scarlet Monastery Graveyard \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"]  " Ancienne version du cimetière du monastère écarlate \n (nécessité d'activer l'[ancien porte-clés] au 48.33 55.88 à l'intérieur du monastère écarlate"
L["Old version of Scarlet Monastery Library \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = " Ancienne version de la bibliothèque du monastère écarlate \n (nécessité d'activer l'[Ancien porte-clés] au 48.33 55.88 à l'intérieur du monastère écarlate)"
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = " Ancienne version de l'armurerie du monastère écarlate \n (nécessité d'activer l'[ancien porte-clés] au 48.33 55.88 à l'intérieur du monastère écarlate)"
L["Old version of Scholomance - Secret Entrance \n (Memory of Scholomance - Achievement)"] = " Ancienne version de Scholomance - Entrée Secrète \n (Mémoire de Scholomance - Succès)"
L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"] = " Ancien porte-clés \n Vous obtenez la clé écarlate dans \n [Citrouille remplie de butin] lors de l'[Événement de la Sanssaint] ou de l'[Hôtel des ventes] \n Vous pouvez désormais activer l'[Ancien porte-clés] ici \n pour activer les anciennes versions de donjon. du monastère écarlate "