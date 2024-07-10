local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadPathsZoneLocationinfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

--#####################################################################################################
--##########################        function to hide all nodes below         ##########################
--#####################################################################################################
if not db.activate.HideMapNote then


    --#####################################################################################################
    --################################         Zone Map        ################################
    --#####################################################################################################
    if db.activate.ZoneMap then

        if db.activate.ZonePaths then

            --Kalimdor
            if self.db.profile.showZoneKalimdor then

                if self.db.profile.showZonePaths then
                    nodes[460][55028792] = { name = "", dnID = L["Exit"], mnID = 57, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[57][60384385] = { name = "", dnID = L["Entrance"], mnID = 460, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[106][65229286] = { name = "", dnID = L["Path"], mnID = 97, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[97][41990481] = { name = "", dnID = L["Path"], mnID = 106, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[97][62375371] = { name = "", dnID = L["Entrance"], mnID = 468, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[468][15155338] = { name = "", dnID = L["Path"], mnID = 97, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[97][34214552] = { name = "", dnID = L["Entrance"], mnID = 103, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[97][26734541] = { name = "", dnID = L["Entrance"], mnID = 103, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[57][39894708] = { name = "", dnID = L["Entrance"], mnID = 89, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[80][35207168] = { name = "", dnID = L["Path"], mnID = 77, mnID2 = 83, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[83][21134646] = { name = "", dnID = L["Path"], mnID = 80, mnID2 = 77, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[77][64321012] = { name = "", dnID = L["Path"], mnID = 83, mnID2 = 80, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[198][86573831] = { name = "", dnID = L["Path"], mnID = 83, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[83][58049127] = { name = "", dnID = L["Path"], mnID = 198, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[77][54559364] = { name = "", dnID = L["Path"], mnID = 63, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[77][33054978] = { name = "", dnID = L["Path"], mnID = 62, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[62][44989270] = { name = "", dnID = L["Path"], mnID = 63, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[62][39019357] = { name = "", dnID = L["Path"], mnID = 63, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[63][24410740] = { name = "", dnID = L["Path"], mnID = 62, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[63][55022364] = { name = "", dnID = L["Path"], mnID = 77, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[63][94114695] = { name = "", dnID = L["Path"], mnID = 76, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[63][68689192] = { name = "", dnID = L["Path"], mnID = 10, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[63][36667685] = { name = "", dnID = L["Path"], mnID = 65, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[76][04486814] = { name = "", dnID = L["Path"], mnID = 63, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[76][24268352] = { name = "", dnID = L["Entrance"], mnID = 85, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[65][72763753] = { name = "", dnID = L["Path"], mnID = 63, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[65][36628429] = { name = "", dnID = L["Path"], mnID = 66, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[65][78419263] = { name = "", dnID = L["Path"], mnID = 199, mnID2 = 10, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[461][70096602] = { name = "", dnID = L["Exit"], mnID = 1, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[1][45601164] = { name = "", dnID = L["Entrance"], mnID = 85, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[1][34944229] = { name = "", dnID = L["Path"], mnID = 10, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[1][48146741] = { name = "", dnID = L["Path"], mnID = 461, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[1][38617209] = { name = "", dnID = L["Path"], mnID = 461, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[461][33378129] = { name = "", dnID = L["Path"], mnID = 461, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[461][47359195] = { name = "", dnID = L["Path"], mnID = 10, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[10][68243905] = { name = "", dnID = L["Path"], mnID = 1, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[10][70260439] = { name = "", dnID = L["Entrance"], mnID = 85, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[10][42161314] = { name = "", dnID = L["Path"], mnID = 63, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[10][45767732] = { name = "", dnID = L["Path"], mnID = 199, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[10][28894693] = { name = "", dnID = L["Path"], mnID = 65, mnID2 = 199, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[10][70509180] = { name = "", dnID = L["Path"], mnID = 199, mnID2 = 70, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[10][73386635] = { name = "", dnID = L["Path"], mnID = 461, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[74][52672906] = { name = "", dnID = L["Path"], mnID = 71, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[74][33997410] = { name = "", dnID = L["Path"], mnID = 75, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[75][75434726] = { name = "", dnID = L["Path"], mnID = 74, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[66][53300394] = { name = "", dnID = L["Path"], mnID = 65, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[66][41679388] = { name = "", dnID = L["Path"], mnID = 69, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[199][37921619] = { name = "", dnID = L["Path"], mnID = 65, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[199][52953336] = { name = "", dnID = L["Path"], mnID = 10, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[199][53307850] = { name = "", dnID = L["Path"], mnID = 70, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[199][43569741] = { name = "", dnID = L["Path"], mnID = 64, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[199][40015464] = { name = "", dnID = L["Path"], mnID = 7, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[199][39684803] = { name = "", dnID = L["Path"], mnID = 7, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[199][70614786] = { name = "", dnID = L["Path"], mnID = 70, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[199][68853911] = { name = "", dnID = L["Path"], mnID = 10, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[7][68925486] = { name = "", dnID = L["Path"], mnID = 199, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[7][69586410] = { name = "", dnID = L["Path"], mnID = 199, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[7][36973219] = { name = "", dnID = L["Entrance"], mnID = 88, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[7][42992151] = { name = "", dnID = L["Entrance"], mnID = 88, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[7][44727145] = { name = "", dnID = L["Entrance"], mnID = 462, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[462][26841797] = { name = "", dnID = L["Exit"], mnID = 7, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[70][25364695] = { name = "", dnID = L["Path"], mnID = 199, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[70][46869122] = { name = "", dnID = L["Path"], mnID = 64, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[70][53300865] = { name = "", dnID = L["Path"], mnID = 199, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[69][45600504] = { name = "", dnID = L["Path"], mnID = 66, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[69][85944184] = { name = "", dnID = L["Path"], mnID = 64, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[64][07931140] = { name = "", dnID = L["Path"], mnID = 69, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[64][31952135] = { name = "", dnID = L["Path"], mnID = 199, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[64][66173589] = { name = "", dnID = L["Path"], mnID = 70, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[64][74649552] = { name = "", dnID = L["Path"], mnID = 71, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[71][25366609] = { name = "", dnID = L["Path"], mnID = 1527, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[71][50912411] = { name = "", dnID = L["Path"], mnID = 64, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[71][28085682] = { name = "", dnID = L["Path"], mnID = 78, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[78][70728752] = { name = "", dnID = L["Path"], mnID = 71, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[78][29281689] = { name = "", dnID = L["Path"], mnID = 81, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[81][87672011] = { name = "", dnID = L["Path"], mnID = 78, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[1527][68612240] = { name = "", dnID = L["Path"], mnID = 71, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[11][22228580] = { name = "", dnID = L["Exit"], mnID = 10, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[67][23574340] = { name = "", dnID = L["Exit"], mnID = 66, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[67][26773535] = { name = L["Passage"], TransportName = "=> " .. DUNGEON_FLOOR_DESOLACE22, mnID = 68, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[68][49917687] = { name = L["Passage"], TransportName = "=> " .. DUNGEON_FLOOR_DESOLACE21, mnID = 67, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[68][48528878] = { name = L["Passage"], TransportName = "=> " .. DUNGEON_FLOOR_DESOLACE21, mnID = 67, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[67][28454260] = { name = L["Passage"], TransportName = "=> " .. DUNGEON_FLOOR_DESOLACE22, mnID = 68, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end

            end

            -- Eastern Kingdom
            if self.db.profile.showZoneEasternKingdom then

                if self.db.profile.showZonePaths then               
                    nodes[19][25047080] = { name = "", dnID = L["Path"], mnID = 18, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[94][56535032] = { name = "", dnID = L["Entrance"], mnID = 110, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[94][48449155] = { name = "", dnID = L["Path"], mnID = 95, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[94][39643054] = { name = "", dnID = L["Path"], mnID = 467, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[467][70888297] = { name = "", dnID = L["Path"], mnID = 94, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[95][48590888] = { name = "", dnID = L["Path"], mnID = 94, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[95][47808870] = { name = "", dnID = L["Path"], mnID = 23, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[23][54870622] = { name = "", dnID = L["Path"], mnID = 95, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[23][06526555] = { name = "", dnID = L["Path"], mnID = 22, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[23][93799027] = { name = "", dnID = L["Path"] .. " (" .. TIME_LEFT_VERY_LONG .. ")", mnID = 26, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[22][75745008] = { name = "", dnID = L["Path"], mnID = 23, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[22][22855825] = { name = "", dnID = L["Path"] .. "\n" .. KEY_BUTTON1 .. " • " .. L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_DAMAGE_MASTER .. "\n" .. KEY_BUTTON2 .. " • " ..L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_CAST_SUCCESS_MASTER, mnID = 18, mnID2 = 2070, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[22][43569122] = { name = "", dnID = L["Path"], mnID = 25, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[22][65688550] = { name = "", dnID = L["Path"], mnID = 26, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[25][68371942] = { name = "", dnID = L["Path"], mnID = 22, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[25][28916364] = { name = "", dnID = L["Path"], mnID = 21, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[25][69937080] = { name = "", dnID = L["Path"], mnID = 14, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[25][25723886] = { name = "", dnID = L["Path"], mnID = 21, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[25][29757598] = { name = "", dnID = L["Path"], mnID = 217, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[25][72135385] = { name = "", dnID = L["Path"], mnID = 26, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[26][09815510] = { name = "", dnID = L["Path"], mnID = 25, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[26][26017011] = { name = "", dnID = L["Path"], mnID = 14, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[26][24153021] = { name = "", dnID = L["Path"], mnID = 22, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[26][81564901] = { name = "", dnID = L["Path"] .. " (" .. TIME_LEFT_VERY_LONG .. ")", mnID = 23, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[25][41950592] = { name = "", dnID = L["Path"] .. "\n" .. KEY_BUTTON1 .. " • " .. L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_DAMAGE_MASTER .. "\n" .. KEY_BUTTON2 .. " • " ..L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_CAST_SUCCESS_MASTER, mnID = 18, mnID2 = 2070, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[21][68057999] = { name = "", dnID = L["Path"], mnID = 25, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[21][45458540] = { name = "", dnID = L["Path"], mnID = 217, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[21][65540646] = { name = "", dnID = L["Path"] .. "\n" .. KEY_BUTTON1 .. " • " .. L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_DAMAGE_MASTER .. "\n" .. KEY_BUTTON2 .. " • " .. L["Tirisfal Glades"] .. " " .. ZONE .. " " .. ACTION_SPELL_CAST_SUCCESS_MASTER, mnID = 18, mnID2 = 2070, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[21][66055380] = { name = "", dnID = L["Path"], mnID = 25, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[18][87597110] = { name = "", dnID = L["Path"], mnID = 22, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[18][47498234] = { name = "", dnID = L["Path"], mnID = 21, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[18][37805624] = { name = "", dnID = L["Path"], mnID = 465, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[18][67066838] = { name = "", dnID = L["Path"], mnID = 21, mnID2 = 25, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[18][62206431] = { name = "", dnID = L["Entrance"], mnID = 90, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[18][51107073] = { name = "", dnID = L["Entrance"], mnID = 90, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[465][75431917] = { name = "", dnID = L["Path"], mnID = 18, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2070][87597110] = { name = "", dnID = L["Path"], mnID = 22, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2070][47498234] = { name = "", dnID = L["Path"], mnID = 21, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2070][37805624] = { name = "", dnID = L["Path"], mnID = 465, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2070][67066838] = { name = "", dnID = L["Path"], mnID = 21, mnID2 = 25, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[217][59891336] = { name = "", dnID = L["Path"], mnID = 21, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[217][80463751] = { name = "", dnID = L["Path"], mnID = 25, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[14][39619159] = { name = "", dnID = L["Path"], mnID = 56, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[14][13553039] = { name = "", dnID = L["Path"], mnID = 25, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[14][18512139] = { name = "", dnID = L["Path"], mnID = 25, mnID2 = 26, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[14][36263114] = { name = "", dnID = L["Path"], mnID = 26, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[56][51131207] = { name = "", dnID = L["Path"], mnID = 14, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[56][82184844] = { name = "", dnID = L["Path"], mnID = 241, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[56][53957032] = { name = "", dnID = L["Path"], mnID = 48, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[241][24543727] = { name = "", dnID = L["Path"], mnID = 56, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[48][25561067] = { name = "", dnID = L["Path"], mnID = 56, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[48][18468426] = { name = "", dnID = L["Path"], mnID = 32, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[27][91572938] = { name = "", dnID = L["Path"], mnID = 48, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[27][89515184] = { name = "", dnID = L["Path"], mnID = 48, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[27][58923378] = { name = "", dnID = L["Entrance"], mnID = 87, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[27][42696414] = { name = "", dnID = L["Path"], mnID = 427, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[27][49564541] = { name = "", dnID = L["Path"], mnID = 469, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[30][77948422] = { name = "", dnID = L["Exit"], mnID = 469, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[28][61301373] = { name = "", dnID = L["Passage"], mnID = 27, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[28][37609129] = { name = "", dnID = L["Passage"], mnID = 427, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[427][88414114] = { name = "", dnID = L["Path"], mnID = 27, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[469][78885672] = { name = "", dnID = L["Path"], mnID = 27, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[425][23947810] = { name = "", dnID = L["Path"], mnID = 37, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[48][19606279] = { name = "", dnID = L["Path"], mnID = 27, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[48][47527346] = { name = "", dnID = L["Path"], mnID = 15, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[15][45820582] = { name = "", dnID = L["Path"], mnID = 48, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[15][08655196] = { name = "", dnID = L["Path"], mnID = 32, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[32][78451748] = { name = "", dnID = L["Path"], mnID = 48, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[32][71695521] = { name = "", dnID = L["Path"], mnID = 15, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[32][33858156] = { name = "", dnID = L["Path"], mnID = 33, mnID2 = 36, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[33][48121241] = { name = "", dnID = L["Path"], mnID = 32, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[33][51269310] = { name = "", dnID = L["Path"], mnID = 36, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[34][39177968] = { name = "", dnID = L["Path"], mnID = 33, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[36][21063844] = { name = "", dnID = L["Path"], mnID = 32, mnID2 = 33, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[36][66517431] = { name = "", dnID = L["Path"], mnID = 49, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[36][83947621] = { name = "", dnID = L["Path"], mnID = 49, mnID2 = 51, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[49][90195831] = { name = "", dnID = L["Path"], mnID = 51, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[49][09357975] = { name = "", dnID = L["Path"], mnID = 47, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[49][08257669] = { name = "", dnID = L["Path"], mnID = 37, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[49][09976374] = { name = "", dnID = L["Path"], mnID = 37, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[49][63811069] = { name = "", dnID = L["Path"], mnID = 36, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[49][43091117] = { name = "", dnID = L["Path"], mnID = 36, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[51][67140932] = { name = "", dnID = L["Path"], mnID = 49, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[51][36347339] = { name = "", dnID = L["Path"], mnID = 17, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[51][12495691] = { name = "", dnID = L["Path"], mnID = 42, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[51][78219172] = { name = "", dnID = L["Path"], mnID = 17, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[17][49040560] = { name = "", dnID = L["Path"], mnID = 51, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[17][70222565] = { name = "", dnID = L["Path"], mnID = 51, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[37][92697214] = { name = "", dnID = L["Path"], mnID = 49, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[37][19798059] = { name = "", dnID = L["Path"], mnID = 52, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[37][93758281] = { name = "", dnID = L["Path"], mnID = 47, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[37][33525197] = { name = "", dnID = L["Entrance"], mnID = 84, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[37][45684930] = { name = "", dnID = L["Path"], mnID = 425, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[37][52518658] = { name = "", dnID = L["Path"], mnID = 47, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[42][61143918] = { name = "", dnID = L["Path"], mnID = 51, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[42][23793636] = { name = "", dnID = L["Path"], mnID = 47, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[47][90654137] = { name = "", dnID = L["Path"], mnID = 42, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[47][92541194] = { name = "", dnID = L["Path"], mnID = 49,type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[47][83591564] = { name = "", dnID = L["Path"], mnID = 37, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[47][44518399] = { name = "", dnID = L["Path"], mnID = 50, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[47][07936303] = { name = "", dnID = L["Path"], mnID = 52, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[47][48431375] = { name = "", dnID = L["Path"], mnID = 37, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[47][14212482] = { name = "", dnID = L["Path"], mnID = 37, mnID2 = 52, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[52][67746273] = { name = "", dnID = L["Path"], mnID = 47, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[52][61141799] = { name = "", dnID = L["Path"], mnID = 37, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[52][39488987] = { name = "", dnID = L["Path"], mnID = 50, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[50][51880834] = { name = "", dnID = L["Path"], mnID = 47, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[50][51586932] = { name = "", dnID = L["Path"], mnID = 210, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[50][09302428] = { name = "", dnID = L["Path"], mnID = 52, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[210][57992237] = { name = "", dnID = L["Path"], mnID = 50, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[224][51100582] = { name = "", dnID = L["Path"], mnID = 47, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[224][24261547] = { name = "", dnID = L["Path"], mnID = 52, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[244][40901446] = { name = "", dnID = L["Path"], mnID = 245, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[245][66959027] = { name = "", dnID = L["Path"], mnID = 244, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end

            end

            -- Outland
            if self.db.profile.showZoneOutland then

                if self.db.profile.showZonePaths then
                    nodes[100][08724978] = { name = "", dnID = L["Path"], mnID = 102, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[100][38078776] = { name = "", dnID = L["Path"], mnID = 108, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[102][85636485] = { name = "", dnID = L["Path"], mnID = 100, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[102][82339239] = { name = "", dnID = L["Path"], mnID = 108, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[102][66798886] = { name = "", dnID = L["Path"], mnID = 107, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[102][21287968] = { name = "", dnID = L["Path"], mnID = 107, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[102][68992913] = { name = "", dnID = L["Path"], mnID = 105, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[105][51617680] = { name = "", dnID = L["Path"], mnID = 102, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[105][83592866] = { name = "", dnID = L["Path"], mnID = 109, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[105][37018234] = { name = "", dnID = L["Path"], mnID = 102, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[102][46822505] = { name = "", dnID = L["Path"], mnID = 105, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[109][21685575] = { name = "", dnID = L["Path"], mnID = 105, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[107][33831642] = { name = "", dnID = L["Path"], mnID = 102, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[107][73393525] = { name = "", dnID = L["Path"], mnID = 102, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[107][77945461] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[107][77758299] = { name = "", dnID = L["Path"], mnID = 108, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[108][20655720] = { name = "", dnID = L["Path"], mnID = 107, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[108][70865015] = { name = "", dnID = L["Path"], mnID = 104, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[108][60991736] = { name = "", dnID = L["Path"], mnID = 100, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[108][34771285] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[108][36083207] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[108][38092341] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[104][22372748] = { name = "", dnID = L["Path"], mnID = 108, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end

            end

            --Northrend
            if self.db.profile.showZoneNorthrend then

                if self.db.profile.showZonePaths then
                    nodes[114][94113494] = { name = "", dnID = L["Path"], mnID = 115, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[114][52270671] = { name = "", dnID = L["Path"], mnID = 119, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[119][31769178] = { name = "", dnID = L["Path"], mnID = 114, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[115][89872176] = { name = "", dnID = L["Path"], mnID = 121, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[115][11075449] = { name = "", dnID = L["Path"], mnID = 114, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[115][90656296] = { name = "", dnID = L["Path"], mnID = 116, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[115][91823061] = { name = "", dnID = L["Path"], mnID = 116, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[115][59681240] = { name = "", dnID = L["Path"], mnID = 127, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[127][46787064] = { name = "", dnID = L["Path"], mnID = 115, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[127][95055825] = { name = "", dnID = L["Path"], mnID = 121, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[127][70723078] = { name = "", dnID = L["Path"], mnID = 120, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[127][57853407] = { name = "", dnID = L["Path"], mnID = 118, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[121][11236626] = { name = "", dnID = L["Path"], mnID = 127, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[121][17048604] = { name = "", dnID = L["Path"], mnID = 115, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[121][71507827] = { name = "", dnID = L["Path"], mnID = 116, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[121][55619185] = { name = "", dnID = L["Path"], mnID = 116, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[121][28078433] = { name = "", dnID = L["Path"], mnID = 116, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[120][31639239] = { name = "", dnID = L["Path"], mnID = 127, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[117][24100982] = { name = "", dnID = L["Path"], mnID = 116, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[117][53690502] = { name = "", dnID = L["Path"], mnID = 116, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[117][75110740] = { name = "", dnID = L["Path"], mnID = 116, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[116][09196649] = { name = "", dnID = L["Path"], mnID = 115, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[116][09673162] = { name = "", dnID = L["Path"], mnID = 115, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[116][43372604] = { name = "", dnID = L["Path"], mnID = 121, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[116][59001473] = { name = "", dnID = L["Path"], mnID = 121, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[116][34308422] = { name = "", dnID = L["Path"], mnID = 117, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[116][67117434] = { name = "", dnID = L["Path"], mnID = 117, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[116][86896774] = { name = "", dnID = L["Path"], mnID = 117, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[116][17592817] = { name = "", dnID = L["Path"], mnID = 121, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[118][89008044] = { name = "", dnID = L["Path"], mnID = 127, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end

            end

            --Pandaria
            if self.db.profile.showZonePandaria then

                if self.db.profile.showZonePaths then
                    nodes[371][34136352] = { name = "", dnID = L["Path"], mnID = 376, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[371][34136352] = { name = "", dnID = L["Path"], mnID = 376, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[376][87092083] = { name = "", dnID = L["Path"], mnID = 371, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[376][82655143] = { name = "", dnID = L["Path"], mnID = 418, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[379][55609165] = { name = "", dnID = L["Path"], mnID = 390, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[379][29936362] = { name = "", dnID = L["Path"], mnID = 388, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[379][73309428] = { name = "", dnID = L["Path"], mnID = 433, mnID2 = 371, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[388][70274335] = { name = "", dnID = L["Path"], mnID = 379, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[388][74178564] = { name = "", dnID = L["Path"], mnID = 422, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[390][61481920] = { name = L["Entrance"], mnID = 391, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[390][86696414] = { name = L["Entrance"], mnID = 393, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[390][44091437] = { name = "", dnID = L["Path"], mnID = 379, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[388][59738703] = { name = "", dnID = L["Path"], mnID = 422, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[422][45140853] = { name = "", dnID = L["Path"], mnID = 379, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[422][63500935] = { name = "", dnID = L["Path"], mnID = 388, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[433][53149105] = { name = "", dnID = L["Path"], mnID = 376, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[433][59670743] = { name = "", dnID = L["Path"], mnID = 371, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[433][50314161] = { name = "", dnID = L["Path"], mnID = 379, mnID2 = 371, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[376][69931893] = { name = "", dnID = L["Path"], mnID = 433, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[376][13127951] = { name = "", dnID = L["Path"], mnID = 418, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[418][75980580] = { name = "", dnID = L["Path"], mnID = 376, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[418][13743212] = { name = "", dnID = L["Path"], mnID = 376, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[434][25511100] = { name = "", dnID = L["Passage"], mnID = 379, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[434][75743737] = { name = "", dnID = L["Passage"], mnID = 390, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[434][63188580] = { name = "", dnID = L["Passage"], mnID = 433, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end

            end

            --Draenor
            if self.db.profile.showZoneDraenor then

                if self.db.profile.showZonePaths then
                    nodes[525][55407524] = { name = "", dnID = L["Path"], mnID = 550, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[525][49676013] = { name = "", dnID = L["Entrance"], mnID = 590, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[525][87697265] = { name = "", dnID = L["Path"], mnID = 543, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[525][86997529] = { name = "", dnID = L["Path"], mnID = 543, mnID2 = 535, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[543][36717761] = { name = "", dnID = L["Path"], mnID = 525, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[543][42239401] = { name = "", dnID = L["Path"], mnID = 535, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[543][48199273] = { name = "", dnID = L["Path"], type = "PathRU", mnID = 534, showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[534][15634268] = { name = "", dnID = L["Path"], mnID = 543, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[534][07035272] = { name = "", dnID = L["Path"], mnID = 535, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[535][72130859] = { name = "", dnID = L["Path"], mnID = 534, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[535][66120189] = { name = "", dnID = L["Path"], mnID = 525, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[535][68350202] = { name = "", dnID = L["Path"], mnID = 543, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[535][57229329] = { name = "", dnID = L["Path"], mnID = 542, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[535][30475779] = { name = "", dnID = L["Path"], mnID = 550, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[535][84816007] = { name = "", dnID = L["Path"], mnID = 539, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[535][40429694] = { name = "", dnID = L["Path"], mnID = 542, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[535][70778113] = { name = "", dnID = L["Path"], mnID = 542, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[539][19391194] = { name = "", dnID = L["Path"], mnID = 535, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[539][32422372] = { name = "", dnID = L["Entrance"], mnID = 582, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[550][87366633] = { name = "", dnID = L["Path"], mnID = 535, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[550][87691535] = { name = "", dnID = L["Path"], mnID = 525, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[542][23172214] = { name = "", dnID = L["Path"], mnID = 535, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[542][36971399] = { name = "", dnID = L["Path"], mnID = 535, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[542][50630699] = { name = "", dnID = L["Path"], mnID = 535, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[542][62471259] = { name = "", dnID = L["Path"], mnID = 535, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[542][64112277] = { name = "", dnID = L["Path"], mnID = 535, mnID2 = 539, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[542][69512694] = { name = "", dnID = L["Path"], mnID = 539, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end

            end

            --Broken Isles
            if self.db.profile.showZoneBrokenIsles then

                if self.db.profile.showZonePaths then
                    nodes[630][66691977] = { name = "", dnID = L["Path"], mnID = 680, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[630][52810822] = { name = "", dnID = L["Path"], mnID = 641, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[680][22616344] = { name = "", dnID = L["Path"], mnID = 630, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[680][15542497] = { name = "", dnID = L["Path"], mnID = 641, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[680][65542842] = { name = "", dnID = L["Path"], mnID = 634, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[641][58569047] = { name = "", dnID = L["Path"], mnID = 630, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[641][67666636] = { name = "", dnID = L["Path"], mnID = 680, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[641][68801996] = { name = "", dnID = L["Path"], mnID = 650, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[650][26406060] = { name = "", dnID = L["Path"], mnID = 641, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[650][58386411] = { name = "", dnID = L["Path"], mnID = 634, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[634][27023930] = { name = "", dnID = L["Path"], mnID = 650, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[634][32737787] = { name = "", dnID = L["Path"], mnID = 680, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end

            end

            --Zandalar
            if self.db.profile.showZoneZandalar then

                if self.db.profile.showZonePaths then
                    nodes[862][57921715] = { name = "", dnID = L["Path"], mnID = 863, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[862][53591704] = { name = "", dnID = L["Path"], mnID = 863, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[862][46232046] = { name = "", dnID = L["Path"], mnID = 863, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[863][28698998] = { name = "", dnID = L["Path"], mnID = 862, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[863][43368745] = { name = "", dnID = L["Path"], mnID = 862, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[863][50268766] = { name = "", dnID = L["Path"], mnID = 862, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[863][19027147] = { name = "", dnID = L["Path"], mnID = 864, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[863][24833059] = { name = "", dnID = L["Path"], mnID = 864, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[863][24173389] = { name = "", dnID = L["Path"], mnID = 864, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[864][59267027] = { name = "", dnID = L["Path"], mnID = 863, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[864][62095156] = { name = "", dnID = L["Path"], mnID = 863, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[864][66934132] = { name = "", dnID = L["Path"], mnID = 863, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[864][62534550] = { name = "", dnID = L["Path"], mnID = 863, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end

            end

            --Kul Tiras
            if self.db.profile.showZoneKulTiras then

                if self.db.profile.showZonePaths then
                    nodes[896][69814141] = { name = "", dnID = L["Path"], mnID = 895, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[896][60711551] = { name = "", dnID = L["Path"], mnID = 895, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[895][53055416] = { name = "", dnID = L["Path"], mnID = 896, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[895][43543107] = { name = "", dnID = L["Path"], mnID = 896, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[895][66350874] = { name = "", dnID = L["Path"], mnID = 942, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[895][93794719] = { name = "", dnID = L["Path"], mnID = 1169, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[1169][08565967] = { name = "", dnID = L["Path"], mnID = 895, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[942][58958917] = { name = "", dnID = L["Path"], mnID = 895, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end

            end

            --Shadowlands
            if self.db.profile.showZoneShadowlands then

                if self.db.profile.showZonePaths then
                    nodes[1543][63747647] = { name = "", dnID = L["Path"], mnID = 1961, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[1543][51708980] = { name = "", dnID = L["Path"], mnID = 1961, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[1961][40002586] = { name = "", dnID = L["Path"], mnID = 1543, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[1961][58700950] = { name = "", dnID = L["Path"], mnID = 1543, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end

            end

            --Dragon Isles
            if self.db.profile.showZoneDragonIsles then

                if self.db.profile.showZonePaths then
                    nodes[2022][48878853] = { name = "", dnID = L["Path"], mnID = 2023, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2022][28289215] = { name = "", dnID = L["Path"], mnID = 2023, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2023][58802172] = { name = "", dnID = L["Path"], mnID = 2022, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2023][79971463] = { name = "", dnID = L["Path"], mnID = 2022, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2023][43426945] = { name = "", dnID = L["Path"], mnID = 2024, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2023][69907861] = { name = "", dnID = L["Path"], mnID = 2024, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2024][36452263] = { name = "", dnID = L["Path"], mnID = 2023, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2024][18041786] = { name = "", dnID = L["Path"], mnID = 2023, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end

            end

            --Khaz Algar
            if self.db.profile.showZoneKhazAlgar then

                if self.db.profile.showZonePaths then
                    nodes[2214][43752838] = { name = "", dnID = L["Path"], mnID = 2339, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false } -- only zone map
                    nodes[2214][39142489] = { name = "", dnID = L["Path"], mnID = 2215, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false } -- only zone map
                    nodes[2214][49076454] = { name = "", dnID = L["Path"], mnID = 2255, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    --nodes[2214][42706933] = { name = "", dnID = L["Path"], mnID = 2255, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    --nodes[2255][70582441] = { name = "", dnID = L["Path"], mnID = 2214, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2255][66521977] = { name = "", dnID = L["Path"], mnID = 2214, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2255][23843044] = { name = "", dnID = L["Path"], mnID = 2215, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    --nodes[2255][24722251] = { name = "", dnID = L["Path"], mnID = 2215, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2215][44348066] = { name = "", dnID = L["Path"], mnID = 2255, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2215][76744140] = { name = "", dnID = L["Path"], mnID = 2214, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2215][73616016] = { name = "", dnID = L["Path"], mnID = 2255, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    --nodes[2255][61840352] = { name = "", dnID = L["Path"], mnID = 2215, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2255][64891374] = { name = "", dnID = L["Path"], mnID = 2215, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2255][60028522] = { name = "", dnID = L["Path"], mnID = 2216, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][76885723] = { name = "", dnID = L["Path"], mnID = 2255, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][72666369] = { name = "", dnID = L["Path"], mnID = 2213, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][67535605] = { name = "", dnID = L["Path"], mnID = 2213, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2213][66865477] = { name = "", dnID = L["Path"], mnID = 2216, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2255][40366436] = { name = "", dnID = L["Path"], mnID = 2213, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2213][28621909] = { name = "", dnID = L["Path"], mnID = 2255, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][28621909] = { name = "", dnID = L["Path"] .. "\n" .. DUNGEON_FLOOR_GILNEAS3, mnID = 2255, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2213][64945345] = { name = "", dnID = L["Path"], mnID = 2216, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][58415322] = { name = "", dnID = L["Path"], mnID = 2213, type = "PathR", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2213][61593935] = { name = "", dnID = L["Path"], mnID = 2216, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][59943702] = { name = "", dnID = L["Path"], mnID = 2213, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][51813704] = { name = "", dnID = L["Path"], mnID = 2213, type = "PathO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][62832752] = { name = "", dnID = L["Path"], mnID = 2213, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2255][54137232] = { name = "", dnID = L["Path"], mnID = 2216, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][64692900] = { name = "", dnID = L["Path"], mnID = 2255, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][65092205] = { name = "", dnID = L["Path"], mnID = 2255, type = "PathRU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][64462144] = { name = "", dnID = L["Path"], mnID = 2216, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2213][36506205] = { name = "", dnID = L["Path"], mnID = 2216, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][38146103] = { name = "", dnID = L["Path"], mnID = 2213, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2213][43398893] = { name = "", dnID = L["Path"], mnID = 2216, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2216][44506565] = { name = "", dnID = L["Path"], mnID = 2213, type = "PathU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2213][46747707] = { name = "", dnID = L["Path"], mnID = 2213, type = "PathLU", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2215][73835929] = { name = "", dnID = L["Path"], mnID = 2255, type = "PathRO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2248][52915233] = { name = "", dnID = L["Entrance"], mnID = 2339, type = "PathLO", showInZone = true, showOnContinent = false, showOnMinimap = false }
                    nodes[2248][56233921] = { name = "", dnID = L["Entrance"], mnID = 2339, type = "PathL", showInZone = true, showOnContinent = false, showOnMinimap = false }
                end
            end

        end
    end
end
end