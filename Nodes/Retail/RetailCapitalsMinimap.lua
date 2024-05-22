local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadCapitalsMinimapLocationinfo(self)
local db = ns.Addon.db.profile
local minimap = ns.minimap

--#####################################################################################################
--##########################        function to hide all minimap below         ########################
--#####################################################################################################
if not db.show.HideMapNote then

    --########################################################################################
    --################################         Capitals       ################################
    --########################################################################################
    if db.show.MinimapCapitals then

    --################
    --### Ogrimmar ###
    --################
    if self.db.profile.showMinimapOrgrimmar then

        --#############################
        --### Horde or EnemyFaction ###
        --#############################
            if self.faction == "Horde" or db.show.EnemyFaction then

            --Professions Orgrimmar
                if self.db.profile.showMinimapProfessions then

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

            --Transports Orgrimmar
                if self.db.profile.showMinimapCapitalsTransport then

                    if self.db.profile.showMinimapCapitalsPortals then
                        minimap[85][57278961] = { name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portalroom"] .. "\n" .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portalroom from Orgrimmar
                        minimap[85][50765561] = { mnID = 18, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Ruins of Lordaeron 
                        minimap[85][55988822] = { mnID = 110, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Silvermoon City
                        minimap[85][57098737] = { mnID = 2112, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Valdrakken"] } --  Valdrakken 
                        minimap[85][58308788] = { mnID = 1670, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] } -- Oribos 
                        minimap[85][58858950] = { mnID = 630, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Azsuna"] } -- Azsuna 
                        minimap[85][57479217] = { mnID = 862, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Zuldazar"] } -- Zuldazar  
                        minimap[85][57479225] = { mnID = 371, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Jade Forest"] } -- The Jade Forest 
                        minimap[85][56249171] = { mnID = 125, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- Crystalsong Forest (Old Dalaran) Portalroom 
                        minimap[85][57409153] = { mnID = 111, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true } -- Shattrath 
                        minimap[85][56399252] = { mnID = 74, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true } -- Caverns of Time 
                        minimap[85][55209201] = { mnID = 624, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true } -- Warspear - Ashran 
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
    
            --Instances Orgrimmar
                if self.db.profile.showMinimapCapitalInstances then
    
                    if self.db.profile.showMinimapCapitalsDungeons then
                        --minimap[85][51685850] = { id = 226, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire
                        minimap[86][66715154] = { id = 226, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire - Chasm of shadows
                    end

                    if self.db.profile.showMinimapCapitalsInstancePassage then
                       minimap[85][55895097] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire   
                       minimap[85][46116716] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire  
                       minimap[85][41516079] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire    
                    end

                end

            --Ways Orgrimmar
                if self.db.profile.showMinimapCapitalsWays then
    
                    if self.db.profile.showMinimapCapitalsPaths then
                        minimap[85][74800606] = { dnID = L["Exit"], name = "", mnID = 76, type = "PassageRightL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit 
                        minimap[85][49529373] = { dnID = L["Exit"], name = "", mnID = 1, type = "PassageDownL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit 
                        minimap[85][23636814] = { dnID = L["Exit"], name = "", mnID = 10, type = "PassageLeftL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit 

                    end

                end

            end
        end


    --#####################
    --### Thunder Bluff ###
    --#####################
        if self.db.profile.showMinimapThunderBluff then

        --#############################
        --### Horde or EnemyFaction ###
        --#############################
            if self.faction == "Horde" or db.show.EnemyFaction then

            --Professions Thunder Bluff
                if self.db.profile.showMinimapProfessions then

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

                    if self.db.profile.showBlacksmith then
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

            --Transports Thunder Bluff
                if self.db.profile.showMinimapCapitalsTransport then
  
                    if self.db.profile.showMinimapCapitalsZeppelins then
                        minimap[88][14292570] = { mnID = 85, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to OG
                    end

                end

            --Ways Thunder Bluff
            if self.db.profile.showMinimapCapitalsWays then
    
                if self.db.profile.showMinimapCapitalsPaths then
                    minimap[88][31886595] = { dnID = L["Exit"], name = "", mnID = 7, type = "PassageDownL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit 
                    minimap[88][31456256] = { dnID = L["Exit"], name = "", mnID = 7, type = "PassageDownL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit 
                end

            end

            end

        end


    --##################
    --### Silvermoon ###
    --##################
        if self.db.profile.showMinimapSilvermoon then

        --#############################
        --### Horde or EnemyFaction ###
        --#############################
            if self.faction == "Horde" or db.show.EnemyFaction then

            --Professions Silvermoon
                if self.db.profile.showMinimapProfessions then

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

                    if self.db.profile.showBlacksmith then
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

                    if self.db.profile.showInscription then
                        minimap[110][69322382] = { name = INSCRIPTION, type = "Inscription", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        minimap[110][70012365] = { name = L["Enchanting"], type = "Enchanting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                end

            --Transports Silvermoon
                if self.db.profile.showMinimapCapitalsTransport then

                    if self.db.profile.showMinimapCapitalsPortals then
                        minimap[110][58511859] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Silvermoon 
                        minimap[110][49491509] = { mnID = 18, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Undercity from Silvermoon 
                    end

                end

            --Ways Silvermoon
                if self.db.profile.showMinimapCapitalsWays then
    
                    if self.db.profile.showMinimapCapitalsPaths then
                        minimap[110][72609199] = { dnID = L["Exit"], name = "", mnID = 94, type = "PassageDownL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit 
                    end

                end

            end

        end

    --#################
    --### Undercity ###
    --#################
        if self.db.profile.showMinimapUndercity then

        --#############################
        --### Horde or EnemyFaction ###
        --#############################
            if self.faction == "Horde" or db.show.EnemyFaction then

            --Professions Undercity
                if self.db.profile.showMinimapProfessions then

                    if self.db.profile.showMinimapAlchemy then
                        minimap[90][47757332] = { name = L["Alchemy"], type = "Alchemy", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[90][52947737] = { name = L["Alchemy"], type = "PassageDownL", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Passage"] .. " " .. MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[90][44626639] = { name = L["Alchemy"], type = "PassageDownL", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Passage"] .. " " .. MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showMinimapLeatherworking then
                        minimap[90][70155740] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapEngineer then
                        minimap[90][76107409] = { name = L["Engineer"], type = "Engineer", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapSkinning then
                        minimap[90][70165922] = { name = L["Skinning"], type = "Skinning", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapTailoring then
                        minimap[90][70763072] = { name = L["Tailoring"], type = "Tailoring", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapJewelcrafting then
                        minimap[90][56503630] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        minimap[90][61313061] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapMining then
                        minimap[90][56043744] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapFishing then
                        minimap[90][80693124] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapCooking then
                        minimap[90][62194489] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapArchaeology then
                        minimap[90][75403772] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapHerbalism then
                        minimap[90][54014961] = { name = L["Herbalism"], type = "Herbalism", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        minimap[90][61065801] = { name = INSCRIPTION, type = "Inscription", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        minimap[90][61866139] = { name = L["Enchanting"], type = "Enchanting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            --Transports Undercity
                if self.db.profile.showMinimapCapitalsTransport then

                    if self.db.profile.showMinimapCapitalsPortals then
                        minimap[90][85181711] = { mnID = 100, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Old Undercity to Hellfire
                    end

                end

            --Ways Undercity
                if self.db.profile.showMinimapCapitalsWays then
    
                    if self.db.profile.showMinimapCapitalsPaths then
                        minimap[90][15003101] = { dnID = L["Exit"], name = "", mnID = 18, type = "PassageUpL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit 
                    end

                end

            end

        end


    --#################
    --### Stormwind ###
    --#################
        if self.db.profile.showMinimapStormwind then

        --################################
        --### Alliance or EnemyFaction ###
        --################################
            if self.faction == "Alliance" or db.show.EnemyFaction then

            --Instances Stormwind
                if self.db.profile.showMinimapCapitalInstances then
    
                    if self.db.profile.showMinimapCapitalsDungeons then
                        minimap[84][51196779] = { id = 238, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Stockade
                    end

                end

            --Transports Stormwind
                if self.db.profile.showMinimapCapitalsTransport then

                    if self.db.profile.showMinimapCapitalsPortals then
                        minimap[84][73221836] = { mnID = 245, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
                        minimap[84][75232055] = { mnID = 1527, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
                        minimap[84][75351649] = { mnID = 241, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
                        minimap[84][76211869] = { mnID = 198, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                        minimap[84][73171966] = { mnID = 207, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
                        minimap[84][73301687] = { mnID = 203, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
                        minimap[84][48728798] = { name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = STORMWIND .. " " .. L["Portalroom"] .. "\n" .. " => " .. L["Ashran"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. L["Jade Forest"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. L["Exodar"] .. "\n" ..  " => " .. L["Bel'ameth, Amirdrassil"] } -- Portalroom from Stormwind
                        minimap[84][43748538] = { mnID = 74, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TANARIS18} -- Portal to Caverns of Time 
                        minimap[84][44888577] = { mnID = 111, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Shattrath City"] } -- Portal to Shattrath 
                        minimap[84][43638719] = { mnID = 103, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Exodar"] } -- Portal to Exodar 
                        minimap[84][44388868] = { mnID = 125, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- Portal to Dalaran 
                        minimap[84][45708715] = { mnID = 371, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Jade Forest"] } -- Portal to Jade Forest 
                        minimap[84][48099198] = { mnID = 622, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. WORLD_PVP } -- Portal to Stormshield 
                        minimap[84][46869339] = { mnID = 630, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Azsuna"] } -- Portal to Azsuna 
                        minimap[84][47579495] = { mnID = 1670, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] } -- Portal to Oribos 
                        minimap[84][48849344] = { mnID = 2112, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Valdrakken"] } -- Portal to Valdrakken 
                        minimap[84][48759519] = { mnID = 1161, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Portal to Boralus 
                        minimap[84][43269759] = { mnID = 2239, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Bel'ameth, Amirdrassil"] } -- Portal to Bel'ameth, Amirdrassil
                        minimap[84][23865611] = { mnID = 89, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Darnassus"] } -- Portal to Darnassus 
                    end
   
                    if self.db.profile.showCapitalsShips then
                        minimap[84][21225479] = { mnID = 1161, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Ship from Stormwind to Boralus
                        minimap[84][22035670] = { mnID = 2022, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["The Waking Shores, Dragon Isles"] } -- Ship from Stormwind to Waking Shores
                        minimap[84][18122555] = { mnID = 114, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- Ship from Stormwind to Valiance Keep
                    end

                    if self.db.profile.showMinimapCapitalsTransport then
                        minimap[84][66783455] = { mnID = 87, name = "", type = "Carriage", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = DUNGEON_FLOOR_DEEPRUNTRAM1 .. " => " .. L["Ironforge"] } -- Transport to Ironforge Carriage
                    end

                end

            --Professions Stormwind
                if self.db.profile.showMinimapProfessions then

                    if self.db.profile.showMinimapAlchemy then
                        minimap[84][55668610] = { name = L["Alchemy"], type = "Alchemy", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showMinimapLeatherworking then
                        minimap[84][42596045] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[84][71676301] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapEngineer then
                        minimap[84][62863192] = { name = L["Engineer"], type = "Engineer", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapSkinning then
                        minimap[84][72136222] = { name = L["Skinning"], type = "Skinning", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapTailoring then
                        minimap[84][53098136] = { name = L["Tailoring"], type = "Tailoring", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[84][52011954] = { name = L["Tailoring"], type = "Tailoring", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapJewelcrafting then
                        minimap[84][63486183] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        minimap[84][63663702] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapMining then
                        minimap[84][59523778] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[84][49371220] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapFishing then
                        minimap[84][54806960] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapCooking then
                        minimap[84][77285321] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[84][50657384] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapArchaeology then
                        minimap[84][85812593] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapHerbalism then
                        minimap[84][54298408] = { name = L["Herbalism"], type = "Herbalism", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[84][40846587] = { name = L["Herbalism"], type = "Herbalism", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        minimap[84][49827479] = { name = INSCRIPTION, type = "Inscription", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        minimap[84][52907447] = { name = L["Enchanting"], type = "Enchanting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[84][51211270] = { name = L["Enchanting"], type = "Enchanting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            --Ways Stormwind
                if self.db.profile.showMinimapCapitalsWays then
    
                    if self.db.profile.showMinimapCapitalsPaths then
                        minimap[84][73399051] = { dnID = L["Exit"], name = "", mnID = 37, type = "PassageRightL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit 
                    end

                end

            end

        end


    --#################
    --### Ironforge ###
    --#################
        if self.db.profile.showMinimapIronforge then

        --################################
        --### Alliance or EnemyFaction ###
        --################################
            if self.faction == "Alliance" or db.show.EnemyFaction then

            --Transports Ironforge
                if self.db.profile.showMinimapCapitalsTransport then

                    if self.db.profile.showMinimapCapitalsTransport then
                        minimap[87][72545022] = { mnID = 84, name = "", type = "Carriage", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = DUNGEON_FLOOR_DEEPRUNTRAM1 .. " => " .. STORMWIND } -- Transport to Stormwind Carriage
                    end

                end

            --Professions ironforge
                if self.db.profile.showMinimapProfessions then

                    if self.db.profile.showMinimapAlchemy then
                        minimap[87][66615566] = { name = L["Alchemy"], type = "Alchemy", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showMinimapLeatherworking then
                        minimap[87][40223365] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapEngineer then
                        minimap[87][68444359] = { name = L["Engineer"], type = "Engineer", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapSkinning then
                        minimap[87][39843248] = { name = L["Skinning"], type = "Skinning", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapTailoring then
                        minimap[87][43132939] = { name = L["Tailoring"], type = "Tailoring", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapJewelcrafting then
                        minimap[87][50192602] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        minimap[87][50324338] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        minimap[87][52554139] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapMining then
                        minimap[87][50142649] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapFishing then
                        minimap[87][48090763] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapCooking then
                        minimap[87][60073646] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapArchaeology then
                        minimap[87][75611110] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapHerbalism then
                        minimap[87][55865907] = { name = L["Herbalism"], type = "Herbalism", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        minimap[87][61004516] = { name = INSCRIPTION, type = "Inscription", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        minimap[87][60114533] = { name = L["Enchanting"], type = "Enchanting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            --Ways Ironforge
                if self.db.profile.showMinimapCapitalsWays then
    
                    if self.db.profile.showMinimapCapitalsPaths then
                        minimap[87][14218604] = { dnID = L["Exit"], name = "", mnID = 27, type = "PassageLeftL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit 
                    end

                end

            end

        end

    --#################
    --### Darnassus ###
    --#################
    if self.db.profile.showMinimapDarnassus then

        --##########################
        --### Horde and Alliance ###
        --##########################
        --Transports Darnassus
            if self.db.profile.showMinimapCapitalsTransport then

                if self.db.profile.showMinimapCapitalsPortals then
                    minimap[89][36045019] = { mnID = 57, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Rut'theran"] } -- Portal To Darnassus from Teldrassil
                end

            end

        --################################
        --### Alliance or EnemyFaction ###
        --################################
            if self.faction == "Alliance" or db.show.EnemyFaction then

            --Ways Darnassus
                if self.db.profile.showMinimapCapitalsWays then
    
                    if self.db.profile.showMinimapCapitalsPaths then
                        minimap[89][79984648] = { dnID = L["Exit"], name = "", mnID = 57, type = "PassageRightL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit Exodar
                    end

                end

            --Transports Darnassus
                if self.db.profile.showMinimapCapitalsTransport then

                    if self.db.profile.showMinimapCapitalsPortals then
                        minimap[89][44127840] = { name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portals"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portal To Darnassus from Teldrassil
                    end

                end

            --Professions Darnassus
                if self.db.profile.showMinimapProfessions then

                    if self.db.profile.showMinimapAlchemy then
                        minimap[89][53913853] = { name = L["Alchemy"], type = "Alchemy", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showMinimapLeatherworking then
                        minimap[89][60463683] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapEngineer then
                        minimap[89][49613236] = { name = L["Engineer"], type = "Engineer", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapSkinning then
                        minimap[89][60273733] = { name = L["Skinning"], type = "Skinning", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapTailoring then
                        minimap[89][59783740] = { name = L["Tailoring"], type = "Tailoring", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapJewelcrafting then
                        minimap[89][53993111] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        minimap[89][56985271] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapMining then
                        minimap[89][50083357] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapFishing then
                        minimap[89][49096098] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapCooking then
                        minimap[89][49893663] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapArchaeology then
                        minimap[89][42658334] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapHerbalism then
                        minimap[89][49146878] = { name = L["Herbalism"], type = "Herbalism", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        minimap[89][56793163] = { name = INSCRIPTION, type = "Inscription", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        minimap[89][56413101] = { name = L["Enchanting"], type = "Enchanting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            end

        end

    --##############
    --### Exodar ###
    --##############
    if self.db.profile.showMinimapExodar then

        --################################
        --### Alliance or EnemyFaction ###
        --################################
            if self.faction == "Alliance" or db.show.EnemyFaction then

            --Ways Exodar
                if self.db.profile.showMinimapCapitalsWays then
    
                    if self.db.profile.showMinimapCapitalsPaths then
                        minimap[103][34947443] = { dnID = L["Exit"], name = "", mnID = 97, type = "PassageUpL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit Exodar
                        minimap[103][65223478] = { dnID = L["Exit"], name = "", mnID = 97, type = "PassageRightL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Passage/Exit Exodar
                    end

                end

            --Transports Exodar
                if self.db.profile.showMinimapCapitalsTransport then

                    if self.db.profile.showMinimapCapitalsPortals then
                        minimap[103][48326264] = { mnID = 84, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Exodar to Stormwind
                    end

                end

            --Professions Exodar
                if self.db.profile.showMinimapProfessions then

                    if self.db.profile.showMinimapAlchemy then
                        minimap[103][27766078] = { name = L["Alchemy"], type = "Alchemy", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showMinimapLeatherworking then
                        minimap[103][67467457] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapEngineer then
                        minimap[103][54139288] = { name = L["Engineer"], type = "Engineer", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapSkinning then
                        minimap[103][65657456] = { name = L["Skinning"], type = "Skinning", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapTailoring then
                        minimap[103][64386894] = { name = L["Tailoring"], type = "Tailoring", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapJewelcrafting then
                        minimap[103][44882424] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        minimap[103][60609000] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapMining then
                        minimap[103][59698781] = { name = L["Mining"], type = "Mining", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapFishing then
                        minimap[103][31931462] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapCooking then
                        minimap[103][55772672] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapArchaeology then
                        minimap[103][33316569] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMinimapHerbalism then
                        minimap[103][27456281] = { name = L["Herbalism"], type = "Herbalism", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        minimap[103][39833860] = { name = INSCRIPTION, type = "Inscription", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        minimap[103][40693881] = { name = L["Enchanting"], type = "Enchanting", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            end

        end

    end
end
end