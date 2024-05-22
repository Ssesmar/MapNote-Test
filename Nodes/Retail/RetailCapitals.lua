local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadCapitalsLocationinfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

--#####################################################################################################
--##########################        function to hide all nodes below         ##########################
--#####################################################################################################
if not db.show.HideMapNote then


    --########################################################################################
    --################################         Capitals       ################################
    --########################################################################################
    if db.show.Capitals then


    --################
    --### Ogrimmar ###
    --################
        if self.db.profile.showOrgrimmar then

        --#############################
        --### Horde or EnemyFaction ###
        --#############################
            if self.faction == "Horde" or db.show.EnemyFaction then

            --Professions Orgrimmar
                if self.db.profile.showProfessions then

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

            --Transports Orgrimmar
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
    
            --Instances Orgrimmar
                if self.db.profile.showCapitalsInstances then
    
                    if self.db.profile.showCapitalsDungeons then
                        --nodes[85][51685850] = { id = 226, type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ragefire
                        nodes[86][66715154] = { id = 226, type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ragefire - Chasm of shadows
                    end

                    if self.db.profile.showCapitalsInstancePassage then
                       nodes[85][55895097] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ragefire   
                       nodes[85][46116716] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ragefire  
                       nodes[85][41516079] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ragefire    
                    end

                end

            --Ways Orgrimmar
                if self.db.profile.showCapitalsWays then
    
                    if self.db.profile.showCapitalsPaths then
                        nodes[85][74800606] = { dnID = L["Exit"], name = "", mnID = 76, type = "PassageRightL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit 
                        nodes[85][49529373] = { dnID = L["Exit"], name = "", mnID = 1, type = "PassageDownL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit 
                        nodes[85][23636814] = { dnID = L["Exit"], name = "", mnID = 10, type = "PassageLeftL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit 

                    end

                end

            end
        end


    --#####################
    --### Thunder Bluff ###
    --#####################
        if self.db.profile.showThunderBluff then

        --#############################
        --### Horde or EnemyFaction ###
        --#############################
            if self.faction == "Horde" or db.show.EnemyFaction then

            --Professions Thunder Bluff
                if self.db.profile.showProfessions then

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

            --Transports Thunder Bluff
                if self.db.profile.showCapitalsTransports then
  
                    if self.db.profile.showCapitalsZeppelins then
                        nodes[88][14292570] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to OG
                    end

                end

            --Ways Thunder Bluff
                if self.db.profile.showCapitalsWays then
    
                    if self.db.profile.showCapitalsPaths then
                        nodes[88][31886595] = { dnID = L["Exit"], name = "", mnID = 7, type = "PassageDownL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit 
                        nodes[88][31456256] = { dnID = L["Exit"], name = "", mnID = 7, type = "PassageDownL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit 
                    end

                end

            end

        end


    --##################
    --### Silvermoon ###
    --##################
        if self.db.profile.showSilvermoon then

        --#############################
        --### Horde or EnemyFaction ###
        --#############################
            if self.faction == "Horde" or db.show.EnemyFaction then

            --Professions Silvermoon
                if self.db.profile.showProfessions then

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

            --Transports Silvermoon
                if self.db.profile.showCapitalsTransports then

                    if self.db.profile.showCapitalsPortals then
                        nodes[110][58511859] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Silvermoon 
                        nodes[110][49491509] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Undercity from Silvermoon 
                    end

                end

            --Ways Silvermoon
                if self.db.profile.showCapitalsWays then
    
                    if self.db.profile.showCapitalsPaths then
                        nodes[110][72609199] = { dnID = L["Exit"], name = "", mnID = 94, type = "PassageDownL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit 
                    end

                end

            end

        end

    --#################
    --### Undercity ###
    --#################
        if self.db.profile.showUndercity then

        --#############################
        --### Horde or EnemyFaction ###
        --#############################
            if self.faction == "Horde" or db.show.EnemyFaction then

            --Professions Undercity
                if self.db.profile.showProfessions then

                    if self.db.profile.showAlchemy then
                        nodes[90][47757332] = { name = L["Alchemy"], type = "Alchemy", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[90][52947737] = { name = L["Alchemy"], type = "PassageDownL", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Passage"] .. " " .. MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[90][44626639] = { name = L["Alchemy"], type = "PassageDownL", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Passage"] .. " " .. MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showLeatherworking then
                        nodes[90][70155740] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEngineer then
                        nodes[90][76107409] = { name = L["Engineer"], type = "Engineer", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showSkinning then
                        nodes[90][70165922] = { name = L["Skinning"], type = "Skinning", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showTailoring then
                        nodes[90][70763072] = { name = L["Tailoring"], type = "Tailoring", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showJewelcrafting then
                        nodes[90][56503630] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        nodes[90][61313061] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMining then
                        nodes[90][56043744] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showFishing then
                        nodes[90][80693124] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showCooking then
                        nodes[90][62194489] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showArchaeology then
                        nodes[90][75403772] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showHerbalism then
                        nodes[90][54014961] = { name = L["Herbalism"], type = "Herbalism", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        nodes[90][61065801] = { name = INSCRIPTION, type = "Inscription", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        nodes[90][61866139] = { name = L["Enchanting"], type = "Enchanting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            --Transports Undercity
                if self.db.profile.showCapitalsTransports then

                    if self.db.profile.showCapitalsPortals then
                        nodes[90][85181711] = { mnID = 100, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Old Undercity to Hellfire
                    end

                end

            --Ways Undercity
                if self.db.profile.showCapitalsWays then
    
                    if self.db.profile.showCapitalsPaths then
                        nodes[90][15003101] = { dnID = L["Exit"], name = "", mnID = 18, type = "PassageUpL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit 
                    end

                end

            end

        end


    --#################
    --### Stormwind ###
    --#################
        if self.db.profile.showStormwind then

        --################################
        --### Alliance or EnemyFaction ###
        --################################
            if self.faction == "Alliance" or db.show.EnemyFaction then

            --Instances Stormwind
                if self.db.profile.showCapitalsInstances then
    
                    if self.db.profile.showCapitalsDungeons then
                        nodes[84][51196779] = { id = 238, type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- The Stockade
                    end

                end

            --Transports Stormwind
                if self.db.profile.showCapitalsTransports then

                    if self.db.profile.showCapitalsPortals then
                        nodes[84][73221836] = { mnID = 245, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
                        nodes[84][75232055] = { mnID = 1527, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
                        nodes[84][75351649] = { mnID = 241, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
                        nodes[84][76211869] = { mnID = 198, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                        nodes[84][73171966] = { mnID = 207, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
                        nodes[84][73301687] = { mnID = 203, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
                        nodes[84][48728798] = { name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = STORMWIND .. " " .. L["Portalroom"] .. "\n" .. " => " .. L["Ashran"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. L["Jade Forest"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. L["Exodar"] .. "\n" ..  " => " .. L["Bel'ameth, Amirdrassil"] } -- Portalroom from Stormwind
                        nodes[84][43748538] = { mnID = 74, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TANARIS18} -- Portal to Caverns of Time 
                        nodes[84][44888577] = { mnID = 111, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Shattrath City"] } -- Portal to Shattrath 
                        nodes[84][43638719] = { mnID = 103, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Exodar"] } -- Portal to Exodar 
                        nodes[84][44388868] = { mnID = 125, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- Portal to Dalaran 
                        nodes[84][45708715] = { mnID = 371, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Jade Forest"] } -- Portal to Jade Forest 
                        nodes[84][48099198] = { mnID = 622, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. WORLD_PVP } -- Portal to Stormshield 
                        nodes[84][46869339] = { mnID = 630, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Azsuna"] } -- Portal to Azsuna 
                        nodes[84][47579495] = { mnID = 1670, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] } -- Portal to Oribos 
                        nodes[84][48849344] = { mnID = 2112, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Valdrakken"] } -- Portal to Valdrakken 
                        nodes[84][48759519] = { mnID = 1161, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Portal to Boralus 
                        nodes[84][43269759] = { mnID = 2239, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Bel'ameth, Amirdrassil"] } -- Portal to Bel'ameth, Amirdrassil
                        nodes[84][23865611] = { mnID = 89, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Darnassus"] } -- Portal to Darnassus 
                    end
   
                    if self.db.profile.showCapitalsShips then
                        nodes[84][21225479] = { mnID = 1161, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Ship from Stormwind to Boralus
                        nodes[84][22035670] = { mnID = 2022, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. L["The Waking Shores, Dragon Isles"] } -- Ship from Stormwind to Waking Shores
                        nodes[84][18122555] = { mnID = 114, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- Ship from Stormwind to Valiance Keep
                    end

                    if self.db.profile.showCapitalsTransport then
                        nodes[84][66783455] = { mnID = 87, name = "", type = "Carriage", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = DUNGEON_FLOOR_DEEPRUNTRAM1 .. " => " .. L["Ironforge"] } -- Transport to Ironforge Carriage
                    end

                end

            --Professions Stormwind
                if self.db.profile.showProfessions then

                    if self.db.profile.showAlchemy then
                        nodes[84][55668610] = { name = L["Alchemy"], type = "Alchemy", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showLeatherworking then
                        nodes[84][42596045] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[84][71676301] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEngineer then
                        nodes[84][62863192] = { name = L["Engineer"], type = "Engineer", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showSkinning then
                        nodes[84][72136222] = { name = L["Skinning"], type = "Skinning", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showTailoring then
                        nodes[84][53098136] = { name = L["Tailoring"], type = "Tailoring", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[84][52011954] = { name = L["Tailoring"], type = "Tailoring", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showJewelcrafting then
                        nodes[84][63486183] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        nodes[84][63663702] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMining then
                        nodes[84][59523778] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[84][49371220] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showFishing then
                        nodes[84][54806960] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showCooking then
                        nodes[84][77285321] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[84][50657384] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showArchaeology then
                        nodes[84][85812593] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showHerbalism then
                        nodes[84][54298408] = { name = L["Herbalism"], type = "Herbalism", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[84][40846587] = { name = L["Herbalism"], type = "Herbalism", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        nodes[84][49827479] = { name = INSCRIPTION, type = "Inscription", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        nodes[84][52907447] = { name = L["Enchanting"], type = "Enchanting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[84][51211270] = { name = L["Enchanting"], type = "Enchanting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            --Ways Stormwind
                if self.db.profile.showCapitalsWays then
    
                    if self.db.profile.showCapitalsPaths then
                        nodes[84][73399051] = { dnID = L["Exit"], name = "", mnID = 37, type = "PassageRightL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit 
                    end

                end

            end

        end


    --#################
    --### Ironforge ###
    --#################
        if self.db.profile.showIronforge then

        --################################
        --### Alliance or EnemyFaction ###
        --################################
            if self.faction == "Alliance" or db.show.EnemyFaction then

            --Transports Ironforge
                if self.db.profile.showCapitalsTransports then

                    if self.db.profile.showCapitalsTransport then
                        nodes[87][72545022] = { mnID = 84, name = "", type = "Carriage", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = DUNGEON_FLOOR_DEEPRUNTRAM1 .. " => " .. STORMWIND } -- Transport to Stormwind Carriage
                    end

                end

            --Professions ironforge
                if self.db.profile.showProfessions then

                    if self.db.profile.showAlchemy then
                        nodes[87][66615566] = { name = L["Alchemy"], type = "Alchemy", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showLeatherworking then
                        nodes[87][40223365] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEngineer then
                        nodes[87][68444359] = { name = L["Engineer"], type = "Engineer", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showSkinning then
                        nodes[87][39843248] = { name = L["Skinning"], type = "Skinning", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showTailoring then
                        nodes[87][43132939] = { name = L["Tailoring"], type = "Tailoring", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showJewelcrafting then
                        nodes[87][50192602] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        nodes[87][50324338] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                        nodes[87][52554139] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMining then
                        nodes[87][50142649] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showFishing then
                        nodes[87][48090763] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showCooking then
                        nodes[87][60073646] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showArchaeology then
                        nodes[87][75611110] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showHerbalism then
                        nodes[87][55865907] = { name = L["Herbalism"], type = "Herbalism", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        nodes[87][61004516] = { name = INSCRIPTION, type = "Inscription", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        nodes[87][60114533] = { name = L["Enchanting"], type = "Enchanting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            --Ways Ironforge
                if self.db.profile.showCapitalsWays then
    
                    if self.db.profile.showCapitalsPaths then
                        nodes[87][14218604] = { dnID = L["Exit"], name = "", mnID = 27, type = "PassageLeftL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit 
                    end

                end

            end

        end

    --#################
    --### Darnassus ###
    --#################
    if self.db.profile.showDarnassus then

        --##########################
        --### Horde and Alliance ###
        --##########################
        --Transports Darnassus
            if self.db.profile.showCapitalsTransports then

                if self.db.profile.showCapitalsPortals then
                    nodes[89][36045019] = { mnID = 57, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Rut'theran"] } -- Portal To Darnassus from Teldrassil
                end

            end

        --################################
        --### Alliance or EnemyFaction ###
        --################################
            if self.faction == "Alliance" or db.show.EnemyFaction then

            --Ways Darnassus
                if self.db.profile.showCapitalsWays then
    
                    if self.db.profile.showCapitalsPaths then
                        nodes[89][79984648] = { dnID = L["Exit"], name = "", mnID = 57, type = "PassageRightL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit Exodar
                    end

                end

            --Transports Darnassus
                if self.db.profile.showCapitalsTransports then

                    if self.db.profile.showCapitalsPortals then
                        nodes[89][44127840] = { name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portals"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portal To Darnassus from Teldrassil
                    end

                end

            --Professions Darnassus
                if self.db.profile.showProfessions then

                    if self.db.profile.showAlchemy then
                        nodes[89][53913853] = { name = L["Alchemy"], type = "Alchemy", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showLeatherworking then
                        nodes[89][60463683] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEngineer then
                        nodes[89][49613236] = { name = L["Engineer"], type = "Engineer", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showSkinning then
                        nodes[89][60273733] = { name = L["Skinning"], type = "Skinning", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showTailoring then
                        nodes[89][59783740] = { name = L["Tailoring"], type = "Tailoring", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showJewelcrafting then
                        nodes[89][53993111] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        nodes[89][56985271] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMining then
                        nodes[89][50083357] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showFishing then
                        nodes[89][49096098] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showCooking then
                        nodes[89][49893663] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showArchaeology then
                        nodes[89][42658334] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showHerbalism then
                        nodes[89][49146878] = { name = L["Herbalism"], type = "Herbalism", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        nodes[89][56793163] = { name = INSCRIPTION, type = "Inscription", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        nodes[89][56413101] = { name = L["Enchanting"], type = "Enchanting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            end

        end

    --##############
    --### Exodar ###
    --##############
    if self.db.profile.showExodar then

        --################################
        --### Alliance or EnemyFaction ###
        --################################
            if self.faction == "Alliance" or db.show.EnemyFaction then

            --Ways Exodar
                if self.db.profile.showCapitalsWays then
    
                    if self.db.profile.showCapitalsPaths then
                        nodes[103][34947443] = { dnID = L["Exit"], name = "", mnID = 97, type = "PassageUpL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit Exodar
                        nodes[103][65223478] = { dnID = L["Exit"], name = "", mnID = 97, type = "PassageRightL", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Passage/Exit Exodar
                    end

                end

            --Transports Exodar
                if self.db.profile.showCapitalsTransports then

                    if self.db.profile.showCapitalsPortals then
                        nodes[103][48326264] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Exodar to Stormwind
                    end

                end

            --Professions Exodar
                if self.db.profile.showProfessions then

                    if self.db.profile.showAlchemy then
                        nodes[103][27766078] = { name = L["Alchemy"], type = "Alchemy", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                
                    if self.db.profile.showLeatherworking then
                        nodes[103][67467457] = { name = L["Leatherworking"], type = "Leatherworking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEngineer then
                        nodes[103][54139288] = { name = L["Engineer"], type = "Engineer", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showSkinning then
                        nodes[103][65657456] = { name = L["Skinning"], type = "Skinning", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showTailoring then
                        nodes[103][64386894] = { name = L["Tailoring"], type = "Tailoring", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showJewelcrafting then
                        nodes[103][44882424] = { name = L["Jewelcrafting"], type = "Jewelcrafting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showBlacksmith then
                        nodes[103][60609000] = { name = L["Blacksmith"], type = "Blacksmith", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showMining then
                        nodes[103][59698781] = { name = L["Mining"], type = "Mining", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showFishing then
                        nodes[103][31931462] = { name = PROFESSIONS_FISHING, type = "Fishing", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showCooking then
                        nodes[103][55772672] = { name = PROFESSIONS_COOKING, type = "Cooking", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showArchaeology then
                        nodes[103][33316569] = { name = PROFESSIONS_ARCHAEOLOGY, type = "Archaeology", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showHerbalism then
                        nodes[103][27456281] = { name = L["Herbalism"], type = "Herbalism", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showInscription then
                        nodes[103][39833860] = { name = INSCRIPTION, type = "Inscription", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end

                    if self.db.profile.showEnchanting then
                        nodes[103][40693881] = { name = L["Enchanting"], type = "Enchanting", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = MINIMAP_TRACKING_TRAINER_PROFESSION }
                    end
                end

            end

        end

    end
end
end