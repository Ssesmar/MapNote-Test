local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "enUS", true)


-- 0 = basics
-- 1 = General tab
-- 2 = Azeroth tab
-- 3 = Continent tab
-- 4 = Dungeon tab
-- 5 = Entrance/Exit/Passage nodes
-- 6 = Transport basics
-- 7 = dungeons/raids

--0 basics
L["Shows locations of raids, dungeons, portals ,ship and zeppelins symbols on different maps"] = true
L["MapNotes menu window"] = true
L["All set symbols have been restored"] = true
L["All MapNotes symbols have been hidden"] = true
L["is activated"] = true
L["is deactivated"] = true
L["are shown"] = true
L["are hidden"] = true
L["symbols"] = true
L["Left-click => Open/Close"] = true
L["Right-click => Open/Close"] = true
L["Shift + Right-click => hide"] = true
L["(also opens MapNotes if hiding was unwanted)"] = true


--1 General tab
L["General"] = true 
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = true
L["General settings / Additional functions"] = true
L["-> MiniMapButton <-"] = true
L["hide minimap button"] = true
L["Show the minimap button on the minimap"] = true
L["Hide the minimap button on the minimap"] = true
L["hide MapNotes!"] = true
L["-> Hide all MapNotes symbols <-"] = true
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = true
L["Resizes symbols on the azeroth, continent, zone, dungeon and minimap"] = true
L["symbol visibility"] = true
L["Changes the visibility of the symbols"] = true
L["Adventure guide"] = true
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = true
L["TomTom waypoints"] = true
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = true
L["killed Bosses"] = true
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = true
L["gray symbols"] = true
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = true
L["multiple points"]= true
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = true
L["enemy faction"] = true
L["Shows enemy faction (horde/alliance) symbols"] = true
L["Old Instances"] = true
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = true
L["Informations"] = true
L["Chat commands:"] = true
L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"] = true
L["to open MapNotes menu: /mno, /MNO"] = true
L["to close MapNotes menu: /mnc, /MNC"] = true
L["to show minimap button: /mnb or /MNB"] = true
L["to hide minimap button: /mnbh or /MNBH"] = true


--2 Azeroth tab
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = true
L["Azeroth map"] = true  
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = true
L["Activate symbols"] = true
L["Activates the display of all possible symbols on the Azeroth map"] = true
L["symbol size"] = true
L["Resizes symbols on the zone map, azeroth map and minimap"] = true
L["Show individual symbols"] = true
L["Raids"] = true
L["Show symbols of raids on the Azeroth map"] = true
L["Dungeons"] = true
L["Show symbols of dungeons on the Azeroth map"] = true
L["Multiple"] = true
L["Show symbols of multiple on the Azeroth map"] = true
L["Portals"] = true
L["Show symbols of portals on the Azeroth map"] = true
L["Zeppelins"] = true
L["Show symbols of zeppelins on the Azeroth map"] = true
L["Ships"] = true
L["Show symbols of ships on the Azeroth map"] = true
L["Show all MapNotes for a specific map"] = true
L["Kalimdor"] = true
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = true
L["Eastern Kingdom"] = true
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = true
L["Northrend"] = true
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = true
L["Pandaria"] = true
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = true
L["Zandalar"] = true
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = true
L["Kul Tiras"] = true
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = true
L["Broken Isles"] = true
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = true
L["Dragon Isles"] = true
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = true


--3 Continent tab
L["Continent map"] = true  
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = true
L["Activate symbols"] = true
L["Activates the display of all possible symbols on the continent map"] = true
L["symbol size"] = true
L["Resizes symbols on the continent map"] = true
L["Show individual symbols"] = true
L["Raids"] = true
L["Show symbols of raids on the continant map and minimap"] = true
L["Dungeons"] = true
L["Show symbols of dungeons on the continant map and minimap"] = true
L["Multiple"] = true
L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"] = true
L["Portals"] = true
L["Show symbols of portals on the continant map and minimap"] = true
L["Zeppelins"] = true
L["Show symbols of zeppelins on the continant map and minimap"] = true
L["Ships"] = true
L["Show symbols of ships on the continant map and minimap"] = true
L["Ogre Waygate"] = true
L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"] = true
L["Show all MapNotes for a specific map"] = true
L["Kalimdor"] = true
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = true
L["Eastern Kingdom"] = true
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = true
L["Outland"] = true
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = true
L["Northrend"] = true
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = true
L["Pandaria"] = true
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = true
L["Draenor"] = true
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = true
L["Broken Isles"] = true
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = true
L["Zandalar"] = true
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = true
L["Kul Tiras"] = true
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = true
L["Shadowlands"] = true
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = true
L["Dragon Isles"] = true
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = true


--4 DungeonMap Tab
L["Dungeon map"] = true 
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = true
L["Activate symbols"] = true
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = true
L["Exits"] = true
L["Show symbols of MapNotes dungeon exit on the dungeon map"] = true
L["Passages"] = true
L["Show symbols of passage on the dungeon map"] = true
L["Portals"] = true
L["Show symbols of portals on the dungeon map"] = true


--5 Entrance/Exit/Passage nodes
L["Exit"] = true
L["Entrance"] = true
L["Passage"] = true


--6 Transport basics
L["Portal"] = true
L["Ship"] = true 
L["Zeppelin"] = true
L["Portalroom"] = true
L["(inside building)"] = true
L["(at basement)"] = true
L["(inside portal chamber)"] = true
L["(on the tower)"] = true
-- Transport places
L["Ashran"] = true
L["Azsuna"] = true
L["Boralus"] = true
L["Boralus Harbor, Tiragarde Sound"] = true
L["Booty Bay, Stranglethorn Vale"] = true
L["Caverns of Time"] = true
L["Drustvar"] = true
L["Deepholm"] = true
L["Dalaran"] = true
L["Dalaran, Crystalsong Forest"] = true
L["Dazar'alor"] = true
L["Exodar"] = true
L["Eastern Plaguelands"] = true
L["Echo Isles, Durotar"] = true
L["Hellfire Peninsula"] = true
L["Howling Fjord"] = true
L["Hyjal"] = true
L["Ironforge"] = true
L["Isle of Thunder"] = true
L["Isle of Quel'Danas"] = true
L["Lion's Watch"] = true
L["Mechagon"] = true
L["Menethil Harbor, Wetlands"] = true
L["Nazjatar"] = true
L["Nazmir"] = true
L["Ogre Waygate to Garrison"] = true
L["Ohn'ahran Plains"] = true
L["Orgrimmar"] = true
L["Oribos"] = true
L["Ruins of Lordaeron, Undercity"] = true
L["Ratchet, Northern Barrens"] = true
L["Stormsong Valley"] = true
L["Stormwind City"] = true
L["Silithus"] = true
L["Stranglethorn"] = true
L["Shado-Pan Garrison, TownlongWastes"] = true
L["Silvermoon City"] = true
L["Stormshield, Ashran"] = true
L["Shattrath"] = true
L["The Dark Portal"] = true
L["The Emerald Dream"] = true
L["Tol Barad"] = true
L["Tiragarde Sound"] = true
L["Twilight Highlands"] = true
L["Thunderbluff"] = true
L["The Timeways"] = true
L["Jade Forest"] = true
L["Uldum"] = true
L["Vol'Dun"] = true
L["Vol'mar"] = true
L["Vashj'ir"] = true
L["Valdrakken"] = true
L["Valiance Keep, Borean Tundra"] = true
L["Badlands"] = true
L["Warspear, Ashran"] = true
L["Waking Shores, Dragon Isles"] = true
L["Zuldazar"] = true
L["Zandalar"] = true
-- other transports
L["Back to Zuldazar"] = true
L["Back to Boralus"] = true
L["(Captain Krooz) will take you to Mechagon"] = true
L["(Captain Krooz) will take you back to Zuldazar"] = true
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = true
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = true
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = true
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = true
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = true

--7 old dungeons/raids
L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"] = true
L["Old version of Scarlet Monastery Cathedral \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = true
L["Old version of Scarlet Monastery Graveyard \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] =true
L["Old version of Scarlet Monastery Library \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = true
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = true
L["Old version of Scholomance - Secret Entrance \n (Memory of Scholomance - Achievement)"] = true
L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"] = true