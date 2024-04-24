local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadWrathContinentInfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

  --#####################################################################################################
  --##########################        function to hide all nodes below         ##########################
  --#####################################################################################################
  if not db.show.HideMapNote then


    --##################################################################################################
    --####################################         Continent         ###################################
    --##################################################################################################
		if db.show.Continent then
            
            
  --###################
  --##### Kalimdor ####
  --###################        
			if self.db.profile.showContinentKalimdor then


      -- Raids
        if self.db.profile.showContinentRaids then
          nodes[1414][40808546] = { mnID = 1451, name = L["Temple of Ahn'Qiraj"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
          nodes[1414][42408638] = { mnID = 1451, name = DUNGEON_FLOOR_RUINSOFAHNQIRAJ1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
          nodes[1414][56327161] = { mnID = 1445, name = DUNGEON_FLOOR_ONYXIASLAIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
          nodes[1414][59038528] = { mnID = 1446, name = DUNGEON_FLOOR_COTMOUNTHYJAL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" , type = "Raid", showInZone = true}
        end

      -- Dungeons
        if self.db.profile.showContinentDungeons then
          nodes[1414][43763504] = { mnID = 1440, name = L["Blackfathom Deeps"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "24-32]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true}
          nodes[1414][42537013] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true}
          nodes[1414][45976847] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true}
          nodes[1414][38225775] = { mnID = 1443, name = DUNGEON_FLOOR_MARAUDON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "46-55]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true}
          nodes[1414][52757105] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENDOWNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "37-46]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = true}
          nodes[1414][50657013] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENKRAUL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "25", type = "Dungeon", showInZone = true}
          nodes[1414][51885554] = { mnID = 1413, name = DUNGEON_FLOOR_WAILINGCAVERNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-24]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = true}
          nodes[1414][54107955] = { mnID = 1446, name = DUNGEON_FLOOR_ZULFARRAK .. " " .. "[" .. GARRISON_TIER .. ": " .. "42-56", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = true}
       --nodes[1414][58164464] = { mnID = 1454, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "Dungeon", showInZone = true}
        end

      -- Multi
        if self.db.profile.showContinentMultiple then
          nodes[1414][59038528] = { mnID = 1446, name = "", dnID = DUNGEON_FLOOR_COTMOUNTHYJAL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. DUNGEON_FLOOR_COTTHEBLACKMORASS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. L["Old Hillsbrad Foothills"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "66-68]" .. "\n" .. L["The Culling of Stratholme"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "MultipleM", showInZone = true}
        end

      -- Blizz Pois
        if self.db.profile.show.RemoveBlizzPOIs then

          if self.faction == "Alliance" or db.show.EnemyFaction then
            nodes[1414][39941176] = { mnID = 1457, name = "", type = "AIcon", showInZone = true, TransportName = L["Darnassus"] .. " - " .. FACTION_ALLIANCE }
          end

          if self.faction == "Horde" or db.show.EnemyFaction then
            nodes[1414][58164464] = { mnID = 1454, name = "", type = "HIcon", showInZone = true, TransportName = DUNGEON_FLOOR_ORGRIMMAR0 .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. " => " .. L["Blasted Lands"] .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 }
            nodes[1414][46965720] = { mnID = 1456, name = "", type = "HIcon", showInZone = true, TransportName = L["Thunder Bluff"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. " => " .. L["Blasted Lands"] } 
          end
           
        end

      -- Dungeons and not Blizz for Ragefire
        if self.db.profile.showContinentDungeons and not self.db.profile.show.RemoveBlizzPOIs then
         
          if self.db.profile.showContinentDungeons then
            nodes[1414][58164464] = { mnID = 1454, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "Dungeon", showInZone = true}
          end

        end

      -- Zeppelin
        if self.db.profile.showContinentZeppelins then   

          if self.faction == "Horde" or db.show.EnemyFaction then
            nodes[1414][59154686] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Durotar"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
          end
             
        end

      -- Ships
        if self.db.profile.showContinentShips then

            nodes[1414][57305757] = { mnID = 1413, name = "", type = "Ship", showInZone = true, TransportName = L["Ratchet"] .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Booty Bay to Ratchet
         
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1414][44132395] = { mnID = 1439, name = "", type = "AShip", showInZone = true, TransportName = L["Auberdine"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Teldrassil"] } -- Ship from Booty Bay to Ratchet
              nodes[1414][43761657] = { mnID = 1438, name = "", type = "AShip", showInZone = true, TransportName = L["Teldrassil"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Auberdine"] } -- Ship from Booty Bay to Ratchet
              nodes[1414][59036699] = { mnID = 1445, name = "", type = "AShip", showInZone = true, TransportName = L["Theramore Isle"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Menethil Harbor
            end

        end
    end


  --##########################
  --##### Eastern Kingdom ####
  --##########################
    if self.db.profile.showContinentEasternKingdom then


    -- Raids            
        if self.db.profile.showContinentRaids then
          nodes[1415][47397031] = { mnID = 1428, name = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
          nodes[1415][47648454] = { mnID = 1434, name = DUNGEON_FLOOR_ZULGURUB1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
          nodes[1415][49678177] = { mnID = 1430, name = L["Karazhan"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = true}
          nodes[1415][54470345] = { mnID = 1957, name = DUNGEON_FLOOR_SUNWELLPLATEAU0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = true}

        end

    -- Dungeons
        if self.db.profile.showContinentDungeons then
          nodes[1415][40624150] = { mnID = 1421, name = L["Shadowfang Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "14", type = "Dungeon", showInZone = true}
          nodes[1415][50843614] = { mnID = 1422, name = L["Scholomance"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true}
          nodes[1415][46413023] = { mnID = 1420, name = DUNGEON_FLOOR_TIRISFAL13 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "21", type = "Dungeon", showInZone = true}
          nodes[1415][53302876] = { mnID = 1423, name = DUNGEON_FLOOR_COTSTRATHOLME1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true}
          nodes[1415][53927918] = { mnID = 1435, name = DUNGEON_FLOOR_THETEMPLEOFATALHAKKAR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "50-56]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true}
          nodes[1415][53676514] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true}
          nodes[1415][52446311] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true}
          nodes[1415][43085997] = { mnID = 1426, name = DUNGEON_FLOOR_DUNMOROGH10 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "19", type = "Dungeon", showInZone = true}
          nodes[1415][40878158] = { mnID = 1436, name = DUNGEON_FLOOR_THEDEADMINES1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-26]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = true}
          nodes[1415][57922488] = { mnID = 1942, name = DUNGEON_FLOOR_ZULAMAN1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "70", type = "Dungeon", showInZone = true}
          nodes[1415][56190253] = { mnID = 1957, name = L["Magisters' Terrace"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "70", type = "Dungeon", showInZone = true}

        end

    -- Multi
        if self.db.profile.showContinentMultiple then
          nodes[1415][47397031] = { mnID = 1428, name = "", dnID = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES15 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES14 .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16 .. " " .. "[" .. GARRISON_TIER .. ": " .. "52-60]", type = "MultipleM", showInZone = true}
        end

    -- Blizz POIS
        if self.db.profile.show.RemoveBlizzPOIs then

          if self.faction == "Horde" or db.show.EnemyFaction then
            nodes[1415][43703596] = { mnID = 1458, name = "", type = "HIcon", showInZone = true, TransportName = L["Undercity"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Silvermoon City"] }
            nodes[1415][56011398] = { mnID = 1941, name = "", type = "HIcon", showInZone = true, TransportName = L["Silvermoon City"] .. " - " .. FACTION_HORDE  .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Undercity"] .. "\n" .. " => " .. L["Blasted Lands"]  }
          end

          if self.faction == "Alliance" or db.show.EnemyFaction then
            nodes[1415][46535960] = { mnID = 1455, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] } -- Transport to Ironforge Carriage 
            nodes[1415][42847309] = { mnID = 1453, name = "", type = "AIcon", showInZone = true, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_THESTOCKADE1 }
          end

        end

    -- Dungeons and not Blizz for Stockade
        if self.db.profile.showContinentDungeons and not self.db.profile.show.RemoveBlizzPOIs then
        
          if self.db.profile.showContinentDungeons then
              nodes[1415][42847309] = { mnID = 1453, name = DUNGEON_FLOOR_THESTOCKADE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true}
          end

        end

    -- Zeppelin
        if self.db.profile.showContinentZeppelins then   

          if self.faction == "Horde" or db.show.EnemyFaction then
            nodes[1415][43943263] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Tirisfal Glades"] .. " " .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Durotar"] }
            nodes[1415][44078675] = { mnID = 1434, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0.. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
          end

        end

    -- Continent Eastern Kingdom Transport and not RemoveBlizzPOIs
        if self.db.profile.showContinentTransport and not self.db.profile.show.RemoveBlizzPOIs then
            
          if self.faction == "Alliance" or db.show.EnemyFaction then
            nodes[1415][46655942] = { mnID = 1455, name = "", type = "Carriage", showInZone = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] } -- Transport to Ironforge Carriage 
            nodes[1415][43827345] = { mnID = 1429, name = "", type = "Carriage", showInZone = true, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] } -- Transport to Ironforge Carriage 
          end

        end

    -- Ships
        if self.db.profile.showContinentShips then

          nodes[1415][43219340] = { mnID = 1434, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_STRANGLETHORNVALE .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Ratchet"] } -- Ship from Booty Bay to Ratchet
            
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1415][46285480] = { mnID = 1437, name = "", type = "AShip", showInZone = true, TransportName = POSTMASTER_LETTER_WETLANDS .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Theramore Isle"] } -- Ship from Menethil Harbor to Howling Fjord and Dustwallow Marsh
            end

        end

    --Eastern Kingdom Portals
          if self.db.profile.showContinentPortals then
            nodes[1415][52328472] = { mnID = 1419, name = "", type = "Portal", showInZone = true, TransportName = SPLASH_BASE_90_RIGHT_TITLE .. " => " .. L["Hellfire Peninsula"] }
          end

    end


  --############################
  --##### Continent Outland ####
  --############################
    if self.db.profile.showContinentOutland then
    
    -- Outland Dungeons
      if self.db.profile.showContinentDungeons then
    --nodes[101][44487857] = { id = 247, type = "Dungeon", showInZone = true } -- Auchenai Crypts 
    --nodes[101][46027626] = { id = 250, type = "Dungeon", showInZone = true } -- Mana-Tombs 
    --nodes[101][47577861] = { id = 252, type = "Dungeon", showInZone = true } -- Sethekk Halls 
    --nodes[101][46028099] = { id = 253, type = "Dungeon", showInZone = true } -- Shadow Labyrinth 
    --nodes[101][65842044] = { id = 257, type = "Dungeon" } -- The Botanica 
    --nodes[101][65542528] = { id = 258, type = "Dungeon" } -- The Mechanar  
    --nodes[101][66722143] = { id = 254, type = "Dungeon" } -- The Arcatraz
      end


    -- Outland Raids
      if self.db.profile.showContinentRaids then
    --nodes[101][66452335] = { id = 749, type = "Raid" } -- The Eye  
    --nodes[101][72298069] = { id = 751, type = "Raid" } -- Black Temple 
    --nodes[101][45131901] = { id = 746, type = "Raid" } -- Gruul's Lairend
      end


    -- Outland Multiple
      if self.db.profile.showContinentMultiple then
        --nodes[101][56695240] = { mnID = 100, id = { 747, 248, 256, 259 }, type = "MultipleM" } -- Hellfire Ramparts, The Blood Furnace, The Shattered Halls, Magtheridon's Lair 
        --nodes[101][34624490] = { mnID = 102, id = { 748, 260, 261, 262 }, type = "MultipleM" } -- Slave Pens, The Steamvault, The Underbog, Serpentshrine Cavern
      end


    -- Outland Portals
      if self.db.profile.showContinentPortals then
                    
        if self.faction == "Horde" or db.show.EnemyFaction then
          nodes[101][69025178] = { mnID = 100, name = "", type = "HPortal", showInZone = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 } -- Portal from Hellfire to Orgrimmar 
        end

        if self.faction == "Alliance" or db.show.EnemyFaction then
          nodes[101][68905259] = { mnID = 100,  name = "" , type = "APortal", showInZone = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"] } -- Portal from Hellfire to Stormwind 
        end

      end

    -- Outland Portals
      if self.db.profile.showContinentPortals and not self.db.profile.show.RemoveBlizzPOIs then
        nodes[1945][43186574] = { mnID = 1955, name = "", type = "Raid", showInZone = true, TransportName = L["Shattrath City"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 .. "\n" .. " => " .. L["Stormwind"] .. "\n" .. " => " .. L["Isle of Quel'Danas"] } -- Portal from Shattrath to Orgrimmar
      end

    -- Outland RemoveBlizzPOIs 
      if self.db.profile.show.RemoveBlizzPOIs then
        nodes[101][43186573] = { mnID = 108, name = "", type = "NT", showInZone = true, TransportName = L["Shattrath City"] .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 .. "\n" .. " => " .. L["Stormwind"] .. "\n" .. " => " .. L["Isle of Quel'Danas"] } -- Portal from Shattrath to Orgrimmar
      end
    
    end


    --##############################
    --##### Continent Northrend ####
    --##############################
    if self.db.profile.showContinentNorthrend then

    -- Northrend Dungeon
      if self.db.profile.showContinentDungeons then
        nodes[113][77707945] = { mnID = 117, name = L["Utgarde Keep"], type = "Dungeon" } -- Utgarde Keep, at doorway entrance 
        nodes[113][77557824] = { mnID = 117, name = L["Utgarde Pinnacle"], type = "Dungeon" } -- Utgarde Pinnacle 
        nodes[113][59091507] = { mnID = 120, name = DUNGEON_FLOOR_HALLSOFORIGINATION1, type = "Dungeon" } -- Halls of Lightning 
        nodes[113][56911729] = { mnID = 120, name = DUNGEON_FLOOR_ULDUAR771, type = "Dungeon" } -- Halls of Stone 
        nodes[113][62405001] = { mnID = 121, name = L["Drak'Tharon Keep"], type = "Dungeon" } -- Drak'Tharon Keep 
        nodes[113][75113259] = { mnID = 121, name = DUNGEON_FLOOR_GUNDRAK1, type = "Dungeon" } -- Gundrak Left Entrance 
        nodes[113][76533471] = { mnID = 121, name = DUNGEON_FLOOR_GUNDRAK1, type = "Dungeon" } -- Gundrak Right Entrance 
        nodes[113][49134292] = { mnID = 127, name = DUNGEON_FLOOR_VIOLETHOLD1, type = "Dungeon" } -- Violet Hold
      end

    -- Northrend Raids
      if self.db.profile.showContinentRaids then
      --nodes[113][58415888] = { id = 754, type = "Raid" } -- Naxxramas 
      --nodes[113][40794199] = { id = 758, type = "Raid" } -- Icecrown Citadel 
      --nodes[113][57721389] = { id = 759, type = "Raid" } -- Ulduar
      --nodes[113][36624457] = { id = 753, type = "Raid" } -- Vault of Archavon
      end


    -- Northrend Multiple
      if self.db.profile.showContinentMultiple then
      --nodes[113][40595892] = { mnID = 115, id = { 271, 272 }, type = "MultipleD" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub        
      --nodes[113][41154408] = { mnID = 118, id = { 276, 278, 280 }, type = "MultipleD" } -- The Forge of Souls, Halls of Reflection, Pit of Saron         
      --nodes[113][47652029] = { mnID = 118, id = { 757, 284 }, type = "MultipleM" } -- Trial of the Crusader, Trial of the Champion 
      --nodes[113][14725757] = { mnID = 114, id = { 756, 282, 281 }, type = "MultipleM" } -- The Eye of Eternity, The Nexus, The Oculus
      --nodes[113][50346038] = { mnID = 115, id = { 755, 761 }, type = "MultipleR", showInZone = true } -- The Ruby Sanctum, The Obsidian Sanctum 
      end


    -- Northrend Portal
      if self.db.profile.showContinentPortals then
        nodes[113][36504679] = { mnID = 123, name = "", type = "Portal", showInZone = true, TransportName = L["Wintergrasp"] .. " " .. L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- LakeWintergrasp to Dalaran Portal
        nodes[113][47804060] = { mnID = 125, name = "", type = "Portal", showInZone = true, TransportName = DUNGEON_FLOOR_DALARANCITY1 .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 .. "\n" .. " => " .. L["Stormwind"] } --  Dalaran Portal to Orgrimmar and Stormwind
      end


    -- Northrend Zeppelin
      if self.db.profile.showContinentZeppelins then 

        if self.faction == "Horde" or db.show.EnemyFaction then
          nodes[113][18766562] = { mnID = 114, name = "", type = "HZeppelin", showInZone = true, TransportName = POSTMASTER_LETTER_WARSONGHOLD .. " " .. L["Zeppelin"] .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 } -- Zeppelin from Borean Tundra to Ogrimmar
        end

      end


    -- Northrend Ships
      if self.db.profile.showContinentShips then

        nodes[113][65218245] = { mnID = 117, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_KAMAGUA .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Kamagua to Moaki
        nodes[113][47806841] = { mnID = 115, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_MOAKI .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_KAMAGUA } -- Ship from Moaki to Kamagua
        nodes[113][30056677] = { mnID = 114, name = "", type = "Ship", showInZone = true, TransportName = L["Borean Tundra"] .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Unu'pe to Moaki
        nodes[113][46406841] = { mnID = 115, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_MOAKI .. " " .. L["Ship"] .. "\n" .. " => " .. L["Borean Tundra"] } -- Ship from Moaki to Unu'pe
        
        if self.faction == "Alliance" or db.show.EnemyFaction then
          nodes[113][25377045] = { mnID = 114, name = "", type = "AShip", showInZone = true, TransportName = POSTMASTER_LETTER_VALIANCEKEEP .. " " ..  L["Ship"] .. "\n" .. " => " .. L["Stormwind"] } -- Ship from Borean Tundra to Stormwind
          nodes[113][79788368] = { mnID = 117, name = "", type = "AShip", showInZone = true, TransportName = L["Howling Fjord"] .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Howling Fjord to Wetlands
        end

      end

    end

    end
  end
end