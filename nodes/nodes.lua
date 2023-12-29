local ADDON_NAME, ns = ...

function ns.LoadNodeInfo()
local nodes = ns.nodes

--############################
--####### WorldMap node ######
--############################

-- Azeroth/Continent map nodes
nodes[947] = { } -- Azeroth

--############################
--######### Kalimdor #########
--############################

-- Azeroth/Continent map nodes
nodes[10] = { } -- Barrens    
nodes[11] = { } -- Wailing Caverns
nodes[12] = { } -- Kalimdor 
nodes[62] = { } -- Darkshore Vanilla
nodes[63] = { } -- Ashenvale  
nodes[64] = { } -- Thousand Needles  
nodes[66] = { } -- Desolace    
nodes[67] = { } -- Maraudon Outside  
nodes[68] = { } -- Maraudon Foulspore Cavern    
nodes[69] = { } -- Feralas
nodes[70] = { } -- Dustwallow
nodes[71] = { } -- Tanaris
nodes[74] = { } -- Caverns of Time upper half
nodes[75] = { } -- Caverns of Time lower half
nodes[81] = { } -- Silithus    
nodes[85] = { } -- Orgrimmar 
nodes[199] = { } -- Southern Barrens  
nodes[327] = { } -- AhnQiraj The Fallen Kingdom  
-- Dungeon map nodes
nodes[280] = { } -- Maraudon Caverns of Maraudon
nodes[281] = { } -- Caverns of Maraudon
nodes[324] = { } -- The Stonecore
nodes[213] = { } -- Ragefire--]]
nodes[280] = { } -- Maraudon Caverns of Maraudon Orange Crystal
nodes[280] = { } -- Maraudon Caverns of Maraudon Purple Crystal 
nodes[324] = { } -- The Stonecore
nodes[325] = { } -- The Vortex Pinnacle
nodes[297] = { } -- Halls of Orientation
nodes[277] = { } -- Lost City of the Tol'vir
nodes[328] = { } -- Throne of the Four Winds
nodes[247] = { } -- Ruins of Ahn'Qiraj
nodes[320] = { } -- Temple of Ahn'Qiraj
nodes[219] = { } -- Zul'Farrak
nodes[409] = { } -- Dragon Soul
nodes[130] = { } -- The Culling of Stratholme
nodes[273] = { } -- The Black Morass
nodes[274] = { } -- Old Hillsbrad Foothills
nodes[401] = { } -- End Time
nodes[398] = { } -- Well of Eternity
nodes[399] = { } -- Hour of Twilight
nodes[248] = { } -- Onyxia Lair
nodes[300] = { } -- Razorfen Downs
nodes[301] = { } -- Razorfen Kraul
nodes[240] = { } -- Dire Maul Warpwood Quarter 
nodes[235] = { } -- Dire Maul Gordok Commons
nodes[236] = { } -- Dire Maul Capital Gardens
nodes[239] = { } -- Dire Maul Warpwood Quarter
nodes[279] = { } -- Wailing Caverns
nodes[213] = { } -- Ragefire Chasm
nodes[221] = { } -- Blackfathom Deeps
nodes[367] = { } -- Firelands

--############################
--###### Eastern Kingdom #####
--############################

-- Azeroth/Continent map nodes
nodes[13] = { } -- Eastern Kingdoms   
nodes[14] = { } -- Arathi Highlands
nodes[15] = { } -- Badlands
nodes[17] = { } -- Blasted Lands
nodes[18] = { } -- Tirisfal   
nodes[19] = { } -- ScarletMonasteryEntrance 
nodes[21] = { } -- Silverpine Forest
nodes[22] = { } -- WesternPlaguelands 
nodes[23] = { } -- EasternPlagueland
nodes[27] = { } -- DunMorogh
nodes[30] = { } -- New Tinker Town  
nodes[33] = { } -- BlackrockMountain
nodes[36] = { } -- BurningSteppes    
nodes[42] = { } -- DeadwindPass   
nodes[50] = { } -- StranglethornJungle
nodes[51] = { } -- SwampOfSorrows
nodes[52] = { } -- Westfall    
nodes[55] = { } -- The Deadmines Caverns
nodes[84] = { } -- Stormwind City   
nodes[90] = { } -- Undercity Old Version
nodes[94] = { } -- Eversong Woods
nodes[110] = { } -- Silvermoon City   
nodes[210] = { } -- Stranglethorn Vale
nodes[224] = { } -- Stranglethorn Vale
nodes[245] = { } -- Tol Barad Pensinsula
nodes[469] = { } -- New Tinkertown 
nodes[2070] = { } -- New Tirisfal
-- Dungeon map nodes 
nodes[220] = { } -- Tempel of Atal'hakkar
nodes[225] = { } -- The Stockade  
nodes[226] = { } -- Gnomeregan          
nodes[230] = { } -- Uldaman
nodes[230] = { } -- Uldaman
nodes[232] = { } -- Molten Core
nodes[242] = { } -- Blackwing Depths
nodes[253] = { } -- Lower Blackrock Spire
nodes[282] = { } -- Baradin Hold
nodes[283] = { } -- Blackwing Caverns      
nodes[285] = { } -- Blackwing Descent
nodes[287] = { } -- Blackwing Lair
nodes[291] = { } -- Deadmines
nodes[293] = { } -- Grim Batol
nodes[294] = { } -- The Bastion of Twilight
nodes[306] = { } -- Old Scholomance - The Reliquary
nodes[307] = { } -- Old Scholomance - Chamber of Summoning
nodes[308] = { } -- Old Scholomance - The Upper Study
nodes[309] = { } -- Old Scholomance - Headmaster's Study
nodes[310] = { } -- Shadowfang Keep  
nodes[317] = { } -- Stratholme - Main Gate
nodes[317] = { } -- Stratholme - Main Gate
nodes[318] = { } -- Stratholme Service Entrance
nodes[322] = { } -- Throne of the Tides      
nodes[333] = { } -- Zul'Aman
nodes[335] = { } -- Sunwell Plateau
nodes[337] = { } -- Zul'Gurub
nodes[349] = { } -- Magisters'Terrace      
nodes[350] = { } -- Karazhan
nodes[431] = { } -- Scarlet Halls
nodes[435] = { } -- Scarlet Monastery
nodes[476] = { } -- Scholomance    
nodes[616] = { } -- Upper Blackrock Spire
nodes[814] = { } -- Return to Karazhan
nodes[2071] = { } -- Uldaman Legacy of Tyr

--############################
--######### Outland ##########
--############################

-- Azeroth/Continent map nodes
nodes[95] = { } -- Ghostlands    
nodes[100] = { } -- Hellfire 
nodes[101] = { } -- Outland
nodes[102] = { } -- Zangarmarsh   
nodes[104] = { } -- ShadowmoonValley  
nodes[105] = { } -- BladesEdgeMountains    
nodes[108] = { } -- TerokkarForest
nodes[109] = { } -- Netherstorm
nodes[111] = { } -- Shattrath
nodes[122] = { } -- Sunwel, Isle of Quel'Danas 
-- Dungeon map nodes 
nodes[246] = { } -- Shattered Halls
nodes[256] = { } -- Auchenai Crypts
nodes[258] = { } -- Sethekk Halls
nodes[260] = { } -- Shadow Labyrinth
nodes[261] = { } -- Blood Furnace
nodes[262] = { } -- The Underbog
nodes[263] = { } -- Steamvault
nodes[265] = { } -- Slave Pens
nodes[266] = { } -- Botanica
nodes[267] = { } -- Mechanar
nodes[269] = { } -- Arcatraz
nodes[272] = { } -- Mana Tombs
nodes[332] = { } -- Serpentshrine Cavern
nodes[330] = { } -- Gruul
nodes[331] = { } -- Magtheridons
nodes[334] = { } -- The Eye
nodes[339] = { } -- Black Temple
nodes[340] = { } -- Karabor Sewers
nodes[341] = { } -- Sanctuary of Shadows
nodes[342] = { } -- Halls of Anguish
nodes[343] = { } -- Gorefiend's Vigil
nodes[344] = { } -- Den of Mortal Delights
nodes[345] = { } -- Chamber of Command
nodes[346] = { } -- Temple Summit
nodes[347] = { } -- Hellfire Ramparts

--############################
--## Wrath of the Lich King ##
--############################

-- Azeroth/Continent map nodes
nodes[113] = { } -- Northrend
nodes[114] = { } -- Borean Tundra
nodes[115] = { } -- Dragonblight    
nodes[117] = { } -- HowlingFjord    
nodes[118] = { } -- IcecrownGlacier  
nodes[120] = { } -- The Storm Peaks
nodes[121] = { } -- Zul'Drak
nodes[123] = { } -- LakeWintergrasp  
nodes[125] = { } -- Dalaran City    
nodes[127] = { } -- Crystalsong Forest 
-- Dungeon map nodes 
nodes[129] = { } -- The Nexus
nodes[132] = { } -- Ahn'kahet
nodes[133] = { } -- Utgarde Keep
nodes[137] = { } -- Utgarde Pinnacle
nodes[138] = { } -- Halls of Lightning
nodes[140] = { } -- Halls of Stone   
nodes[143] = { } -- The Oculus
nodes[147] = { } -- Ulduar
nodes[154] = { } -- Gundrak
nodes[155] = { } -- Sanctum of Obsidian
nodes[156] = { } -- Vault of Archavon
nodes[159] = { } -- Azjol Nerub
nodes[160] = { } -- Drak'Tharon Keep
nodes[166] = { } -- Naxxramas 
nodes[168] = { } -- Violet Keep
nodes[171] = { } -- Trial of the Champion
nodes[172] = { } -- Trial of the Crusader
nodes[183] = { } -- the Soulforges
nodes[184] = { } -- Pit of Saron
nodes[185] = { } -- Halls of Reflection
nodes[186] = { } -- IcecrownGlacier
nodes[200] = { } -- Sanctum of Ruby

--############################
--######### Catalysm #########
--############################

-- Azeroth/Continent map nodes
nodes[198] = { } -- Hyjal
nodes[203] = { } -- Vashjir
nodes[204] = { } -- VashjirDepths 
nodes[207] = { } -- Deepholm
nodes[241] = { } -- TwilightHighlands   
nodes[244] = { } -- TolBarad    
nodes[249] = { } -- Uldum  
nodes[948] = { } -- The Maelstrom
nodes[1527] = { } -- Uldum

--############################
--##### Misk of Pandaria #####
--############################

-- Azeroth/Continent map nodes
nodes[371] = { } -- TheJadeForest
nodes[376] = { } -- ValleyoftheFourWinds    
nodes[379] = { } -- KunLaiSummit  
nodes[388] = { } -- TownlongWastes    
nodes[390] = { } -- ValeofEternalBlossoms    
nodes[422] = { } -- DreadWastes   
nodes[424] = { } -- Pandaria   
nodes[433] = { } -- ThehiddenPass
nodes[504] = { } -- IsleoftheThunderKing
nodes[1530] = { } -- ValeofEternalBlossoms New
-- Dungeon map nodes 
nodes[429] = { } -- The Temple of the Jade Serpent
nodes[456] = { } -- Terrace of Endless Spring
nodes[557] = { } -- Battle of Orgrimmar
nodes[453] = { } -- Mogu'shan Palace
nodes[437] = { } -- Gate of the Setting Sun
nodes[439] = { } -- Stormstout Brewery
nodes[474] = { } -- Heart of Fear
nodes[458] = { } -- Siege of Niuzao Temple
nodes[444] = { } -- Shado-Pan Monastery
nodes[471] = { } -- Mogu'shan Vaults
nodes[508] = { } -- Throne of Thunder

--############################
--#### Warlords of Draenor ###
--############################

-- Azeroth/Continent map nodes
nodes[1]  = { } -- Durotar
nodes[463] = { } -- Echo Isles
nodes[525] = { } -- FrostfireRidge
nodes[543] = { } -- Gorgrond
nodes[550] = { } -- NagrandDraenor
nodes[539] = { } -- ShadowmoonValleyDR
nodes[542] = { } -- SpiresOfArak
nodes[534] = { } -- TanaanJungle
nodes[535] = { } -- Talador
nodes[572] = { } -- Draenor
nodes[582] = { } -- Moonrise
nodes[588] = { } -- Ashran
nodes[590] = { } -- Frostwall
nodes[622] = { } -- Stormshild
nodes[624] = { } -- Warspear
-- Dungeon map nodes 
nodes[573] = { } -- Bloodmaul Slag Mines
nodes[574] = { } -- Shadowmoon Burial Grounds
nodes[593] = { } -- Auchindoun
nodes[595] = { } -- Iron Docks
nodes[598] = { } -- Blackrock Foundry
nodes[601] = { } -- Skyreach
nodes[606] = { } -- Grimrail Depot
nodes[611] = { } -- Highmaul
nodes[620] = { } -- The Everbloom
nodes[661] = { } -- Hellfire Citadel

--############################
--########## Legion ##########
--############################

-- Azeroth/Continent map nodes
nodes[619] = { } -- Broken Isles
nodes[627] = { } -- Dalaran
nodes[630] = { } -- Aszuna
nodes[905] = { } -- Argus
nodes[941] = { } -- Krokuun, Vindikaar Lower Deck
-- Dungeon map nodes 
nodes[704] = { } -- Halls of Valor  
nodes[706] = { } -- Maw of Souls
nodes[710] = { } -- Vault of the Wardens
nodes[713] = { } -- Eye of Azshara
nodes[731] = { } -- Neltharion's Lair
nodes[732] = { } -- Assault on Violet Hold
nodes[733] = { } -- Darkheart Thicket
nodes[749] = { } -- The Arcway
nodes[751] = { } -- Black Rook Hold
nodes[761] = { } -- Court of Stars
nodes[761] = { } -- Court of Stars
nodes[764] = { } -- The Nighthold
nodes[777] = { } -- The Emerald Nightmare
nodes[807] = { } -- Trial of Valor
nodes[845] = { } -- Cathedral of Eternal Night
nodes[850] = { } -- Tomb of Sargeras
nodes[903] = { } -- Seat of the Triumvirate
nodes[909] = { } -- Antorus, the Burning Throne

--############################
--##### Battle of Azeroth ####
--############################

-- Azeroth/Continent map nodes
nodes[862] = { } -- Zuldazar
nodes[863] = { } -- Nazmir
nodes[864] = { } -- Vol'Dun
nodes[875] = { } -- Zandalar
nodes[876] = { } --Kul'Tiras
nodes[895] = { } -- Tiragarde Sound
nodes[896] = { } -- Drustvar
nodes[942] = { } -- Stormsong Valley
nodes[1161] = { } --  Boralus City
nodes[1163] = { } -- Inside Dazar'alor
nodes[1165] = { } -- Dazar'alor
nodes[1169] = { } -- Tol Dagor
nodes[1355] = {} -- Nazjatar
nodes[1462] = {} -- Mechagon
nodes[1528] = {} -- Nazjatar - The Eternal Palace Entrance Map
-- Dungeon map nodes 
nodes[934] = { } -- Atal'Dazar
nodes[936] = { } -- Freehold
nodes[974] = { } -- Tol Dagor
nodes[1004] = { } -- Kings Rest
nodes[1015] = { } -- Waycrest Manor
nodes[1038] = { } -- Temple of Sethraliss
nodes[1039] = { } -- Shrine of the Storm
nodes[1041] = { } -- The Underrot      
nodes[1148] = { } -- Uldir    
nodes[1162] = { } -- Siege of Boralus
nodes[1345] = { } -- Crucible of Storms
nodes[1358] = { } -- Battle of Dazar'alor
nodes[1490] = { } -- Operation: Mechagon
nodes[1512] = { } -- The Eternal Palace    

--############################
--####### Shadowlands ########
--############################

-- Azeroth/Continent map nodes
nodes[1533] = { } -- Bastion
nodes[1536] = { } -- Maldraxxus
nodes[1543] = { } -- The Maw
nodes[1565] = { } -- Ardenweald
nodes[1525] = { } -- Revendreth
nodes[1543] = { } -- The Maw
nodes[1670] = { } -- Oribos
nodes[1550] = { } -- Shadowlands
nodes[1970] = { } -- Zereth Mortis 
nodes[2016] = { } -- Tazavesh, the Veiled Market
-- Dungeon map nodes 
nodes[1663] = { } -- Halls of Atonement
nodes[1666] = { } -- The Necrotic Wake
nodes[1669] = { } -- Mists of Tirna Scithe
nodes[1674] = { } -- Plaguefall
nodes[1675] = { } -- Sanguine Depths
nodes[1680] = { } -- De Other Side
nodes[1683] = { } -- Theater of Pain
nodes[1692] = { } -- Spires of Ascension
nodes[1735] = { } -- Castle Nathria 
nodes[1989] = { } -- Tazavesh, the Veiled Market
nodes[1998] = { } -- Sanctum of Domination  
nodes[2047] = { } -- Sepulcher of the First Ones

--############################
--####### Dragonflight #######
--############################

-- Azeroth/Continent map nodes
nodes[1978] = { } -- Dragon Isles
nodes[2022] = { } -- The Waking Shores
nodes[2023] = { } -- Ohn'ahran Plains
nodes[2024] = { } -- The Azure Span
nodes[2025] = { } -- Thaldraszus
nodes[2026] = { } -- The Forbidden Reach
nodes[2133] = { } -- Zaralek Cavern
nodes[2112] = { } -- Valdrakken
nodes[2200] = { } -- The Emerald Dream
-- Dungeon map nodes
nodes[2073] = { } -- The Azure Vault
nodes[2080] = { } -- Neltharus
nodes[2082] = { } -- Halls of Infusion  
nodes[2093] = { } -- The Nokhud Offensive
nodes[2095] = { } -- Ruby Life Pools 
nodes[2096] = { } -- Brackenhide Hollow
nodes[2097] = { } -- Algeth'ar Academy
nodes[2190] = { } -- Dawn of the Infinite
nodes[2096] = { } -- Brackenhide Hollow
nodes[2097] = { } -- Algeth'ar Academy
nodes[2190] = { } -- Dawn of the Infinite
nodes[2119] = { } -- Vault of the Incarnates
nodes[2166] = { } -- Aberrus, the Shadowed Crucible
nodes[2232] = { } -- Amirdrassil
end