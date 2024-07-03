local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadGeneralMiniMapLocationinfo(self)
local db = ns.Addon.db.profile
local minimap = ns.minimap

--#####################################################################################################
--##########################        function to hide all minimap below         ##########################
--#####################################################################################################
if not db.activate.HideMapNote then


    --#####################################################################################################
    --################################         Zone Map        ################################
    --#####################################################################################################

    if db.activate.MiniMap then

        if db.activate.MiniMapGeneral then

        --Kalimdor
        if self.db.profile.showMiniMapKalimdor then

            if self.db.profile.showMiniMapPvPVendor then
                minimap[71][51602800] = { name = "", dnID = TRANSMOG_SET_PVP .. " " .. MERCHANT .. "\n" .. WORLD_QUEST_REWARD_FILTERS_EQUIPMENT .. "\n" .. AUCTION_CATEGORY_WEAPONS, type = "PvPVendor", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapPaths then
                minimap[77][65780575] = { name = L["Path"], mnID = 83, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only on minimap
                minimap[77][64570376] = { name = L["Path"], mnID = 80, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only on minimap
                minimap[77][63790602] = { name = L["Path"], mnID = 77, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only on minimap
                minimap[1][39677159] = { name = L["Path"], mnID = 461, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1][40177237] = { name = L["Path"], mnID = 461, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1][43607532] = { dnID = L["Path"], name = NPE_JUMP .." & " .. NPE_JUMP .. " & " .. NPE_JUMP .. " & " .. NPE_JUMP, mnID = 10, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1][42957516] = { name = L["Path"], mnID = 10, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1][42147489] = { name = L["Path"], mnID = 10, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1][41397470] = { name = L["Path"], mnID = 10, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1][41067531] = { name = L["Path"], mnID = 10, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[10][75396944] = { name = L["Path"], mnID = 10, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[10][74976938] = { name = L["Path"], mnID = 10, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap

                minimap[460][55028792] = { name = "", dnID = L["Exit"], mnID = 57, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[57][60384385] = { name = "", dnID = L["Entrance"], mnID = 460, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[106][65229286] = { name = "", dnID = L["Path"], mnID = 97, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[97][41990481] = { name = "", dnID = L["Path"], mnID = 106, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[97][62375371] = { name = "", dnID = L["Entrance"], mnID = 468, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[468][15155338] = { name = "", dnID = L["Path"], mnID = 97, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[97][34214552] = { name = "", dnID = L["Entrance"], mnID = 103, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[97][26734541] = { name = "", dnID = L["Entrance"], mnID = 103, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[57][39894708] = { name = "", dnID = L["Entrance"], mnID = 89, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[80][35207168] = { name = "", dnID = L["Path"], mnID = 77, mnID2 = 83, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[83][21134646] = { name = "", dnID = L["Path"], mnID = 80, mnID2 = 77, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[77][64321012] = { name = "", dnID = L["Path"], mnID = 83, mnID2 = 80, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][86573831] = { name = "", dnID = L["Path"], mnID = 83, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[83][58049127] = { name = "", dnID = L["Path"], mnID = 198, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[77][54559364] = { name = "", dnID = L["Path"], mnID = 63, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[77][33054978] = { name = "", dnID = L["Path"], mnID = 62, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[62][44989270] = { name = "", dnID = L["Path"], mnID = 63, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[62][39019357] = { name = "", dnID = L["Path"], mnID = 63, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[63][24410740] = { name = "", dnID = L["Path"], mnID = 62, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[63][55022364] = { name = "", dnID = L["Path"], mnID = 77, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[63][94114695] = { name = "", dnID = L["Path"], mnID = 76, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[63][68689192] = { name = "", dnID = L["Path"], mnID = 10, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[63][36667685] = { name = "", dnID = L["Path"], mnID = 65, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[76][04486814] = { name = "", dnID = L["Path"], mnID = 63, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[76][24268352] = { name = "", dnID = L["Entrance"], mnID = 85, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[65][72763753] = { name = "", dnID = L["Path"], mnID = 63, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[65][36628429] = { name = "", dnID = L["Path"], mnID = 66, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[65][78419263] = { name = "", dnID = L["Path"], mnID = 199, mnID2 = 10, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[461][70096602] = { name = "", dnID = L["Exit"], mnID = 1, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1][45601164] = { name = "", dnID = L["Entrance"], mnID = 85, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1][34944229] = { name = "", dnID = L["Path"], mnID = 10, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1][48146741] = { name = "", dnID = L["Path"], mnID = 461, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1][38617209] = { name = "", dnID = L["Path"], mnID = 461, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[461][33378129] = { name = "", dnID = L["Path"], mnID = 461, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[461][47359195] = { name = "", dnID = L["Path"], mnID = 10, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[10][68243905] = { name = "", dnID = L["Path"], mnID = 1, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[10][70260439] = { name = "", dnID = L["Entrance"], mnID = 85, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[10][42161314] = { name = "", dnID = L["Path"], mnID = 63, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[10][45767732] = { name = "", dnID = L["Path"], mnID = 199, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[10][28894693] = { name = "", dnID = L["Path"], mnID = 65, mnID2 = 199, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[10][70509180] = { name = "", dnID = L["Path"], mnID = 199, mnID2 = 70, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[10][73386635] = { name = "", dnID = L["Path"], mnID = 461, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[74][52672906] = { name = "", dnID = L["Path"], mnID = 71, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[74][33997410] = { name = "", dnID = L["Path"], mnID = 75, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[75][75434726] = { name = "", dnID = L["Path"], mnID = 74, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[66][53300394] = { name = "", dnID = L["Path"], mnID = 65, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[66][41679388] = { name = "", dnID = L["Path"], mnID = 69, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][37921619] = { name = "", dnID = L["Path"], mnID = 65, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][52953336] = { name = "", dnID = L["Path"], mnID = 10, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][53307850] = { name = "", dnID = L["Path"], mnID = 70, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][43569741] = { name = "", dnID = L["Path"], mnID = 64, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][40015464] = { name = "", dnID = L["Path"], mnID = 7, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][39684803] = { name = "", dnID = L["Path"], mnID = 7, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][70614786] = { name = "", dnID = L["Path"], mnID = 70, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][68853911] = { name = "", dnID = L["Path"], mnID = 10, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[7][68925486] = { name = "", dnID = L["Path"], mnID = 199, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[7][69586410] = { name = "", dnID = L["Path"], mnID = 199, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[7][36973219] = { name = "", dnID = L["Entrance"], mnID = 88, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[7][42992151] = { name = "", dnID = L["Entrance"], mnID = 88, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[7][44727145] = { name = "", dnID = L["Entrance"], mnID = 462, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[462][26841797] = { name = "", dnID = L["Exit"], mnID = 7, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[70][25364695] = { name = "", dnID = L["Path"], mnID = 199, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[70][46869122] = { name = "", dnID = L["Path"], mnID = 64, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[70][53300865] = { name = "", dnID = L["Path"], mnID = 199, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[69][45600504] = { name = "", dnID = L["Path"], mnID = 66, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[69][85944184] = { name = "", dnID = L["Path"], mnID = 64, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[64][07931140] = { name = "", dnID = L["Path"], mnID = 69, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[64][31952135] = { name = "", dnID = L["Path"], mnID = 199, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[64][66173589] = { name = "", dnID = L["Path"], mnID = 70, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[64][74649552] = { name = "", dnID = L["Path"], mnID = 71, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[71][25366609] = { name = "", dnID = L["Path"], mnID = 1527, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[71][50912411] = { name = "", dnID = L["Path"], mnID = 64, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[71][28085682] = { name = "", dnID = L["Path"], mnID = 78, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[78][70728752] = { name = "", dnID = L["Path"], mnID = 71, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[78][29281689] = { name = "", dnID = L["Path"], mnID = 81, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[81][87672011] = { name = "", dnID = L["Path"], mnID = 78, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1527][68612240] = { name = "", dnID = L["Path"], mnID = 71, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[11][22228580] = { name = "", dnID = L["Exit"], mnID = 10, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapStablemaster then
                minimap[66][57004960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[77][44402860] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[83][58605020] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[71][52602740] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[81][53203460] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER .. "\n" .. "\n" .. L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"], type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][63202300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][19403620] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][41804500] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1527][54603380] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1527][27000760] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[1][52004180] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[10][56403980] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[10][49005760] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[10][62401680] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[10][67607420] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[7][46985968] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[76][56805000] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[63][73206060] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[63][50206580] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[63][38604240] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[63][12603380] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[65][66206400] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[65][50806300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[66][24806880] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[69][41401440] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[69][51604800] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[69][74604320] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[207][51205020] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[57][56205200] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[97][49004980] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[106][55005980] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[63][36405040] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[65][58605660] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[65][39803220] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[65][31806160] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[66][65600780] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[69][51001800] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[69][46804560] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[70][65805440] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[207][47405160] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end

            if self.db.profile.showMiniMapAuctioneer then
                minimap[71][51803040] = { name = "", dnID = MINIMAP_TRACKING_AUCTIONEER .. " - " .. FACTION_NEUTRAL, type = "Auctioneer", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[83][59804920] = { name = "", dnID = MINIMAP_TRACKING_AUCTIONEER .. " - " .. FACTION_NEUTRAL, type = "Auctioneer", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapBank then
                minimap[71][52202960] = { name = "", dnID = BANK .. " - " .. FACTION_NEUTRAL, type = "Bank", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[83][59804900] = { name = "", dnID = BANK .. " - " .. FACTION_NEUTRAL, type = "Bank", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[10][68407120] = { name = "", dnID = BANK .. " - " .. FACTION_NEUTRAL, type = "Bank", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Allianz" or db.activate.MiniMapEnemyFaction then
                    minimap[70][67804820] = { name = "", dnID = BANK .. " - " .. FACTION_ALLIANCE, type = "Bank", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end
            end

            if self.db.profile.showMiniMapMailbox then
                minimap[83][59805090] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][63502360] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][41904450] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][18703740] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[63][73606090] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[63][50206600] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[63][36505020] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[63][38704250] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[63][12703400] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[76][66002040] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[76][43002470] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[76][56805030] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[76][50307420] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[76][29006590] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[76][26507890] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1527][24706470] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1527][54503710] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1527][55803430] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1527][55003390] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[66][65500690] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[66][57204980] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[66][24806880] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1][45401220] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1][51904210] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1][56107450] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[463][59506350] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[80][51604050] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[80][55903140] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[65][66306410] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[65][58905590] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[65][50806300] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[65][31806000] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[70][65904530] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[70][42007330] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[70][36603210] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[10][49605880] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[10][67507420] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[460][51506660] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][40806950] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][39302010] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[468][53003650] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[462][26802750] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[69][74904400] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[69][57005400] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[64][45905100] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[64][77707360] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[461][42006670] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[97][48905000] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[106][55105910] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[62][50701930] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX .. "\n" .. "\n" .. L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"], type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[7][47205970] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[71][52502730] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[57][55805100] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapInnkeeper then
                minimap[70][41807400] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1527][54603280] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1527][26600720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[66][56805000] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[77][44802900] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[63][44006180] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][63002400] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][18603720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][42604560] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][18603720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[64][76607480] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[78][55206220] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[71][52602700] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[10][67207460] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[83][59805120] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[70][36803220] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[63][38604220] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[63][50406700] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[63][13003400] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[76][57005040] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[69][41401560] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[69][51804760] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[10][56204000] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[10][62401660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }    
                    minimap[64][46005120] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[63][74006060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[1][51604160] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[66][24006820] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[69][74804500] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[65][50406380] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[10][49605800] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[7][46806040] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[97][48404920] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[106][55605960] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[63][36804940] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[77][61802660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER .. "\n" .. "\n" .. L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"], type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true } -- Phase 12608
                    minimap[69][46004520] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[69][51001780] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[63][37004920] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[70][66404540] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[66][66200660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[57][55405220] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[62][50951853] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER .. "\n" .. "\n" .. L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"], type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true } -- Phase 12608
                end

            end

        end

        --Eastern Kingdom
        if self.db.profile.showMiniMapEasternKingdom then

            if self.db.profile.showMiniMapPaths then
                minimap[56][50568257] = { name = "", dnID = L["Passage"], type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[56][50157148] = { name = "", dnID = L["Passage"], type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[56][55648468] = { name = "", dnID = L["Passage"], type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[48][16345836] = { name = "", dnID = L["Passage"], type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[48][12815837] = { name = "", dnID = L["Passage"], type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap   
                minimap[48][19241722] = { name = "", dnID = L["Passage"], mnID = 27, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                
                minimap[19][25047080] = { name = "", dnID = L["Path"], mnID = 18, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[94][56535032] = { name = "", dnID = L["Entrance"], mnID = 110, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[94][48449155] = { name = "", dnID = L["Path"], mnID = 95, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[94][39643054] = { name = "", dnID = L["Path"], mnID = 467, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[467][70888297] = { name = "", dnID = L["Path"], mnID = 94, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[95][48590888] = { name = "", dnID = L["Path"], mnID = 94, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[95][47808870] = { name = "", dnID = L["Path"], mnID = 23, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[23][54870622] = { name = "", dnID = L["Path"], mnID = 95, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[23][06526555] = { name = "", dnID = L["Path"], mnID = 22, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[23][93799027] = { name = "", dnID = L["Path"] .. " (" .. TIME_LEFT_VERY_LONG .. ")", mnID = 26, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[22][75745008] = { name = "", dnID = L["Path"], mnID = 23, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[22][22855825] = { name = "", dnID = L["Path"] .. "\n" .. KEY_BUTTON1 .. " • " .. L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_DAMAGE_MASTER .. "\n" .. KEY_BUTTON2 .. " • " ..L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_CAST_SUCCESS_MASTER, mnID = 18, mnID2 = 2070, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[22][43569122] = { name = "", dnID = L["Path"], mnID = 25, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[22][65688550] = { name = "", dnID = L["Path"], mnID = 26, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[25][68371942] = { name = "", dnID = L["Path"], mnID = 22, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[25][28916364] = { name = "", dnID = L["Path"], mnID = 21, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[25][69937080] = { name = "", dnID = L["Path"], mnID = 14, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[25][25723886] = { name = "", dnID = L["Path"], mnID = 21, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[25][29757598] = { name = "", dnID = L["Path"], mnID = 217, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[25][72135385] = { name = "", dnID = L["Path"], mnID = 26, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[26][09815510] = { name = "", dnID = L["Path"], mnID = 25, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[26][26017011] = { name = "", dnID = L["Path"], mnID = 14, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[26][24153021] = { name = "", dnID = L["Path"], mnID = 22, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[26][81564901] = { name = "", dnID = L["Path"] .. " (" .. TIME_LEFT_VERY_LONG .. ")", mnID = 23, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[25][41950592] = { name = "", dnID = L["Path"] .. "\n" .. KEY_BUTTON1 .. " • " .. L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_DAMAGE_MASTER .. "\n" .. KEY_BUTTON2 .. " • " ..L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_CAST_SUCCESS_MASTER, mnID = 18, mnID2 = 2070, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[21][68057999] = { name = "", dnID = L["Path"], mnID = 25, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[21][45458540] = { name = "", dnID = L["Path"], mnID = 217, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[21][65540646] = { name = "", dnID = L["Path"] .. "\n" .. KEY_BUTTON1 .. " • " .. L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_DAMAGE_MASTER .. "\n" .. KEY_BUTTON2 .. " • " .. L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_CAST_SUCCESS_MASTER, mnID = 18, mnID2 = 2070, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[21][66055380] = { name = "", dnID = L["Path"], mnID = 25, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[18][87597110] = { name = "", dnID = L["Path"], mnID = 22, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[18][47498234] = { name = "", dnID = L["Path"], mnID = 21, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[18][37805624] = { name = "", dnID = L["Path"], mnID = 465, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[18][67066838] = { name = "", dnID = L["Path"], mnID = 21, mnID2 = 25, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[18][62206431] = { name = "", dnID = L["Entrance"], mnID = 90, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[18][51107073] = { name = "", dnID = L["Entrance"], mnID = 90, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[465][75431917] = { name = "", dnID = L["Path"], mnID = 18, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2070][87597110] = { name = "", dnID = L["Path"], mnID = 22, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2070][47498234] = { name = "", dnID = L["Path"], mnID = 21, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2070][37805624] = { name = "", dnID = L["Path"], mnID = 465, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2070][67066838] = { name = "", dnID = L["Path"], mnID = 21, mnID2 = 25, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[217][59891336] = { name = "", dnID = L["Path"], mnID = 21, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[217][80463751] = { name = "", dnID = L["Path"], mnID = 25, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[14][39619159] = { name = "", dnID = L["Path"], mnID = 56, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[14][13553039] = { name = "", dnID = L["Path"], mnID = 25, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[14][18512139] = { name = "", dnID = L["Path"], mnID = 25, mnID2 = 26, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[14][36263114] = { name = "", dnID = L["Path"], mnID = 26, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[56][51131207] = { name = "", dnID = L["Path"], mnID = 14, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[56][82184844] = { name = "", dnID = L["Path"], mnID = 241, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[56][53957032] = { name = "", dnID = L["Path"], mnID = 48, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[241][24543727] = { name = "", dnID = L["Path"], mnID = 56, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[48][25561067] = { name = "", dnID = L["Path"], mnID = 56, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[48][18468426] = { name = "", dnID = L["Path"], mnID = 32, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[27][91572938] = { name = "", dnID = L["Path"], mnID = 48, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[27][89515184] = { name = "", dnID = L["Path"], mnID = 48, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[27][58923378] = { name = "", dnID = L["Entrance"], mnID = 87, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[27][42696414] = { name = "", dnID = L["Path"], mnID = 427, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[27][49564541] = { name = "", dnID = L["Path"], mnID = 469, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[30][77948422] = { name = "", dnID = L["Exit"], mnID = 469, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[28][61301373] = { name = "", dnID = L["Passage"], mnID = 27, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[28][37609129] = { name = "", dnID = L["Passage"], mnID = 427, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[427][88414114] = { name = "", dnID = L["Path"], mnID = 27, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[469][78885672] = { name = "", dnID = L["Path"], mnID = 27, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[425][23947810] = { name = "", dnID = L["Path"], mnID = 37, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[48][19606279] = { name = "", dnID = L["Path"], mnID = 27, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[48][47527346] = { name = "", dnID = L["Path"], mnID = 15, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[15][45820582] = { name = "", dnID = L["Path"], mnID = 48, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[15][08655196] = { name = "", dnID = L["Path"], mnID = 32, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[32][78451748] = { name = "", dnID = L["Path"], mnID = 48, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[32][71695521] = { name = "", dnID = L["Path"], mnID = 15, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[32][33858156] = { name = "", dnID = L["Path"], mnID = 33, mnID2 = 36, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[33][48121241] = { name = "", dnID = L["Path"], mnID = 32, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[33][51269310] = { name = "", dnID = L["Path"], mnID = 36, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[34][39177968] = { name = "", dnID = L["Path"], mnID = 33, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[36][21063844] = { name = "", dnID = L["Path"], mnID = 32, mnID2 = 33, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[36][66517431] = { name = "", dnID = L["Path"], mnID = 49, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[36][83947621] = { name = "", dnID = L["Path"], mnID = 49, mnID2 = 51, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[49][90195831] = { name = "", dnID = L["Path"], mnID = 51, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[49][09357975] = { name = "", dnID = L["Path"], mnID = 47, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[49][08257669] = { name = "", dnID = L["Path"], mnID = 37, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[49][09976374] = { name = "", dnID = L["Path"], mnID = 37, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[49][63811069] = { name = "", dnID = L["Path"], mnID = 36, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[49][43091117] = { name = "", dnID = L["Path"], mnID = 36, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[51][67140932] = { name = "", dnID = L["Path"], mnID = 49, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[51][36347339] = { name = "", dnID = L["Path"], mnID = 17, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[51][12495691] = { name = "", dnID = L["Path"], mnID = 42, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[51][78219172] = { name = "", dnID = L["Path"], mnID = 17, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[17][49040560] = { name = "", dnID = L["Path"], mnID = 51, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[17][70222565] = { name = "", dnID = L["Path"], mnID = 51, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[37][92697214] = { name = "", dnID = L["Path"], mnID = 49, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[37][19798059] = { name = "", dnID = L["Path"], mnID = 52, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[37][93758281] = { name = "", dnID = L["Path"], mnID = 47, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[37][33525197] = { name = "", dnID = L["Entrance"], mnID = 84, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[37][45684930] = { name = "", dnID = L["Path"], mnID = 425, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[37][52518658] = { name = "", dnID = L["Path"], mnID = 47, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[42][61143918] = { name = "", dnID = L["Path"], mnID = 51, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[42][23793636] = { name = "", dnID = L["Path"], mnID = 47, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[47][90654137] = { name = "", dnID = L["Path"], mnID = 42, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[47][92541194] = { name = "", dnID = L["Path"], mnID = 49,type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[47][83591564] = { name = "", dnID = L["Path"], mnID = 37, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[47][44518399] = { name = "", dnID = L["Path"], mnID = 50, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[47][07936303] = { name = "", dnID = L["Path"], mnID = 52, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[47][48431375] = { name = "", dnID = L["Path"], mnID = 37, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[47][14212482] = { name = "", dnID = L["Path"], mnID = 37, mnID2 = 52, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[52][67746273] = { name = "", dnID = L["Path"], mnID = 47, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[52][61141799] = { name = "", dnID = L["Path"], mnID = 37, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[52][39488987] = { name = "", dnID = L["Path"], mnID = 50, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[50][51880834] = { name = "", dnID = L["Path"], mnID = 47, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[50][51586932] = { name = "", dnID = L["Path"], mnID = 210, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[50][09302428] = { name = "", dnID = L["Path"], mnID = 52, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[210][57992237] = { name = "", dnID = L["Path"], mnID = 50, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[224][51100582] = { name = "", dnID = L["Path"], mnID = 47, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[224][24261547] = { name = "", dnID = L["Path"], mnID = 52, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[244][40901446] = { name = "", dnID = L["Path"], mnID = 245, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[245][66959027] = { name = "", dnID = L["Path"], mnID = 244, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapStablemaster then
                minimap[210][41407360] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[224][36477993] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, mnID = 210, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                minimap[15][65603640] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[32][40606860] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[51][72001480] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[122][50203560] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[205][49404200] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[18][61805200] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[21][44602080] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[21][46004260] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[25][36206160] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[25][56804680] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[25][59606480] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[94][47604720] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[95][48403120] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[50][38005120] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[210][34802760] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[224][41103221] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER .. " - " .. FACTION_HORDE, mnID = 50, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }   
                    minimap[224][33055267] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER .. " - " .. FACTION_HORDE, mnID = 210, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[14][69003400] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[26][79007960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[26][32005760] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[22][47806400] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[15][18204220] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[51][47205520] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][75605260] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][75601680] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][53804300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][45207640] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[204][53005920] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[205][51406260] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[37][42806580] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[52][53005300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[49][26204300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[47][74004620] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[27][54005100] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[48][34604800] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[48][84006280] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[56][57604020] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[56][10605960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[56][26202580] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[14][40004900] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[26][14404520] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[26][66404500] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[22][47203180] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[15][21005660] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[51][28603360] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[17][46008540] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][80607740] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][55601480] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][48602960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][60205800] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][43605740] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[204][56007300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[205][49005760] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end
            end

            if self.db.profile.showMiniMapAuctioneer then
                minimap[210][40207220] = { name = "", dnID = MINIMAP_TRACKING_AUCTIONEER .. " - " .. FACTION_NEUTRAL, type = "Auctioneer", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[224][37737892] = { name = "", dnID = MINIMAP_TRACKING_AUCTIONEER .. " - " .. FACTION_NEUTRAL, mnID = 210, type = "Auctioneer", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapBank then
                minimap[210][40007240] = { name = "", dnID = BANK .. " - " .. FACTION_NEUTRAL, type = "Bank", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[224][36557887] = { name = "", dnID = BANK .. " - " .. FACTION_NEUTRAL, mnID = 210, type = "Bank", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapMailbox then
                minimap[27][54105090] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[27][39604870] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[27][26303180] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[241][80307700] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[241][75705290] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[241][53904300] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[241][49502990] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[241][74701750] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[15][18104320] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[15][66003650] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[15][90803750] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[427][62603270] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[37][42906560] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[51][29103330] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[51][47205530] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[51][71901490] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[210][41307400] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[210][40507220] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[210][35202760] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[22][47806380] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[22][39606850] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[22][43608450] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[17][45508630] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[17][66602860] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX .. "\n" .. "\n" .. L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"], type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[17][59901690] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX .. "\n" .. "\n" .. L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"], type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[77][44006200] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[77][44302870] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[77][61602550] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[425][32805250] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[26][78908050] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[26][66004520] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[26][14104570] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[204][55107220] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[204][51206070] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[465][51905860] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[205][51106300] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[205][49105700] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[205][49204190] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[21][46104230] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[21][44502100] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[52][53105330] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[52][55904850] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[14][69003400] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[14][69003280] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[94][44207070] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[94][47804700] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[95][47803150] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[217][37006550] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[48][34804780] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[30][37303860] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[32][39506800] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[81][55503570] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX .. "\n" .. "\n" .. L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"], type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[467][61404500] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[56][57604010] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[56][10805970] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[47][73804620] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[23][75305270] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[25][56904690] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[122][50003501] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[50][38905020] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[49][26004300] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[18][60705220] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapInnkeeper then
                minimap[122][51203340] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[217][60009160] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[15][65803560] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[204][57406000] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[207][49205180] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[32][39606600] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[71][55606080] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[51][71601380] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[23][75605240] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[210][40807380] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[224][37508015] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, mnID = 210, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[95][48803240] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[25][58004720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[204][51206060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[17][40401140] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[25][60206400] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[25][35806120] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[205][51606260] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[21][44402040] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[199][40806920] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[199][39202000] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[65][66406420] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[210][35002720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[224][34295176] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, mnID = 210, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[224][42503277] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, mnID = 50, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[26][31805800] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[18][83007480] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][53204280] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][75805260] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][75401660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][45007660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[22][48206380] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[14][69003340] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER .. "\n" .. "\n" .. L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"], type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true } -- Phase 11292
                    minimap[15][18204280] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[94][48004760] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[94][43607120] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[50][37205180] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[51][46805640] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[26][78208120] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[18][60805160] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[50][53206680] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[224][52214319] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, mnID = 50, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[52][52805360] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[27][54605080] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[204][54607220] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[15][20605620] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[17][44408760] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[17][60601400] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER  .. "\n" .. "\n" .. L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"], type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[205][49605740] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[199][39001100] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true } 
                    minimap[199][49006860] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[199][65604660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[65][59005640] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[65][39403280] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[65][31406060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[65][71007900] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[51][29003260] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[26][66204440] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][79407860] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][79007760] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][54601800] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][49603040] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][43605720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[241][60405800] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }  
                    minimap[22][43408460] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[56][25602580] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[56][58003920] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[14][40004900] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER .. "\n" .. "\n" .. L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"], type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true } -- Phase 11292
                    minimap[47][74004460] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[37][43806580] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[48][35404840] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[48][81806460] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[26][14004480] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[52][52805360] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[56][10606080] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end

        end

        --Outland
        if self.db.profile.showMiniMapOutland then

            if self.db.profile.showMiniMapPvPVendor then
                minimap[109][33006420] = { name = "", dnID = TRANSMOG_SET_PVP .. " " .. MERCHANT .. "\n" .. WORLD_QUEST_REWARD_FILTERS_EQUIPMENT .. "\n" .. AUCTION_CATEGORY_WEAPONS, type = "PvPVendor", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapPaths then
                minimap[105][32229134] = { name = "", dnID = L["Path"], mnID = 105, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap

                minimap[100][08724978] = { name = "", dnID = L["Path"], mnID = 102, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[100][38078776] = { name = "", dnID = L["Path"], mnID = 108, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[102][85636485] = { name = "", dnID = L["Path"], mnID = 100, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[102][82339239] = { name = "", dnID = L["Path"], mnID = 108, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[102][66798886] = { name = "", dnID = L["Path"], mnID = 107, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[102][21287968] = { name = "", dnID = L["Path"], mnID = 107, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[102][68992913] = { name = "", dnID = L["Path"], mnID = 105, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[105][51617680] = { name = "", dnID = L["Path"], mnID = 102, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[105][83592866] = { name = "", dnID = L["Path"], mnID = 109, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[105][37018234] = { name = "", dnID = L["Path"], mnID = 102, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[102][46822505] = { name = "", dnID = L["Path"], mnID = 105, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[109][21685575] = { name = "", dnID = L["Path"], mnID = 105, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[107][33831642] = { name = "", dnID = L["Path"], mnID = 102, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[107][73393525] = { name = "", dnID = L["Path"], mnID = 102, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[107][77945461] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[107][77758299] = { name = "", dnID = L["Path"], mnID = 108, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][20655720] = { name = "", dnID = L["Path"], mnID = 107, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][70865015] = { name = "", dnID = L["Path"], mnID = 104, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][60991736] = { name = "", dnID = L["Path"], mnID = 100, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][34771285] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][36083207] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][38092341] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[104][22372748] = { name = "", dnID = L["Path"], mnID = 108, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapStablemaster then
                minimap[102][78806420] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[105][27605260] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[109][32006480] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                
                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[100][54404100] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[102][31804980] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[108][49404460] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[107][56804080] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[105][75606040] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[105][53605320] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[104][29202940] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[100][54402660] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[102][67604960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[108][56805380] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[107][55807460] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[105][36006460] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[104][37605600] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end

            if self.db.profile.showMiniMapBarber then
                minimap[109][31006680] = { name = "", dnID = MINIMAP_TRACKING_BARBER .. " - " .. FACTION_NEUTRAL, type = "Barber", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapBank then
                minimap[109][33006780] = { name = "", dnID = BANK .. " - " .. FACTION_NEUTRAL, type = "Bank", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapMailbox then
                minimap[100][55006360] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[100][56503800] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[100][26806050] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[100][23503750] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[105][27605250] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[105][36306430] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[105][52705570] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[105][60806840] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[105][75706080] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[105][62603850] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[104][56305820] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[104][37205750] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[104][61402900] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[104][30102840] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[102][78906370] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[102][67504920] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[102][31905010] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[102][42102710] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[109][32206460] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[109][43603590] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][57005370] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][49504490] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[107][54507360] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[107][56473557] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapInnkeeper then
                minimap[109][43353614] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[109][32006440] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[102][78606300] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[104][66208700] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[104][61002820] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[104][56205980] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[105][62803820] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[107][56603460] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[102][30605080] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[108][48804500] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[104][30202780] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[100][26805960] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[100][56603760] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[105][76006020] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[105][53205540] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[107][54207600] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[102][67204900] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[102][41802620] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[108][56605320] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[104][37005820] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[100][23403660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[100][54206360] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[105][35806380] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[105][60806820] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end
            end

        end

        --Northrend
        if self.db.profile.showMiniMapNorthrend then

            if self.db.profile.showMiniMapPvEVendor then
                minimap[118][76282147] = { name = "", dnID = TRANSMOG_SET_PVE .. " " .. MERCHANT .. "\n" .. WORLD_QUEST_REWARD_FILTERS_EQUIPMENT .. "\n" .. AUCTION_CATEGORY_WEAPONS, type = "PvEVendor", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[118][53828468] = { name = "", dnID = TRANSMOG_SET_PVE .. " " .. MERCHANT, mnID = 186, type = "PvEVendor", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[186][38202160] = { name = "", dnID = TRANSMOG_SET_PVE .. " " .. MERCHANT .. "\n" .. WORLD_QUEST_REWARD_FILTERS_EQUIPMENT .. "\n" .. AUCTION_CATEGORY_WEAPONS, type = "PvEVendor", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapPaths then
                minimap[114][94113494] = { name = "", dnID = L["Path"], mnID = 115, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[114][52270671] = { name = "", dnID = L["Path"], mnID = 119, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[119][31769178] = { name = "", dnID = L["Path"], mnID = 114, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][89872176] = { name = "", dnID = L["Path"], mnID = 121, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][11075449] = { name = "", dnID = L["Path"], mnID = 114, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][90656296] = { name = "", dnID = L["Path"], mnID = 116, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][91823061] = { name = "", dnID = L["Path"], mnID = 116, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][59681240] = { name = "", dnID = L["Path"], mnID = 127, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[127][46787064] = { name = "", dnID = L["Path"], mnID = 115, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[127][95055825] = { name = "", dnID = L["Path"], mnID = 121, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[127][70723078] = { name = "", dnID = L["Path"], mnID = 120, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[127][57853407] = { name = "", dnID = L["Path"], mnID = 118, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][11236626] = { name = "", dnID = L["Path"], mnID = 127, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][17048604] = { name = "", dnID = L["Path"], mnID = 115, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][71507827] = { name = "", dnID = L["Path"], mnID = 116, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][55619185] = { name = "", dnID = L["Path"], mnID = 116, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][28078433] = { name = "", dnID = L["Path"], mnID = 116, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[120][31639239] = { name = "", dnID = L["Path"], mnID = 127, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][24100982] = { name = "", dnID = L["Path"], mnID = 116, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][53690502] = { name = "", dnID = L["Path"], mnID = 116, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][75110740] = { name = "", dnID = L["Path"], mnID = 116, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][09196649] = { name = "", dnID = L["Path"], mnID = 115, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][09673162] = { name = "", dnID = L["Path"], mnID = 115, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][43372604] = { name = "", dnID = L["Path"], mnID = 121, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][59001473] = { name = "", dnID = L["Path"], mnID = 121, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][34308422] = { name = "", dnID = L["Path"], mnID = 117, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][67117434] = { name = "", dnID = L["Path"], mnID = 117, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][86896774] = { name = "", dnID = L["Path"], mnID = 117, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][17592817] = { name = "", dnID = L["Path"], mnID = 121, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[118][89008044] = { name = "", dnID = L["Path"], mnID = 127, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapStablemaster then
                minimap[114][78004900] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][25405900] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][48407460] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][61605340] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][40206520] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][59005760] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[119][27205960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[120][49806600] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[120][30603680] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[120][40808600] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[118][44202240] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[118][69602200] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[118][71602260] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[114][40205500] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[114][49801060] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[114][77003720] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][79003080] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][52006660] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][49401100] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[115][37004860] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[115][76806260] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[116][21606400] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[116][65004780] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[116][13808480] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[120][67405020] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[118][75602360] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[114][48406860] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[114][56607300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[114][57001900] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][58606300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][60601600] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][31604140] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[115][28805600] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[115][77405080] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[116][32605960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[116][59002660] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[116][13808460] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[120][28607440] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[118][75802020] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end
            end

            if self.db.profile.showMiniMapMailbox then
                minimap[114][42005480] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[114][58506860] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[114][78104930] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[114][77003750] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[114][57001910] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[114][49401030] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][65504730] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][59502620] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][32506050] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[116][21506500] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][25205900] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][30904210] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][52206650] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][58606320] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][79003040] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][60801600] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][49501090] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][48307450] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][28905610] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][37304670] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][60105670] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][59505190] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][77006280] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][77305090] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[120][67505040] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[120][40908590] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[120][28807430] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[120][30503700] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[118][43702410] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[118][75902350] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[118][75802000] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][40506770] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][40906560] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][40106640] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[119][26905950] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapInnkeeper then
                minimap[114][78404920] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][48207460] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[115][59805420] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[117][25405980] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[118][44002220] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[119][26805920] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][40806620] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[121][59205720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[120][41008580] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[120][48806500] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[120][3080720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[114][76203720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[114][49601000] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[114][41805460] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[115][38204600] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[116][65404700] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[116][20806460] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][49401080] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][79603080] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][52206640] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[118][76002400] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[120][37004960] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[120][67605060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[114][58206800] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[144][57001860] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[115][77405160] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[115][28805600] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[116][59602640] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[116][32006020] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][60401580] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][30804140] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[117][58406260] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[118][76201960] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[120][28607440] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end

        end

        --Pandaria
        if self.db.profile.showMiniMapPandaria then

            if self.db.profile.showMiniMapPvEVendor then
                minimap[388][37806460] = { name = "", dnID = TRANSMOG_SET_PVE .. " " .. MERCHANT .. "\n" .. WORLD_QUEST_REWARD_FILTERS_EQUIPMENT .. "\n" .. AUCTION_CATEGORY_WEAPONS, type = "PvEVendor", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapPvPVendor then

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[379][35408340] = { name = "", dnID = TRANSMOG_SET_PVP .. " " .. MERCHANT .. " " .. FACTION_HORDE .. "\n" .. WORLD_QUEST_REWARD_FILTERS_EQUIPMENT .. "\n" .. AUCTION_CATEGORY_WEAPONS, type = "PvPVendor", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[388][77476296] = { name = "", dnID = TRANSMOG_SET_PVP .. " " .. MERCHANT .. " " .. FACTION_HORDE .. "\n" .. WORLD_QUEST_REWARD_FILTERS_EQUIPMENT .. "\n" .. AUCTION_CATEGORY_WEAPONS, type = "PvPVendor", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[376][12003400] = { name = "", dnID = TRANSMOG_SET_PVP .. " " .. MERCHANT .. " " .. FACTION_ALLIANCE .. "\n" .. WORLD_QUEST_REWARD_FILTERS_EQUIPMENT .. "\n" .. AUCTION_CATEGORY_WEAPONS, type = "PvPVendor", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[422][73543407] = { name = "", dnID = TRANSMOG_SET_PVP .. " " .. MERCHANT .. " " .. FACTION_ALLIANCE .. "\n" .. WORLD_QUEST_REWARD_FILTERS_EQUIPMENT .. "\n" .. AUCTION_CATEGORY_WEAPONS, type = "PvPVendor", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end

            if self.db.profile.showMiniMapPaths then
                minimap[371][34136352] = { name = "", dnID = L["Path"], mnID = 376, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[371][34136352] = { name = "", dnID = L["Path"], mnID = 376, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[376][87092083] = { name = "", dnID = L["Path"], mnID = 371, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[376][82655143] = { name = "", dnID = L["Path"], mnID = 418, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][55609165] = { name = "", dnID = L["Path"], mnID = 390, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][29936362] = { name = "", dnID = L["Path"], mnID = 388, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][73309428] = { name = "", dnID = L["Path"], mnID = 433, mnID2 = 371, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][70274335] = { name = "", dnID = L["Path"], mnID = 379, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][74178564] = { name = "", dnID = L["Path"], mnID = 422, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[390][44091437] = { name = "", dnID = L["Path"], mnID = 379, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[390][61481920] = { name = L["Entrance"], mnID = 391, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[390][86696414] = { name = L["Entrance"], mnID = 393, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][59738703] = { name = "", dnID = L["Path"], mnID = 422, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[422][45140853] = { name = "", dnID = L["Path"], mnID = 379, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[422][63500935] = { name = "", dnID = L["Path"], mnID = 388, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[433][53149105] = { name = "", dnID = L["Path"], mnID = 376, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[433][59670743] = { name = "", dnID = L["Path"], mnID = 371, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[433][50314161] = { name = "", dnID = L["Path"], mnID = 379, mnID2 = 371, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[376][69931893] = { name = "", dnID = L["Path"], mnID = 433, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[376][13127951] = { name = "", dnID = L["Path"], mnID = 418, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][75980580] = { name = "", dnID = L["Path"], mnID = 376, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][13743212] = { name = "", dnID = L["Path"], mnID = 376, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[434][25511100] = { name = "", dnID = L["Passage"], mnID = 379, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[434][75743737] = { name = "", dnID = L["Passage"], mnID = 390, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[434][63188580] = { name = "", dnID = L["Passage"], mnID = 433, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapStablemaster then
                minimap[371][46404380] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[371][54806300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[376][55204960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[433][55807580] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][65406160] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][42206920] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][71405760] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][84808120] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][50007140] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[422][53603240] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[422][55806960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[390][36007520] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[554][37204680] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }


                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[371][27804680] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[371][28601300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[418][59202440] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[390][60402260] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[504][32803260] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }

                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[371][44608480] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[418][67203220] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[390][84606320] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[504][63207380] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }

                end
            end

            if self.db.profile.showMiniMapTransmogger then
                minimap[379][65406180] = { name = "", dnID = MINIMAP_TRACKING_TRANSMOGRIFIER .. " - " .. FACTION_NEUTRAL, type = "Transmogger", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapMailbox then
                minimap[390][35607240] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][93503050] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][88703440] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][86803060] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][71504200] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][68004520] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][63502020] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][60702500] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][32006190] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][31506370] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][13705610] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][12905370] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][10605260] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][09504990] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][62602970] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][67605140] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][64506120] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][57606020] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][72309210] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][62708050] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][54108290] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][35908330] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[371][59208340] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[371][44908470] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[371][54806310] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[371][46504400] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[371][28104720] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[371][55602380] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[371][41602350] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[371][27801500] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[371][28601330] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[554][24806880] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[554][24806880] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[376][83902130] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[376][55604990] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[376][12303350] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[504][33303300] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[504][63207240] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][75908280] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][48907070] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][71105760] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[422][55803220] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[422][55407110] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[433][55907420] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapInnkeeper then
                minimap[422][55803220] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[422][55207100] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][40803440] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][75800720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[418][51607720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][64206120] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][44409020] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][56009160] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][42606960] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][57406000] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][66003280] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][62402880] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][55802440] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][41602320] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][48203480] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][54606320] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[379][45604380] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[433][54607260] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[554][36404700] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][48807080] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][75808280] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[388][71005780] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[376][55205060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[376][19605620] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[376][83602020] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[504][33603260] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[418][60802480] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[418][28205060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[418][10805240] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[379][62608060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[371][28601320] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[504][64807300] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[418][88803520] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[379][54008280] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[371][44808440] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[371][59608320] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end

        end

        --Draenor
        if self.db.profile.showMiniMapDraenor then

            if self.db.profile.showMiniMapPaths then
                minimap[543][50859390] = { name = "", dnID = L["Passage"], mnID = 543, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[543][49959408] = { name = "", dnID = L["Passage"], mnID = 543, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[543][49179389] = { name = "", dnID = L["Passage"], mnID = 534, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[543][51919474] = { name = "", dnID = L["Passage"], mnID = 534, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                
                minimap[525][55407524] = { name = "", dnID = L["Path"], mnID = 550, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[525][49676013] = { name = "", dnID = L["Entrance"], mnID = 590, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[525][87697265] = { name = "", dnID = L["Path"], mnID = 543, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[525][86997529] = { name = "", dnID = L["Path"], mnID = 543, mnID2 = 535, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[543][36717761] = { name = "", dnID = L["Path"], mnID = 525, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[543][42239401] = { name = "", dnID = L["Path"], mnID = 535, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[543][48199273] = { name = "", dnID = L["Path"], type = "PathRU", mnID = 534, showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[534][15634268] = { name = "", dnID = L["Path"], mnID = 543, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[534][07035272] = { name = "", dnID = L["Path"], mnID = 535, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][72130859] = { name = "", dnID = L["Path"], mnID = 534, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][66120189] = { name = "", dnID = L["Path"], mnID = 525, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][68350202] = { name = "", dnID = L["Path"], mnID = 543, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][57229329] = { name = "", dnID = L["Path"], mnID = 542, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][30475779] = { name = "", dnID = L["Path"], mnID = 550, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][84816007] = { name = "", dnID = L["Path"], mnID = 539, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][40429694] = { name = "", dnID = L["Path"], mnID = 542, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][70778113] = { name = "", dnID = L["Path"], mnID = 542, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[539][19391194] = { name = "", dnID = L["Path"], mnID = 535, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[539][32422372] = { name = "", dnID = L["Entrance"], mnID = 582, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[550][87366633] = { name = "", dnID = L["Path"], mnID = 535, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[550][87691535] = { name = "", dnID = L["Path"], mnID = 525, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[542][23172214] = { name = "", dnID = L["Path"], mnID = 535, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[542][36971399] = { name = "", dnID = L["Path"], mnID = 535, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[542][50630699] = { name = "", dnID = L["Path"], mnID = 535, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[542][62471259] = { name = "", dnID = L["Path"], mnID = 535, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[542][64112277] = { name = "", dnID = L["Path"], mnID = 535, mnID2 = 539, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[542][69512694] = { name = "", dnID = L["Path"], mnID = 539, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapStablemaster then
                minimap[542][60807180] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[525][38805200] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[525][52404020] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[525][22005620] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[525][21405460] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[550][45806980] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[535][70802960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[534][59804560] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }

                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[539][25200700] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[539][59202660] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[550][52605960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[535][69402120] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end
            end

            if self.db.profile.showMiniMapMailbox then
                minimap[539][57505730] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[539][45903960] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[539][59802680] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[539][51903290] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[525][32001030] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[525][52604080] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[525][40605220] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[525][21105680] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[525][20004380] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][47704160] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][50904570] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][69704290] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][67803590] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][71802990] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][84903150] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][69702160] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][61901090] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[542][61707300] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[542][40106130] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[542][40504330] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[543][53205990] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[543][47109300] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[534][60804670] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[534][58005970] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[550][54701460] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[550][82904530] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[550][62104020] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[550][48804740] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[550][63506210] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapInnkeeper then
                minimap[535][50804460] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][85203180] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[535][77205740] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[542][61607340] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[542][46604400] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[543][46005480] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[543][40003640] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[534][61404600] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[535][61801080] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[535][72003000] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[550][48604720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[550][82604540] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[543][46006980] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[543][60602240] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[525][32001000] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[525][20805660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[525][30003860] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[525][40605160] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[525][52203980] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[525][27003640] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[534][58606020] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[535][69602180] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[542][37605100] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[542][36805700] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[539][56805740] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[539][60002720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[539][46604080] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[550][68406700] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[550][62204000] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[550][63606240] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[543][53205980] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end


        end

        --Broken Isles
        if self.db.profile.showMiniMapBrokenIsles then

            if self.db.profile.showMiniMapPaths then
                minimap[630][66691977] = { name = "", dnID = L["Path"], mnID = 680, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[630][52810822] = { name = "", dnID = L["Path"], mnID = 641, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[680][22616344] = { name = "", dnID = L["Path"], mnID = 630, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[680][15542497] = { name = "", dnID = L["Path"], mnID = 641, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[680][65542842] = { name = "", dnID = L["Path"], mnID = 634, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][58569047] = { name = "", dnID = L["Path"], mnID = 630, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][67666636] = { name = "", dnID = L["Path"], mnID = 680, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][68801996] = { name = "", dnID = L["Path"], mnID = 650, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][26406060] = { name = "", dnID = L["Path"], mnID = 641, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][58386411] = { name = "", dnID = L["Path"], mnID = 634, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[634][27023930] = { name = "", dnID = L["Path"], mnID = 650, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[634][32737787] = { name = "", dnID = L["Path"], mnID = 680, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapStablemaster then
                minimap[646][43606300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][52804520] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][53206400] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[830][64406260] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[830][62604760] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then

                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then

                end
            end

            if self.db.profile.showMiniMapMailbox then
                minimap[650][40506980] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][51406700] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][47606150] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][52704480] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][39503710] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][57802770] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[680][58108700] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[680][33604950] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[680][36504550] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[630][56505930] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[630][46904090] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[630][43504260] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[630][49002610] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[630][40700980] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][55007320] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][42605950] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][56605790] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][68805070] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[634][72106000] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[634][54207210] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[634][60505070] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[619][41205930] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapInnkeeper then
                minimap[641][58208480] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][56007340] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][48408180] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][42605960] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][44208260] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][69404940] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][42605920] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[641][59208480] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[680][24808880] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[680][37404580] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[680][54206960] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[634][60605020] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][53004480] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][57402760] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][59808020] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][54608480] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][43602380] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][38206840] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][58606520] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[650][40005240] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[630][43004260] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[646][41005880] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[634][54007220] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[634][71606060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end

        end

        --Zandalar
        if self.db.profile.showMiniMapZandalar then

            if self.db.profile.showMiniMapPvPVendor then

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[862][51605820] = { name = "", dnID = TRANSMOG_SET_PVP .. " " .. MERCHANT .. " " .. FACTION_HORDE .. "\n" .. WORLD_QUEST_REWARD_FILTERS_EQUIPMENT .. "\n" .. AUCTION_CATEGORY_WEAPONS, type = "PvPVendor", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end

            if self.db.profile.showMiniMapPaths then
                minimap[862][57921715] = { name = "", dnID = L["Path"], mnID = 863, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][53591704] = { name = "", dnID = L["Path"], mnID = 863, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][46232046] = { name = "", dnID = L["Path"], mnID = 863, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][28698998] = { name = "", dnID = L["Path"], mnID = 862, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][43368745] = { name = "", dnID = L["Path"], mnID = 862, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][50268766] = { name = "", dnID = L["Path"], mnID = 862, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][19027147] = { name = "", dnID = L["Path"], mnID = 864, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][24833059] = { name = "", dnID = L["Path"], mnID = 864, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][24173389] = { name = "", dnID = L["Path"], mnID = 864, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][59267027] = { name = "", dnID = L["Path"], mnID = 863, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][62095156] = { name = "", dnID = L["Path"], mnID = 863, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][66934132] = { name = "", dnID = L["Path"], mnID = 863, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][62534550] = { name = "", dnID = L["Path"], mnID = 863, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapStablemaster then
                minimap[864][57204920] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][52408960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][27005100] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][66804200] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }                

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[864][43606000] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][51205020] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][53405720] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[863][39004380] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }                
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[862][44802720] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][55602500] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][64404720] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][77405480] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][44603660] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[864][38603440] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[1355][39605540] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end
            end

            if self.db.profile.showMiniMapMailbox then
                minimap[862][44507210] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][40507070] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][35306670] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][51605830] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][58006270] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][51305060] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][77605460] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][66704250] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][44503660] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][44802760] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][55602510] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][71602920] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[862][76801630] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][52508990] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][43207620] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][27105300] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][56804980] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][53603790] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][47903550] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][39203560] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][61602120] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][39107850] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][40304370] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][62504120] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][67204220] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1355][38705510] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1355][49106250] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapInnkeeper then
                minimap[862][71402900] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][26805220] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][52008980] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][43007640] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][56804980] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[864][61602060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][67604180] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][43353614] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][43353614] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][43353614] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[863][43353614] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[862][44607180] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][66604240] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][51205120] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][53003280] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][59802220] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][53205700] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][57405840] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[864][52008980] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[864][43406020] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[863][40804360] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[863][38607860] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[862][44203660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][64604720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][44802760] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][77205560] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][40607060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[862][55002560] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[864][53603780] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[864][36803520] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[863][34006340] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[863][62004080] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[863][51402160] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end

        end

        --Kul Tiras
        if self.db.profile.showMiniMapKulTiras then

            if self.db.profile.showMiniMapPaths then
                minimap[896][69814141] = { name = "", dnID = L["Path"], mnID = 895, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[896][60711551] = { name = "", dnID = L["Path"], mnID = 895, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][53055416] = { name = "", dnID = L["Path"], mnID = 896, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][43543107] = { name = "", dnID = L["Path"], mnID = 896, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][66350874] = { name = "", dnID = L["Path"], mnID = 942, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][93794719] = { name = "", dnID = L["Path"], mnID = 1169, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1169][08565967] = { name = "", dnID = L["Path"], mnID = 895, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][58958917] = { name = "", dnID = L["Path"], mnID = 895, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapStablemaster then
                minimap[942][40403640] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1462][69203060] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[896][19604360] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[895][87605040] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][50803300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][52607740] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[895][75605080] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][31606720] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][58407060] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][35204800] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][43205460] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[896][38605240] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[896][38805260] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][34404820] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][51402600] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end
            end

            if self.db.profile.showMiniMapMailbox then
                minimap[942][54107870] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][59007050] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][68806520] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][38906690] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][31106680] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][34804750] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][43505420] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][53904900] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][64704880] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][50803310] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][60702680] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][39501750] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][42102280] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][35302420] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][53102820] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][62801400] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][66502450] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][87405020] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][75705050] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][72005270] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][57706180] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][53306320] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][75906490] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][85408030] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[895][77508430] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[896][62001670] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[896][55203520] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[896][66505950] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[896][37504900] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[896][31503010] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[896][20204350] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[896][26607200] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1462][71503600] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapInnkeeper then
                minimap[895][85208040] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[942][40803700] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[896][21404360] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[896][20804620] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1462][71203580] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[895][72005240] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][87205000] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][53406320] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][62601420] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][54004720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][39406840] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][60202500] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][54007900] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][50803360] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[896][37602540] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[896][66205960] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[896][62001660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[1355][50806520] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[895][35202420] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][75805060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][75606460] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][57806200] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][53202820] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][75805060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][77208400] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][42002280] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[895][66202420] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][65404820] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][31606720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][34804720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[942][58607040] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[896][37404860] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[896][55403440] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[896][26607240] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                    minimap[1355][37805560] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end

        end

        --Shadowlands
        if self.db.profile.showMiniMapShadowlands then

            if self.db.profile.showMiniMapPaths then
                minimap[1543][63747647] = { name = "", dnID = L["Path"], mnID = 1961, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1543][51708980] = { name = "", dnID = L["Path"], mnID = 1961, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1961][40002586] = { name = "", dnID = L["Path"], mnID = 1543, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1961][58700950] = { name = "", dnID = L["Path"], mnID = 1543, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapStablemaster then
                minimap[1525][49007000] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][41204740] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][53404000] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][60403920] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][63206180] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][63603500] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][44203300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][35202140] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][52404800] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][67204580] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][55007020] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][49805400] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][51007060] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][49005300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][62603520] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][50603380] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][60405400] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][51003380] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][64601920] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][62603560] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][37403820] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1961][60602300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1970][34206620] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then

                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then

                end
            end

            if self.db.profile.showMiniMapAuctioneer then
                minimap[1989][75184972] = { name = "", dnID = MINIMAP_TRACKING_AUCTIONEER .. " - " .. FACTION_NEUTRAL, type = "Auctioneer", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapMailbox then
                minimap[1536][37902910] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][54503060] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][67504510] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][50605290] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][39505540] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][52506820] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][58107200] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][64601960] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][62703590] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][50803350] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][48505120] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][51207030] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][36105310] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][37103730] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][71804060] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][70307130] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][62506320] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][48506850] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][47906990] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][31104730] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][48507360] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][53204720] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][43203280] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][65501870] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1961][60702390] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapInnkeeper then
                minimap[1565][64601940] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][50603380] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][48405060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][36803700] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][60405380] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][36405320] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1565][62603540] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][57802960] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][48007300] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][53204680] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][35402060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][55206860] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][54203060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][50805300] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][67604480] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1536][39605520] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][40804660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][71408020] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][31204660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][47407060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][62006440] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1525][60203980] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1533][72203980] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1970][61404920] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1970][34806400] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

        end

        --Dragon Isles
        if self.db.profile.showMiniMapDragonIsles then

            if self.db.profile.showMiniMapPaths then
                minimap[2022][48878853] = { name = "", dnID = L["Path"], mnID = 2023, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][28289215] = { name = "", dnID = L["Path"], mnID = 2023, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][58802172] = { name = "", dnID = L["Path"], mnID = 2022, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][79971463] = { name = "", dnID = L["Path"], mnID = 2022, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][43426945] = { name = "", dnID = L["Path"], mnID = 2024, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][69907861] = { name = "", dnID = L["Path"], mnID = 2024, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][36452263] = { name = "", dnID = L["Path"], mnID = 2023, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][18041786] = { name = "", dnID = L["Path"], mnID = 2023, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapStablemaster then
                minimap[2133][57605780] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2133][43208180] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][62807120] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][24608340] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][73805440] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][25805540] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][43206720] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][65805880] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][54003840] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][85203580] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][62004180] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][45604060] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][80605800] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][83802580] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][63205840] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][65201620] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][47004040] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][38006080] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][19002400] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][13804960] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][50606780] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][60208040] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][60208180] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][59808140] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][51004300] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2200][69605380] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2200][53002420] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2200][50206180] = { name = "", dnID = MINIMAP_TRACKING_STABLEMASTER, type = "StablemasterN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then

                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then

                end
            end

            if self.db.profile.showMiniMapMailbox then
                minimap[2023][85202590] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][85403590] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][81205910] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][72008060] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][57007650] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][62704080] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][59503870] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][62203590] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][65802470] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][46004080] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][41906070] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][28805920] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][76203490] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][75905460] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][65205801] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][57706690] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][53903850] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][47508280] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][42806650] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][25905530] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][24608270] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][65501620] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][66002540] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][62905800] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][46604020] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][37906180] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][12804950] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][18802430] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2133][55905630] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2133][56605670] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2133][56805560] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2133][56305510] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2133][51602650] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][35307950] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][34806050] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][52306870] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][59808260] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][50504220] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2200][53002490] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2200][36503320] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2200][49906190] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2026][14506060] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2239][48305510] = { name = "", dnID = MINIMAP_TRACKING_MAILBOX, type = "Mailbox", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

            if self.db.profile.showMiniMapInnkeeper then
                minimap[2133][52202620] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2133][56405580] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][47808320] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][46402720] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][81203180] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][25805520] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][24408220] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][76203560] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][53803920] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][76005460] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][65205800] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2022][58006760] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2026][33805900] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][12404940] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][18802440] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][46804020] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][65401620] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2024][62805780] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][50204260] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][35007920] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][58608260] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2025][52406960] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][81205920] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][28606040] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][85803520] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][62804060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][59603880] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][41806060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][62203580] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][72008040] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][57207660] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][46004060] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][66202440] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2023][85002600] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2200][36603260] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2200][69405320] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2200][52402520] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[2200][49806160] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperN", showInZone = false, showOnContinent = false, showOnMinimap = true }

                if self.faction == "Horde" or db.activate.MiniMapEnemyFaction then
                    minimap[2022][80402780] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperH", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

                if self.faction == "Alliance" or db.activate.MiniMapEnemyFaction then
                    minimap[2239][48205400] = { name = "", dnID = MINIMAP_TRACKING_INNKEEPER, type = "InnkeeperA", showInZone = false, showOnContinent = false, showOnMinimap = true }
                end

            end

        end

        --Khaz Algar
        if self.db.profile.showMiniMapKhazAlgar then

            if self.db.profile.showMiniMapPaths then

            end

        end

        end

    end

end

end