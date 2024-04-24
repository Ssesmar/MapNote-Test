local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadWrathMiniMapInfo(self)
local db = ns.Addon.db.profile
local minimap = ns.minimap

    --#####################################################################################################
    --##########################        function to hide all minimap below         ##########################
    --#####################################################################################################
    if not db.show.HideMapNote then


        --##################################################################################################
        --####################################         MiniMap         ###################################
        --##################################################################################################
		if db.show.MiniMap then
            
            
            --###################
            --##### Kalimdor ####
            --###################
            
			if self.db.profile.showMiniMapKalimdor then


            -- Raids

                if self.db.profile.showMiniMapRaids then

                    minimap[1451][25239137] = { mnID = 1451, name = L["Temple of Ahn'Qiraj"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    				minimap[1451][29049322] = { mnID = 1451, name = DUNGEON_FLOOR_RUINSOFAHNQIRAJ1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1445][52877752] = { mnID = 1445, name = DUNGEON_FLOOR_ONYXIASLAIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1446][59815222] = { mnID = 1446, name = DUNGEON_FLOOR_COTMOUNTHYJAL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }

                end


            -- Dungeons

                if self.db.profile.showMiniMapDungeons then

                    minimap[1440][13961306] = { mnID = 1440, name = L["Blackfathom Deeps"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "24-32]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1444][59034298] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1444][76883670] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1443][28986219] = { mnID = 1443, name = DUNGEON_FLOOR_MARAUDON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "46-55]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1413][49189322] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENDOWNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "37-46]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1413][41798934] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENKRAUL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "25", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1413][45973633] = { mnID = 1413, name = DUNGEON_FLOOR_WAILINGCAVERNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-24]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1446][38712008] = { mnID = 1446, name = DUNGEON_FLOOR_ZULFARRAK .. " " .. "[" .. GARRISON_TIER .. ": " .. "42-56", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1454][51524981] = { mnID = 1454, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1446][58576063] = { mnID = 1446, name = DUNGEON_FLOOR_COTTHEBLACKMORASS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "25", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1446][57105594] = { mnID = 1446, name = L["Old Hillsbrad Foothills"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "66-68]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1446][60406015] = { mnID = 1446, name = L["The Culling of Stratholme"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    

                end

            -- Multi
                if self.db.profile.showMiniMapMultiple then

                    minimap[1446][65495000] = { mnID = 1446, name = "", dnID = DUNGEON_FLOOR_COTMOUNTHYJAL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. DUNGEON_FLOOR_COTTHEBLACKMORASS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. L["Old Hillsbrad Foothills"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "66-68]" .. "\n" .. L["The Culling of Stratholme"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "MultipleM", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                
                end


            -- Blizz Pois

                if self.db.profile.show.RemoveBlizzPOIs then

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                    
                        minimap[1438][27385702] = { mnID = 1457, name = "", type = "AIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Darnassus"] .. " - " .. FACTION_ALLIANCE }
                    
                    end

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[1411][45600899] = { mnID = 1454, name = "", type = "HIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = DUNGEON_FLOOR_ORGRIMMAR0 .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. " => " .. L["Blasted Lands"] .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } 
                    end

                end


            -- Zeppelin
                if self.db.profile.showMiniMapZeppelins then   

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[1411][50281195] = { mnID = 1434, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] }
                        minimap[1411][50771406] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }

                    end
                    
                end


            -- Ships
                if self.db.profile.showMiniMapShips then

                    minimap[1413][63803771] = { mnID = 1434, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ratchet"] .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Booty Bay to Ratchet
                

                    if self.faction == "Alliance" or db.show.EnemyFaction then

                        minimap[1439][34224187] = { mnID = 1438, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Auberdine"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Teldrassil"] } -- Ship from Booty Bay to Ratchet
                        minimap[1438][55039414] = { mnID = 1439, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Teldrassil"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Auberdine"] } -- Ship from Booty Bay to Ratchet
                        minimap[1445][71835683] = { mnID = 1437, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Theramore Isle"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Menethil Harbor

                    end

                end


             -- Portals
                if self.db.profile.showZonePortals then

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[1454][38078571] = { mnID = 1419, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                        minimap[1456][23121355] = { mnID = 1419, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                    end

                end

            end


            --##########################
            --##### Eastern Kingdom ####
            --##########################

            if self.db.profile.showMiniMapEasternKingdom then


            -- Raids            

                if self.db.profile.showMiniMapRaids then

				    minimap[1428][29844778] = { mnID = 1428, name = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1434][53731730] = { mnID = 1434, name = DUNGEON_FLOOR_ZULGURUB1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1957][44134538] = { mnID = 1957, name = DUNGEON_FLOOR_SUNWELLPLATEAU0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1430][46847438] = { mnID = 1430, name = L["Karazhan"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }

                end


            -- Dungeons

                if self.db.profile.showMiniMapDungeons then

                    minimap[1421][44746773] = { mnID = 1421, name = L["Shadowfang Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "14", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1422][68887290] = { mnID = 1422, name = L["Scholomance"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1420][85073208] = { mnID = 1420, name = DUNGEON_FLOOR_TIRISFAL13 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "21", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1423][30771675] = { mnID = 1423, name = DUNGEON_FLOOR_COTSTRATHOLME1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1435][69195221] = { mnID = 1435, name = DUNGEON_FLOOR_THETEMPLEOFATALHAKKAR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "50-56]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1418][44441195] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1418][64884316] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1426][24243984] = { mnID = 1426, name = DUNGEON_FLOOR_DUNMOROGH10 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "19", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1436][42407161] = { mnID = 1436, name = DUNGEON_FLOOR_THEDEADMINES1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-26]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1453][40255517] = { mnID = 1453, name = DUNGEON_FLOOR_THESTOCKADE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1957][61243079] = { mnID = 1957, name = L["Magisters' Terrace"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "70", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1942][85136422] = { mnID = 1957, name = DUNGEON_FLOOR_ZULAMAN1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "70", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }

                end

                if self.db.profile.showMiniMapMultiple then

				    minimap[1428][29844778] = { mnID = 1428, name = "", dnID = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES15 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES14 .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16 .. " " .. "[" .. GARRISON_TIER .. ": " .. "52-60]", type = "MultipleM", showInZone = false, hideOnContinent = true, hideOnMinimap = false }

                end


            -- Blizz POIS

                if self.db.profile.show.RemoveBlizzPOIs then

                    if self.faction == "Horde" or db.show.EnemyFaction then
                      minimap[1420][61806939] = { mnID = 1458, name = "", type = "HIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Undercity"] .. " - " .. FACTION_HORDE }
                    end
        
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                      minimap[1426][54353411] = { mnID = 1455, name = "", type = "AIcon", showInMiniMap = true, hideOnMiniMap = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] } -- Transport to Ironforge Carriage 
                      minimap[1429][24793263] = { mnID = 1453, name = "", type = "AIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_THESTOCKADE1 }
                    end

                end

            -- Dungeons and not Blizz for Stockade

                if self.db.profile.showMiniMapDungeons and not self.db.profile.show.RemoveBlizzPOIs then
                
                    if self.db.profile.showMiniMapDungeons then
                        minimap[1429][24793263] = { mnID = 1453, name = DUNGEON_FLOOR_THESTOCKADE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    end
                end


            -- Zeppelin
                if self.db.profile.showMiniMapZeppelins then   

                    if self.faction == "Horde" or db.show.EnemyFaction then

                        minimap[1420][60565871] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Tirisfal Glades"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Durotar"] }
                        minimap[1420][62025913] = { mnID = 1415, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Tirisfal Glades"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"]}
                        minimap[1434][31552891] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                        minimap[1434][31223030] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 }

                    end

                end


            -- MiniMap Eastern Kingdom Transport and not RemoveBlizzPOIs
                if self.db.profile.showMiniMapTransport then

                    if self.faction == "Alliance" or db.show.EnemyFaction then

                        minimap[1455][73375055] = { mnID = 1455, name = "", type = "Carriage", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] } -- Transport to Ironforge Carriage 
                        minimap[1453][60941195] = { mnID = 1453, name = "", type = "Carriage", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] } -- Transport to Ironforge Carriage 

                    end

                end


            -- Ships
                if self.db.profile.showMiniMapShips then

                    minimap[1434][25677301] = { mnID = 1413, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = POSTMASTER_LETTER_STRANGLETHORNVALE .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Ratchet"] } -- Ship from Booty Bay to Ratchet
                    
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        minimap[1437][07746089] = { mnID = 1445, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = POSTMASTER_LETTER_WETLANDS .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Theramore Isle"] } -- Ship from Menethil Harbor to Howling Fjord and Dustwallow Marsh
                    end

                end


            --Eastern Kingdom Portals
                if self.db.profile.showZonePortals then

                    minimap[1419][58666016] = { mnID = 1944, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = SPLASH_BASE_90_RIGHT_TITLE .. " => " .. L["Hellfire Peninsula"] }


                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[1420][59526699] = { mnID = 1954, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Portal to Silvermoon from Tirisfal
                        minimap[1458][55011129] = { mnID = 1954, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] .. "\n" .. "(" .. DUNGEON_FLOOR_GILNEAS3 .. ")" } -- Portal to Silvermoon from Tirisfal
                        minimap[1954][49401484] = { mnID = 1458, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Undercity"] } -- Portal to Undercity
                        minimap[1954][58412106] = { mnID = 1458, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                    end

                end

            end
        end
    end
end