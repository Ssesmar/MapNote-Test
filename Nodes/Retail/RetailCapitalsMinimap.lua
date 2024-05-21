local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadCapitalsMinimapLocationinfo(self)
local db = ns.Addon.db.profile
local minimap = ns.minimap

--#####################################################################################################
--##########################        function to hide all minimap below         ##########################
--#####################################################################################################
if not db.show.HideMapNote then

    --###########################################################################################
    --################################         Capitals       ################################
    --###########################################################################################
    if db.show.MinimapCapitals then

        if self.db.profile.showMinimapProfessions then

            if self.faction == "Horde" or db.show.EnemyFaction then 

            --## Ogrimmar
                if self.db.profile.showMinimapOrgrimmar then

                    if self.db.profile.showMinimapAlchemy then
                        minimap[85][55684575] = { name = L["Alchemy"], type = "Alchemy", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showMinimapLeatherworking then
                        minimap[85][60905490] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapEngineer then
                        minimap[85][57105622] = { name = L["Engineer"], type = "Engineer", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][37058474] = { name = L["Engineer"], type = "Engineer", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapSkinning then
                        minimap[85][61195463] = { name = L["Skinning"], type = "Skinning", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][39404968] = { name = L["Skinning"], type = "Skinning", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapTailoring then
                        minimap[85][60755912] = { name = L["Tailoring"], type = "Tailoring", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][38835061] = { name = L["Tailoring"], type = "Tailoring", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapJewelcrafting then
                        minimap[85][72493435] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapBlacksmith then
                        minimap[85][76533451] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][75353400] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][76373707] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][40565031] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][44237719] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapMining then
                        minimap[85][39058556] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][44547839] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][72313491] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapFishing then
                        minimap[85][66434193] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][35196733] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapCooking then
                        minimap[85][56376139] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][41187939] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[85][32256966] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapArchaeology then
                        minimap[85][49077056] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapHerbalism then
                        minimap[85][54895027] = { name = L["Herbalism"], type = "Herbalism", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                end

            --## Thunder Bluff
                if self.db.profile.showMinimapThunderBluff then

                    if self.db.profile.showMinimapAlchemy then
                        minimap[88][46643317] = { name = L["Alchemy"], type = "Alchemy", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showMinimapLeatherworking then
                        minimap[88][41514257] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapEngineer then
                        minimap[88][36065961] = { name = L["Engineer"], type = "Engineer", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapSkinning then
                        minimap[88][44424321] = { name = L["Skinning"], type = "Skinning", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[88][39404968] = { name = L["Skinning"], type = "Skinning", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapTailoring then
                        minimap[88][44544531] = { name = L["Tailoring"], type = "Tailoring", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapJewelcrafting then
                        minimap[88][34825399] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapBlacksmith then
                        minimap[88][39365510] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapMining then
                        minimap[88][34385790] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapFishing then
                        minimap[88][56144642] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapCooking then
                        minimap[88][50745310] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapArchaeology then
                        minimap[88][75032812] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapHerbalism then
                        minimap[88][49954040] = { name = L["Herbalism"], type = "Herbalism", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                end

            --## Silvermoon
                if self.db.profile.showMinimapSilvermoon then

                    if self.db.profile.showMinimapAlchemy then
                        minimap[110][66701673] = { name = L["Alchemy"], type = "Alchemy", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showMinimapLeatherworking then
                        minimap[110][85008054] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapEngineer then
                        minimap[110][76634110] = { name = L["Engineer"], type = "Engineer", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapSkinning then
                        minimap[110][84997931] = { name = L["Skinning"], type = "Skinning", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapTailoring then
                        minimap[110][57365009] = { name = L["Tailoring"], type = "Tailoring", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapJewelcrafting then
                        minimap[110][91377443] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[110][90327383] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapBlacksmith then
                        minimap[110][79423869] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapMining then
                        minimap[110][78914322] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapFishing then
                        minimap[110][76246779] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapCooking then
                        minimap[110][69647153] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapArchaeology then
                        minimap[110][75032812] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[110][81436390] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapHerbalism then
                        minimap[110][67401842] = { name = L["Herbalism"], type = "Herbalism", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapInscription then
                        minimap[110][69322382] = { name = INSCRIPTION, type = "Inscription", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapEnchanting then
                        minimap[110][70012365] = { name = L["Enchanting"], type = "Enchanting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            --## Undercity
                if self.db.profile.showMinimapUndercity then

                    if self.db.profile.showMinimapAlchemy then
                        minimap[110][66701673] = { name = L["Alchemy"], type = "Alchemy", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showMinimapLeatherworking then
                        minimap[110][85008054] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapEngineer then
                        minimap[110][76634110] = { name = L["Engineer"], type = "Engineer", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapSkinning then
                        minimap[110][84997931] = { name = L["Skinning"], type = "Skinning", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapTailoring then
                        minimap[110][57365009] = { name = L["Tailoring"], type = "Tailoring", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapJewelcrafting then
                        minimap[110][91377443] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[110][90327383] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapBlacksmith then
                        minimap[110][79423869] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapMining then
                        minimap[110][78914322] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapFishing then
                        minimap[110][76246779] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapCooking then
                        minimap[110][69647153] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapArchaeology then
                        minimap[110][75032812] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapHerbalism then
                        minimap[110][67401842] = { name = L["Herbalism"], type = "Herbalism", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapInscription then
                        minimap[110][69322382] = { name = INSCRIPTION, type = "Inscription", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapEnchanting then
                        minimap[110][70012365] = { name = L["Enchanting"], type = "Enchanting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then 

            end

        end

        if self.db.profile.showMinimapCapitalsTransports then

            if self.faction == "Horde" or db.show.EnemyFaction then     

            --## Ogrimmar
                if self.db.profile.showMinimapOrgrimmar then   

                    if self.db.profile.showMinimapCapitalsTransports then

                        if self.db.profile.showMinimapCapitalsPortals then
                            minimap[85][57278961] = { name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portalroom"] .. "\n" .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portalroom from Orgrimmar
                            minimap[85][50765561] = { mnID = 18, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Ruins of Lordaeron 
                            minimap[85][55988822] = { mnID = 110, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Silvermoon City
                            minimap[85][57098737] = { mnID = 2112, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Valdrakken"] } --  Valdrakken 
                            minimap[85][58308788] = { mnID = 1670, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Oribos"] } -- Oribos 
                            minimap[85][58858950] = { mnID = 630, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Azsuna"] } -- Azsuna 
                            minimap[85][57479217] = { mnID = 862, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Zuldazar"] } -- Zuldazar  
                            minimap[85][57479225] = { mnID = 371, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Jade Forest"] } -- The Jade Forest 
                            minimap[85][56249171] = { mnID = 125, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- Crystalsong Forest (Old Dalaran) Portalroom 
                            minimap[85][57409153] = { mnID = 111, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Shattrath 
                            minimap[85][56399252] = { mnID = 74, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Caverns of Time 
                            minimap[85][55209201] = { mnID = 624, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Warspear - Ashran 
                            minimap[85][47393928] = { mnID = 245, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
                            minimap[85][48863851] = { mnID = 1527, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
                            minimap[85][50243944] = { mnID = 241, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
                            minimap[85][51203832] = { mnID = 198, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                            minimap[85][50863628] = { mnID = 207, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
                            minimap[85][49203647] = { mnID = 203, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
                        end

                        if self.db.profile.showMinimapCapitalsZeppelins then
                            minimap[85][44496228] = { mnID = 114, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. POSTMASTER_LETTER_WARSONGHOLD } -- Zeppelin from OG to Borean Tundra - Northrend
                            minimap[85][42796534] = { mnID = 88, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " ..  L["Thunder Bluff"]} -- Zeppelin from OG to Thunder Bluff
                            minimap[85][52275315] = { mnID = 50, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. L["Grom'gol, Stranglethorn Vale"] } -- Zeppelin from OG to Stranglethorn
                        end

                    end

                end

            end


            if self.faction == "Alliance" or db.show.EnemyFaction then 

            end

        end

        if self.db.profile.showMinimapCapitalInstances then

            if self.faction == "Horde" or db.show.EnemyFaction then

                if self.db.profile.showMinimapOrgrimmar then 

                    if self.db.profile.showMinimapCapitalsDungeons then
                        minimap[85][51685850] = { id = 226, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire
                        minimap[86][66715154] = { id = 226, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire - Chasm of shadows
                    end

                    if self.db.profile.showMinimapCapitalsPassage and not self.db.profile.show.ClassicIcons then
                        minimap[85][55895097] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire   
                        minimap[85][46116716] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire  
                        minimap[85][41516079] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire    
                    end

                end

            end

        end
    end
end
end