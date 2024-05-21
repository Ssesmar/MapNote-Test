local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadCapitalsLocationinfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

--#####################################################################################################
--##########################        function to hide all nodes below         ##########################
--#####################################################################################################
if not db.show.HideMapNote then

    --###########################################################################################
    --################################         Capitals       ################################
    --###########################################################################################
    if db.show.Capitals then

        if self.db.profile.showProfessions then

            if self.faction == "Horde" or db.show.EnemyFaction then 

            --## Ogrimmar
                if self.db.profile.showOrgrimmar then

                    if self.db.profile.showAlchemy then
                        nodes[85][55684575] = { name = L["Alchemy"], type = "Alchemy", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showLeatherworking then
                        nodes[85][60905490] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEngineer then
                        nodes[85][57105622] = { name = L["Engineer"], type = "Engineer", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][37058474] = { name = L["Engineer"], type = "Engineer", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showSkinning then
                        nodes[85][61195463] = { name = L["Skinning"], type = "Skinning", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][39404968] = { name = L["Skinning"], type = "Skinning", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showTailoring then
                        nodes[85][60755912] = { name = L["Tailoring"], type = "Tailoring", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][38835061] = { name = L["Tailoring"], type = "Tailoring", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showJewelcrafting then
                        nodes[85][72493435] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        nodes[85][76533451] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][75353400] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][76373707] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][40565031] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][44237719] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMining then
                        nodes[85][39058556] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][44547839] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][72313491] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showFishing then
                        nodes[85][66434193] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][35196733] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showCooking then
                        nodes[85][56376139] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][41187939] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[85][32256966] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showArchaeology then
                        nodes[85][49077056] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showHerbalism then
                        nodes[85][54895027] = { name = L["Herbalism"], type = "Herbalism", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                end

            --## Thunder Bluff
                if self.db.profile.showThunderBluff then

                    if self.db.profile.showAlchemy then
                        nodes[88][46643317] = { name = L["Alchemy"], type = "Alchemy", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showLeatherworking then
                        nodes[88][41514257] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEngineer then
                        nodes[88][36065961] = { name = L["Engineer"], type = "Engineer", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showSkinning then
                        nodes[88][44424321] = { name = L["Skinning"], type = "Skinning", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[88][39404968] = { name = L["Skinning"], type = "Skinning", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showTailoring then
                        nodes[88][44544531] = { name = L["Tailoring"], type = "Tailoring", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showJewelcrafting then
                        nodes[88][34825399] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        nodes[88][39365510] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMining then
                        nodes[88][34385790] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showFishing then
                        nodes[88][56144642] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showCooking then
                        nodes[88][50745310] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showArchaeology then
                        nodes[88][75032812] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showHerbalism then
                        nodes[88][49954040] = { name = L["Herbalism"], type = "Herbalism", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                end

            --## Silvermoon
                if self.db.profile.showSilvermoon then

                    if self.db.profile.showAlchemy then
                        nodes[110][66701673] = { name = L["Alchemy"], type = "Alchemy", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showLeatherworking then
                        nodes[110][85008054] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEngineer then
                        nodes[110][76634110] = { name = L["Engineer"], type = "Engineer", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showSkinning then
                        nodes[110][84997931] = { name = L["Skinning"], type = "Skinning", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showTailoring then
                        nodes[110][57365009] = { name = L["Tailoring"], type = "Tailoring", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showJewelcrafting then
                        nodes[110][91377443] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[110][90327383] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        nodes[110][79423869] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMining then
                        nodes[110][78914322] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showFishing then
                        nodes[110][76246779] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showCooking then
                        nodes[110][69647153] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showArchaeology then
                        nodes[110][75032812] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[110][81436390] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showHerbalism then
                        nodes[110][67401842] = { name = L["Herbalism"], type = "Herbalism", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        nodes[110][69322382] = { name = INSCRIPTION, type = "Inscription", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        nodes[110][70012365] = { name = L["Enchanting"], type = "Enchanting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            --## Undercity
                if self.db.profile.showUndercity then

                    if self.db.profile.showAlchemy then
                        nodes[110][66701673] = { name = L["Alchemy"], type = "Alchemy", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showLeatherworking then
                        nodes[110][85008054] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEngineer then
                        nodes[110][76634110] = { name = L["Engineer"], type = "Engineer", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showSkinning then
                        nodes[110][84997931] = { name = L["Skinning"], type = "Skinning", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showTailoring then
                        nodes[110][57365009] = { name = L["Tailoring"], type = "Tailoring", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showJewelcrafting then
                        nodes[110][91377443] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[110][90327383] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        nodes[110][79423869] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMining then
                        nodes[110][78914322] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showFishing then
                        nodes[110][76246779] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showCooking then
                        nodes[110][69647153] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showArchaeology then
                        nodes[110][75032812] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showHerbalism then
                        nodes[110][67401842] = { name = L["Herbalism"], type = "Herbalism", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        nodes[110][69322382] = { name = INSCRIPTION, type = "Inscription", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        nodes[110][70012365] = { name = L["Enchanting"], type = "Enchanting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then 

            end

        end

        if self.db.profile.showCapitalsTransports then

            if self.faction == "Horde" or db.show.EnemyFaction then     

            --## Ogrimmar
                if self.db.profile.showOrgrimmar then   

                    if self.db.profile.showCapitalsTransports then

                        if self.db.profile.showCapitalsPortals then
                            nodes[85][57278961] = { name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portalroom"] .. "\n" .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portalroom from Orgrimmar
                            nodes[85][50765561] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Ruins of Lordaeron 
                            nodes[85][55988822] = { mnID = 110, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Silvermoon City
                            nodes[85][57098737] = { mnID = 2112, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Valdrakken"] } --  Valdrakken 
                            nodes[85][58308788] = { mnID = 1670, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] } -- Oribos 
                            nodes[85][58858950] = { mnID = 630, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Azsuna"] } -- Azsuna 
                            nodes[85][57479217] = { mnID = 862, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Zuldazar"] } -- Zuldazar  
                            nodes[85][57479225] = { mnID = 371, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Jade Forest"] } -- The Jade Forest 
                            nodes[85][56249171] = { mnID = 125, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- Crystalsong Forest (Old Dalaran) Portalroom 
                            nodes[85][57409153] = { mnID = 111, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true } -- Shattrath 
                            nodes[85][56399252] = { mnID = 74, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true } -- Caverns of Time 
                            nodes[85][55209201] = { mnID = 624, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true } -- Warspear - Ashran 
                            nodes[85][47393928] = { mnID = 245, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
                            nodes[85][48863851] = { mnID = 1527, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
                            nodes[85][50243944] = { mnID = 241, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
                            nodes[85][51203832] = { mnID = 198, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                            nodes[85][50863628] = { mnID = 207, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
                            nodes[85][49203647] = { mnID = 203, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
                        end

                        if self.db.profile.showCapitalsZeppelins then
                            nodes[85][44496228] = { mnID = 114, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. POSTMASTER_LETTER_WARSONGHOLD } -- Zeppelin from OG to Borean Tundra - Northrend
                            nodes[85][42796534] = { mnID = 88, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " ..  L["Thunder Bluff"]} -- Zeppelin from OG to Thunder Bluff
                            nodes[85][52275315] = { mnID = 50, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. L["Grom'gol, Stranglethorn Vale"] } -- Zeppelin from OG to Stranglethorn
                        end

                    end

                end

            end


            if self.faction == "Alliance" or db.show.EnemyFaction then 

            end

        end

        if self.db.profile.showCapitalInstances then

            if self.faction == "Horde" or db.show.EnemyFaction then

                if self.db.profile.showOrgrimmar then 

                    if self.db.profile.showCapitalsDungeons then
                        nodes[85][51685850] = { id = 226, type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ragefire
                        nodes[86][66715154] = { id = 226, type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ragefire - Chasm of shadows
                    end

                    if self.db.profile.showCapitalsPassage and not self.db.profile.show.ClassicIcons then
                        nodes[85][55895097] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ragefire   
                        nodes[85][46116716] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ragefire  
                        nodes[85][41516079] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ragefire    
                    end

                end

            end

        end
    end
end
end