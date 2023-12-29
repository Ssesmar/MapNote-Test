local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadLocationsInfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

--#####################################################################################################
--##########################        function to hide all nodes below         ##########################
--#####################################################################################################
if not db.show.HideMapNote then


    --#####################################################################################################
    --####################################         Azeroth Map         ####################################
    --#####################################################################################################
        if db.show.Azeroth then
        
    
        --###########################
        --##### Azeroth Kalimdor ####
        --###########################
    
        if self.db.profile.showAzerothKalimdor then
          
    
        -- Azeroth Kalimdor Dungeons
          if self.db.profile.showAzerothDungeon then
            nodes[947][26635536] = { id = 240, type = "Dungeon", showInZone = true } -- Wailing Caverns
            nodes[947][22724585] = { id = 227, type = "Dungeon", showInZone = true } -- Blackfathom Deeps
            nodes[947][27126301] = { id = 233, type = "Dungeon", showInZone = true } -- Razorfen Downs
            nodes[947][27416697] = { id = 241, type = "Dungeon", showInZone = true } -- Zul'Farrak
            nodes[947][20055663] = { id = 232, type = "Dungeon", showInZone = true } -- Maraudon
            nodes[947][22126200] = { id = 230, lfgid = 36,type = "Dungeon", showInZone = true } -- Dire Maul - Capital Gardens
            nodes[947][29395008] = { id = 226, type = "Dungeon", showInZone = true } -- Ragefire
            nodes[947][25766218] = { id = 234, type = "Dungeon", showInZone = true } -- Razorfen Kraul
            nodes[947][26777580] = { id = 68, type = "Dungeon", showInZone = true } -- The Vortex Pinnacle
            nodes[947][25237426] = { id = 69, type = "Dungeon", showInZone = true } -- Lost City of Tol'Vir
            nodes[947][26337316] = { id = 70, type = "Dungeon", showInZone = true } -- Halls of Origination
            nodes[947][46234797] = { id = 67, type = "Dungeon", showInZone = true } -- The Stonecore
            nodes[947][23716144] = { id = 230, lfgid = 34, type = "PassageDungeonM", showInZone = true } -- Dire Maul - Warpwood Quarter
          end
    
    
        -- Azeroth Kalimdor Raids
          if self.db.profile.showAzerothRaid then
            nodes[947][27684669] = { id = 78, type = "Raid", showInZone = true } -- Firelands
              nodes[947][28906346] = { id = 760,type = "Raid", showInZone = true } -- Onyxia's Lair
            nodes[947][23887588] = { id = 74,type = "Raid", showInZone = true } -- Throne of the Four Winds
          end
    
    
        -- Azeroth Kalimdor Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][21116955] = { id = { 744, 743 }, type = "MultipleR",showInZone = true } -- Temple of Ahn'Qiraj, Ruins of Ahn'Qiraj
            nodes[947][30006911] = { id = { 187, 279, 255, 251, 750, 184, 185, 186 }, type = "MultipleM", showInZone = true } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
          end
    
    
        -- Azeroth Kalimdor Portals
          if self.db.profile.showAzerothPortals then
    
            if self.faction == "Horde" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[947][22226727] = { mnID = 862, name = L["Portal"] .. " - " .. L["Zandalar"] .. ", " .. L["Zuldazar"], type = "Portal", showInZone = true } -- Portal from Silithus to Zandalar
              nodes[947][30457087] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Orgrimmar         
            end
    
            if self.faction == "Alliance" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[947][22226727] = { mnID = 1161, name = L["Portal"] .. " - " ..L["Kul Tiras"] .. ", " .. L["Boralus"], type = "Portal", showInZone = true } -- Portal from Silithus to Boralus
              nodes[947][30457087] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Stormwind City          
            end
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][23994090] = { mnID = 862, name = L["Portal"] .. " - " .. L["Zandalar"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true } -- Portal from New Darkshore to Zandalar
              nodes[947][28464305] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal Tol Orgrimmar from Hyjal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][24484189] = { mnID = 1161, name = L["Portal"] .. " - " .. L["Boralus"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true } -- Portal from New Darkshore to Boralus
              nodes[947][28764283] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal Tol Orgrimmar from Hyjal
            end
          end
    
    
        -- Azeroth Kalimdor Zeppelins
          if self.db.profile.showAzerothZeppelins then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][30485132] = { mnID = 2022, name = L["Zeppelin"] .. " - " .. L["Waking Shores, Dragon Isles"], type = "HZeppelin", showInZone = true } -- Zeppelin from Durotar to The Waking Shores - Dragonflight
            end
          end
    
    
        -- Azeroth Kalimdor Ships
          if self.db.profile.showAzerothShips then
            nodes[947][29125574] = { mnID = 210, name = L["Ship"] .. " - " .. L["Booty Bay, Stranglethorn Vale"], type = "Ship", showInZone = true } -- Ship from Ratchet to Booty Bay
    
            if self.faction == "Horde" or db.show.EnemyFaction then
            nodes[947][31315572] = { mnID = 862, name = L["Ship"] .. " - " .. L["Dazar'alor"] .. "," .. L["Zandalar"], type = "HShip", showInZone = true } -- Ship from Echo Isles to Dazar'alor - Zandalar
            nodes[947][29986142] = { mnID = 56, name = L["Ship"] .. " - " .. L["Menethil Harbor, Wetlands"], type = "AShip" } -- Ship from Dustwallow Marsh to Menethil Harbor
            end
          end
        
        end
    
    
        --####################################
        --###### Azeroth Eastern Kingdom #####
        --####################################
    
        if self.db.profile.showAzerothEasternKingdom then
    
    
        -- Azeroth Eastern Kingdom Dungeons
          if self.db.profile.showAzerothDungeon then
            nodes[947][92813801] = { id = 77, type = "Dungeon", showInZone = true } -- Zul'Aman
            nodes[947][91972614] = { id = 249, type = "Dungeon", showInZone = true } -- Magisters' Terrace
            nodes[947][89856028] = { id = 239, name = "Uldaman back entrance", type = "Dungeon",showInZone = true } -- Uldaman (Secondary Entrance)
            nodes[947][83204721] = { id = 64, type = "Dungeon", showInZone = true } -- Shadowfang Keep
            nodes[947][88634402] = { id = 246, type = "Dungeon", showInZone = true } -- Scholomance
            nodes[947][89593995] = { id = 236, lfgid = 40,type = "Dungeon", showInZone = true } -- Stratholme
            nodes[947][90503929] = { id = 236, lfgid = 274,type = "Dungeon", showInZone = true } -- Stratholme Service Entrance
            nodes[947][84445688] = { id = 231, type = "Dungeon", showInZone = true } -- Gnomeregan
            nodes[947][86767011] = { id = 76, type = "Dungeon", showInZone = true } -- Zul'Gurub
            nodes[947][90366709] = { id = 237, type = "Dungeon", showInZone = true } -- The Temple of Atal'hakkar
            nodes[947][83226850] = { id = 63, type = "Dungeon", showInZone = true } -- Deadmines
            nodes[947][84056387] = { id = 238, type = "Dungeon", showInZone = true } -- The Stockade
            nodes[947][79985920] = { id = 65, type = "Dungeon", showInZone = true } -- Throne of Tides
          end
    
    
        -- Azeroth Eastern Kingdom Raids
          if self.db.profile.showAzerothRaid then
            nodes[947][80455260] = { id = 75, type = "Raid", showInZone = true } -- Baradin Hold
            nodes[947][90652724] = { id = 752, type = "Raid", showInZone = true } -- Sunwell Plateau
            nodes[947][90655621] = { id = 72, type = "Raid", showInZone = true } -- The Bastion of Twilight
            nodes[947][89945460] = { id = 71, type = "Dungeon", showInZone = true } -- Grim Batol
          end
    
    
        -- Azeroth Eastern Kingdom Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][86434185] = { id = { 311, 316 },type = "MultipleD", showInZone = true } -- Scarlet Halls, Monastery
            nodes[947][88006838] = { id = { 745, 860 }, type = "MultipleM",showInZone = true } -- Karazhan, Return to Karazhan
            nodes[947][89225843] = { id = { 1197, 239 }, type = "MultipleD",showInZone = true } --  Legacy of Tyr Dragonflight Dungeon & Vanilla Uldaman
            nodes[947][86536189] = { id = { 73, 741, 742, 66, 228, 229, 559 }, type = "MultipleM", showInZone = true } -- Blackwind Descent, Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire
          end
    
    
        -- Azeroth Eastern Kingdom Portals
          if self.db.profile.showAzerothPortals then
    
            if self.faction == "Horde" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[947][89587016] = { mnID = 624, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Warspear, Ashran"] ..")", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Blasted Lands to Warspear
            end
    
            if self.faction == "Alliance" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[947][89587016] = { mnID = 622, name = L["The Dark Portal"] .. " (" .. L["Portal"] .." - ".. L["Stormshield, Ashran"] .. ")", type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Blasted Lands to Stormshield
            end
              
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][84864258] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Tirisfal to Orgrimmar
              nodes[947][88074841] = { name = L["Portal"] .. " - " .. L["Zandalar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Arathi to Zandalar
              nodes[947][91853164] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Silvermoon to Orgrimmar
              nodes[947][79625090] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal Tol Bard to Orgimmar 
              nodes[947][93675469] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal Tol Orgrimmar from Twilight Highlands
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][90126888] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal to Stormwind
              nodes[947][80655046] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal Tol Bard to Stormwind
            end
          end
    
    
        -- Azeroth Eastern Kingdom Zeppelins
          if self.db.profile.showAzerothZeppelins then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][85057132] = { mnID = 85, name = L["Zeppelin"] .. " - " .. L["Orgrimmar"], type = "HZeppelin", showInZone = true } -- Zeppelin from Stranglethorn Valley to Ogrimmar
            end
          end
    
    
        -- Azeroth Eastern Kingdom Ships
          if self.db.profile.showAzerothShips then
            nodes[947][84667504] = { mnID = 10, name = L["Ship"] .. " - " .. L["Ratchet, Northern Barrens"], type = "Ship", showInZone = true } -- Ship from Booty Bay to Ratchet
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][83196210] = { mnID = 114, name = L["Ship"] .. " - " .. L["Valiance Keep, Borean Tundra"], type = "AShip", showInZone = true } -- Ship from Stormwind to Valiance Keep
              nodes[947][83296456] = { mnID = 1161, name = L["Ship"] .. " - " .. L["Boralus Harbor, Tiragarde Sound"], type = "AShip", showInZone = true } -- Ship from Stormwind to Valiance Keep
            end
          end
    
    
        -- Azeroth Eastern Kingdom OldVanilla
          if self.db.profile.showAzerothOldVanilla then
            nodes[947][90194066] = { mnID = 166, name = L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"], type = "VRaid", showInZone = true, hideOnContinent = false } -- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel
            nodes[947][89714326] = { mnID = 306, name = L["Old version of Scholomance - Secret Entrance \n (Memory of Scholomance - Achievement)"], type = "VRaid", showInZone = true, hideOnContinent = false } -- Old version of Scholomance - Secret Entrance
            nodes[947][86344322] = { name = L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = true } -- Scarlet Monastery Key for Old dungeons
          end
        end
    
    
        --############################
        --##### Azeroth Northrend ####
        --############################
    
        if self.db.profile.showAzerothNorthrend then
    
    
        -- Azeroth Northrend Dungeons
          if self.db.profile.showAzerothDungeon then
            nodes[947][53111487] = { id = 273, type = "Dungeon", showInZone = true } -- Drak'Tharon Keep
            nodes[947][56481047] = { id = 274, type = "Dungeon", showInZone = true } -- Gundrak
            nodes[947][50781352] = { id = 283, type = "Dungeon", showInZone = true } -- The Violet Hold
          end
    
    
        -- Azeroth Northrend Raids
          if self.db.profile.showAzerothRaid then
            nodes[947][52131713] = { id = 754, type = "Raid", showInZone = true } -- Naxxramas
            nodes[947][46291352] = { id =  753,  type = "Raid", showInZone = true } -- Vault of Archavon
          end
    
    
        -- Azeroth Northrend Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][47451709] = { id = { 271, 272 }, type = "MultipleD" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub
            nodes[947][57062211] = { id = { 286, 285 }, type = "MultipleD", showInZone = true } -- Utgarde Pinnacle, Utgarde Keep
            nodes[947][47421290] = { id = { 758, 276, 278, 280 }, type = "MultipleM", showInZone = true } -- Icecrown Citadel, The Forge of Souls, Halls of Reflection, Pit of Saron
            nodes[947][51880617] = { id = { 759, 277, 275 }, type = "MultipleM", showInZone = true } -- Ulduar, Halls of Stone, Halls of Lightning
            nodes[947][49290747] = { id = { 757, 284 }, type = "MultipleM", showInZone = true } -- Trial of the Crusader, Trial of the Champion
            nodes[947][40641671] = { id = { 756, 282, 281 }, type = "MultipleM", showInZone = true } -- The Eye of Eternity, The Nexus, The Oculus
            nodes[947][50001736] = { id = { 755, 761 }, type = "MultipleR", showInZone = true } -- The Ruby Sanctum, The Obsidian Sanctum
          end
    
    
        -- Azeroth Northrend Portals
          if self.db.profile.showAzerothPortals then
            nodes[947][46131450] = { mnID = 125, name = L["Portal"] .. " - " .. L["Dalaran"], type = "Portal", showInZone = true } -- LakeWintergrasp to Dalaran Portal
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][49401233] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Old Dalaran to Orgrimmar
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][49151346] = { mnID = 84, name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal from Old Dalaran to Stormwind
            end
          end
    
    
        -- Azeroth Northrend Zeppelins
          if self.db.profile.showAzerothZeppelins then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][41841870] = { mnID = 85, name = L["Zeppelin"] .. " - " .. L["Orgrimmar"], type = "HZeppelin", showInZone = true } -- Zeppelin from Borean Tundra to Ogrimmar
            end
          end
    
    
        -- Azeroth Northrend Ships
          if self.db.profile.showAzerothShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][43232009] = { mnID = 84, name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Ship from Borean Tundra to Stormwind
              nodes[947][57602350] = { mnID = 84, name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Ship from Borean Tundra to Stormwind
            end
          end
        end
    
    
        --#########################
        --##### Azeroth Pandaria ####
        --#########################
    
        if self.db.profile.showAzerothPandaria then
    
        -- Azeroth Pandaria Dungeons
          if self.db.profile.showAzerothDungeon then
            nodes[947][53138189] = { id = 313, type = "Dungeon", showInZone = true } -- Temple of the Jade Serpent
            nodes[947][47568563] = { id = 302, type = "Dungeon", showInZone = true } -- Stormstout Brewery
            nodes[947][45737584] = { id = 312, type = "Dungeon", showInZone = true } -- Shado-Pan Monastery
            nodes[947][41918090] = { id = 324, type = "Dungeon", showInZone = true } -- Siege of Niuzao Temple
            nodes[947][46468244] = { id = 303, type = "Dungeon", showInZone = true } -- Gate of the Setting Sun
          end
    
    
        -- Azeroth Pandaria Raids
          if self.db.profile.showAzerothRaid then
            nodes[947][47857509] = { id = 317, type = "Raid", showInZone = true } -- Mogu'shan Vaults
            nodes[947][43598371] = { id = 330, type = "Raid", showInZone = true } -- Heart of Fear
            nodes[947][41907121] = { id = 362, type = "Raid", showInZone = true } -- Throne of Thunder
            nodes[947][49688206] = { id = 320, type = "Raid", showInZone = true } -- Terrace of Endless Spring 
          end
    
    
        -- Azeroth Pandaria Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][48658140] = { id = { 369, 321 }, type = "MultipleM", showInZone = true } -- Siege of Orgrimmar
          end
    
    
        -- Azeroth Pandaria Portals
          if self.db.profile.showAzerothPortals then
            nodes[947][40147153] = { mnID = 388, name = L["Portal"] .. " - " .. L["Shado-Pan Garrison, TownlongWastes"], type = "Portal", showInZone = true } -- Portal from Shado-Pan Garrison to IsleoftheThunderKing
            nodes[947][43408025] = { mnID = 504, name = L["Portal"] .. " - " .. L["Isle of Thunder"], type = "Portal", showInZone = true } -- Portal from IsleoftheThunderKing to Shado-Pan Garrison
            
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][50477732] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Jade Forest to Orgrimmar
            end
          end
        end
    
    
        --#########################
        --##### Azeroth Legion ####
        --#########################
    
        if self.db.profile.showAzerothBrokenIsles then
    
        -- Azeroth Legion Dungeons
          if self.db.profile.showAzerothDungeon then
            nodes[947][58804606] = { id = 777, type = "Dungeon", showInZone = true } -- Assault on Violet Hold
            nodes[947][66413395] = { id = 945, type = "Dungeon", showInZone = true } -- Seat of the Triumvirate
            nodes[947][55944783] = { id = 707, type = "Dungeon", showInZone = true } -- Vault of the Wardens
            nodes[947][56864411] = { id = 716, type = "Dungeon", showInZone = true } -- Eye of Azshara
            nodes[947][54743861] = { id = 740, type = "Dungeon", showInZone = true } -- Black Rook Hold
            nodes[947][58883744] = { id = 767, type = "Dungeon", showInZone = true } -- Neltharion's Lair
            nodes[947][61533801] = { id = 727, type = "Dungeon", showInZone = true } -- Maw of Souls
          end
    
    
        -- Azeroth Legion Raids    
          if self.db.profile.showAzerothRaid then
            nodes[947][65603682] = { id = 946, type = "Raid", showInZone = true } -- Antorus, the Burning Thron
          end
    
    
        -- Azeroth Legion Multiple    
          if self.db.profile.showAzerothMultiple then
            nodes[947][60954565] = { id = { 875, 900 }, type = "MultipleM", showInZone = true } -- Tomb of Sargeras, Cathedral of the Night
            nodes[947][56043739] = { id = { 762, 768 }, type = "MultipleM", showInZone = true } -- Darkheart Thicket, The Emerald Nightmare
            nodes[947][58864194] = { id = { 786, 800, 726 }, type = "MultipleM", showInZone = true } -- The Nighthold, Court of Stars, The Arcway
            nodes[947][62843965] = { id = { 721, 861 }, type = "MultipleM", showInZone = true } -- Halls of Valor, Trial of Valor
          end
    
    
        -- Azeroth Legion Portals
          if self.db.profile.showAzerothPortals then
            
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][58124501] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from New Dalaran to Orgrimmar
              nodes[947][55624409] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal to Orgrimmar from Aszuna
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][57774634] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal from New Dalaran to Stormwind
              nodes[947][55624409] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal to Stormwind from Aszuna
            end
          end
        end
    
    
        --#########################
        --#### Azeroth Zandalar ###
        --#########################
    
        if self.db.profile.showAzerothZandalar then  
    
        -- Azeroth Zandalar Dungeons
          if self.db.profile.showAzerothDungeon then
            nodes[947][54116471] = { id = 968, type = "Dungeon", showInZone = true } -- Atal'Dazar
            nodes[947][52726453] = { id = 1041, type = "Dungeon", showInZone = true } -- Kings' Rest
            nodes[947][52725672] = { id = 1030, type = "Dungeon", showInZone = true } -- Temple of Sethraliss    
          
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][55156668] = { id = 1012, type = "Dungeon", showInZone = true } -- The MOTHERLODE HORDE
            end
    
            if self.faction == "Alliance" then
              nodes[947][53386795] = { id = 1012, type = "Dungeon",  showInZone = true }  -- The MOTHERLODE Alliance
            end
          end
    
    
        -- Azeroth Zandalar Raids
          if self.db.profile.showAzerothRaid then
            nodes[947][60705670] = { id = 1179, type = "Raid", showInZone = true } -- The Eternal Palace
            
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][55186352] = { id = 1176, type = "Raid", showInZone = true } -- Battle of Dazar'alor
            end
          end
    
    
        -- Azeroth Zandalar Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][55926026] = { id = { 1031, 1022 }, type = "MultipleM", showInZone = true } -- Uldir, The Underrot
          end
    
    
        -- Azeroth Zandalar Portals
          if self.db.profile.showAzerothPortals then
    
            if self.faction == "Horde" then
              nodes[947][55666511] = { mnID = 1163, name = L["Portalroom"] .. " - "  .. L["Dazar'alor"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'Alor
            end
          end
    
    
      -- Azeroth Zandalar Ships
          if self.db.profile.showAzerothShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][55506808] = { mnID = 1, name = L["Ship"] .. " - " .. L["Echo Isles, Durotar"] , type = "HShip", showInZone = true } -- Ship from Zandalar to Echo Isles
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][54066793] = { mnID = 1161, name = L["Back to Boralus"], type = "AShip", showInZone = true } -- Ship from Zuldazar to Boralus 
              nodes[947][51405743] = { mnID = 1161, name = L["Back to Boralus"], type = "AShip", showInZone = true } -- Ship from Vol'dun to Boralus 
              nodes[947][56705875] = { mnID = 1161, name = L["Back to Boralus"], type = "AShip", showInZone = true } -- Ship from Nazmir to Boralus
            end
          end
        end
    
    
        --############################
        --##### Azeroth Kul Tiras ####
        --############################
    
        if self.db.profile.showAzerothKulTiras then
    
        -- Azeroth Kul Tiras Dungeons 
          if self.db.profile.showAzerothDungeon then  --Dungeons
            nodes[947][66824486] = { id = 1178, type = "Dungeon", showInZone = true } -- Operation: Mechagon 
            nodes[947][74365363] = { id = 1001, type = "Dungeon", showInZone = true } -- Freehold 
            nodes[947][68354901] = { id = 1021, type = "Dungeon", showInZone = true } -- Waycrest Manor 
            nodes[947][74224240] = { id = 1036, type = "Dungeon", showInZone = true } -- Shrine of Storm 
            nodes[947][76205044] = { id = 1002, type = "Dungeon", showInZone = true } -- Tol Dagor
          end
    
    
        -- Azeroth Kul Tiras Raids
          if self.db.profile.showAzerothRaid then 
            nodes[947][74404422] = { id = 1177, type = "Raid", showInZone = true } -- Crucible of Storms
          end
    
    
        -- Azeroth Kul Tiras Multiple
          if self.db.profile.showAzerothMultiple then
    
            if self.faction == "Alliance" then
              nodes[947][73014936] = { id = { 1176, 1023 }, type = "MultipleM", showInZone = true } -- Battle of Dazar'alor, Boralus
            end
    
          end
    
    
        -- Azeroth Kul Tiras Portals
          if self.db.profile.showAzerothPortals then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][73394840] = { mnID = 1161, name = L["Portalroom"] .. " - "  .. L["Boralus"], type = "APortal", showInZone = true } -- Portalroom from Boralus
            end
          end
    
    
        -- Azeroth Kul Tiras Ships
          if self.db.profile.showAzerothShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][67265130] = { mnID = 862, name = L["Back to Zuldazar"], type = "HShip", showInZone = true } -- Ship from Drustvar to Zuldazar 
              nodes[947][72244228] = { mnID = 862, name = L["Back to Zuldazar"], type = "HShip", showInZone = true } -- Ship from Stormsong Valley to Zuldazar 
              nodes[947][74745185] = { mnID = 862, name = L["Back to Zuldazar"], type = "HShip", showInZone = true } -- Ship from Tiragarde Sound to Zuldazar 
              nodes[947][65864376] = { mnID = 862, name = L["(Captain Krooz) will take you back to Zuldazar"], type = "TransportHelper", showInZone = true } -- Ship from Mechagon to Zuldazar
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][73914927] = { mnID = 84, name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Ship to Stormwind from Boralus
            end
          end
        end
    
    
        --###############################
        --##### Azeroth Dragon Isles ####
        --###############################
    
        if self.db.profile.showAzerothDragonIsles then
              
        -- Azeroth Dragon Isles Dungeons
            if self.db.profile.showAzerothDungeon then
            nodes[947][77241864] = { id = 1202, type = "Dungeon", showInZone = true } -- Ruby Life Pools
            nodes[947][74891765] = { id = 1199, type = "Dungeon", showInZone = true } -- Neltharus 
            nodes[947][75192161] = { id = 1198, type = "Dungeon", showInZone = true } -- The Nokhud Offensive 
            nodes[947][73352689] = { id = 1196, type = "Dungeon", showInZone = true } -- Brackenhide Hollow 
            nodes[947][76072854] = { id = 1203, type = "Dungeon", showInZone = true } -- The Azure Vault 
            nodes[947][79611825] = { id = 1201, type = "Dungeon", showInZone = true } -- Algeth'ar Academy 
            nodes[947][79532136] = { id = 1204, type = "Dungeon", showInZone = true } -- Halls of Infusion 
            nodes[947][79902331] = { id = 1209, type = "Dungeon", showInZone = true } -- Dawn of the Infinite
          end
    
    
        -- Azeroth Dragon Isles Raids     
          if self.db.profile.showAzerothRaid then
            nodes[947][81372023] = { id = 1200, type = "Raid", showInZone = true } -- Vault of the Incarnates 
            nodes[947][85002623] = { id = 1208, type = "Raid", showInZone = true } -- Aberrus, the Shadowed Crucible 
            nodes[947][71222297] = { id = 1207, type = "PassageRaidM", showInZone = true } -- Amirdrassil, the Dream's Hope
          end
    
    
        -- Azeroth Dragon Isles Portals
          if self.db.profile.showAzerothPortals then
            nodes[947][72202222] = { mnID = 2200, name = L["Portal"] .. " - " .. L["The Emerald Dream"], type = "Portal", showInZone = true } -- Portal to The Emerald Dream 
            nodes[947][77692120] = { name = L["Portal"] .. " - " .. L["The Timeways"], type = "Portal", showInZone = true } --  Portal from Valdrakken to Timeways
          end
    
    
        -- Azeroth Dragon Isles Zeppelin
          if self.db.profile.showAzerothZeppelins then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][77851451] = { mnID = 85, name = L["Zeppelin"] .. " - " .. L["Orgrimmar"], type = "HZeppelin", showInZone = true } -- Zeppelin from Waking Shores to Ogrimmar
            end
          end
    
    
        -- Azeroth Ships      
          if self.db.profile.showAzerothShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][79021601] = { mnID = 84, name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Ship to Stormwind from The Waking Shores - Dragonflight
            end
          end
        end
      end
    
    
    
    --#####################################################################################################
    --################################         Continent / Zone Map        ################################
    --#####################################################################################################
    
      if db.show.Continent then
    
    
        --#############################
        --##### Continent Kalimdor ####
        --#############################
    
        if self.db.profile.showContinentKalimdor then
        
        -- Kalimdor Dungeons
            if self.db.profile.showContinentDungeons then
            nodes[12][52215315] = { id = 240, type = "Dungeon" } -- Wailing Caverns 
            nodes[10][38916921] = { id = 240, type = "PassageUpM", hideOnContinent = true } -- Wailing Caverns 
            nodes[11][54916646] = { id = 240, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Wailing Caverns 
            nodes[12][43913301] = { id = 227, type = "Dungeon" } -- Blackfathom Deeps 
            nodes[12][53146914] = { id = 233, type = "Dungeon" } -- Razorfen Downs 
            nodes[12][38395594] = { id = 232, type = "Dungeon" } -- Maraudon 
            nodes[66][29106256] = { id = 232, type = "PassageLeftM", showInZone = true, hideOnContinent = true } -- Maraudon Outside
            nodes[67][78285518] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern 
            nodes[68][52152417] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern 
            nodes[68][44517669] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern first Entrance 
            nodes[12][42726722] = { id = 230, lfgid = 36, type = "Dungeon", } -- Dire Maul - Warpwood Quarter 
            nodes[69][60323015] = { id = 230, lfgid = 36, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Capital Gardens - West left Entrance 
            nodes[69][60303130] = { id = 230, lfgid = 36, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Capital Gardens - West right Entrance 
            nodes[69][62502490] = { id = 230, lfgid = 38, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Gordok Commons - North  
            nodes[69][65503524] = { id = 230, lfgid = 34, type = "PassageDungeonM", hideOnContinent = true, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[69][77073692] = { id = 230, lfgid = 34, type = "PassageDungeonM", hideOnContinent = true, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[12][46106657] = { id = 230, lfgid = 34, type = "PassageDungeonM", hideOnContinent = false, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[12][43906613] = { id = 230, lfgid = 34, type = "PassageDungeonM", hideOnContinent = false, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[12][54187774] = { id = 241, type = "Dungeon" } -- Zul'Farrak
            nodes[75][57608260] = { id = 279, type = "Dungeon" } -- The Culling of Stratholme 
            nodes[75][36008400] = { id = 255, type = "Dungeon" } -- The Black Morass 
            nodes[75][26703540] = { id = 251, type = "Dungeon" } -- Old Hillsbrad Foothills 
            nodes[75][57302920] = { id = 184, type = "Dungeon" } -- End Time 
            nodes[75][22406430] = { id = 185, type = "Dungeon" } -- Well of Eternity 
            nodes[75][67202930] = { id = 186, type = "Dungeon" } -- Hour of Twilight 
            nodes[12][58304269] = { id = 226, type = "Dungeon" } -- Ragefire 
            nodes[12][50916837] = { id = 234, type = "Dungeon" } -- Razorfen Kraul 
            nodes[12][52519670] = { id = 68, type = "Dungeon" } -- The Vortex Pinnacle 
            nodes[12][49699341] = { id = 69, type = "Dungeon" } -- Lost City of Tol'Vir 
            nodes[12][51579122] = { id = 70, type = "Dungeon" } -- Halls of Origination
            nodes[948][51102882] = { id = 67, type = "Dungeon", showInZone = true } -- The Stonecore
          end
    
    
        --Kalimdor Raids
          if self.db.profile.showContinentRaids then
            nodes[12][45929663] = { id = 74, type = "Raid" } -- Throne of the Four Winds 
            nodes[12][54243397] = { id = 78, type = "Raid" } -- Firelands 
            nodes[12][56436963] = { id = 760, type = "Raid" } -- Onyxia's Lair 
            nodes[12][42068358] = { id = 743, type = "Raid" } -- Ruins of Ahn'Qiraj 
            nodes[12][40678358] = { id = 744, type = "Raid" } -- Temple of Ahn'Qiraj
          end
    
    
        --Kalimdor Multiple
          if self.db.profile.showContinentMultiple then
            nodes[71][65114833] = { id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "MultipleM", showInZone = true, hideOnContinent = false } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
          end
    
    
        -- Kalimdor Portals
          if self.db.profile.showContinentPortals then
    
    
              if self.faction == "Horde" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
                nodes[81][41614520] = { mnID = 862, name = L["Portal"] .. " - " .. L["Zandalar"] .. ", " .. L["Zuldazar"], type = "Portal", showInZone = true, hideOnContinent = false } -- Portal from Silithus to Zandalar
                nodes[71][65984960] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Tanaris to Orgrimmar 
                nodes[74][58152676] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Orgrimmar 
                nodes[12][59898422] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Orgrimmar 
                nodes[12][56122725] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal Tol Orgrimmar from Hyjal
              end
    
              if self.faction == "Alliance" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
                nodes[81][41614520] = { mnID = 1161, name = L["Portal"] .. " - " ..L["Kul Tiras"] .. ", " .. L["Boralus"], type = "Portal", showInZone = true, hideOnContinent = false } -- Portal from Silithus to Boralus
                nodes[71][65984960] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Tanaris to Stormwind City 
                nodes[74][58942680] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Stormwind City 
                nodes[12][59898422] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Stormwind City 
                nodes[12][56122725] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true , hideOnContinent = false } -- Portal Tol Stormwind from Hyjal
              end
    
              if self.faction == "Horde" or db.show.EnemyFaction then   
                nodes[12][45842223] = { mnID = 862, name = L["Portal"] .. " - " .. L["Zandalar"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from New Darkshore to Zandalar 
                nodes[62][46243511] = { mnID = 862, name = L["Portal"] .. " - " .. L["Zandalar"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from New Darkshore to Zandalar 
                nodes[85][50765561] = { mnID = 18, name = L["Portal"] .. " - " .. L["Ruins of Lordaeron, Undercity"] .. " " .. L["(on the tower)"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Ruins of Lordaeron 
                nodes[85][55988822] = { mnID = 110, name = L["Portal"] .. " - " .. L["Silvermoon City"] .. " " .. L["(inside building)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Silvermoon City Portalroom 
                nodes[85][57098737] = { mnID = 2112, name = L["Portal"] .. " - " .. L["Valdrakken"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } --  Valdrakken Portalroom 
                nodes[85][58308788] = { mnID = 1670, name = L["Portal"] .. " - " .. L["Oribos"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Oribos Portalroom 
                nodes[85][58858950] = { mnID = 630, name = L["Portal"] .. " - " .. L["Azsuna"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Azsuna Portalroom 
                nodes[85][57479217] = { mnID = 862, name = L["Portal"] .. " - " .. L["Zuldazar"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Zuldazar Portalroom 
                nodes[85][57479225] = { mnID = 371, name = L["Portal"] .. " - " .. L["Jade Forest"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- The Jade Forest Portalroom 
                nodes[85][56249171] = { mnID = 125, name = L["Portal"] .. " - " .. L["Dalaran, Crystalsong Forest"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Crystalsong Forest (Old Dalaran) Portalroom 
                nodes[85][57409153] = { mnID = 111, name = L["Portal"] .. " - " .. L["Shattrath"] .. " " .. L["(at basement)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Shattrath Portalroom 
                nodes[85][56399252] = { mnID = 74, name = L["Portal"] .. " - " .. L["Caverns of Time"] .. " " .. L["(at basement)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Caverns of Time Portalroom 
                nodes[85][55209201] = { mnID = 624, name = L["Portal"] .. " - " .. L["Warspear, Ashran"] .. " " .. L["(at basement)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Warspear - Ashran Portalroom  
                nodes[85][47393928] = { mnID = 245, name = L["Portal"] .. " - " .. L["Tol Barad"], type = "HPortal", hideOnContinent = true, showInZone = true } --  Portal to Tol Barad
                nodes[85][48863851] = { mnID = 1527, name = L["Portal"] .. " - " .. L["Uldum"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Uldum
                nodes[85][50243944] = { mnID = 1527, name = L["Portal"] .. " - " .. L["Twilight Highlands"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Twilight Highlands
                nodes[85][51203832] = { mnID = 198, name = L["Portal"] .. " - " .. L["Hyjal"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Hyjal
                nodes[85][50863628] = { mnID = 1161, name = L["Portal"] .. " - " .. L["Deepholm"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Deepholm
                nodes[85][49203647] = { mnID = 203, name = L["Portal"] .. " - " .. L["Vashj'ir"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Vashjir
                nodes[207][50945311] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal Tol Orgrimmar from Deepholm
                nodes[198][63482447] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal Tol Orgrimmar from Hyjal
              end
    
              if self.faction == "Alliance" or db.show.EnemyFaction then
                nodes[12][47092322] = { mnID = 1161, name = L["Portal"] .. " - " .. L["Boralus"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from New Darkshore to Zandalar 
                nodes[62][48023628] = { mnID = 1161, name = L["Portal"] .. " - " .. L["Boralus"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from New Darkshore to Zandalar
                nodes[198][62602315] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true , hideOnContinent = true } -- Portal Tol Stormwind from Hyjal
              end
          end
    
    
        --Kalimdor Zeppelins
          if self.db.profile.showContinentZeppelins then
            nodes[12][59814453] = { mnID = 2022, name = L["Zeppelin"] .. " - " .. L["Waking Shores, Dragon Isles"], type = "HZeppelin", showInZone = true, hideOnContinent = false } -- Zeppelin from Durotar to Waking Shores - Dragonflight
          end
    
    
        -- Kalimdor Ships
          if self.db.profile.showContinentShips then
            nodes[10][70177323] = { mnID = 210, name = L["Ship"] .. " - " .. L["Booty Bay, Stranglethorn Vale"], type = "Ship" } -- Ship from Ratchet to Booty Bay Ship
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[12][62985416] = { mnID = 862, name = L["Ship"] .. " - " .. L["Dazar'alor"] .. "," .. L["Zandalar"], type = "HShip" } -- Ship from Echo Isles to Dazar'alor - Zandalar
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[12][59266609] = { mnID = 56, name = L["Ship"] .. " - " .. L["Menethil Harbor, Wetlands"], type = "AShip" } -- Ship from Dustwallow Marsh to Menethil Harbor
            end
          end
        end
    
    
        --#####################################
        --##### Continent Eastern  Kingdom ####
        --#####################################
    
        if self.db.profile.showContinentEasternKingdom then
    
        -- Eastern  Kingdom Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[122][61303090] = { id = 249, type = "Dungeon" } -- Magisters' Terrace 
            nodes[95][85206430] = { id = 77, type = "Dungeon" } -- Zul'Aman 
            nodes[13][31796256] = { id = 65, type = "Dungeon" } -- Throne of Tides 
            nodes[13][42397323] = { id = 238, type = "Dungeon" } -- The Stockade 
            nodes[13][47448471] = { id = 76, type = "Dungeon" } -- Zul'Gurub 
            nodes[13][40764187] = { id = 64, type = "Dungeon" } -- Shadowfang Keep 
            nodes[13][53646537] = { id = 239, name = "Uldaman back entrance", type = "Dungeon" } -- Uldaman (Secondary Entrance) 
            nodes[13][50573677] = { id = 246, type = "Dungeon" } -- Scholomance
            nodes[13][52712836] = { id = 236, lfgid = 40, type = "Dungeon" } -- Stratholme 
            nodes[13][54472924] = { id = 236, lfgid = 274, type = "Dungeon" }-- Stratholme Service Entrance 
            nodes[23][43251854] = { id = 236, lfgid = 274, type = "Dungeon", showInZone = true }-- Stratholme Service Entrance 
            nodes[13][42915972] = { id = 231, type = "Dungeon" } -- Gnomeregan 
            nodes[13][49428163] = { id = 860, type = "Dungeon" } -- Return to Karazhan 
            nodes[13][53977927] = { id = 237, type = "Dungeon" } -- The Temple of Atal'hakkar 
            nodes[13][40808194] = { id = 63, type = "Dungeon" } -- Deadmines
            nodes[13][53135585] = { id = 71, type = "Dungeon" } -- Grim Batol
          end
    
    
        -- Eastern  Kingdom Raids
          if self.db.profile.showContinentRaids then
            nodes[122][44304570] = { id = 752, type = "Raid" } -- Sunwell Plateau 
            nodes[13][47546862] = { id = 73, type = "Raid" } -- Blackwind Descent 
            nodes[13][54905899] = { id = 72, type = "Raid" } -- The Bastion of Twilight 
            nodes[13][35565150] = { id = 75, type = "Raid" } -- Baradin Hold
          end
    
    
        --Eastern Kingdom Multiple
          if self.db.profile.showContinentMultiple then
            nodes[13][46886972] = { id = { 741, 742, 66, 228, 229, 559 }, type = "MultipleM" } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            nodes[13][49428163] = { id = { 745, 860 },  type = "MultipleM" } -- Karazhan, Return to Karazhan
            nodes[13][46583029] = { id = { 311, 316 }, type = "MultipleD" } -- Scarlet Halls, Monastery 
            nodes[13][52176317] = { id = { 1197, 239 }, type = "MultipleD" } --  Legacy of Tyr Dragonflight Dungeon & Vanilla Uldaman 
          end
    
    
        --Eastern Kingdom Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[18][60735867] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal to Orgrimmar from Tirisfal
              nodes[18][61905899] = { mnID = 50, name = L["Portal"] .. " - " .. L["Stranglethorn"], type = "HPortal", showInZone = true } -- Portal to Orgrimmar from Tirisfal
              nodes[2070][59506694] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal to Orgrimmar from Tirisfal
              nodes[2070][59506797] = { mnID = 50, name = L["Portal"] .. " - " .. L["Stranglethorn"], type = "HPortal", showInZone = true } -- Portal to Stranglethorn from Tirisfal
              nodes[2070][60126689] = { mnID = 117, name = L["Portal"] .. " - " .. L["Howling Fjord"], type = "HPortal", showInZone = true } -- Portal to Howling Fjord from Tirisfal
              nodes[2070][59406743] = { mnID = 110, name = L["Portal"] .. " - " .. L["Silvermoon City"], type = "HPortal", showInZone = true } -- Portal to Silvermoon from Tirisfal
              nodes[50][37545099] = { mnID = 18, name = L["Portal"] .. " - " .. L["Ruins of Lordaeron, Undercity"] .. " " .. L["(on the tower)"], type = "HPortal", showInZone = true } -- Portal to Undercity from Grom'gol
              nodes[224][42233253] = { mnID = 18, name = L["Portal"] .. " - " .. L["Ruins of Lordaeron, Undercity"] .. " " .. L["(on the tower)"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Undercity from Grom'gol
              nodes[13][43358708] = { mnID = 18, name = L["Portal"] .. " - " .. L["Ruins of Lordaeron, Undercity"] .. " " .. L["(on the tower)"], type = "HPortal", showInZone = true } -- Portal to Undercity from Grom'gol
              nodes[94][54552795] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal to Orgrimmar from Silvermoon 
              nodes[110][58511859] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Orgrimmar from Silvermoon 
              nodes[110][49491509] = { mnID = 18, name = L["Portal"] .. " - " .. L["Ruins of Lordaeron, Undercity"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Undercity from Silvermoon 
              nodes[14][27442938] = { mnID = 862, name = L["Portal"] .. " - " .. L["Zandalar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Arathi to Zandalar 
              nodes[17][55005418] = { mnID = 624, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Warspear, Ashran"] ..")", type = "HPortal", showInZone = true } -- Portal from Blasted Lands to Warspear
              nodes[245][56397967] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal Tol Bard to Orgimmar  
              nodes[13][33874948] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = false } -- Portal Tol Bard to Orgimmar
              nodes[90][85181711] = { mnID = 100, name = L["Portal"] .. " - " .. L["Hellfire Peninsula"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Portal from Old Undercity to Hellfire
              nodes[241][73595355] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Portal Tol Orgrimmar from Twilight Highlands  
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[17][66382798] = { mnID = 84, name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal to Stormwind 
              nodes[84][43748538] = { mnID = 74, name = L["Portal"] .. " - " .. L["Caverns of Time"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Caverns of Time 
              nodes[84][44888577] = { mnID = 111, name = L["Portal"] .. " - " .. L["Shattrath"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Shattrath 
              nodes[84][43638719] = { mnID = 103, name = L["Portal"] .. " - " .. L["Exodar"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Exodar 
              nodes[84][44388868] = { mnID = 125, name = L["Portal"] .. " - " .. L["Dalaran, Crystalsong Forest"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Dalaran 
              nodes[84][45708715] = { mnID = 371, name = L["Portal"] .. " - " .. L["Jade Forest"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Jade Forest 
              nodes[84][48099198] = { mnID = 622, name = L["Portal"] .. " - " .. L["Stormshield, Ashran"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Stormshield 
              nodes[84][46869339] = { mnID = 630, name = L["Portal"] .. " - " .. L["Azsuna"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Azsuna 
              nodes[84][47579495] = { mnID = 1670, name = L["Portal"] .. " - " .. L["Oribos"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Oribos 
              nodes[84][48849344] = { mnID = 2112, name = L["Portal"] .. " - " .. L["Valdrakken"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Valdrakken 
              nodes[84][48759519] = { mnID = 1161, name = L["Portal"] .. " - " .. L["Boralus"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Boralus 
              nodes[17][55005418] = { mnID = 622, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Stormshield, Ashran"] ..")", type = "APortal", showInZone = true } -- Portal from Blasted Lands to Warspear
              nodes[13][35134883] = { mnID = 84, name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = false } -- Portal Tol Bard to Stormwind
              nodes[245][75235887] = { mnID = 84, name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = true, showInZone = true } -- Portal Tol Bard to Stormwind  
            end
          end
    
    
        --Eastern Kingdom Ships
          if self.db.profile.showContinentShips then
            nodes[224][37037615] = { mnID = 210, name = L["Ship"] .. " - " .. L["Ratchet, Northern Barrens"], type = "Ship", hideOnContinent = false } -- Ship from Booty Bay to Ratchet
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[13][40937205] = { mnID = 114, name = L["Ship"] .. " - " .. L["Valiance Keep, Borean Tundra"] .. " / " .. L["Boralus Harbor, Tiragarde Sound"], type = "AShip", showInZone = true } -- Ship from Stormwind to Valiance Keep
            end
          end
    
    
        --Eastern Kingdom ContinentOldVanilla
          if self.db.profile.showContinentOldVanilla then
            nodes[13][54113049] = { mnID = 166, name = L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"], type = "VRaid", showInZone = true }-- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel 
            nodes[23][35722308] = { mnID = 166, name = L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"], type = "VRaid", showInZone = true, hideOnContinent = true }-- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel 
            nodes[19][48275496] = { name = L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = true } -- Scarlet Monastery Key for Old dungeons 
            nodes[13][46193139] = { name = L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = true } -- Scarlet Monastery Key for Old dungeons
            nodes[18][83863199] = { name = L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = true, hideOnContinent = true } -- Scarlet Monastery Key for Old dungeons 
            nodes[18][85353028] = { name = L["Old version of Scarlet Monastery Cathedral \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = false } -- Scarlet Monastery - Cathedral 
            nodes[18][85153180] = { name = L["Old version of Scarlet Monastery Library \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = false } -- Scarlet Monastery - Library 
            nodes[18][84763039] = { name = L["Old version of Scarlet Monastery Graveyard \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = false } -- Scarlet Monastery - Graveyard 
            nodes[18][85573138] = { name = L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = false } -- Scarlet Monastery - Armory 
            nodes[19][78882223] = { name = L["Old version of Scarlet Monastery Cathedral \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = true } -- Scarlet Monastery - Cathedral 
            nodes[19][78255762] = { name = L["Old version of Scarlet Monastery Library \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = true } -- Scarlet Monastery - Library 
            nodes[19][68832372] = { name = L["Old version of Scarlet Monastery Graveyard \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = true } -- Scarlet Monastery - Graveyard 
            nodes[19][86414766] = { name = L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = true } -- Scarlet Monastery - Armory 
            nodes[13][51383556] = { mnID = 306, name = L["Old version of Scholomance - Secret Entrance \n (Memory of Scholomance - Achievement)"], type = "VDungeon", showInZone = true, } -- Old Scholomance version - Memory of Scholomance - Secret Entrance Old Scholomance version 
            nodes[22][69767181] = { mnID = 306, name = L["Old version of Scholomance - Secret Entrance \n (Memory of Scholomance - Achievement)"], type = "VDungeon", showInZone = true, hideOnContinent = true } -- Old Scholomance version - Memory of Scholomance - Secret Entrance Old Scholomance version
          end
        end
    
    
        --############################
        --##### Continent Outland ####
        --############################
    
        if self.db.profile.showContinentOutland then
    
        -- Outland Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[101][44487857] = { id = 247, type = "Dungeon", showInZone = true } -- Auchenai Crypts 
            nodes[101][46027626] = { id = 250, type = "Dungeon", showInZone = true } -- Mana-Tombs 
            nodes[101][47577861] = { id = 252, type = "Dungeon", showInZone = true } -- Sethekk Halls 
            nodes[101][46028099] = { id = 253, type = "Dungeon", showInZone = true } -- Shadow Labyrinth 
            nodes[101][65842044] = { id = 257, type = "Dungeon" } -- The Botanica 
            nodes[101][65542528] = { id = 258, type = "Dungeon" } -- The Mechanar  
            nodes[101][66722143] = { id = 254, type = "Dungeon" } -- The Arcatraz
          end
    
    
        -- Outland Raids
          if self.db.profile.showContinentRaids then
            nodes[101][66452335] = { id = 749, type = "Raid" } -- The Eye  
            nodes[101][72298069] = { id = 751, type = "Raid" } -- Black Temple 
            nodes[101][45131901] = { id = 746, type = "Raid" } -- Gruul's Lairend
          end
    
    
        -- Outland Multiple
          if self.db.profile.showContinentMultiple then
            nodes[101][56695240] = { id = { 747, 248, 256, 259 }, type = "MultipleM" } -- Hellfire Ramparts, The Blood Furnace, The Shattered Halls, Magtheridon's Lair 
            nodes[101][34624490] = { id = { 748, 260, 261, 262 }, type = "MultipleM" } -- Slave Pens, The Steamvault, The Underbog, Serpentshrine Cavern
          end
    
    
        -- Outland Portals
          if self.db.profile.showContinentPortals then
              nodes[111][48614203] = { mnID = 122, name = L["Portal"] .. " - " .. L["Isle of Quel'Danas"], type = "Portal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Quel'Danas 
              nodes[108][29542339] = { mnID = 122, name = L["Portal"] .. " - " .. L["Isle of Quel'Danas"], type = "Portal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Quel'Danas 
              nodes[101][41526586] = { mnID = 122, name = L["Portal"] .. " - " .. L["Isle of Quel'Danas"], type = "Portal", showInZone = true } -- Portal from Shattrath to Quel'Danas
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[100][88574770] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Portal from Hellfire to Orgrimmar 
              nodes[100][89234945] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Portal from Hellfire to Orgrimmar 
              nodes[111][56784884] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Orgrimmar 
              nodes[108][31332481] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Orgrimmar 
              nodes[101][45136633] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Shattrath to Orgrimmar
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[100][88635281] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = true, showInZone = false } -- Portal from Hellfire to Stormwind 
              nodes[100][89215101] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = true } -- Portal from Hellfire to Stormwind 
              nodes[111][57214825] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Stormwind 
              nodes[108][31332481] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Stormwind 
              nodes[101][45136633] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal from Shattrath to Stormwind
            end
          end
        end
    
    
        --##############################
        --##### Continent Northrend ####
        --##############################
    
        if self.db.profile.showContinentNorthrend then
    
          -- Northrend Dungeon
          if self.db.profile.showContinentDungeons then
            nodes[113][77707945] = { id = 285, type = "Dungeon" } -- Utgarde Keep, at doorway entrance 
            nodes[113][77557824] = { id = 286, type = "Dungeon" } -- Utgarde Pinnacle 
            nodes[113][59091507] = { id = 275, type = "Dungeon" } -- Halls of Lightning 
            nodes[113][56911729] = { id = 277, type = "Dungeon" } -- Halls of Stone 
            nodes[113][62405001] = { id = 273, type = "Dungeon" } -- Drak'Tharon Keep 
            nodes[113][75113259] = { id = 274, type = "Dungeon" } -- Gundrak Left Entrance 
            nodes[113][76533471] = { id = 274, type = "Dungeon" } -- Gundrak Right Entrance 
            nodes[127][34154413] = { id = 283, type = "Dungeon", showInZone = true } -- The Violet Hold
          end
    
          -- Northrend Raids
          if self.db.profile.showContinentRaids then
            nodes[113][58415888] = { id = 754, type = "Raid" } -- Naxxramas 
            nodes[113][40794199] = { id = 758, type = "Raid" } -- Icecrown Citadel 
            nodes[113][57721389] = { id = 759, type = "Raid" } -- Ulduar
            nodes[113][36624457] = { id = 753, type = "Raid" } -- Vault of Archavon
          end
    
    
        -- Northrend Multiple
          if self.db.profile.showContinentMultiple then
            nodes[113][40595892] = { id = { 271, 272 }, type = "MultipleD" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub        
            nodes[113][41154408] = { id = { 276, 278, 280 }, type = "MultipleD" } -- The Forge of Souls, Halls of Reflection, Pit of Saron         
            nodes[113][47652029] = { id = { 757, 284 }, type = "MultipleM" } -- Trial of the Crusader, Trial of the Champion 
            nodes[113][14725757] = { id = { 756, 282, 281 }, type = "MultipleM" } -- The Eye of Eternity, The Nexus, The Oculus
            nodes[113][50346038] = { id = { 755, 761 }, type = "MultipleR", showInZone = true } -- The Ruby Sanctum, The Obsidian Sanctum 
          end
    
    
        -- Northrend Portal
          if self.db.profile.showContinentPortals then
            nodes[123][49111534] = { mnID = 125, name = L["Portal"] .. " - " .. L["Dalaran"], type = "Portal", hideOnContinent = true, showInZone = true } -- LakeWintergrasp to Dalaran Portal 
            nodes[113][36504679] = { mnID = 125, name = L["Portal"] .. " - " .. L["Dalaran"], type = "Portal", showInZone = true } -- LakeWintergrasp to Dalaran Portal
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[125][55322545] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Dalaran to Orgrimmar Portal 
              nodes[127][31103140] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } --  Dalaran to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[125][40796326] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = true } -- Dalaran to Stormwind City Portal
              nodes[127][26614271] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } --  Dalaran to Stormwind City Portal
            end
          end
    
    
        -- Northrend Zeppelin
          if self.db.profile.showContinentZeppelins then 
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[113][18766562] = { mnID = 85, name = L["Zeppelin"] .. " - " .. L["Orgrimmar"], type = "HZeppelin", showInZone = true } -- Zeppelin from Borean Tundra to Ogrimmar
            end
          end
    
    
        -- Northrend Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[113][24557044] = { mnID = 84, name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Ship to Stormwind from Borean Tundra
              nodes[113][78998350] = { mnID = 84, name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Ship to Stormwind from Borean Tundra
            end
          end
        end
    
    
        --#############################
        --##### Continent Pandaria ####
        --#############################
    
        if self.db.profile.showContinentPandaria then
    
        -- Pandaria Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[424][72275515] = { id = 313, type = "Dungeon" } -- Temple of the Jade Serpent 
            nodes[424][48117132] = { id = 302, type = "Dungeon" } -- Stormstout Brewery
            nodes[424][40002920] = { id = 312, type = "Dungeon" } -- Shado-Pan Monastery
            nodes[424][23575057] = { id = 324, type = "Dungeon" } -- Siege of Niuzao Temple 
            nodes[424][42975779] = { id = 303, type = "Dungeon" } -- Gate of the Setting Sun 
            nodes[424][53575100] = { id = 321, type = "Dungeon" } -- Mogu'shan Palace
          end
    
    
        -- Pandaria Raids
          if self.db.profile.showContinentRaids then
            nodes[424][49152606] = { id = 317, type = "Raid" } -- Mogu'shan Vaults 
            nodes[424][52355265] = { id = 369, type = "Raid" } -- Siege of Orgrimmar 
            nodes[424][30076296] = { id = 330, type = "Raid" } -- Heart of Fear 
            nodes[424][23100860] = { id = 362, type = "Raid" } -- Throne of Thunder
            nodes[424][56685529] = { id = 320, type = "Raid" } -- Terrace of Endless Spring  
          end
    
    
        -- Pandaria Portals
          if self.db.profile.showContinentPortals then
            nodes[388][50657339] = { mnID = 504, name = L["Portal"] .. " - " .. L["Isle of Thunder"], type = "Portal", hideOnContinent = false, showInZone = true } -- Portal from Shado-Pan Garrison to IsleoftheThunderKing 
            nodes[424][17970919] = { mnID = 388, name = L["Portal"] .. " - " .. L["Shado-Pan Garrison, TownlongWastes"], type = "Portal", hideOnContinent = false } -- Portal from IsleoftheThunderKing to Shado-Pan Garrison
            nodes[504][33223269] = { mnID = 388, name = L["Portal"] .. " - " .. L["Shado-Pan Garrison, TownlongWastes"], type = "Portal", hideOnContinent = true, showInZone = true } -- Portal from IsleoftheThunderKing to Shado-Pan Garrison
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[424][59733518] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Jade Forest to Orgrimmar
            end
          end
        end
    
    
        --############################
        --##### Continent Draenor ####
        --############################
    
        if self.db.profile.showContinentDraenor then
    
    
        -- Draenor Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[572][34102566] = { id = 385, type = "Dungeon" } -- Bloodmaul Slag Mines
            nodes[572][51322183] = { id = 536, type = "Dungeon" } -- Grimrail Depot
            nodes[572][52932678] = { id = 556, type = "Dungeon" } -- The Everbloom
            nodes[572][47961477] = { id = 558, type = "Dungeon" } -- Iron Docks
            nodes[572][53196866] = { id = 537, type = "Dungeon" } -- Shadowmoon Burial Grounds
            nodes[572][42607342] = { id = 476, type = "Dungeon" } -- Skyreach
            nodes[572][40256374] = { id = 547, type = "Dungeon" } -- Auchindoun
          end
    
    
        --Draenor Raids
          if self.db.profile.showContinentRaids then
            nodes[572][56854685] = { id = 669, type = "Raid" } -- Hellfire Citadel
            nodes[572][49992014] = { id = 457, type = "Raid" } -- Blackrock Foundry
            nodes[572][21125032] = { id = 477, type = "Raid" } -- Highmaul
          end
    
    
        --Draenor Garrison Portals
          if self.db.profile.showContinentOgreWaygates then
    
            if self.faction == "Horde" then
              nodes[543][58033444] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Gorgrond
              nodes[525][59544752] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate FrostfireRidge
              nodes[550][32164623] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Nagrand
              nodes[535][55084813] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Talador
              nodes[542][54625163] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate SpiresOfArak
              nodes[539][50463566] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Shadowmoon Valley
            end
    
            if self.faction == "Alliance" then
              nodes[543][58033444] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Gorgrond
              nodes[525][59544752] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate FrostfireRidge
              nodes[550][32164623] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Nagrand
              nodes[535][55084813] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Talador
              nodes[542][54625163] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate SpiresOfArak
              nodes[539][50463566] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Shadowmoon Valley
              end
          end
    
    
        --Draenor Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[572][71343912] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"] .. " / " .. L["Vol'mar"], type = "HPortal" } -- Portal from Ashran to Orgrimmar, Vol'mar
              nodes[590][75184879] = { mnID = 624, name = L["Portal"] .. " - " .. L["Warspear, Ashran"], type = "HPortal", showInZone = true } -- Portal from Garrison to Ashran
              nodes[534][61024735] = { mnID = 624, name = L["Portal"] .. " - " .. L["Warspear, Ashran"], type = "HPortal", showInZone = true } -- Portal from Vol'mar to Ashran
              nodes[525][51416484] = { mnID = 624, name = L["Portal"] .. " - " .. L["Warspear, Ashran"], type = "HPortal", showInZone = true } -- Portal from Garrison to Ashran
              nodes[624][60825159] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, } -- Portal from Garrison to Ashran
              nodes[588][45001476] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Garrison to Ashran (Ashran Zone)
              nodes[624][53184384] = { mnID = 534, name = L["Portal"] .. " - " .. L["Vol'mar"], type = "HPortal", showInZone = true } -- Portal from Ashran to Vol'mar Captive
              nodes[588][42911275] = { mnID = 534, name = L["Portal"] .. " - " .. L["Vol'mar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Vol'mar Captive (Ashran Zone)
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[622][60813785] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal from Ashran to Stormwind
              nodes[588][43848830] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal from Ashran to Stormwind
              nodes[582][68522819] = { mnID = 622, name = L["Portal"] .. " - " .. L["Stormshield, Ashran"], type = "APortal", showInZone = true } -- Portal from Garison to Ashran
              nodes[539][32261571] = { mnID = 622, name = L["Portal"] .. " - " .. L["Stormshield, Ashran"], type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Garison to Ashran
              nodes[624][53184384] = { mnID = 534, name = L["Portal"] .. " - " .. L["Lion's Watch"], type = "APortal", showInZone = true } -- Portal from Ashran to Lion's Watch
              nodes[588][42911275] = { mnID = 534, name = L["Portal"] .. " - " .. L["Lion's Watch"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Lion's Watch (Ashran Zone)
            end
          end
        end
    
    
        --#################################
        --##### Continent Broken Isles ####
        --#################################
    
        if self.db.profile.showContinentBrokenIsles then
    
        --Broken Isles Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[619][47276616] = { id = 777, type = "Dungeon" } -- Assault on Violet Hold
            nodes[619][38805780] = { id = 716, type = "Dungeon" } -- Eye of Azshara
            nodes[619][34207210] = { id = 707, type = "Dungeon" } -- Vault of the Wardens
            nodes[619][89551352] = { id = 945, type = "Dungeon" } -- The Seat of the Triumvirate
            nodes[619][29403300] = { id = 740, type = "Dungeon" } -- Black Rook Hold
            nodes[619][59003060] = { id = 727, type = "Dungeon" } -- Maw of Souls
            nodes[619][47302810] = { id = 767, type = "Dungeon" } -- Neltharion's Lair
            nodes[619][49104970] = { id = 800, type = "Dungeon" } -- Court of Stars
            nodes[619][46004883] = { id = 726, type = "Dungeon" } -- The Arcway
            nodes[619][56416109] = { id = 900, type = "Dungeon" } -- Cathedral of the Night
            nodes[619][65573821] = { id = 721, type = "Dungeon" } -- Halls of Valor
            nodes[619][35792725] = { id = 762, type = "Dungeon" } -- Darkheart Thicket
            nodes[905][52513071] = { id = 945, type = "Dungeon", showInZone = true } -- The Seat of the Triumvirate
          end
    
    
        --Broken Isles Raids
          if self.db.profile.showContinentRaids then
            nodes[619][86262011] = { id = 946, type = "Raid" } -- Antorus, the Burning Throne
            nodes[619][46864732] = { id = 786, type = "Raid" } -- The Nighthold
            nodes[619][56506240] = { id = 875, type = "Raid" } -- Tomb of Sargeras
            nodes[619][64553903] = { id = 861, type = "Raid" } -- Trial of Valor
            nodes[619][34982901] = { id = 768, type = "Raid" } -- The Emerald Nightmare
            nodes[905][32896084] = { id = 946, type = "Raid", showInZone = true } -- Antorus, the Burning Throne
          end
    
    
        --Broken Isles Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[627][55242392] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Dalaran to Orgrimmar Portal
              nodes[619][45606186] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } --  Dalaran to Orgrimmar Portal
              nodes[630][46654129] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal to Orgrimmar from Aszuna
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[627][40416378] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = true } --  Dalaran to Stormwind City Portal
              nodes[619][45296767] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = false } --  Portal from Dalaran to Stormwind
              nodes[630][44664143] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal to Stormwind from Aszuna
              nodes[941][43092506] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = false } --  Portal from Krokuun - Vindikaar to Stormwind
             end
          end
        end
    
    
        --#############################
        --##### Continent Zandalar ####
        --#############################
    
        if self.db.profile.showContinentZandalar then
    
        --Zandalar Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[875][48865880] = { id = 968, type = "Dungeon" } -- Atal'Dazar
            nodes[875][45205880] = { id = 1041, type = "Dungeon" } -- Kings' Rest
            nodes[875][58243603] = { id = 1022, type = "Dungeon" } -- The Underrot
            nodes[875][40781425] = { id = 1030, type = "Dungeon" } -- Temple of Sethraliss
          
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[1165][44049256] = { id = 1012, type = "Dungeon", showInZone = true } -- The MOTHERLODE HORDE
              nodes[862][55995989] = { id = 1012, type = "Dungeon" } -- The MOTHERLODE HORDE
            end
          
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[875][45457850] = { id = 1012, type = "Dungeon" } -- The MOTHERLODE Alliance
            end
          end
    
    
        --Zandalar Raids
          if self.db.profile.showContinentRaids then
            nodes[875][59413469] = { id = 1031, type = "Raid" } -- Uldir
            nodes[875][86731430] = {  id = 1179, type = "Raid" } -- The Eternal Palace
            nodes[1355][50341233] = {  id = 1179, type = "PassageRaidM", showInZone = true } -- The Eternal Palace
            nodes[1528][47353182] = {  id = 1179, type = "Raid", showInZone = true } -- The Eternal Palace
    
            if self.faction == "Horde" or db.show.EnemyFaction then
            nodes[875][56005350] = { id = 1176, type = "Raid" } -- Battle of Dazar'alor
            end
          end
    
    
        -- Zandalar Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[862][58474432] = { mnID = 1163, name = L["Portalroom"] .. " - " .. L["Dazar'alor"] .. " " .. L["(inside building)"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portalroom from Dazar'alor
              nodes[1165][51424583] = { mnID = 1163, name = L["Portalroom"] .. " - "  .. L["Dazar'alor"] .. " " .. L["(inside building)"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portalroom from Dazar'alor
              nodes[1163][73726194] = { mnID = 110, name = L["Portal"] .. " - " .. L["Silvermoon City"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][74006974] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][74027739] = { mnID = 88, name = L["Portal"] .. " - " .. L["Thunderbluff"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][73808541] = { mnID = 81, name = L["Portal"] .. " - " .. L["Silithus"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][63008553] = { mnID = 1355, name = L["Portal"] .. " - " .. L["Nazjatar"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1355][47276279] = { mnID = 1163, name = L["Portal"] .. " - " .. L["Dazar'alor"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1165][41838761] = { mnID = 1462, name = L["(Captain Krooz) will take you to Mechagon"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Portal from Dazar'alor to Mechagon
              nodes[1165][52079454] = { mnID = 62, name = L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"], type = "HPortal", showInZone = false } -- Portal from Dazar'alor to Arathi or Darkshore
              nodes[1165][51719454] = { mnID = 14, name = L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"], type = "HPortal", showInZone = false } -- Portal from Dazar'alor to Arathi or Darkshore         
              nodes[1355][52349627] = { mnID = 1165, name = L["Portal"] .. " - " .. L["Dazar'alor"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Newhome to Dazar'alor
            end
          end
    
    
        -- Zandalar Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[875][57957497] = { mnID = 1, name = L["Ship"] .. " - " .. L["Echo Isles, Durotar"], type = "HShip" } -- Ship from Zandalar to Echo Isles 
              nodes[862][54985825] = { mnID = 1462, name = L["(Captain Krooz) will take you to Mechagon"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Ship from Dazar'alor to Mechagon 
              nodes[1462][75522266] = { mnID = 862, name = L["(Captain Krooz) will take you back to Zuldazar"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Ship from Mechagon to Zuldazar
              nodes[862][58466298] = { mnID = 876, name = L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Ship from Dazar'alor to Drustvar, Tiragarde Sound or Stormsong Valley
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[875][33051846] = { mnID = 1161, name = L["Back to Boralus"], type = "AShip" } -- Ship to Boralus from Vol'dun 
              nodes[875][62402600] = { mnID = 1161, name = L["Back to Boralus"], type = "AShip" } -- Ship to Boralus from Nazmir 
              nodes[875][47177779] = { mnID = 1161, name = L["Back to Boralus"], type = "AShip" } -- Ship to Boralus from Zuldazar 
              nodes[1161][67952670] = { mnID = 875, name = L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Portal from Dazar'alor to Mechagon
            end
          end
        end
    
    
        --##############################
        --##### Continent Kul Tiras ####
        --##############################
    
        if self.db.profile.showContinentKulTiras then 
    
        -- Kul Tiras Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[876][19872697] = { id = 1178, type = "Dungeon" } -- Operation: Mechagon 
            nodes[876][67018056] = { id = 1001, type = "Dungeon" } -- Freehold 
            nodes[876][31675333] = { id = 1021, type = "Dungeon" } -- Waycrest Manor 
            nodes[942][78932647] = { id = 1036, type = "Dungeon" } -- Shrine of Storm 
            nodes[876][77566206] = { id = 1002, type = "Dungeon" } -- Tol Dagor
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][61865000] = { id = 1023, type = "Dungeon" } -- Siege of Boralus
            end
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[876][69936482] = { id = 1023, type = "Dungeon" } -- Siege of Boralus
            end
          end
    
    
        -- Kul Tiras Raids
          if self.db.profile.showContinentRaids then
            nodes[876][68262354] = { id = 1177, type = "Raid" } -- Crucible of Storms
            nodes[876][86571446] = { id = 1179, type = "Raid" } -- The Eternal Palace
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][61645308] = { id = 1176, type = "Raid" } -- Battle of Dazar'alor
            end
          end
    
    
        -- Kul Tiras Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][61085021] = { mnID = 84, name = L["Portalroom"] .. " - "  .. L["Boralus"] .. " " .. L["(inside building)"], type = "APortal", showInZone = true, hideOnContinent = false } -- portalroom from Boralus
              nodes[895][74072427] = { mnID = 84, name = L["Portalroom"] .. " - "  .. L["Boralus"] .. " " .. L["(inside building)"], type = "APortal", showInZone = true } -- Portalroom from Boralus
              nodes[1161][70351605] = { name = L["Portalroom"] .. " - "  .. L["Boralus"] .. " " .. L["(inside building)"], type = "APortal", showInZone = true, hideOnContinent = false } -- Portalroom from Boralus
              nodes[1161][69641590] = { mnID = 81, name = L["Portal"] .. " - " .. L["Silithus"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][70131684] = { mnID = 84, name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = false, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][70381499] = { mnID = 103, name = L["Portal"] .. " - " .. L["Exodar"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][70891536] = { mnID = 87, name = L["Portal"] .. " - " .. L["Ironforge"], type = "APortal", showInZone = false, hideOnContinent = true} -- Portalroom from Boralu
              nodes[1161][66182474] = { mnID = 14, name = L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"], type = "APortal", showInZone = true } -- Portalroom from Boralus
              nodes[1161][66212442] = { mnID = 62, name = L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"], type = "APortal", showInZone = true } -- Portalroom from Boralus
            end
          end
    
    
        -- Kul Tiras Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[876][25676657] = { mnID = 862, name = L["Back to Zuldazar"], type = "HShip" } -- Portal from Drustvar to Zuldazar
              nodes[876][54391406] = { mnID = 862, name = L["Back to Zuldazar"], type = "HShip" } -- Portal from Stormsong Valley to Zuldazar
              nodes[876][68326548] = { mnID = 862, name = L["Back to Zuldazar"], type = "HShip" } -- Portal from Tiragarde Sound to Zuldazar
              nodes[876][20182395] = { mnID = 862, name = L["Back to Zuldazar"], type = "HShip" } -- Portal from Mechagon to Zuldazar
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][62485167] = { mnID = 84, name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip" } -- Ship to Stormwind
            end
          end
        end
    
    
        --################################
        --##### Continent Shadowlands ####
        --################################
    
        if self.db.profile.showContinentShadowlands then
    
        -- Shadowlands Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[1533][40085519] = { id = 1182, type = "Dungeon" } -- The Necrotic Wake
            nodes[1533][58602852] = { id = 1186, type = "Dungeon" } -- Spires of Ascension
            nodes[1536][59306484] = { id = 1183, type = "Dungeon" } -- Plaguefall
            nodes[1536][53215314] = { id = 1187, type = "Dungeon" } -- Theater of Pain
            nodes[1565][35715421] = { id = 1184, type = "Dungeon" } -- Mists of Tirna Scithe
            nodes[1565][68646667] = { id = 1188, type = "Dungeon" } -- De Other Side
            nodes[1525][78624930] = { id = 1185, type = "Dungeon" } -- Halls of Atonement
            nodes[1525][51093007] = { id = 1189, type = "Dungeon" } -- Sanguine Depths
            nodes[1550][31957638] = { id = 1194, type = "Dungeon" } -- Tazavesh, the Veiled Market
            nodes[2016][88914392] = { id = 1194, type = "Dungeon" } -- Tazavesh, the Veiled Market
          end
    
    
        -- Shadowlands Raids
          if self.db.profile.showContinentRaids then
            nodes[1550][89067983] = { id = 1195, type = "Raid" } -- Sepulcher of the First Ones
            nodes[1970][80765336] = { id = 1195, type = "Raid" } -- Sepulcher of the First Ones
            nodes[1525][45764149] = { id = 1190, type = "Raid" } -- Castle Nathria
            nodes[1550][27081359] = { id = 1193, type = "Raid" } -- Sanctum of Domination
            nodes[1543][69703210] = { id = 1193, type = "Raid" } -- Sanctum of Domination  
          end
    
    
        -- Shadowlands Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[1670][20805432] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Oribos to Orgrimmar Portal
              nodes[1550][46555240] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = false } -- Oribos to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1670][20654625] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = true } -- Oribos to Stormwind City Portal
              nodes[1550][46555240] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = false } -- Oribos to Stormwind City Portal
             end
          end
        end
    
    
        --#################################
        --##### Continent Dragon Isles ####
        --#################################
    
        if self.db.profile.showContinentDragonIsles then
    
        -- Dragonflight Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[1978][52884168] = { id = 1202, type = "Dungeon" } -- Ruby Life Pools
            nodes[1978][42163601] = { id = 1199, type = "Dungeon" } -- Neltharus
            nodes[1978][43635285] = { id = 1198, type = "Dungeon" } -- The Nokhud Offensive
            nodes[1978][35407585] = { id = 1196, type = "Dungeon" } -- Brackenhide Hollow
            nodes[1978][47408261] = { id = 1203, type = "Dungeon" } -- The Azure Vault
            nodes[1978][63114151] = { id = 1201, type = "Dungeon" } -- Algeth'ar Academy
            nodes[1978][63614887] = { id = 1204, type = "Dungeon" } -- Halls of Infusion
            nodes[1978][64415841] = { id = 1209, type = "Dungeon" } -- Dawn of the Infinite
          end
    
    
        -- Dragonflight Raids
          if self.db.profile.showContinentRaids then
            nodes[2025][73065567] = { id = 1200, type = "Raid" } -- Vault of the Incarnates
            nodes[1978][86737309] = { id = 1208, type = "Raid" } -- Aberrus, the Shadowed Crucible
            nodes[2133][48451022] = { id = 1208, type = "Raid" } -- Aberrus, the Shadowed Crucible
            nodes[2023][18585257] = { id = 1207, type = "PassageRaidM", showInZone = true, hideOnContinent = false }-- Amirdrassil, the Dream's Hope
          end
    
    
        -- Dragonflight Portals
          if self.db.profile.showContinentPortals then
            nodes[2025][40656084] = { name = L["Portal"] .. " - " .. L["The Timeways"], type = "Portal", hideOnContinent = false, showInZone = true } --  Portal from Valdrakken to Nazmir, Uldum and Tiragarde Sound
            nodes[2112][26104102] = { mnID = 15, name = L["Portal"] .. " - " .. L["Badlands"], type = "Portal", hideOnContinent = false, showInZone = true } --  Portal from Valdrakken to the Badlands
            nodes[2112][53875511] = { name = L["Portal"] .. " - " .. L["The Timeways"], type = "Portal", hideOnContinent = false, showInZone = true } --  Portal from Valdrakken to Nazmir, Uldum and Tiragarde Sound
            nodes[2200][73065245] = { mnID = 2023, name = L["Portal"] .. " - " .. L["Ohn'ahran Plains"], type = "Portal", showInZone = true, hideOnContinent = false } -- Portal The Emerald Dream to Ohn'ahran Plains
            nodes[2025][36895880] = { mnID = 15, name = L["Portal"] .. " - " .. L["Badlands"], type = "Portal", showInZone = true, hideOnContinent = false } -- Portal to Badlands
            nodes[2025][41796084] = { mnID = 2200, name = L["Portal"] .. " - " .. L["The Emerald Dream"], type = "Portal", showInZone = true, hideOnContinent = false } -- Portal to The Emerald Dream
            nodes[2023][18295226] = { mnID = 2200, name = L["Portal"] .. " - " .. L["The Emerald Dream"], type = "Portal", showInZone = false, hideOnContinent = true } -- Portal to The Emerald Dream
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[2112][56593828] = { mnID = 85, name = L["Portal"] .. " - " .. L["Orgrimmar"] .. " " .. L["(inside building)"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Valdrakken to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[2112][59804169] = { mnID = 84,  name = L["Portal"] .. " - " .. L["Stormwind City"] .. " " .. L["(inside building)"], type = "APortal", hideOnContinent = false, showInZone = true } -- Valdrakken to Stormwind City Portal
            end
          end
    
    
        -- Dragonflight Zeppelin
          if self.db.profile.showContinentZeppelins then      
    
            if self.faction == "Horde" or db.show.EnemyFaction then 
              nodes[1978][59572607] = { mnID = 85, name = L["Zeppelin"] .. " - " .. L["Orgrimmar"], type = "HZeppelin", showInZone = true } -- Zeppelin from The Waking Shores to Orgrimmar 
            end
          end
    
    
        -- Dragonflight Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1978][59732701] = { mnID = 84, name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Zeppelin from The Waking Shores to Stormwind
            end
          end
        end
      end
    
    
    
    --#####################################################################################################
    --##################################           Dungeon Map           ##################################
    --#####################################################################################################
    
      if db.show.DungeonMap then
    
    
        --################################
        --##### Inside Dungeon Exits  ####
        --################################
    
          if self.db.profile.showDungeonExit then
    
    
        --#############################
        --#### Kalimdor Exit Notes ####
        --#############################
            nodes[280][62402795] = { name = L["Exit"], type = "Exit", showInZone = true } -- Maraudon Caverns of Maraudon Orange Crystal
            nodes[280][78676842] = { name = L["Exit"], type = "Exit", showInZone = true } -- Maraudon Caverns of Maraudon Purple Crystal 
            nodes[324][54089545] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Stonecore
            nodes[325][54241642] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Vortex Pinnacle
            nodes[297][50009404] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Orientation
            nodes[277][32581995] = { name = L["Exit"], type = "Exit", showInZone = true } -- Lost City of the Tol'vir
            nodes[328][47024726] = { name = L["Exit"], type = "Exit", showInZone = true } -- Throne of the Four Winds
            nodes[247][61141177] = { name = L["Exit"], type = "Exit", showInZone = true } -- Ruins of Ahn'Qiraj
            nodes[320][52352694] = { name = L["Exit"], type = "Exit", showInZone = true } -- Temple of Ahn'Qiraj
            nodes[219][56288980] = { name = L["Exit"], type = "Exit", showInZone = true } -- Zul'Farrak
            nodes[409][49698368] = { name = L["Exit"], type = "Exit", showInZone = true } -- Dragon Soul
            nodes[130][86417097] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Culling of Stratholme
            nodes[273][49531493] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Black Morass
            nodes[274][27084695] = { name = L["Exit"], type = "Exit", showInZone = true } -- Old Hillsbrad Foothills
            nodes[401][82964460] = { name = L["Exit"], type = "Exit", showInZone = true } -- End Time
            nodes[398][28456261] = { name = L["Exit"], type = "Exit", showInZone = true } -- Well of Eternity
            nodes[399][48001952] = { name = L["Exit"], type = "Exit", showInZone = true } -- Hour of Twilight
            nodes[248][33992035] = { name = L["Exit"], type = "Exit", showInZone = true } -- Onyxia Lair
            nodes[300][23471893] = { name = L["Exit"], type = "Exit", showInZone = true } -- Razorfen Downs
            nodes[301][71358352] = { name = L["Exit"], type = "Exit", showInZone = true } -- Razorfen Kraul
            nodes[240][28185543] = { name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Warpwood Quarter 
            nodes[235][71829239] = { name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Gordok Commons
            nodes[236][93635048] = { name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Capital Gardens
            nodes[236][93637191] = { name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Capital Gardens
            nodes[239][26778493] = { name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Warpwood Quarter
            nodes[239][92544766] = { name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Warpwood Quarter
            nodes[279][46235920] = { name = L["Exit"], type = "Exit", showInZone = true } -- Wailing Caverns
            nodes[213][60990723] = { name = L["Exit"], type = "Exit", showInZone = true } -- Ragefire Chasm
            nodes[221][45131069] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackfathom Deeps
            nodes[367][24579004] = { name = L["Exit"], type = "Exit", showInZone = true } -- Firelands
        --####################################
        --#### Eastern Kingdom Exit Notes ####
        --####################################
            nodes[220][49841022] = { name = L["Exit"], type = "Exit", showInZone = true } -- Tempel of Atal'hakkar
            nodes[225][50008109] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Stockade  
            nodes[226][64132741] = { name = L["Exit"], type = "Exit", showInZone = true } -- Gnomeregan          
            nodes[230][28506908] = { name = L["Exit"], type = "Exit", showInZone = true } -- Uldaman
            nodes[230][67897238] = { name = L["Exit"], type = "Exit", showInZone = true } -- Uldaman
            nodes[232][25832277] = { name = L["Exit"], type = "Exit", showInZone = true } -- Molten Core
            nodes[242][33207928] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Depths
            nodes[253][36814201] = { name = L["Exit"], type = "Exit", showInZone = true } -- Lower Blackrock Spire
            nodes[282][47339074] = { name = L["Exit"], type = "Exit", showInZone = true } -- Baradin Hold
            nodes[283][31016916] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Caverns      
            nodes[285][46866374] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Descent
            nodes[287][52518345] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Lair
            nodes[291][29751328] = { name = L["Exit"], type = "Exit", showInZone = true } -- Deadmines
            nodes[293][07935708] = { name = L["Exit"], type = "Exit", showInZone = true } -- Grim Batol
            nodes[294][39335449] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Bastion of Twilight
            nodes[306][39146031] = { mnID = 22, name = L["Exit"], type = "Exit", showInZone = true } -- Old Scholomance  
            nodes[310][70406108] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shadowfang Keep  
            nodes[317][68798791] = { name = L["Exit"], type = "Exit", showInZone = true } -- Stratholme - Main Gate
            nodes[317][63888791] = { name = L["Exit"], type = "Exit", showInZone = true } -- Stratholme - Main Gate
            nodes[318][65859058] = { name = L["Exit"], type = "Exit", showInZone = true } -- Stratholme Service Entrance
            nodes[322][49849388] = { name = L["Exit"], type = "Exit", showInZone = true } -- Throne of the Tides      
            nodes[333][09195307] = { name = L["Exit"], type = "Exit", showInZone = true } -- Zul'Aman
            nodes[335][30853659] = { name = L["Exit"], type = "Exit", showInZone = true } -- Sunwell Plateau
            nodes[337][29124867] = { name = L["Exit"], type = "Exit", showInZone = true } -- Zul'Gurub
            nodes[349][42629380] = { name = L["Exit"], type = "Exit", showInZone = true } -- Magisters'Terrace      
            nodes[350][61778163] = { name = L["Exit"], type = "Exit", showInZone = true } -- Karazhan
            nodes[431][33998886] = { name = L["Exit"], type = "Exit", showInZone = true } -- Scarlet Halls
            nodes[435][79354554] = { name = L["Exit"], type = "Exit", showInZone = true } -- Scarlet Monastery
            nodes[476][17827050] = { name = L["Exit"], type = "Exit", showInZone = true } -- Scholomance      
            nodes[616][37293212] = { name = L["Exit"], type = "Exit", showInZone = true } -- Upper Blackrock Spire
            nodes[814][64286068] = { name = L["Exit"], type = "Exit", showInZone = true } -- Return to Karazhan
            nodes[2071][75274137] = { name = L["Exit"], type = "Exit", showInZone = true } -- Uldaman Legacy of Tyr
        --#############################
        --#### Outland Exit Notes #####
        --#############################
            nodes[340][21756343] = { mnID = 104, name = L["Exit"], type = "Exit", showInZone = true } -- Black Temple exit
            nodes[334][50168768] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Eye
            nodes[330][81397732] = { name = L["Exit"], type = "Exit", showInZone = true } -- Gruul
            nodes[331][60991776] = { name = L["Exit"], type = "Exit", showInZone = true } -- Magtheridons
            nodes[332][13436343] = { name = L["Exit"], type = "Exit", showInZone = true } -- Serpentshrine Cavern
            nodes[266][90343942] = { name = L["Exit"], type = "Exit", showInZone = true } -- Botanica
            nodes[267][49378580] = { name = L["Exit"], type = "Exit", showInZone = true } -- Mechanar
            nodes[269][41378627] = { name = L["Exit"], type = "Exit", showInZone = true } -- Arcatraz
            nodes[265][21121328] = { name = L["Exit"], type = "Exit", showInZone = true } -- Slave Pens
            nodes[263][17353047] = { name = L["Exit"], type = "Exit", showInZone = true } -- Steamvault
            nodes[347][52207097] = { name = L["Exit"], type = "Exit", showInZone = true } -- Hellfire Ramparts
            nodes[262][28027003] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Underbog
            nodes[261][48439051] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blood Furnace
            nodes[260][21750952] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shadow Labyrinth
            nodes[246][61929285] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shattered Halls
            nodes[258][73393824] = { name = L["Exit"], type = "Exit", showInZone = true } -- Sethekk Halls
            nodes[272][33361564] = { name = L["Exit"], type = "Exit", showInZone = true } -- Mana Tombs
            nodes[256][44197716] = { name = L["Exit"], type = "Exit", showInZone = true } -- Auchenai Crypts
        --#############################
        --#### Northrend Exit Notes ####
        --#############################
            nodes[129][36818875] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Nexus
            nodes[132][89717928] = { name = L["Exit"], type = "Exit", showInZone = true } -- Ahn'kahet
            nodes[132][07155048] = { name = L["Exit"], type = "Exit", showInZone = true } -- Ahn'kahet
            nodes[133][69787598] = { name = L["Exit"], type = "Exit", showInZone = true } -- Utgarde Keep
            nodes[137][44511493] = { name = L["Exit"], type = "Exit", showInZone = true } -- Utgarde Pinnacle
            nodes[138][04175378] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Lightning
            nodes[140][33993643] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Stone
            nodes[143][60834860] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Oculus
            nodes[147][52519647] = { name = L["Exit"], type = "Exit", showInZone = true } -- Ulduar
            nodes[154][36812906] = { name = L["Exit"], type = "Exit", showInZone = true } --  Gundrak
            nodes[154][56592435] = { name = L["Exit"], type = "Exit", showInZone = true } --  Gundrak
            nodes[155][63654954] = { name = L["Exit"], type = "Exit", showInZone = true } -- Sanctum of Obsidian
            nodes[156][49218634] = { name = L["Exit"], type = "Exit", showInZone = true } -- Vault of Archavon
            nodes[159][12338705] = { name = L["Exit"], type = "Exit", showInZone = true } -- Azjol Nerub
            nodes[160][27718116] = { name = L["Exit"], type = "Exit", showInZone = true } -- Drak'Tharon Keep
            nodes[166][53144954] = { name = L["Exit"], type = "Exit", showInZone = true } -- Naxxramas
            nodes[168][45929293] = { name = L["Exit"], type = "Exit", showInZone = true } -- Violet Keep
            nodes[171][65705291] = { name = L["Exit"], type = "Exit", showInZone = true } -- Trial of the Champion
            nodes[172][65705260] = { name = L["Exit"], type = "Exit", showInZone = true } -- Trial of the Crusader
            nodes[183][65858917] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Soulforges
            nodes[184][40607992] = { name = L["Exit"], type = "Exit", showInZone = true } -- Pit of Saron
            nodes[185][47338069] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Reflection
            nodes[186][38860982] = { name = L["Exit"], type = "Exit", showInZone = true } -- IcecrownGlacier
            nodes[200][49532819] = { name = L["Exit"], type = "Exit", showInZone = true } -- Sanctum of Ruby
        --#############################
        --#### Pandaria Exit Notes ####
        --#############################
            nodes[429][29594366] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Temple of the Jade Serpent
            nodes[456][92544884] = { name = L["Exit"], type = "Exit", showInZone = true } -- Terrace of Endless Spring
            nodes[557][94264530] = { name = L["Exit"], type = "Exit", showInZone = true } -- Battle of Orgrimmar
            nodes[453][28181995] = { name = L["Exit"], type = "Exit", showInZone = true } -- Mogu'shan Palace
            nodes[437][61618815] = { name = L["Exit"], type = "Exit", showInZone = true } -- Gate of the Setting Sun
            nodes[439][80293902] = { name = L["Exit"], type = "Exit", showInZone = true } -- Stormstout Brewery
            nodes[474][34159074] = { name = L["Exit"], type = "Exit", showInZone = true } -- Heart of Fear
            nodes[458][65228587] = { name = L["Exit"], type = "Exit", showInZone = true } -- Siege of Niuzao Temple
            nodes[444][86415833] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shado-Pan Monastery
            nodes[471][75437521] = { name = L["Exit"], type = "Exit", showInZone = true } -- Mogu'shan Vaults
            nodes[508][29592553] = { name = L["Exit"], type = "Exit", showInZone = true } -- Throne of Thunder
        --#############################
        --#### Draenor Exit Notes #####
        --#############################
            nodes[573][52048698] = { name = L["Exit"], type = "Exit", showInZone = true } -- Bloodmaul Slag Mines  
            nodes[574][08256955] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shadowmoon Burial Grounds  
            nodes[593][49849145] = { name = L["Exit"], type = "Exit", showInZone = true } -- Auchindoun
            nodes[595][29594366] = { name = L["Exit"], type = "Exit", showInZone = true } -- Iron Docks
            nodes[598][41059246] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackrock Foundry
            nodes[601][60362459] = { name = L["Exit"], type = "Exit", showInZone = true } -- Skyreach
            nodes[606][32422553] = { name = L["Exit"], type = "Exit", showInZone = true } -- Grimrail Depoot
            nodes[611][26772324] = { name = L["Exit"], type = "Exit", showInZone = true } -- Highmaul
            nodes[620][72295519] = { name = L["Exit"], type = "Exit", showInZone = true } -- Everbloom
            nodes[661][72604342] = { name = L["Exit"], type = "Exit", showInZone = true } -- Hellfire Citadel 
        --#############################
        --##### Legion Exit Notes #####
        --#############################
            nodes[704][47730708] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Valor  
            nodes[706][46398375] = { name = L["Exit"], type = "Exit", showInZone = true } -- Maw of Souls
            nodes[710][69317756] = { name = L["Exit"], type = "Exit", showInZone = true } -- Vault of the Wardens
            nodes[713][49378886] = { name = L["Exit"], type = "Exit", showInZone = true } -- Eye of Azshara
            nodes[731][89555449] = { name = L["Exit"], type = "Exit", showInZone = true } -- Neltharion's Lair
            nodes[732][50788086] = { name = L["Exit"], type = "Exit", showInZone = true } -- Assault on Violet Hold
            nodes[733][36661564] = { name = L["Exit"], type = "Exit", showInZone = true } -- Darkheart Thicket
            nodes[749][48122160] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Arcway
            nodes[751][29120622] = { name = L["Exit"], type = "Exit", showInZone = true } -- Black Rook Hold
            nodes[761][05476847] = { name = L["Exit"], type = "Exit", showInZone = true } -- Court of Stars
            nodes[761][41877597] = { name = L["Exit"], type = "Exit", showInZone = true } -- Court of Stars
            nodes[764][25518846] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Nighthold
            nodes[777][42315825] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Emerald Nightmare
            nodes[807][51570575] = { name = L["Exit"], type = "Exit", showInZone = true } -- Trial of Valor
            nodes[845][46639166] = { name = L["Exit"], type = "Exit", showInZone = true } -- Cathedral of Eternal Night
            nodes[850][45139239] = { name = L["Exit"], type = "Exit", showInZone = true } -- Tomb of Sargeras
            nodes[903][21468879] = { name = L["Exit"], type = "Exit", showInZone = true } -- Seat of the Triumvirate
            nodes[909][90656704] = { name = L["Exit"], type = "Exit", showInZone = true } -- Antorus, the Burning Throne
        --######################################
        --#### Battle of Azeroth Exit Notes ####
        --######################################
            nodes[934][79514836] = { name = L["Exit"], type = "Exit", showInZone = true } -- Atal'Dazar
            nodes[936][70563589] = { name = L["Exit"], type = "Exit", showInZone = true } -- Freehold
            nodes[974][75275526] = { name = L["Exit"], type = "Exit", showInZone = true } -- Tol Dagor
            nodes[1004][89874719] = { name = L["Exit"], type = "Exit", showInZone = true } -- Kings Rest
            nodes[1015][51418674] = { name = L["Exit"], type = "Exit", showInZone = true } -- Waycrest Manor
            nodes[1038][67899710] = { name = L["Exit"], type = "Exit", showInZone = true } -- Temple of Sethraliss
            nodes[1039][45760810] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shrine of the Storm
            nodes[1041][36191611] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Underrot      
            nodes[1148][52679428] = { name = L["Exit"], type = "Exit", showInZone = true } -- Uldir    
            nodes[1162][76681988] = { name = L["Exit"], type = "Exit", showInZone = true } -- Siege of Boralus
            nodes[1345][68368768] = { name = L["Exit"], type = "Exit", showInZone = true } -- Crucible of Storms
            nodes[1358][23941752] = { name = L["Exit"], type = "Exit", showInZone = true } -- Battle of Dazar'alor
            nodes[1490][71683749] = { name = L["Exit"], type = "Exit", showInZone = true } -- Operation: Mechagon
            nodes[1512][94264884] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Eternal Palace      
        --################################
        --#### Shadowlands Exit Notes ####
        --################################
            nodes[1663][89875409] = { mnID = 1525, name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Atonement
            nodes[1666][82863999] = { mnID = 1533, name = L["Exit"], type = "Exit", showInZone = true } -- The Necrotic Wake
            nodes[1669][93861796] = { mnID = 1565, name = L["Exit"], type = "Exit", showInZone = true } -- Mists of Tirna Scithe
            nodes[1674][29981643] = { mnID = 1536, name = L["Exit"], type = "Exit", showInZone = true } -- Plaguefall
            nodes[1675][09825103] = { mnID = 1525, name = L["Exit"], type = "Exit", showInZone = true } -- Sanguine Depths
            nodes[1680][50581456] = { mnID = 1565, name = L["Exit"], type = "Exit", showInZone = true } -- De Other Side
            nodes[1683][50498296] = { mnID = 1536, name = L["Exit"], type = "Exit", showInZone = true } -- Theater of Pain
            nodes[1692][40586445] = { mnID = 1533, name = L["Exit"], type = "Exit", showInZone = true } -- Spires of Ascension
            nodes[1735][34468069] = { mnID = 1525, name = L["Exit"], type = "Exit", showInZone = true } -- Castle Nathria
            nodes[1998][29478607] = { mnID = 1543, name = L["Exit"], type = "Exit", showInZone = true } -- Sanctum of Domination
            nodes[1989][90914372] = { mnID = 2016, name = L["Exit"], type = "Exit", showInZone = true } -- Tazavesh, the Veiled Market
            nodes[2047][07465150] = { mnID = 1970, name = L["Exit"], type = "Exit", showInZone = true } -- Sepulcher of the First Ones
        --#################################
        --#### Dragon Isles Exit Notes ####
        --#################################
            nodes[2073][77623071] = { mnID = 2024, name = L["Exit"], type = "Exit", showInZone = true } -- The Azure Vault
            nodes[2080][52562070] = { mnID = 2022, name = L["Exit"], type = "Exit", showInZone = true } -- Neltharus
            nodes[2082][08403471] = { mnID = 2025, name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Infusion
            nodes[2093][60673862] = { mnID = 2023, name = L["Exit"], type = "Exit", showInZone = true } -- The Nokhud Offensive
            nodes[2095][42789333] = { mnID = 2022, name = L["Exit"], type = "Exit", showInZone = true } -- Ruby Life Pools
            nodes[2096][06524366] = { mnID = 2024, name = L["Exit"], type = "Exit", showInZone = true } -- Brackenhide Hollow
            nodes[2097][42157591] = { mnID = 2025, name = L["Exit"], type = "Exit", showInZone = true } -- Algeth'ar Academy
            nodes[2190][33202089] = { mnID = 2025, name = L["Exit"], type = "Exit", showInZone = true } -- Dawn of the Infinite
            nodes[2119][63509475] = { mnID = 2025, name = L["Exit"], type = "Exit", showInZone = true } -- Vault of the Incarnates
            nodes[2166][51269498] = { mnID = 2133, name = L["Exit"], type = "Exit", showInZone = true } -- Aberrus, the Shadowed Crucible
            nodes[2232][50789310] = { mnID = 2200, name = L["Exit"], type = "Exit", showInZone = true } -- Amirdrassil, the Dream's Hope
          end
    
    
        --################################
        --#### Inside Dungeon Passage ####
        --################################
    
          if self.db.profile.showDungeonPassage then
    
        --##########################
        --#### Kalimdor Passage ####
        --##########################
            nodes[280][13585809] = { mnID = 281, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- Maraudon passage to Zaetar's Grave
            nodes[281][29120410] = { mnID = 280, name = L["Passage"], type = "PassageRightL", showInZone = true } -- Maraudon passage to Zaetar's Grave
        --#################################
        --#### Eastern Kingdom Passage ####
        --#################################
        nodes[306][66643330] = { mnID = 307, name = L["Passage"], type = "PassageUpL", showInZone = true } -- The Reliquary
        nodes[307][29083252] = { mnID = 308, name = L["Passage"], type = "PassageRightL", showInZone = true } -- Chamber of Summoning
        nodes[307][62092937] = { mnID = 306, name = L["Passage"], type = "PassageDownL", showInZone = true } -- Chamber of Summoning
        nodes[307][29638662] = { mnID = 308, name = L["Passage"], type = "PassageUpL", showInZone = true } -- Chamber of Summoning
        nodes[307][63505338] = { mnID = 308, name = L["Passage"], type = "PassageRightL", showInZone = true } -- Chamber of Summoning
        nodes[307][41058886] = { mnID = 309, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- Chamber of Summoning
        nodes[308][28812372] = { mnID = 307, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- The Upper Study
        nodes[308][28812372] = { mnID = 307, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- The Upper Study
        nodes[308][35408274] = { mnID = 307, name = L["Passage"], type = "PassageUpL", showInZone = true } -- The Upper Study
        nodes[308][58956226] = { mnID = 307, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- The Upper Study
        nodes[309][48275691] = { mnID = 307, name = L["Passage"], type = "PassageUpL", showInZone = true } -- Headmaster's Study
        
        --##########################
        --#### Outland Passage #####
        --##########################
        --Black Temple
            nodes[339][28657991] = { mnID = 340, name = L["Passage"], type = "PassageDownL", showInZone = true } -- 
            nodes[339][76054672] = { mnID = 341, name = L["Passage"], type = "PassageRightL", showInZone = true } --       
            nodes[340][27240693] = { mnID = 339, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
            nodes[341][61933384] = { mnID = 342, name = L["Passage"], type = "PassageRightL", showInZone = true } -- 
            nodes[341][21124985] = { mnID = 339, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- 
            nodes[341][57859035] = { mnID = 343, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- 
            nodes[341][26302301] = { mnID = 344, name = L["Passage"], type = "PassageDownL", showInZone = true } -- 
            nodes[342][63033918] = { mnID = 341, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- 
            nodes[343][74966845] = { mnID = 341, name = L["Passage"], type = "PassageRightL", showInZone = true } -- 
            nodes[344][08254813] = { mnID = 341, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
            nodes[344][67275590] = { mnID = 345, name = L["Passage"], type = "PassageDownL", showInZone = true } -- 
            nodes[345][47333054] = { mnID = 346, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
            nodes[345][69461241] = { mnID = 344, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
            nodes[346][52821234] = { mnID = 345, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
        --###########################
        --#### Northrend Passage ####
        --###########################
    
        --##########################
        --#### Pandaria Passage ####
        --##########################
    
        --##########################
        --#### Draenor Passage #####
        --##########################
    
        --##############################
        --#### Borken Isles Passage ####
        --##############################
          end
    
    
        --################################
        --#### Inside Dungeon Portals ####
        --################################
    
          if self.db.profile.showDungeonPortal then
    
    
        --###################################
        --#### Northrend Dungeon Portals ####
        --###################################
    
            nodes[166][55844846] = { mnID = 23, name = L["Portal"] .. " - " .. L["Eastern Plaguelands"].. "\n" .. L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"] , type = "Portal", showInZone = true } -- IcecrownGlacier
            nodes[186][33822342] = { mnID = 125, name = L["Portal"] .. " - " .. L["Dalaran"], type = "Portal", showInZone = true } -- IcecrownGlacier
          end
        end
      end 
    end 