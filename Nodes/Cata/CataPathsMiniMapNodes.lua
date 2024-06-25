local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadPathsMiniMapLocationinfo(self)
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

        --Kalimdor
        if self.db.profile.showMiniMapKalimdor then

            if self.db.profile.showMiniMapPaths then
                minimap[1448][65780575] = { name = L["Path"], mnID = 1452, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only on minimap
                minimap[1448][64570376] = { name = L["Path"], mnID = 1450, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only on minimap
                minimap[1448][63790602] = { name = L["Path"], mnID = 1448, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only on minimap
                minimap[1411][39677159] = { name = L["Path"], type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1411][40177237] = { name = L["Path"], type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1411][43607532] = { dnID = L["Path"], name = NPE_JUMP .." & " .. NPE_JUMP .. " & " .. NPE_JUMP .. " & " .. NPE_JUMP, mnID = 1413, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1411][42957516] = { name = L["Path"], mnID = 1413, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1411][42147489] = { name = L["Path"], mnID = 1413, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1411][41397470] = { name = L["Path"], mnID = 1413, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1411][41067531] = { name = L["Path"], mnID = 1413, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1413][75396944] = { name = L["Path"], mnID = 1413, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1413][74976938] = { name = L["Path"], mnID = 1413, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap

                minimap[1950][65229286] = { name = "", dnID = L["Path"], mnID = 1943, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1943][41990481] = { name = "", dnID = L["Path"], mnID = 1950, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1452][57889118] = { name = "", dnID = L["Path"], mnID = 198, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[198][85134308] = { name = "", dnID = L["Path"], mnID = 1452, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1438][38544741] = { name = "", dnID = L["Entrance"], mnID = 1457, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1450][35207168] = { name = "", dnID = L["Path"], mnID = 1448, mnID2 = 1452, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1452][21134646] = { name = "", dnID = L["Path"], mnID = 1450, mnID2 = 1448, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1448][64321012] = { name = "", dnID = L["Path"], mnID = 1452, mnID2 = 1450, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1411][45601164] = { name = "", dnID = L["Entrance"], mnID = 1454, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1411][36690869] = { name = "", dnID = L["Path"], mnID = 1413, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1411][34944229] = { name = "", dnID = L["Path"], mnID = 1413, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1413][73006595] = { name = "", dnID = L["Path"], mnID = 1411, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1413][68093891] = { name = "", dnID = L["Path"], mnID = 1411, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1413][69690732] = { name = "", dnID = L["Entrance"], mnID = 1454, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1413][42361490] = { name = "", dnID = L["Path"], mnID = 1440, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1413][35225712] = { name = "", dnID = L["Path"], mnID = 199, mnID2 = 1442, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1413][66129303] = { name = "", dnID = L["Path"], mnID = 1445, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1413][46057770] = { name = "", dnID = L["Path"], mnID = 199, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][37921619] = { name = "", dnID = L["Path"], mnID = 1442, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][52953336] = { name = "", dnID = L["Path"], mnID = 1413, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][53307850] = { name = "", dnID = L["Path"], mnID = 1445, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][43569741] = { name = "", dnID = L["Path"], mnID = 1441, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][40015464] = { name = "", dnID = L["Path"], mnID = 1412, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][39684803] = { name = "", dnID = L["Path"], mnID = 1412, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][70614786] = { name = "", dnID = L["Path"], mnID = 1445, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[199][68853911] = { name = "", dnID = L["Path"], mnID = 1413, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1412][68896041] = { name = "", dnID = L["Path"], mnID = 199, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1412][36973219] = { name = "", dnID = L["Entrance"], mnID = 1456, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1412][42992151] = { name = "", dnID = L["Entrance"], mnID = 1456, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1447][08497086] = { name = "", dnID = L["Path"], mnID = 1440, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1447][24878084] = { name = "", dnID = L["Path"], mnID = 1454, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1440][93214637] = { name = "", dnID = L["Path"], mnID = 1447, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1440][55782975] = { name = "", dnID = L["Path"], mnID = 1448, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1440][21181102] = { name = "", dnID = L["Path"], mnID = 1439, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1440][28501313] = { name = "", dnID = L["Path"], mnID = 1439, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1440][68408719] = { name = "", dnID = L["Path"], mnID = 1413, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1440][36827493] = { name = "", dnID = L["Path"], mnID = 1442, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1439][39169487] = { name = "", dnID = L["Path"], mnID = 1440, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1439][46059487] = { name = "", dnID = L["Path"], mnID = 1440, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }                
                minimap[1442][73023835] = { name = "", dnID = L["Path"], mnID = 1440, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1448][55359052] = { name = "", dnID = L["Path"], mnID = 1440, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1442][35037954] = { name = "", dnID = L["Path"], mnID = 1443, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1442][78199137] = { name = "", dnID = L["Path"], mnID = 1413, mnID2 = 199, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1443][53250555] = { name = "", dnID = L["Path"], mnID = 1442, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1443][42489698] = { name = "", dnID = L["Path"], mnID = 1444, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1444][45870426] = { name = "", dnID = L["Path"], mnID = 1443, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1444][86874286] = { name = "", dnID = L["Path"], mnID = 1441, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1441][08061109] = { name = "", dnID = L["Path"], mnID = 1444, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1441][31832162] = { name = "", dnID = L["Path"], mnID = 199, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1441][74879513] = { name = "", dnID = L["Path"], mnID = 1446, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1441][66683780] = { name = "", dnID = L["Path"], mnID = 1445, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1446][50792181] = { name = "", dnID = L["Path"], mnID = 1441, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1446][27025567] = { name = "", dnID = L["Path"], mnID = 1449, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1445][28814741] = { name = "", dnID = L["Path"], mnID = 199, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1445][53010925] = { name = "", dnID = L["Path"], mnID = 1413, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1445][46859155] = { name = "", dnID = L["Path"], mnID = 1441, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1451][77952162] = { name = "", dnID = L["Path"], mnID = 1449, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1449][71807754] = { name = "", dnID = L["Path"], mnID = 1446, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1449][28732185] = { name = "", dnID = L["Path"], mnID = 1451, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1446][26966643] = { name = "", dnID = L["Path"], mnID = 249, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[249][69822210] = { name = "", dnID = L["Path"], mnID = 1446, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

        end

        if self.db.profile.showMiniMapEasternKingdom then

            if self.db.profile.showMiniMapPaths then
                minimap[1437][50568257] = { name = "", dnID = L["Passage"], type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1437][50157148] = { name = "", dnID = L["Passage"], type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1437][55648468] = { name = "", dnID = L["Passage"], type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1432][16345836] = { name = "", dnID = L["Passage"], type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                minimap[1432][12815837] = { name = "", dnID = L["Passage"], type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap   
                minimap[1432][19241722] = { name = "", dnID = L["Passage"], mnID = 1426, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true } -- only minimap
                
                minimap[1423][54420788] = { name = "", dnID = L["Path"], mnID = 1942, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1942][47418416] = { name = "", dnID = L["Path"], mnID = 1423, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1942][48141342] = { name = "", dnID = L["Path"], mnID = 1941, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1941][48519063] = { name = "", dnID = L["Path"], mnID = 1942, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1941][56525073] = { name = "", dnID = L["Entrance"], mnID = 1954, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1423][07946606] = { name = "", dnID = L["Path"], mnID = 1422, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1423][03883558] = { name = "", dnID = L["Passage"], type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1423][11642413] = { name = "", dnID = L["Passage"], type = "PathLU", mnID = 1422, showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1422][66062181] = { name = "", dnID = L["Path"], mnID = 1423, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1422][70255007] = { name = "", dnID = L["Path"], mnID = 1423, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1422][20755616] = { name = "", dnID = L["Path"], mnID = 1420, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1422][43598848] = { name = "", dnID = L["Path"], mnID = 1422, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1422][65228620] = { name = "", dnID = L["Path"], mnID = 1425, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1420][84287020] = { name = "", dnID = L["Path"], mnID = 1422, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1420][54987075] = { name = "", dnID = L["Path"], mnID = 1421, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1420][62006207] = { name = "", dnID = L["Entrance"], mnID = 1458, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1420][51017169] = { name = "", dnID = L["Entrance"], mnID = 1458, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1421][67230574] = { name = "", dnID = L["Path"], mnID = 1420, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1421][67178036] = { name = "", dnID = L["Path"], mnID = 1424, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1421][67545302] = { name = "", dnID = L["Path"], mnID = 1424, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1424][26236329] = { name = "", dnID = L["Path"], mnID = 1421, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1424][68162062] = { name = "", dnID = L["Path"], mnID = 1422, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1424][24503891] = { name = "", dnID = L["Path"], mnID = 1421, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1424][71175479] = { name = "", dnID = L["Path"], mnID = 1425, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1425][09545468] = { name = "", dnID = L["Path"], mnID = 1424, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1425][23212809] = { name = "", dnID = L["Path"], mnID = 1422, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1424][69827049] = { name = "", dnID = L["Path"], mnID = 1417, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1424][73516384] = { name = "", dnID = L["Path"], mnID = 1417, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1417][13303060] = { name = "", dnID = L["Path"], mnID = 1424, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1417][18222155] = { name = "", dnID = L["Path"], mnID = 1424, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1417][39529377] = { name = "", dnID = L["Path"], mnID = 1437, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1437][50361231] = { name = "", dnID = L["Path"], mnID = 1417, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1437][53696957] = { name = "", dnID = L["Path"], mnID = 1432, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1437][80474796] = { name = "", dnID = L["Path"], mnID = 241, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[241][18353688] = { name = "", dnID = L["Path"], mnID = 1437, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1432][25180962] = { name = "", dnID = L["Path"], mnID = 1437, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1432][18591645] = { name = "", dnID = L["Path"], mnID = 1426, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1432][47108202] = { name = "", dnID = L["Path"], mnID = 1418, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1432][20506318] = { name = "", dnID = L["Path"], mnID = 1426, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1432][17188368] = { name = "", dnID = L["Path"], mnID = 1427, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1426][58863355] = { name = "", dnID = L["Entrance"], mnID = 1455, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1426][88164057] = { name = "", dnID = L["Path"], mnID = 1432, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1426][89525165] = { name = "", dnID = L["Path"], mnID = 1432, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1418][46970943] = { name = "", dnID = L["Path"], mnID = 1432, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1418][04495986] = { name = "", dnID = L["Path"], mnID = 1427, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1427][78371682] = { name = "", dnID = L["Path"], mnID = 1432, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1427][34178231] = { name = "", dnID = L["Path"], mnID = 1428, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1427][77175664] = { name = "", dnID = L["Path"], mnID = 1418, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1428][20813928] = { name = "", dnID = L["Path"], mnID = 1427, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1428][66618139] = { name = "", dnID = L["Path"], mnID = 1433, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1428][84108084] = { name = "", dnID = L["Path"], mnID = 1433, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1433][43101268] = { name = "", dnID = L["Path"], mnID = 1428, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1433][63911213] = { name = "", dnID = L["Path"], mnID = 1428, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1433][89275479] = { name = "", dnID = L["Path"], mnID = 1435, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1433][09976347] = { name = "", dnID = L["Path"], mnID = 1429, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1433][10967696] = { name = "", dnID = L["Path"], mnID = 1431, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1429][93277223] = { name = "", dnID = L["Path"], mnID = 1433, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1429][93588268] = { name = "", dnID = L["Path"], mnID = 1431, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1429][20937925] = { name = "", dnID = L["Path"], mnID = 1436, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1429][32945081] = { name = "", dnID = L["Entrance"], mnID = 1453, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1429][54498479] = { name = "", dnID = L["Path"], mnID = 1431, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1436][61141848] = { name = "", dnID = L["Path"], mnID = 1429, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1436][67546263] = { name = "", dnID = L["Path"], mnID = 1431, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1436][36458848] = { name = "", dnID = L["Path"], mnID = 1434, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1431][09296355] = { name = "", dnID = L["Path"], mnID = 1436, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1431][91671368] = { name = "", dnID = L["Path"], mnID = 1429, mnID2 = 1433, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1431][51651054] = { name = "", dnID = L["Path"], mnID = 1429, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1431][11882809] = { name = "", dnID = L["Path"], mnID = 1429, mnID2 = 1436, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1431][44638442] = { name = "", dnID = L["Path"], mnID = 1434, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1434][51720662] = { name = "", dnID = L["Path"], mnID = 1431, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1434][10102450] = { name = "", dnID = L["Path"], mnID = 1436, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1434][51597049] = { name = "", dnID = L["Path"], mnID = 210, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[210][58062339] = { name = "", dnID = L["Path"], mnID = 1434, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1431][87734046] = { name = "", dnID = L["Path"], mnID = 1430, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1430][34663511] = { name = "", dnID = L["Path"], mnID = 1431, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1430][58804194] = { name = "", dnID = L["Path"], mnID = 1435, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1435][66921231] = { name = "", dnID = L["Path"], mnID = 1433, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1435][09366070] = { name = "", dnID = L["Path"], mnID = 1430, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1435][36457253] = { name = "", dnID = L["Path"], mnID = 1419, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1419][49010806] = { name = "", dnID = L["Path"], mnID = 1435, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[244][41071767] = { name = "", dnID = L["Path"], mnID = 245, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[245][66868158] = { name = "", dnID = L["Path"], mnID = 244, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[217][59891336] = { name = "", dnID = L["Path"], mnID = 1421, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[217][80463751] = { name = "", dnID = L["Path"], mnID = 1424, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1424][28147677] = { name = "", dnID = L["Path"], mnID = 217, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

        end

        if self.db.profile.showMiniMapOutland then

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
                minimap[107][73393525] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[107][77758299] = { name = "", dnID = L["Path"], mnID = 108, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][20655720] = { name = "", dnID = L["Path"], mnID = 107, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][70865015] = { name = "", dnID = L["Path"], mnID = 104, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][60991736] = { name = "", dnID = L["Path"], mnID = 100, type = "PathRO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][34771285] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathLU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][36083207] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[108][38092341] = { name = "", dnID = L["Entrance"], mnID = 111, type = "PathL", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[104][22372748] = { name = "", dnID = L["Path"], mnID = 108, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

        end

        if self.db.profile.showMiniMapNorthrend then

            if self.db.profile.showMiniMapPaths then
                minimap[114][94113494] = { name = "", dnID = L["Path"], mnID = 115, type = "PathR", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[114][52270671] = { name = "", dnID = L["Path"], mnID = 119, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[119][31769178] = { name = "", dnID = L["Path"], mnID = 114, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
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

        end

        if self.db.profile.showMiniMapPandaria then

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

        end

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

        end

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

        end

        if self.db.profile.showMiniMapZandalar then

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

        end

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

        end

        if self.db.profile.showMiniMapShadowlands then

            if self.db.profile.showMiniMapPaths then
                minimap[1543][63747647] = { name = "", dnID = L["Path"], mnID = 1961, type = "PathRU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1543][51708980] = { name = "", dnID = L["Path"], mnID = 1961, type = "PathU", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1961][40002586] = { name = "", dnID = L["Path"], mnID = 1543, type = "PathO", showInZone = false, showOnContinent = false, showOnMinimap = true }
                minimap[1961][58700950] = { name = "", dnID = L["Path"], mnID = 1543, type = "PathLO", showInZone = false, showOnContinent = false, showOnMinimap = true }
            end

        end

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

        end

        if self.db.profile.showMiniMapKhazAlgar then

            if self.db.profile.showMiniMapPaths then

            end

        end

    end

end

end