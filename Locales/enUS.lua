local ADDON_NAME = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "enUS", true)

--0.01
L["Profiles"] = true
L["Tooltip"] = true
L["< Left Click to show map >"] = true
L["< Left Click to show delve map >"] = true
L["< Shift Left Click to show map >"] = true
L["< Left Click to open Adventure Guide >"] = true
L["< Shift + Right Click add TomTom waypoint >"] = true
L["< Alt + Right click to delete this icon >"] = true
L["This applies to the following tabs"] = true
L["Adds an additional tooltip to icons, which lists the functions of the icons"] = true
L["Disables the display of all Blizzard Delves entrances on the zone map"] = true
L["If you press 'YES', the current run is over and you will be placed outside the entrance"] = true
L["An exception is the feedback in the chat from the function for deleting or restoring icons. These are always displayed!"] = true
L["Here you can enable or disable all chat messages sent by MapNotes Minimap and Worldmap buttons when you hide or show icons over them"] = true
L["Here you can enable or disable all chat messages sent from one of these MapNotes tabs when you change the settings"] = true
L["Only affects passage icons to instances and not path icons to zones"] = true
L["By deactivating it, the border of the zone icons of your own factions is also removed, as the displayed icons are automatically only for your own faction"] = true
--0.1 profiles
L["Profile has been changed"] = true
L["Profile has been reset to default"] = true
L["Profile has been adopted"] = true
L["Profile has been deleted"] = true
--0.2 Change Zones
L["Location"] = true
L["Show joined zone names in chat"] = true
L["Capital cities are excluded from this because there would be too much chat spam"] = true
L["Show Zone Names"] = true
L["In addition to the zone names, it also displays the names of specific locations within a zone. Disabling the Show Zone Names feature will also disable this feature"] = true
L["You are now in"] = true
L["When entering a new zone, the name of the new zone will be displayed in the chat"] = true
--0.3 Classic function Change
L["Number"] = true
L["Orientation"] = true
L["Old icon style"] = true
L["Changes the appearance of the icons. When activated, the listed icons will be changed with the previous style of these icons"] = true
--0.4 Restore
L["canceled"] = true
L["Delete this icon"] = true
L["A icon has been deleted"] = true
L["Restore all deleted icons for different types of maps"] = true
L["Restore all deleted icons"] = true
L["which you removed with the function"] = true
L["All deleted icons have been restored"] = true
--0.5 Sync function
L["synchronizes"] = true
L["Synchronizes the Zones tab with the Minimap tab"] = true
L["Which deactivates the functions from the Minimap tab and is now controlled together by the Zones tab"] = true
L["This will delete all Minimap settings and replace them with those from Zones tab"] = true
L["Synchronizes the Capitals tab with the Capitals - Minimap tab"] = true
L["Which deactivates the functions from the Capitals - Minimap tab and is now controlled together by the Capitals tab"] = true
L["This will delete all Capitals - Minimap settings and replace them with those from Capitals tab"] = true
--0.6 MapNotes icons and hide blizzard POIs
L["Displays special MapNotes summary icons containing several different pieces of information (dungeons/raids/portals, etc.)"] = true
L["Points of interests"] = true
L["Disables the display of all Blizzard Dungeon and Raid icons on the zone map"] = true
--1 Capitals
L["Leather Armor"] = true
L["Heavy Armor"] = true
L["Plate Armor"] = true
L["Cloth Armor"] = true
L["Quartermaster"] = true
L["The Scryers"] = true
L["The Aldor"] = true
L["Paths"] = true
L["Path"] = true
L["Capitals"] = true
L["Alchemy"] = true
L["Engineer"] = true
L["Jewelcrafting"] = true
L["Leatherworking"] = true
L["Blacksmithing"] = true
L["Tailoring"] = true
L["Skinning"] = true
L["Mining"] = true
L["Herbalism"] = true
L["Enchanting"] = true
L["Warspear"] = true
L["Stormshield"] = true
L["Shrine2Moons"] = true
L["Shrine7Stars"] = true
L["Starting on the first Sunday of each month for one week"] = true
L["Enables the display of icons for a specific capital city"] = true
L["This MapNotes icons shows various icons that are too close to each other together"] = true
L["Only affects instance passage icons, not path icons such as exit icons or icons on an instance map or the Capitals category / Minimap Capitals"] = true
L["Zones"] = true
L["Continents"] = true
--2 Unexplored Areas function
L["Unexplored Areas"] = true
L["Fog"] = true
L["Mist of the Unexplored"] = true
L["Leaves the unexplored areas revealed but adds a slight fog so you can still see which ones you haven't explored yet"] = true
L["Reveals unexplored areas and shows the individual areas of each zone that are actually still unexplored"] = true
--3 Info tab
L["Info"] = true
L["A description of what this addon does and what functions it offers"] = true
L["A collection of various icons on various maps from previous expansions up to Dragonflight"] = true
L["Displays instance entrances, portals, ships, zeppelins, exits, passage, enemy faction and other transport icons"] = true
L["All icons can be activated or deactivated separately!"] = true
L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] = true
L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"] = true
L["Normally on a maximized map you cannot use instance icons from Blizzard or other addons that would open the adventure guide. But not for MapNotes! You can use all functions on minimized or maximized maps!"] = true
L["Worldmap function"] = true
L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] = true
L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] = true
L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] = true
L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"] = true
L["Example zone map: => Orgrimmar. Left-click on this icon opens the map of Orgrimmar"] = true
L["Example Azeroth/continent map: 'Jade Forest Portal => Orgrimmar' Left-click on this symbol opens the map of the Jade Forest. So you can see where you need to go to get to the portal"] = true
L["Maximized Map function"] = true
L["After the adventure guide is opened using a MapNote instance icon and you then switch to the dungeon map using the 'Show map' option in the adventure guide, the map is shown reduced in size so that you can move with the character within the instance and see where you have to go. This minimized map feature ends when you close the map or once! Press the “World map on/off” button (which you have set under 'ESC - Keyboard assignment - Interface function'), whereupon the map will be maximized"] = true
L["Minimap button function"] = true
L["Left-click opens or close the MapNote setting menu"] = true
L["Right-click opens or close the HandyNote setting menu"] = true
L["Shift+Right-click hide the minimap button"] = true
L["Chat commands"] = true
--4 General tab
L["Description"] = true
L["Position of the real Instance Entrance"] = true
L["Way to the Instance Entrance"] = true
L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] = true
L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] = true
L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"] = true
L["If the map is open, after enabling or disabling this option, the map must be reopened once for the changes to display correctly"] = true
L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"] = true
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = true
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = true
L["At the same time, all icons representing additional instance inputs are removed"] = true
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = true
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = true
L["Generally"] = true
L["General"] = true
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = true
L["General settings / Additional functions"] = true
L["Shift function!"] = true
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."] = true
L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"] = true
L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"] = true
L["Settings apply to the zone map and the mini map at the same time"] = true
L["symbol size"] = true
L["Changes the size of the icons"] = true
L["symbol visibility"] = true
L["Changes the visibility of the icons"] = true
L["hide minimap button"] = true
L["Hide the MapNotes button on the minimap"] = true
L["hide worldmap button"] = true
L["Hide the MapNotes button on the worldmap"] = true
L["hide MapNotes!"] = true
L["-> Hide all MapNotes icons <-"] = true
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = true
L["Adventure guide"] = true
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = true
L["TomTom waypoints"] = true
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = true
L["extra information"] = true
L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"] = true
L["gray single"] = true
L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"] = true
L["gray all"] = true
L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"] = true
L["enemy faction"] = true
L["Shows enemy faction (horde/alliance) icons"] = true
L["However, this only applies to the Azeroth & continent map. Not for Zones + & Capital + category. These have their own activation option for opposing players"] = true
L["chat message"] = true
L["Disables MapNotes status chat messages excluding core information"] = true
L["Shows special transport icons like"] = true
L["Combines several different grouped symbols that lie on one point, thus showing all possible transport/instance symbols that are located here instead of just one of several possible ones"] = true
L["Left-clicking on one of these symbols on the map opens the corresponding map, which contains all of the points listed by the symbol on the map"] = true
L["Informations"] = true
L["Chat commands:"] = true
L["to show MapNotes info in chat: /mn, /MN"] = true
L["to open MapNotes menu: /mno, /MNO"] = true
L["to close MapNotes menu: /mnc, /MNC"] = true
L["to show minimap button: /mnb or /MNB"] = true
L["to hide minimap button: /mnbh or /MNBH"] = true
--5 Tab specific
L["Left-clicking on a symbol on this map type opens the corresponding map in which the symbol is located"] = true
L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"] = true
L["Azeroth map"] = true
L["Continent map"] = true
L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"] = true
L["Zone map"] = true
L["Dungeon map"] = true 
--6 Map Tabs together
L["Instance Entrance"] = true
L["switches weekly between"] = true
L["switches weekly between"] = true
L["Activate icons"] = true
L["Show individual icons"] = true
L["Exits"] = true
L["Raids"] = true
L["Dungeons"] = true
L["Passages"] = true
L["Multiple"] = true
L["Portals"] = true
L["Zeppelins"] = true
L["Ships"] = true
L["Transport"] = true
L["Special"] = true
L["Ogre Waygate"] = true
L["Old Instances"] = true
L["Show icons of passage on this map"] = true
L["Show icons of raids on this map"] = true
L["Show icons of dungeons on this map"] = true
L["Show icons of multiple on this map"] = true
L["Show icons of portals on this map"] = true
L["Show icons of zeppelins on this map"] = true
L["Show icons of ships on this map"] = true
L["Show all MapNotes for a specific map"] = true
L["Show icons of MapNotes dungeon exit on this map"] = true
L["Enables the display of all possible icons on this map"] = true
L["Show icons of passage to raids and dungeons on this map"] = true
L["Show Ogre Waygate icons from Garrison on this map"] = true
L["Activates the display of all possible icons on this map"] = true
L["Show icons of multiple (dungeons,raids) on this map"] = true
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Show all Khaz Algar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = true
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = true
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = true
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = true
--7 Maps
L["Kalimdor"] = true
L["Eastern Kingdom"] = true
L["Outland"] = true
L["Northrend"] = true
L["Pandaria"] = true
L["Draenor"] = true
L["Broken Isles"] = true
L["Zandalar"] = true
L["Kul Tiras"] = true
L["Shadowlands"] = true
L["Dragon Isles"] = true
--8 Core specific
L["Shift function"] = true
L["-> MiniMapButton <-"] = true
L["-> WorldMapButton <-"] = true
L["MapNotes menu window"] = true
L["All set icons have been restored"] = true
L["All MapNotes icons have been hidden"] = true
L["is activated"] = true
L["is deactivated"] = true
L["are shown"] = true
L["are hidden"] = true
L["Left-click => Open/Close"] = true
L["Right-click => Open/Close"] = true
L["Shift + Right-click => hide"] = true
L["Middle-Mouse-Button => Open/Close"] = true
--9 transport
L["Ever-Shifting Mirror"] = true
L["icons"] = true
L["Exit"] = true
L["Entrance"] = true
L["Passage"] = true
L["Portal"] = true
L["Ship"] = true
L["Zeppelin"] = true
L["Portalroom"] = true
L["The Dark Portal"] = true
L["Captain Krooz"] = true
L["Thrallmar Mage"] = true
L["Honor Hold Mage"] = true
L["Use the Old Keyring"] = true
L["Travel"] = true
L["Teleporter"] = true
L["Old Keyring"] = true
L["Old Version"] = true
L["Secret Portal"] = true
L["Secret Entrance"] = true
L["Ogre Waygate to Garrison"] = true
L["in the basement"] = true
L["(on the tower)"] = true
L["(inside portal chamber)"] = true
L["(inside building)"] = true
L["talk to"] = true
--10 places
L["Telogrus Rift"] = true
L["Sholazar Basin"] = true
L["Un'Goro Crater"] = true
L["Auberdine"] = true
L["Ratchet"] = true
L["Theramore Isle"] = true
L["Dire Maul"] = true
L["Blackfathom Deeps"] = true
L["Stormwind"] = true
L["Shadowfang Keep"] = true
L["Undercity"] = true
L["Rut'theran"] = true
L["Azuremyst Isle"] = true
L["Bel'ameth, Amirdrassil"] = true
L["Ruins of Gilneas"] = true
L["Darnassus"] = true
L["Teldrassil"] = true
L["Graveyard"] = true
L["Library"] = true
L["Cathedral"] = true
L["Armory"] = true
L["Ashran"] = true
L["The Timeways"] = true
L["Vol'mar"] = true
L["Zuldazar"] = true
L["Thunder Bluff"] = true
L["Silvermoon City"] = true
L["Boralus, Tiragarde Sound"] = true
L["Valdrakken"] = true
L["Badlands"] = true
L["Oribos"] = true
L["Azsuna"] = true
L["Uldum"] = true
L["Dazar'alor"] = true
L["Shattrath City"] = true
L["Echo Isles, Durotar"] = true
L["Silithus"] = true
L["Nazjatar"] = true
L["Emerald Dream"] = true
L["Thunder Bluff"] = true
L["Howling Fjord"] = true
L["Ruins of Lordaeron"] = true
L["Isle of Thunder"] = true
L["Twilight Highlands"] = true
L["Vashj'ir"] = true
L["The Waking Shores, Dragon Isles"] = true
L["Shado-Pan Garrison, Townlong Steppes"] = true
L["Grom'gol, Stranglethorn Vale"] = true
L["Exodar"] = true
L["Jade Forest"] = true
L["Drustvar"] = true
L["Gorgrond"] = true
L["Talador"] = true
L["Nagrand"] = true
L["Frostfire Ridge"] = true
L["Tanaan Jungle"] = true
L["Shadowmoon Valley"] = true
L["Spires of Arak"] = true
L["Netherstorm"] = true
L["Blade's Edge Mountains"] = true
L["Zangarmarsh"] = true
L["Terokkar Forest"] = true
L["Ohn'ahran Plains"] = true
L["Borean Tundra"] = true
L["Tirisfal Glades"] = true
L["Wintergrasp"] = true
L["Boralus"] = true
L["Stormsong Valley"] = true
L["Tiragarde Sound"] = true
L["Ironforge"] = true
L["Blasted Lands"] = true
L["Darkshore"] = true
L["Durotar"] = true
L["Dustwallow Marsh"] = true
L["Vale of Eternal Blossoms"] = true
L["Arathi Highlands"] = true
L["Nazmir"] = true
L["Vol'dun"] = true
L["Isle of Quel'Danas"] = true
L["Hellfire Peninsula"] = true
L["Korthia"] = true
L["The Maw"] = true
L["Zereth Mortis"] = true
L["Icecrown"] = true
L["Krasarang Wilds"] = true
L["Townlong Steppes"] = true
L["Kun-Lai Summit"] = true
L["Valley of the Four Winds"] = true
L["Barnard 'The Smasher' Bayswort"] = true
L["Desha Stormwallow"] = true
L["Daria Smithson"] = true
L["Swellthrasher"] = true
L["Grok Seahandler"] = true
L["Erul Dawnbrook"] = true
L["Dread-Admiral Tattersail"] = true
L["Grand Admiral Jes-Tereth"] = true
L["Naxxramas"] = true
L["Scholomance"] = true
L["Temple of Ahn'Qiraj"] = true
L["Lorewalker Han"] = true
L["Archmage Timear"] = true
L["Kiku"] = true
L["Eppu"] = true
L["Ta'elfar"] = true
L["Seer Kazal"] = true
L["Auridormi"] = true
L["Registrant"] = true
L["Scarlet Instances"] = true
L["hide Cosmos map symbols"] = true
L["Shows the locations of Raidbrowser applicants for old Raids"] = true
L["Deactivates the display of all possible icons on this map"] = true
--11 Specific
L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] = true
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = true
L["(Wards of the Dread Citadel - Achievement)"] = true
L["(Memory of Scholomance - Achievement)"] = true
L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] = true
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = true
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = true
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = true
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = true
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = true
L["Appears first after a certain instance progress\n or requires a certain achievement"] = true
--12 Classic
L["Ulduar"] = true
L["Trial of the Champion"] = true
L["Trial of the Crusader"] = true
L["Azjol-Nerub"] = true
L["Drak'Tharon Keep"] = true
L["Utgarde Pinnacle"] = true
L["Utgarde Keep"] = true
L["Magisters' Terrace"] = true
L["Karazhan"] = true
L["The Culling of Stratholme"] = true
L["Old Hillsbrad Foothills"] = true
L["The Oculus"] = true
L["The Ruby Sanctum"] = true
L["Black Temple"] = true
L["Auchenai Crypts"] = true
L["Sethekk Halls"] = true
L["The Arcatraz"] = true
L["Reforge"] = true
--13 The War Within
L["Khaz Algar"] = true
L["Dornogal"] = true
L["Catalyst"] = true
L["Merchant for Renown items"] = true
L["Council of Dornogal"] = true
L["The Assembly of the Deeps"] = true
L["Hallowfall Arathi"] = true
L["The Severed Threads"] = true
-- 14
L["Displays zone icons on a specific continent"] = true
L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"] = true
L["The associated settings are regulated here. \nRegardless of whether it is the display of an icon, an entire icon group or the display of the complete icons for the corresponding Continent"] = true
L["The associated settings are regulated here. \nRegardless of whether it is the display of an icon, an entire icon group or the display of the complete icons for the corresponding Capital"] = true