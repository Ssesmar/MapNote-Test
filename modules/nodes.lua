local ADDON_NAME, ns = ...
local db = ns.Addon

local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)


local nodes = { }
    

    -- Dungeon MapNotes
    -- Kalimdor
    nodes[280] = { } -- Maraudon Caverns of Maraudon
    nodes[281] = { } -- Caverns of Maraudon
    nodes[324] = { } -- The Stonecore
    nodes[213] = { } -- Ragefire--]]
    nodes[66] = { } -- Maraudon Outside
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
    nodes[240] = { } -- Dire Maul second entrance
    nodes[235] = { } -- Dire Maul
    nodes[279] = { } -- Wailing Caverns
    nodes[213] = { } -- Ragefire Chasm
    nodes[221] = { } -- Blackfathom Deeps
    nodes[367] = { } -- Firelands
    
    -- Eastern Kingdom
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
    
    -- Outland
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
    
    -- Northrend
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
    
    --Pandaria
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
    
    -- Draenor
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
    
    --Legion
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
    
    -- Battle of Azeroth
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
    
    -- Shadowlands
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
    
    -- Dragonflight 
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
    
    
    -- Map MapNotes
    nodes[947] = { } -- Azeroth
    -- Kalimdor & Eastern Kingdom
    nodes[10] = { } -- Barrens    
    nodes[11] = { } -- Wailing Caverns
    nodes[12] = { } -- Kalimdor 
    nodes[13] = { } -- Eastern Kingdoms   
    nodes[14] = { } -- Arathi Highlands
    nodes[15] = { } -- Badlands
    nodes[17] = { } -- Blasted Lands
    nodes[18] = { } -- Tirisfal   
    nodes[19] = { } -- ScarletMonasteryEntrance 
    nodes[21] = { } -- Silverpine    
    nodes[22] = { } -- WesternPlaguelands 
    nodes[23] = { } -- EasternPlaguelands
    nodes[27] = { } -- DunMorogh
    nodes[30] = { } -- New Tinker Town  
    nodes[33] = { } -- BlackrockMountain
    nodes[36] = { } -- BurningSteppes    
    nodes[42] = { } -- DeadwindPass   
    nodes[50] = { } -- StranglethornJungle
    nodes[51] = { } -- SwampOfSorrows
    nodes[52] = { } -- Westfall    
    nodes[55] = { } -- The Deadmines Caverns
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
    nodes[84] = { } -- Stormwind City   
    nodes[85] = { } -- Orgrimmar 
    nodes[90] = { } -- Undercity Old Version
    nodes[94] = { } -- Eversong Woods
    nodes[110] = { } -- Silvermoon City   
    nodes[199] = { } -- Southern Barrens  
    nodes[210] = { } -- Stranglethorn Vale
    nodes[224] = { } -- Stranglethorn Vale
    nodes[245] = { } -- Tol Barad Pensinsula
    nodes[327] = { } -- AhnQiraj The Fallen Kingdom  
    nodes[469] = { } -- New Tinkertown 
    nodes[2070] = { } -- New Tirisfal
    -- Outland
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
    -- Wrath of the Lich King
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
    -- Catalysm
    nodes[198] = { } -- Hyjal
    nodes[203] = { } -- Vashjir
    nodes[204] = { } -- VashjirDepths 
    nodes[207] = { } -- Deepholm
    nodes[241] = { } -- TwilightHighlands   
    nodes[244] = { } -- TolBarad    
    nodes[249] = { } -- Uldum  
    nodes[948] = { } -- The Maelstrom
    nodes[1527] = { } -- Uldum
    -- Misk of Pandaria
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
    -- Warlords of Draenor
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
    -- Legion
    nodes[619] = { } -- Broken Isles
    nodes[627] = { } -- Dalaran
    nodes[630] = { } -- Aszuna
    nodes[905] = { } -- Argus
    nodes[941] = { } -- Krokuun, Vindikaar Lower Deck
    -- Battle of Azeroth
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
    -- Shadowlands
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
    -- Dragonflight
    nodes[1978] = { } -- Dragon Isles
    nodes[2022] = { } -- The Waking Shores
    nodes[2023] = { } -- Ohn'ahran Plains
    nodes[2024] = { } -- The Azure Span
    nodes[2025] = { } -- Thaldraszus
    nodes[2026] = { } -- The Forbidden Reach
    nodes[2133] = { } -- Zaralek Cavern
    nodes[2112] = { } -- Valdrakken
    nodes[2200] = { } -- The Emerald Dream
    
    if not db.show["HideMapNote"] then
    
      --Inside Dungeon MapNotes
      if db.show["DungeonMap"] then
    
        if self.db.profile.showDungeonExit then
    
      --Kalimdor Exit Notes
          nodes[66][29106256] = { id = 232, type = "Dungeon",hideOnContinent = true } -- Maraudon Outside
          nodes[280][62402795] = { name = L["Exit"], type = "Exit", showInZone = true } -- Maraudon Caverns of Maraudon Orange Crystal
          nodes[280][78676842] = { name = L["Exit"], type = "Exit", showInZone = true } -- Maraudon Caverns of Maraudon Purple Crystal 
          nodes[324][54089545] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Stonecore
          nodes[325][54241642] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Vortex Pinnacle
          nodes[297][50009404] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Orientation
          nodes[277][32581995] = { name = L["Exit"], type = "Exit", showInZone = true } -- Lost City of the Tol'vir
          nodes[328][47024726] = { name = L["Exit"], type = "Exit", showInZone = true } -- Throne of the Four Winds
          nodes[247][61141177] = { name = L["Exit"], type = "Exit", showInZone = true } -- Ruins of Ahn'Qiraj
          nodes[320][52352694] = { name = L["Exit"], type = "Exit", showInZone = true } -- Temple of Ahn'Qiraj
          nodes[219][56288980] = { name = L["Exit"], type = "Exit", showInZone = true } -- Zul'Farrak
          nodes[409][49698368] = { name = L["Exit"], type = "Exit", showInZone = true } -- Dragon Soul
          nodes[130][86417097] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Culling of Stratholme
          nodes[273][49531493] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Black Morass
          nodes[274][27084695] = { name = L["Exit"], type = "Exit", showInZone = true } -- Old Hillsbrad Foothills
          nodes[401][82964460] = { name = L["Exit"], type = "Exit", showInZone = true } -- End Time
          nodes[398][28456261] = { name = L["Exit"], type = "Exit", showInZone = true } -- Well of Eternity
          nodes[399][48001952] = { name = L["Exit"], type = "Exit", showInZone = true } -- Hour of Twilight
          nodes[248][33992035] = { name = L["Exit"], type = "Exit", showInZone = true } -- Onyxia Lair
          nodes[300][23471893] = { name = L["Exit"], type = "Exit", showInZone = true } -- Razorfen Downs
          nodes[301][71358352] = { name = L["Exit"], type = "Exit", showInZone = true } -- Razorfen Kraul
          nodes[240][28185543] = { name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul second entrance
          nodes[235][71829239] = { name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul
          nodes[279][46235920] = { name = L["Exit"], type = "Exit", showInZone = true } -- Wailing Caverns
          nodes[213][60990723] = { name = L["Exit"], type = "Exit", showInZone = true } -- Ragefire Chasm
          nodes[221][45131069] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackfathom Deeps
          nodes[367][24579004] = { name = L["Exit"], type = "Exit", showInZone = true } -- Firelands
    
      --Eastern Kingdom
          nodes[220][49841022] = { name = L["Exit"], type = "Exit", showInZone = true } -- Tempel of Atal'hakkar
          nodes[225][50008109] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Stockade  
          nodes[226][64132741] = { name = L["Exit"], type = "Exit", showInZone = true } -- Gnomeregan          
          nodes[230][28506908] = { name = L["Exit"], type = "Exit", showInZone = true } -- Uldaman
          nodes[230][67897238] = { name = L["Exit"], type = "Exit", showInZone = true } -- Uldaman
          nodes[232][25832277] = { name = L["Exit"], type = "Exit", showInZone = true } -- Molten Core
          nodes[242][33207928] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Depths
          nodes[253][36814201] = { name = L["Exit"], type = "Exit", showInZone = true } -- Lower Blackrock Spire
          nodes[282][47339074] = { name = L["Exit"], type = "Exit", showInZone = true } -- Baradin Hold
          nodes[283][31016916] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Caverns      
          nodes[285][46866374] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Descent
          nodes[287][52518345] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Lair
          nodes[291][29751328] = { name = L["Exit"], type = "Exit", showInZone = true } -- Deadmines
          nodes[293][07935708] = { name = L["Exit"], type = "Exit", showInZone = true } -- Grim Batol
          nodes[294][39335449] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Bastion of Twilight
          nodes[310][70406108] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shadowfang Keep  
          nodes[317][68798791] = { name = L["Exit"], type = "Exit", showInZone = true } -- Stratholme - Main Gate
          nodes[317][63888791] = { name = L["Exit"], type = "Exit", showInZone = true } -- Stratholme - Main Gate
          nodes[318][65859058] = { name = L["Exit"], type = "Exit", showInZone = true } -- Stratholme Service Entrance
          nodes[322][49849388] = { name = L["Exit"], type = "Exit", showInZone = true } -- Throne of the Tides      
          nodes[333][09195307] = { name = L["Exit"], type = "Exit", showInZone = true } -- Zul'Aman
          nodes[335][30853659] = { name = L["Exit"], type = "Exit", showInZone = true } -- Sunwell Plateau
          nodes[337][29124867] = { name = L["Exit"], type = "Exit", showInZone = true } -- Zul'Gurub
          nodes[349][42629380] = { name = L["Exit"], type = "Exit", showInZone = true } -- Magisters'Terrace      
          nodes[350][61778163] = { name = L["Exit"], type = "Exit", showInZone = true } -- Karazhan
          nodes[431][33998886] = { name = L["Exit"], type = "Exit", showInZone = true } -- Scarlet Halls
          nodes[435][79354554] = { name = L["Exit"], type = "Exit", showInZone = true } -- Scarlet Monastery
          nodes[476][17827050] = { name = L["Exit"], type = "Exit", showInZone = true } -- Scholomance    
          nodes[616][37293212] = { name = L["Exit"], type = "Exit", showInZone = true } -- Upper Blackrock Spire
          nodes[814][64286068] = { name = L["Exit"], type = "Exit", showInZone = true } -- Return to Karazhan
          nodes[2071][75274137] = { name = L["Exit"], type = "Exit", showInZone = true } -- Uldaman Legacy of Tyr
    
      --Outland
          nodes[340][21756343] = { name = L["Exit"], type = "Exit", showInZone = true } -- Black Temple exit
          nodes[334][50168768] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Eye
          nodes[330][81397732] = { name = L["Exit"], type = "Exit", showInZone = true } -- Gruul
          nodes[331][60991776] = { name = L["Exit"], type = "Exit", showInZone = true } -- Magtheridons
          nodes[332][13436343] = { name = L["Exit"], type = "Exit", showInZone = true } -- Serpentshrine Cavern
          nodes[266][90343942] = { name = L["Exit"], type = "Exit", showInZone = true } -- Botanica
          nodes[267][49378580] = { name = L["Exit"], type = "Exit", showInZone = true } -- Mechanar
          nodes[269][41378627] = { name = L["Exit"], type = "Exit", showInZone = true } -- Arcatraz
          nodes[265][21121328] = { name = L["Exit"], type = "Exit", showInZone = true } -- Slave Pens
          nodes[263][17353047] = { name = L["Exit"], type = "Exit", showInZone = true } -- Steamvault
          nodes[347][52207097] = { name = L["Exit"], type = "Exit", showInZone = true } -- Hellfire Ramparts
          nodes[262][28027003] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Underbog
          nodes[261][48439051] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blood Furnace
          nodes[260][21750952] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shadow Labyrinth
          nodes[246][61929285] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shattered Halls
          nodes[258][73393824] = { name = L["Exit"], type = "Exit", showInZone = true } -- Sethekk Halls
          nodes[272][33361564] = { name = L["Exit"], type = "Exit", showInZone = true } -- Mana Tombs
          nodes[256][44197716] = { name = L["Exit"], type = "Exit", showInZone = true } -- Auchenai Crypts
    
      --Northrend
          nodes[129][36818875] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Nexus
          nodes[132][89717928] = { name = L["Exit"], type = "Exit", showInZone = true } -- Ahn'kahet
          nodes[132][07155048] = { name = L["Exit"], type = "Exit", showInZone = true } -- Ahn'kahet
          nodes[133][69787598] = { name = L["Exit"], type = "Exit", showInZone = true } -- Utgarde Keep
          nodes[137][44511493] = { name = L["Exit"], type = "Exit", showInZone = true } -- Utgarde Pinnacle
          nodes[138][04175378] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Lightning
          nodes[140][33993643] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Stone
          nodes[143][60834860] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Oculus
          nodes[147][52519647] = { name = L["Exit"], type = "Exit", showInZone = true } -- Ulduar
          nodes[154][36812906] = { name = L["Exit"], type = "Exit", showInZone = true } --  Gundrak
          nodes[154][56592435] = { name = L["Exit"], type = "Exit", showInZone = true } --  Gundrak
          nodes[155][63654954] = { name = L["Exit"], type = "Exit", showInZone = true } -- Sanctum of Obsidian
          nodes[156][49218634] = { name = L["Exit"], type = "Exit", showInZone = true } -- Vault of Archavon
          nodes[159][12338705] = { name = L["Exit"], type = "Exit", showInZone = true } -- Azjol Nerub
          nodes[160][27718116] = { name = L["Exit"], type = "Exit", showInZone = true } -- Drak'Tharon Keep
          nodes[166][53144954] = { name = L["Exit"], type = "Exit", showInZone = true } -- Naxxramas
          nodes[168][45929293] = { name = L["Exit"], type = "Exit", showInZone = true } -- Violet Keep
          nodes[171][65705291] = { name = L["Exit"], type = "Exit", showInZone = true } -- Trial of the Champion
          nodes[172][65705260] = { name = L["Exit"], type = "Exit", showInZone = true } -- Trial of the Crusader
          nodes[183][65858917] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Soulforges
          nodes[184][40607992] = { name = L["Exit"], type = "Exit", showInZone = true } -- Pit of Saron
          nodes[185][47338069] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Reflection
          nodes[186][38860982] = { name = L["Exit"], type = "Exit", showInZone = true } -- IcecrownGlacier
          nodes[200][49532819] = { name = L["Exit"], type = "Exit", showInZone = true } -- Sanctum of Ruby
    
      --Pandaria
          nodes[429][29594366] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Temple of the Jade Serpent
          nodes[456][92544884] = { name = L["Exit"], type = "Exit", showInZone = true } -- Terrace of Endless Spring
          nodes[557][94264530] = { name = L["Exit"], type = "Exit", showInZone = true } -- Battle of Orgrimmar
          nodes[453][28181995] = { name = L["Exit"], type = "Exit", showInZone = true } -- Mogu'shan Palace
          nodes[437][61618815] = { name = L["Exit"], type = "Exit", showInZone = true } -- Gate of the Setting Sun
          nodes[439][80293902] = { name = L["Exit"], type = "Exit", showInZone = true } -- Stormstout Brewery
          nodes[474][34159074] = { name = L["Exit"], type = "Exit", showInZone = true } -- Heart of Fear
          nodes[458][65228587] = { name = L["Exit"], type = "Exit", showInZone = true } -- Siege of Niuzao Temple
          nodes[444][86415833] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shado-Pan Monastery
          nodes[471][75437521] = { name = L["Exit"], type = "Exit", showInZone = true } -- Mogu'shan Vaults
          nodes[508][29592553] = { name = L["Exit"], type = "Exit", showInZone = true } -- Throne of Thunder
    
      -- Draenor
          nodes[573][52048698] = { name = L["Exit"], type = "Exit", showInZone = true } -- Bloodmaul Slag Mines  
          nodes[574][08256955] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shadowmoon Burial Grounds  
          nodes[593][49849145] = { name = L["Exit"], type = "Exit", showInZone = true } -- Auchindoun
          nodes[595][29594366] = { name = L["Exit"], type = "Exit", showInZone = true } -- Iron Docks
          nodes[598][41059246] = { name = L["Exit"], type = "Exit", showInZone = true } -- Blackrock Foundry
          nodes[601][60362459] = { name = L["Exit"], type = "Exit", showInZone = true } -- Skyreach
          nodes[606][32422553] = { name = L["Exit"], type = "Exit", showInZone = true } -- Grimrail Depoot
          nodes[611][26772324] = { name = L["Exit"], type = "Exit", showInZone = true } -- Highmaul
          nodes[620][72295519] = { name = L["Exit"], type = "Exit", showInZone = true } -- Everbloom
          nodes[661][72604342] = { name = L["Exit"], type = "Exit", showInZone = true } -- Hellfire Citadel 
      
      --Legion
          nodes[704][47730708] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Valor  
          nodes[706][46398375] = { name = L["Exit"], type = "Exit", showInZone = true } -- Maw of Souls
          nodes[710][69317756] = { name = L["Exit"], type = "Exit", showInZone = true } -- Vault of the Wardens
          nodes[713][49378886] = { name = L["Exit"], type = "Exit", showInZone = true } -- Eye of Azshara
          nodes[731][89555449] = { name = L["Exit"], type = "Exit", showInZone = true } -- Neltharion's Lair
          nodes[732][50788086] = { name = L["Exit"], type = "Exit", showInZone = true } -- Assault on Violet Hold
          nodes[733][36661564] = { name = L["Exit"], type = "Exit", showInZone = true } -- Darkheart Thicket
          nodes[749][48122160] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Arcway
          nodes[751][29120622] = { name = L["Exit"], type = "Exit", showInZone = true } -- Black Rook Hold
          nodes[761][05476847] = { name = L["Exit"], type = "Exit", showInZone = true } -- Court of Stars
          nodes[761][41877597] = { name = L["Exit"], type = "Exit", showInZone = true } -- Court of Stars
          nodes[764][25518846] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Nighthold
          nodes[777][42315825] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Emerald Nightmare
          nodes[807][51570575] = { name = L["Exit"], type = "Exit", showInZone = true } -- Trial of Valor
          nodes[845][46639166] = { name = L["Exit"], type = "Exit", showInZone = true } -- Cathedral of Eternal Night
          nodes[850][45139239] = { name = L["Exit"], type = "Exit", showInZone = true } -- Tomb of Sargeras
          nodes[903][21468879] = { name = L["Exit"], type = "Exit", showInZone = true } -- Seat of the Triumvirate
          nodes[909][90656704] = { name = L["Exit"], type = "Exit", showInZone = true } -- Antorus, the Burning Throne
    
      --Battle of Azeroth
          nodes[934][79514836] = { name = L["Exit"], type = "Exit", showInZone = true } -- Atal'Dazar
          nodes[936][70563589] = { name = L["Exit"], type = "Exit", showInZone = true } -- Freehold
          nodes[974][75275526] = { name = L["Exit"], type = "Exit", showInZone = true } -- Tol Dagor
          nodes[1004][89874719] = { name = L["Exit"], type = "Exit", showInZone = true } -- Kings Rest
          nodes[1015][51418674] = { name = L["Exit"], type = "Exit", showInZone = true } -- Waycrest Manor
          nodes[1038][67899710] = { name = L["Exit"], type = "Exit", showInZone = true } -- Temple of Sethraliss
          nodes[1039][45760810] = { name = L["Exit"], type = "Exit", showInZone = true } -- Shrine of the Storm
          nodes[1041][36191611] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Underrot      
          nodes[1148][52679428] = { name = L["Exit"], type = "Exit", showInZone = true } -- Uldir    
          nodes[1162][76681988] = { name = L["Exit"], type = "Exit", showInZone = true } -- Siege of Boralus
          nodes[1345][68368768] = { name = L["Exit"], type = "Exit", showInZone = true } -- Crucible of Storms
          nodes[1358][23941752] = { name = L["Exit"], type = "Exit", showInZone = true } -- Battle of Dazar'alor
          nodes[1490][71683749] = { name = L["Exit"], type = "Exit", showInZone = true } -- Operation: Mechagon
          nodes[1512][94264884] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Eternal Palace      
     
      --Shadowlands
          nodes[1663][89875409] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Atonement
          nodes[1666][82863999] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Necrotic Wake
          nodes[1669][93861796] = { name = L["Exit"], type = "Exit", showInZone = true } -- Mists of Tirna Scithe
          nodes[1674][29981643] = { name = L["Exit"], type = "Exit", showInZone = true } -- Plaguefall
          nodes[1675][09825103] = { name = L["Exit"], type = "Exit", showInZone = true } -- Sanguine Depths
          nodes[1680][50581456] = { name = L["Exit"], type = "Exit", showInZone = true } -- De Other Side
          nodes[1683][50498296] = { name = L["Exit"], type = "Exit", showInZone = true } -- Theater of Pain
          nodes[1692][40586445] = { name = L["Exit"], type = "Exit", showInZone = true } -- Spires of Ascension
          nodes[1735][34468069] = { name = L["Exit"], type = "Exit", showInZone = true } -- Castle Nathria
          nodes[1998][29478607] = { name = L["Exit"], type = "Exit", showInZone = true } -- Sanctum of Domination
          nodes[1989][90914372] = { name = L["Exit"], type = "Exit", showInZone = true } -- Tazavesh, the Veiled Market
          nodes[2047][07465150] = { name = L["Exit"], type = "Exit", showInZone = true } -- Sepulcher of the First Ones
    
      --Dragon Isles
          nodes[2073][77623071] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Azure Vault
          nodes[2080][52562070] = { name = L["Exit"], type = "Exit", showInZone = true } -- Neltharus
          nodes[2082][08403471] = { name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Infusion
          nodes[2093][60673862] = { name = L["Exit"], type = "Exit", showInZone = true } -- The Nokhud Offensive
          nodes[2095][42789333] = { name = L["Exit"], type = "Exit", showInZone = true } -- Ruby Life Pools
          nodes[2096][06524366] = { name = L["Exit"], type = "Exit", showInZone = true } -- Brackenhide Hollow
          nodes[2097][42157591] = { name = L["Exit"], type = "Exit", showInZone = true } -- Algeth'ar Academy
          nodes[2190][33202089] = { name = L["Exit"], type = "Exit", showInZone = true } -- Dawn of the Infinite
          nodes[2119][63509475] = { name = L["Exit"], type = "Exit", showInZone = true } -- Vault of the Incarnates
          nodes[2166][51269498] = { name = L["Exit"], type = "Exit", showInZone = true } -- Aberrus, the Shadowed Crucible
          nodes[2232][50789310] = { name = L["Exit"], type = "Exit", showInZone = true } -- Aberrus, the Shadowed Crucible
        end
    
        if self.db.profile.showDungeonPassage then
    
      -- Maraudon
          nodes[280][13585809] = { name = L["Passage"], type = "Passageleft", showInZone = true } -- Maraudon passage to Zaetar's Grave
          nodes[281][29120410] = { name = L["Passage"], type = "Passageright", showInZone = true } -- Maraudon passage to Zaetar's Grave-- Black Temple
          nodes[339][76054672] = { name = L["Passage"], UiMapID = 340,type = "Passageright", showInZone = true } -- Black Temple passage
          nodes[339][28657991] = { name = L["Passage"], type = "Passagedown", showInZone = true } -- Black Temple passage
          nodes[340][27240693] = { name = L["Passage"], type = "Passageup", showInZone = true } -- Black Temple passage
          nodes[341][61933384] = { name = L["Passage"], type = "Passageright", showInZone = true } -- Black Temple passage
          nodes[341][21124985] = { name = L["Passage"], type = "Passageleft", showInZone = true } -- Black Temple passage
          nodes[341][57859035] = { name = L["Passage"], type = "Passageleft", showInZone = true } -- Black Temple passage
          nodes[341][26302301] = { name = L["Passage"], type = "Passagedown", showInZone = true } -- Black Temple passage
          nodes[342][63033918] = { name = L["Passage"], type = "Passageleft", showInZone = true } -- Black Temple passage
          nodes[343][74966845] = { name = L["Passage"], type = "Passageright", showInZone = true } -- Black Temple passage
          nodes[344][08254813] = { name = L["Passage"], type = "Passageup", showInZone = true } -- Black Temple passage
          nodes[344][67275590] = { name = L["Passage"], type = "Passagedown", showInZone = true } -- Black Temple passage
          nodes[345][47333054] = { name = L["Passage"], type = "Passageup", showInZone = true } -- Black Temple passage
          nodes[345][69461241] = { name = L["Passage"], type = "Passageup", showInZone = true } -- Black Temple passage
          nodes[346][52821234] = { name = L["Passage"], type = "Passageup", showInZone = true } -- Black Temple passage
        end
    
        if self.db.profile.showDungeonPortal then
          
        -- Northrend
          nodes[186][33822342] = { name = L["Portal"] .. " - " .. L["Dalaran"], type = "Portal", showInZone = true } -- IcecrownGlacier
        end
      end
    
    
      --Azeroth MapNotes
        if db.show["Azeroth"] then
        
        if self.db.profile.showAzerothKalimdor then  --Kalimdor
          
          if self.db.profile.showAzerothDungeon then  --Dungeons
            nodes[947][26635536] = { id = 240, type = "Dungeon", showInZone = true } -- Wailing Caverns
            nodes[947][22724585] = { id = 227, type = "Dungeon", showInZone = true } -- Blackfathom Deeps
            nodes[947][27126301] = { id = 233, type = "Dungeon", showInZone = true } -- Razorfen Downs
            nodes[947][27416697] = { id = 241, type = "Dungeon", showInZone = true } -- Zul'Farrak
            nodes[947][20055663] = { id = 232, type = "Dungeon", showInZone = true } -- Maraudon
            nodes[947][22126200] = { id = 230, lfgid = 36,type = "Dungeon", showInZone = true } -- Dire Maul - Capital Gardens
            nodes[947][29395008] = { id = 226, type = "Dungeon", showInZone = true } -- Ragefire
            nodes[947][25766218] = { id = 234, type = "Dungeon", showInZone = true } -- Razorfen Kraul
            nodes[947][26777580] = { id = 68, type = "Dungeon", showInZone = true } -- The Vortex Pinnacle
            nodes[947][25237426] = { id = 69, type = "Dungeon", showInZone = true } -- Lost City of Tol'Vir
            nodes[947][26337316] = { id = 70, type = "Dungeon", showInZone = true } -- Halls of Origination
            nodes[947][46234797] = { id = 67, type = "Dungeon", showInZone = true } -- The Stonecore
          end
    
          if self.db.profile.showAzerothRaid then  --Raids
            nodes[947][27684669] = { id = 78, type = "Raid", showInZone = true } -- Firelands
              nodes[947][28906346] = { id = 760,type = "Raid", showInZone = true } -- Onyxia's Lair
            nodes[947][23887588] = { id = 74,type = "Raid", showInZone = true } -- Throne of the Four Winds
            nodes[947][21116955] = { id = { 744, 743 }, type = "Raid",showInZone = true } -- Temple of Ahn'Qiraj, Ruins of Ahn'Qiraj
          end
    
          if self.db.profile.showAzerothMultiple then  --Multiple Nodes
            nodes[947][30076932] = { id = { 187, 279, 255, 251, 750, 184, 185, 186 }, type = "Multiple", showInZone = true } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
          end
    
          if self.db.profile.showAzerothShips then  --Ships
            nodes[947][29125574] = { name = L["Ship"] .. " - " .. L["Booty Bay, Stranglethorn Vale"], type = "Ship", showInZone = true } -- Ship from Ratchet to Booty Bay
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
            nodes[947][31315572] = { name = L["Ship"] .. " - " .. L["Dazar'alor"] .. "," .. L["Zandalar"], type = "HShip", showInZone = true } -- Ship from Echo Isles to Dazar'alor - Zandalar
            end
          end
    
          if self.db.profile.showAzerothPortals then  --Portals
    
              nodes[947][22226727] = { name = L["Portal to Zandalar(horde)/Boralus(alliance)"], type = "Portal", showInZone = true } -- Portal from Silithus to Zandalar
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][23994090] = { name = L["Portal"] .. " - " .. L["Zandalar"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true } -- Portal from New Darkshore to Zandalar
              nodes[947][30417031] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Orgrimmar
              nodes[947][28464305] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal Tol Orgrimmar from Hyjal
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[947][24484189] = { name = L["Portal"] .. " - " .. L["Boralus"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true } -- Portal from New Darkshore to Boralus
              nodes[947][30417031] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Stormwind City
              nodes[947][28764283] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal Tol Orgrimmar from Hyjal
            end
          end
    
          if self.db.profile.showAzerothZeppelins then  --Zeppelins
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][30485132] = { name = L["Zeppelin"] .. " - " .. L["Waking Shores, Dragon Isles"], type = "HZeppelin", showInZone = true } -- Zeppelin from Durotar to The Waking Shores - Dragonflight
            end
          end
    
          if self.db.profile.showContinentShips then
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][31315552] = { name = L["Ship"] .. " - " .. L["Dazar'alor"] .. "," .. L["Zandalar"], type = "HShip" } -- Ship from Echo Isles to Dazar'alor - Zandalar
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[947][29966131] = { name = L["Ship"] .. " - " .. L["Menethil Harbor, Wetlands"], type = "AShip", showInZone = true } -- Ship from Dustwallow Marsh to Menethil Harbor
            end
            
          end
        end
    
        if self.db.profile.showAzerothEasternKingdom then  --Eastern Kingdom
    
          if self.db.profile.showAzerothDungeon then  --Dungeons
            nodes[947][92813801] = { id = 77, type = "Dungeon", showInZone = true } -- Zul'Aman
            nodes[947][91972614] = { id = 249, type = "Dungeon", showInZone = true } -- Magisters' Terrace
            nodes[947][86434185] = { id = { 311, 316 },type = "Dungeon", showInZone = true } -- Scarlet Halls, Monastery
            nodes[947][90175975] = { id = 239, name = "Uldaman back entrance", type = "Dungeon",showInZone = true } -- Uldaman (Secondary Entrance)
            nodes[947][83204721] = { id = 64, type = "Dungeon", showInZone = true } -- Shadowfang Keep
            nodes[947][88634402] = { id = 246, type = "Dungeon", showInZone = true } -- Scholomance
            nodes[947][89593995] = { id = 236, lfgid = 40,type = "Dungeon", showInZone = true } -- Stratholme
            nodes[947][90503929] = { id = 236, lfgid = 274,type = "Dungeon", showInZone = true } -- Stratholme Service Entrance
            nodes[947][84445688] = { id = 231, type = "Dungeon", showInZone = true } -- Gnomeregan
            nodes[947][86767011] = { id = 76, type = "Dungeon", showInZone = true } -- Zul'Gurub
            nodes[947][90366709] = { id = 237, type = "Dungeon", showInZone = true } -- The Temple of Atal'hakkar
            nodes[947][83226850] = { id = 63, type = "Dungeon", showInZone = true } -- Deadmines
            nodes[947][84056387] = { id = 238, type = "Dungeon", showInZone = true } -- The Stockade
            nodes[947][79985920] = { id = 65, type = "Dungeon", showInZone = true } -- Throne of Tides
          end
    
          if self.db.profile.showAzerothRaid then  --Raids
            nodes[947][80455260] = { id = 75, type = "Raid", showInZone = true } -- Baradin Hold
            nodes[947][90652724] = { id = 752, type = "Raid", showInZone = true } -- Sunwell Plateau
            nodes[947][90655621] = { id = 72, type = "Raid", showInZone = true } -- The Bastion of Twilight
            nodes[947][89945460] = { id = 71, type = "Dungeon", showInZone = true } -- Grim Batol
          end
    
          if self.db.profile.showAzerothMultiple then
            nodes[947][88006838] = { id = { 745, 860 }, type = "Multiple",showInZone = true } -- Karazhan, Return to Karazhan
            nodes[947][89225843] = { id = { 1197, 239 }, type = "Dungeon",showInZone = true } --  Legacy of Tyr Dragonflight Dungeon & Vanilla Uldaman
            nodes[947][86536189] = { id = { 73, 741, 742, 66, 228, 229, 559 }, type = "Multiple", showInZone = true } -- Blackwind Descent, Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire
          end
    
          if self.db.profile.showAzerothPortals then  --Portals
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][84864258] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Tirisfal to Orgrimmar
              nodes[947][88074841] = { name = L["Portal"] .. " - " .. L["Zandalar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Arathi to Zandalar
              nodes[947][91853164] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Silvermoon to Orgrimmar
              nodes[947][89587016] = { name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Warspear, Ashran"] ..")", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Blasted Lands to Warspear
              nodes[947][79625090] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal Tol Bard to Orgimmar 
              nodes[947][93675469] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal Tol Orgrimmar from Twilight Highlands
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[947][89587016] = { name = L["The Dark Portal"] .. " (" .. L["Portal"] .." - ".. L["Stormshield, Ashran"] .. ")", type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Blasted Lands to Stormshield
              nodes[947][90126888] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal to Stormwind
              nodes[947][80655046] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal Tol Bard to Stormwind
            end
          end
    
          if self.db.profile.showAzerothZeppelins then  --Zeppelins
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][85057132] = { name = L["Zeppelin"] .. " - " .. L["Orgrimmar"], type = "HZeppelin", showInZone = true } -- Zeppelin from Stranglethorn Valley to Ogrimmar
            end
          end
    
          if self.db.profile.showAzerothShips then  --Ships
    
            nodes[947][84667504] = { name = L["Ship"] .. " - " .. L["Ratchet, Northern Barrens"], type = "Ship", showInZone = true } -- Ship from Booty Bay to Ratchet
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[947][83286294] = { name = L["Ship"] .. " - " .. L["Valiance Keep, Borean Tundra"] .. " / " .. L["Boralus Harbor, Tiragarde Sound"], type = "AShip", showInZone = true } -- Ship from Stormwind to Valiance Keep
            end
          end
    
          if self.db.profile.showAzerothOldVanilla then  --AzerothOldVanilla
    
            nodes[947][90194066] = { name = L["Old version of Naxxramas - Secret Entrance (Wards of the Dread Citadel - Achievement)"], type = "VRaid", showInZone = true, hideOnContinent = false } -- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel
            nodes[947][89714326] = { name = L["Old version of Scholomance - Secret Entrance (Memory of Scholomance - Achievement)"], type = "VRaid", showInZone = true, hideOnContinent = false } -- Old version of Scholomance - Secret Entrance
            nodes[947][86344322] = { name = L["Old keychain - use the old keychain to activate the old versions of Scarlet Monastery dungeons (you need to get first (The Scarlet Key) from Hallow's End world event or buy from auction house)"], type = "VKey1", showInZone = true } -- Scarlet Monastery Key for Old dungeons
          end
        end
    
        if self.db.profile.showAzerothNorthrend then  --Northrend
    
          if self.db.profile.showAzerothDungeon then  --Dungeons
            nodes[947][47451709] = { id = { 271, 272 }, type = "Dungeon" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub
            nodes[947][57062211] = { id = { 286, 285 }, type = "Dungeon", showInZone = true } -- Utgarde Pinnacle, Utgarde Keep
            nodes[947][53111487] = { id = 273, type = "Dungeon", showInZone = true } -- Drak'Tharon Keep
            nodes[947][56481047] = { id = 274, type = "Dungeon", showInZone = true } -- Gundrak
            nodes[947][50781352] = { id = 283, type = "Dungeon", showInZone = true } -- The Violet Hold
          end
    
          if self.db.profile.showAzerothRaid then  --Raids
            nodes[947][52131713] = { id = 754, type = "Raid", showInZone = true } -- Naxxramas
            nodes[947][50001736] = { id = { 755, 761 }, type = "Raid", showInZone = true } -- The Ruby Sanctum, The Obsidian Sanctum
            nodes[947][46291352] = { id =  753,  type = "Raid", showInZone = true } -- Vault of Archavon
          end
    
          if self.db.profile.showAzerothMultiple then  --Multiple nodes
            nodes[947][47421290] = {id = { 758, 276, 278, 280 }, type = "Multiple", showInZone = true } -- Icecrown Citadel, The Forge of Souls, Halls of Reflection, Pit of Saron
            nodes[947][51880617] = { id = { 759, 277, 275 }, type = "Multiple", showInZone = true } -- Ulduar, Halls of Stone, Halls of Lightning
            nodes[947][49290747] = { id = { 757, 284 }, type = "Multiple", showInZone = true } -- Trial of the Crusader, Trial of the Champion
            nodes[947][40641671] = { id = { 756, 282, 281 }, type = "Multiple", showInZone = true } -- The Eye of Eternity, The Nexus, The Oculus
          end
    
          if self.db.profile.showAzerothPortals then  --Portals
            nodes[947][46131450] = { name = L["Portal"] .. " - " .. L["Dalaran"], type = "Portal", showInZone = true } -- LakeWintergrasp to Dalaran Portal
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][49401233] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Old Dalaran to Orgrimmar
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[947][49151346] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal from Old Dalaran to Stormwind
            end
          end
    
          if self.db.profile.showAzerothZeppelins then  --Zeppelins
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][41841870] = { name = L["Zeppelin"] .. " - " .. L["Orgrimmar"], type = "HZeppelin", showInZone = true } -- Zeppelin from Borean Tundra to Ogrimmar
            end
          end
    
          if self.db.profile.showAzerothShips then  --Zeppelins
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[947][43232009] = { name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Ship from Borean Tundra to Stormwind
              nodes[947][57602350] = { name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Ship from Borean Tundra to Stormwind
            end
          end
        end
    
    
        if self.db.profile.showAzerothPandaria then  --Pandaria
    
          if self.db.profile.showAzerothDungeon then  --Dungeons
            nodes[947][53138189] = { id = 313, type = "Dungeon", showInZone = true } -- Temple of the Jade Serpent
            nodes[947][47568563] = { id = 302, type = "Dungeon", showInZone = true } -- Stormstout Brewery
            nodes[947][45737584] = { id = 312, type = "Dungeon", showInZone = true } -- Shado-Pan Monastery
            nodes[947][41918090] = { id = 324, type = "Dungeon", showInZone = true } -- Siege of Niuzao Temple
            nodes[947][46468244] = { id = 303, type = "Dungeon", showInZone = true } -- Gate of the Setting Sun
          end
    
          if self.db.profile.showAzerothRaid then  --Raids
            nodes[947][47857509] = { id = 317, type = "Raid", showInZone = true } -- Mogu'shan Vaults
            nodes[947][43598371] = { id = 330, type = "Raid", showInZone = true } -- Heart of Fear
            nodes[947][41907121] = { id = 362, type = "Raid", showInZone = true } -- Throne of Thunder
            nodes[947][49688206] = { id = 320, type = "Raid", showInZone = true } -- Terrace of Endless Spring 
          end
    
          if self.db.profile.showAzerothMultiple then  --Multiple nodes
            nodes[947][48658140] = { id = { 369, 321 }, type = "Multiple", showInZone = true } -- Siege of Orgrimmar
          end
    
          if self.db.profile.showAzerothPortals then  --Portals
            nodes[947][40147153] = { name = L["Portal"] .. " - " .. L["Shado-Pan Garrison, TownlongWastes"], type = "Portal", showInZone = true } -- Portal from Shado-Pan Garrison to IsleoftheThunderKing
            nodes[947][43408025] = { name = L["Portal"] .. " - " .. L["Isle of Thunder"], type = "Portal", showInZone = true } -- Portal from IsleoftheThunderKing to Shado-Pan Garrison
            
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][50477732] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Jade Forest to Orgrimmar
            end
          end
        end
    
        if self.db.profile.showAzerothBrokenIsles then  --Legion
    
          if self.db.profile.showAzerothDungeon then  --Dungeons
            nodes[947][58804606] = { id = 777, type = "Dungeon", showInZone = true } -- Assault on Violet Hold
            nodes[947][66413395] = { id = 945, type = "Dungeon", showInZone = true } -- Seat of the Triumvirate
            nodes[947][55944783] = { id = 707, type = "Dungeon", showInZone = true } -- Vault of the Wardens
            nodes[947][56864411] = { id = 716, type = "Dungeon", showInZone = true } -- Eye of Azshara
            nodes[947][54743861] = { id = 740, type = "Dungeon", showInZone = true } -- Black Rook Hold
            nodes[947][58883744] = { id = 767, type = "Dungeon", showInZone = true } -- Neltharion's Lair
            nodes[947][61533801] = { id = 727, type = "Dungeon", showInZone = true } -- Maw of Souls
          end
    
          if self.db.profile.showAzerothRaid then  --Raids
            nodes[947][65603682] = { id = 946, type = "Raid", showInZone = true } -- Antorus, the Burning Thron
          end
    
          if self.db.profile.showAzerothMultiple then --Multiple nodes
            nodes[947][60954565] = { id = { 875, 900 }, type = "Multiple", showInZone = true } -- Tomb of Sargeras, Cathedral of the Night
            nodes[947][56043739] = { id = { 762, 768 }, type = "Multiple", showInZone = true } -- Darkheart Thicket, The Emerald Nightmare
            nodes[947][58864194] = { id = { 786, 800, 726 }, type = "Multiple", showInZone = true } -- The Nighthold, Court of Stars, The Arcway
            nodes[947][62843965] = { id = { 721, 861 }, type = "Multiple", showInZone = true } -- Halls of Valor, Trial of Valor
          end
    
          if self.db.profile.showAzerothPortals then  --Portals
            
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][58124501] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from New Dalaran to Orgrimmar
              nodes[947][55624409] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal to Orgrimmar from Aszuna
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[947][57774634] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal from New Dalaran to Stormwind
              nodes[947][55624409] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal to Stormwind from Aszuna
            end
          end
        end
    
        if self.db.profile.showAzerothZandalar then  --Zandalar
    
          if self.db.profile.showAzerothDungeon then  --Dungeons
            nodes[947][54116471] = { id = 968, type = "Dungeon", showInZone = true } -- Atal'Dazar
            nodes[947][52726453] = { id = 1041, type = "Dungeon", showInZone = true } -- Kings' Rest
            nodes[947][52725672] = { id = 1030, type = "Dungeon", showInZone = true } -- Temple of Sethraliss    
          
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][55156668] = { id = 1012, type = "Dungeon", showInZone = true } -- The MOTHERLODE HORDE
            end
    
            if self.faction == "Alliance" then
              nodes[947][53386795] = { id = 1012, type = "Dungeon",  showInZone = true }  -- The MOTHERLODE Alliance
            end
          end
    
          if self.db.profile.showAzerothRaid then  --Raids
            nodes[947][60705670] = { id = 1179, type = "Raid", showInZone = true } -- The Eternal Palace
            
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][55186352] = { id = 1176, type = "Raid", showInZone = true } -- Battle of Dazar'alor
            end
          end
    
          if self.db.profile.showAzerothMultiple then  --Multiple nodes
            nodes[947][55926026] = { id = { 1031, 1022 }, type = "Multiple", showInZone = true } -- Uldir, The Underrot
          end
    
          if self.db.profile.showAzerothPortals then  --Portals
    
            if self.faction == "Horde" then
              nodes[947][55666511] = { name = L["Portalroom"] .. " - "  .. L["Dazar'alor"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'Alor
            end
          end
    
          if self.db.profile.showAzerothShips then  --Ships
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][55506808] = { name = L["Ship"] .. " - " .. L["Echo Isles, Durotar"] .. " / " .. L["Drustvar"] .. " / " .. L["Tiragarde Sound"] .. " / " .. L["Stormsong Valley"], type = "HShip", showInZone = true } -- Ship from Zandalar to Echo Isles
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[947][54066793] = { name = L["Back to Boralus"], type = "AShip", showInZone = true } -- Ship from Zuldazar to Boralus 
              nodes[947][51405743] = { name = L["Back to Boralus"], type = "AShip", showInZone = true } -- Ship from Vol'dun to Boralus 
              nodes[947][56705875] = { name = L["Back to Boralus"], type = "AShip", showInZone = true } -- Ship from Nazmir to Boralus
            end
          end
        end
    
        if self.db.profile.showAzerothKulTiras then  --Kul Tiras
    
          if self.db.profile.showAzerothDungeon then  --Dungeons
    
            nodes[947][66824486] = { id = 1178, type = "Dungeon", showInZone = true } -- Operation: Mechagon 
            nodes[947][74365363] = { id = 1001, type = "Dungeon", showInZone = true } -- Freehold 
            nodes[947][68354901] = { id = 1021, type = "Dungeon", showInZone = true } -- Waycrest Manor 
            nodes[947][74224240] = { id = 1036, type = "Dungeon", showInZone = true } -- Shrine of Storm 
            nodes[947][76205044] = { id = 1002, type = "Dungeon", showInZone = true } -- Tol Dagor
          end
    
          if self.db.profile.showAzerothRaid then  --Raids
            nodes[947][74404422] = { id = 1177, type = "Raid", showInZone = true } -- Crucible of Storms
          end
    
          if self.db.profile.showAzerothMultiple then  --Multiple
    
            if self.faction == "Alliance" then
              nodes[947][73014936] = { id = { 1176, 1023 }, type = "Multiple", showInZone = true } -- Battle of Dazar'alor, Boralus
            end
    
          end
    
          if self.db.profile.showAzerothPortals then  --Portals
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[947][73394840] = { name = L["Portalroom"] .. " - "  .. L["Boralus"], type = "APortal", showInZone = true } -- Portalroom from Boralus
            end
          end
    
          if self.db.profile.showAzerothShips then  --Ship
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][67265130] = { name = L["Back to Zuldazar"], type = "HShip", showInZone = true } -- Ship from Drustvar to Zuldazar 
              nodes[947][72244228] = { name = L["Back to Zuldazar"], type = "HShip", showInZone = true } -- Ship from Stormsong Valley to Zuldazar 
              nodes[947][74745185] = { name = L["Back to Zuldazar"], type = "HShip", showInZone = true } -- Ship from Tiragarde Sound to Zuldazar 
              nodes[947][65864376] = { name = L["(Captain Krooz) will take you back to Zuldazar"], type = "TransportHelper", showInZone = true } -- Ship from Mechagon to Zuldazar
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[947][73914927] = { name = L["Ship"] .. " - " .. L["Stormwind City"] .. " / " .. L["Vol'Dun"] .. " / " .. L["Nazmir"] .. " / " .. L["Zuldazar"], type = "AShip", showInZone = true } -- Ship to Stormwind from Boralus
            end
          end
        end
    
        if self.db.profile.showAzerothDragonIsles then  --Dragon Isles
           
            if self.db.profile.showAzerothDungeon then  --Dungeons
    
            nodes[947][77241864] = { id = 1202, type = "Dungeon", showInZone = true } -- Ruby Life Pools
            nodes[947][74891765] = { id = 1199, type = "Dungeon", showInZone = true } -- Neltharus 
            nodes[947][75192161] = { id = 1198, type = "Dungeon", showInZone = true } -- The Nokhud Offensive 
            nodes[947][73352689] = { id = 1196, type = "Dungeon", showInZone = true } -- Brackenhide Hollow 
            nodes[947][76072854] = { id = 1203, type = "Dungeon", showInZone = true } -- The Azure Vault 
            nodes[947][79611825] = { id = 1201, type = "Dungeon", showInZone = true } -- Algeth'ar Academy 
            nodes[947][79532136] = { id = 1204, type = "Dungeon", showInZone = true } -- Halls of Infusion 
            nodes[947][79902331] = { id = 1209, type = "Dungeon", showInZone = true } -- Dawn of the Infinite
          end
    
          if self.db.profile.showAzerothRaid then  --Raids
    
            nodes[947][81372023] = { id = 1200, type = "Raid", showInZone = true } -- Vault of the Incarnates 
            nodes[947][85002623] = { id = 1208, type = "Raid", showInZone = true } -- Aberrus, the Shadowed Crucible 
            nodes[947][71222297] = { id = 1207, type = "Raid", showInZone = true } -- Amirdrassil, the Dream's Hope
          end
    
          if self.db.profile.showAzerothPortals then  --Portals
    
            nodes[947][72202222] = { name = L["Portal"] .. " - " .. L["The Emerald Dream"], type = "Portal", showInZone = true } -- Portal to The Emerald Dream 
            nodes[947][77692120] = { name = L["Portal"] .. " - " .. L["The Timeways"], type = "Portal", showInZone = true } --  Portal from Valdrakken to Nazmir, Uldum and Tiragarde Sound
          end
    
          if self.db.profile.showAzerothZeppelins then  --Zeppelins
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[947][77851451] = { name = L["Zeppelin"] .. " - " .. L["Orgrimmar"], type = "HZeppelin", showInZone = true } -- Zeppelin from Waking Shores to Ogrimmar
            end
          end
    
          if self.db.profile.showAzerothShips then --Ships
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[947][79021601] = { name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Ship to Stormwind from The Waking Shores - Dragonflight
            end
          end
        end
      end
    
    
    
      if db.show["Continent"] then
        -- Continent Kalimdor
        if self.db.profile.showContinentKalimdor then
        
          -- Kalimdor Dungeons
        
          if self.db.profile.showContinentDungeons then
            nodes[12][52215315] = { id = 240, type = "Dungeon" } -- Wailing Caverns 
            nodes[11][54916646] = { id = 240, type = "Dungeon", showInZone = true } -- Wailing Caverns 
            nodes[12][43913301] = { id = 227, type = "Dungeon" } -- Blackfathom Deeps 
            nodes[12][53146914] = { id = 233, type = "Dungeon" } -- Razorfen Downs 
            nodes[12][38395594] = { id = 232, type = "Dungeon" } -- Maraudon 
            nodes[67][78285518] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern 
            nodes[68][52152417] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern 
            nodes[68][44517669] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern first Entrance 
            nodes[12][42726722] = { id = 230, lfgid = 36, type = "Dungeon", } -- Dire Maul - Warpwood Quarter 
            nodes[69][65503530] = { id = 230, lfgid = 34, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Warpwood Quarter - East 
            nodes[69][60323015] = { id = 230, lfgid = 36, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Capital Gardens - West left Entrance 
            nodes[69][60303130] = { id = 230, lfgid = 36, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Capital Gardens - West right Entrance 
            nodes[69][62502490] = { id = 230, lfgid = 38, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Gordok Commons - North 
            nodes[69][77083689] = { id = 230, lfgid = 34, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[12][54187774] = { id = 241, type = "Dungeon" } -- Zul'Farrak
            nodes[75][57608260] = { id = 279, type = "Dungeon" } -- The Culling of Stratholme 
            nodes[75][36008400] = { id = 255, type = "Dungeon" } -- The Black Morass 
            nodes[75][26703540] = { id = 251, type = "Dungeon" } -- Old Hillsbrad Foothills 
            nodes[75][57302920] = { id = 184, type = "Dungeon" } -- End Time 
            nodes[75][22406430] = { id = 185, type = "Dungeon" } -- Well of Eternity 
            nodes[75][67202930] = { id = 186, type = "Dungeon" } -- Hour of Twilight 
            nodes[12][58304269] = { id = 226, type = "Dungeon" } -- Ragefire 
            nodes[12][50916837] = { id = 234, type = "Dungeon" } -- Razorfen Kraul 
            nodes[12][52519670] = { id = 68, type = "Dungeon" } -- The Vortex Pinnacle 
            nodes[12][49699341] = { id = 69, type = "Dungeon" } -- Lost City of Tol'Vir 
            nodes[12][51579122] = { id = 70, type = "Dungeon" } -- Halls of Origination
            nodes[948][51102882] = { id = 67, type = "Dungeon", showInZone = true } -- The Stonecore
          end
    
          --Kalimdor Raids
          if self.db.profile.showContinentRaids then
    
            nodes[12][45929663] = { id = 74, type = "Raid" } -- Throne of the Four Winds 
            nodes[12][54243397] = { id = 78, type = "Raid" } -- Firelands 
            nodes[12][56436963] = { id = 760, type = "Raid" } -- Onyxia's Lair 
            nodes[12][42068358] = { id = 743, type = "Raid" } -- Ruins of Ahn'Qiraj 
            nodes[12][40678358] = { id = 744, type = "Raid" } -- Temple of Ahn'Qiraj
          end
    
          --Kalimdor Multiple
          if self.db.profile.showContinentMultiple then
    
            nodes[71][65114833] = { id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "Multiple", showInZone = true, hideOnContinent = false } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
          end
    
          -- Kalimdor Portals
          if self.db.profile.showContinentPortals then
    
                nodes[81][41614520] = { name = L["Portal to Zandalar(horde)/Boralus(alliance)"], type = "Portal", showInZone = true, hideOnContinent = false } -- Portal from Silithus to Zandalar/Boralus
    
              if self.faction == "Horde" or db.show["EnemyFaction"] then   
    
                nodes[71][65984960] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Orgrimmar 
                nodes[74][58152676] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Orgrimmar 
                nodes[12][45842223] = { name = L["Portal"] .. " - " .. L["Zandalar"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from New Darkshore to Zandalar 
                nodes[62][46243511] = { name = L["Portal"] .. " - " .. L["Zandalar"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from New Darkshore to Zandalar 
                nodes[85][50765561] = { name = L["Portal"] .. " - " .. L["Ruins of Lordaeron, Undercity"] .. " " .. L["(on the tower)"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Ruins of Lordaeron 
                nodes[85][55988822] = { name = L["Portal"] .. " - " .. L["Stormwind City"] .. " " .. L["(inside building)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Silvermoon City Portalroom 
                nodes[85][57098737] = { name = L["Portal"] .. " - " .. L["Valdrakken"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } --  Valdrakken Portalroom 
                nodes[85][58308788] = { name = L["Portal"] .. " - " .. L["Oribos"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Oribos Portalroom 
                nodes[85][58858950] = { name = L["Portal"] .. " - " .. L["Azsuna"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Azsuna Portalroom 
                nodes[85][57479217] = { name = L["Portal"] .. " - " .. L["Zuldazar"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Zuldazar Portalroom 
                nodes[85][57479225] = { name = L["Portal"] .. " - " .. L["Jade Forest"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- The Jade Forest Portalroom 
                nodes[85][56249171] = { name = L["Portal"] .. " - " .. L["Dalaran, Crystalsong Forest"] .. " " .. L["(inside portal chamber)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Crystalsong Forest (Old Dalaran) Portalroom 
                nodes[85][57409153] = { name = L["Portal"] .. " - " .. L["Shattrath"] .. " " .. L["(at basement)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Shattrath Portalroom 
                nodes[85][56399252] = { name = L["Portal"] .. " - " .. L["Caverns of Time"] .. " " .. L["(at basement)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Caverns of Time Portalroom 
                nodes[85][55209201] = { name = L["Portal"] .. " - " .. L["Warspear, Ashran"] .. " " .. L["(at basement)"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Warspear - Ashran Portalroom  
                nodes[85][47393928] = { name = L["Portal"] .. " - " .. L["Tol Barad"], type = "HPortal", hideOnContinent = true, showInZone = true } --  Portal to Tol Barad
                nodes[85][48863851] = { name = L["Portal"] .. " - " .. L["Uldum"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Uldum
                nodes[85][50243944] = { name = L["Portal"] .. " - " .. L["Twilight Highlands"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Twilight Highlands
                nodes[85][51203832] = { name = L["Portal"] .. " - " .. L["Hyjal"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Hyjal
                nodes[85][50863628] = { name = L["Portal"] .. " - " .. L["Deepholm"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Deepholm
                nodes[85][49203647] = { name = L["Portal"] .. " - " .. L["Vashj'ir"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Vashjir
                nodes[207][50945311] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal Tol Orgrimmar from Deepholm
                nodes[198][63482447] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal Tol Orgrimmar from Hyjal
                
            end
    
              if self.faction == "Alliance" or db.show["EnemyFaction"] then
    
                nodes[71][65984960] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Stormwind City 
                nodes[74][58942680] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Stormwind City 
                nodes[12][47092322] = { name = L["Portal"] .. " - " .. L["Boralus"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from New Darkshore to Zandalar 
                nodes[62][48023628] = { name = L["Portal"] .. " - " .. L["Boralus"] .. " " .. L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from New Darkshore to Zandalar
                nodes[198][62602315] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal Tol Stormwind from Hyjal
              end
          end
    
          --Kalimdor Zeppelins
          if self.db.profile.showContinentZeppelins then
    
            nodes[12][59814453] = { name = L["Zeppelin"] .. " - " .. L["Waking Shores, Dragon Isles"], type = "HZeppelin", showInZone = true, hideOnContinent = false } -- Zeppelin from Durotar to Waking Shores - Dragonflight
          end
    
          -- Kalimdor Ships
          if self.db.profile.showContinentShips then
    
            nodes[10][70177323] = { name = L["Ship"] .. " - " .. L["Booty Bay, Stranglethorn Vale"], type = "Ship" } -- Ship from Ratchet to Booty Bay Ship
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[12][62985416] = { name = L["Ship"] .. " - " .. L["Dazar'alor"] .. "," .. L["Zandalar"], type = "HShip" } -- Ship from Echo Isles to Dazar'alor - Zandalar
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[12][59266609] = { name = L["Ship"] .. " - " .. L["Menethil Harbor, Wetlands"], type = "AShip" } -- Ship from Dustwallow Marsh to Menethil Harbor
            end
          end
        end
    
    
        -- Eastern  Kingdom
        if self.db.profile.showContinentEasternKingdom then
    
          -- Eastern  Kingdom Dungeons
          if self.db.profile.showContinentDungeons then
    
            nodes[122][61303090] = { id = 249, type = "Dungeon" } -- Magisters' Terrace 
            nodes[95][85206430] = { id = 77, type = "Dungeon" } -- Zul'Aman 
            nodes[13][31796256] = { id = 65, type = "Dungeon" } -- Throne of Tides 
            nodes[13][42397323] = { id = 238, type = "Dungeon" } -- The Stockade 
            nodes[13][47448471] = { id = 76, type = "Dungeon" } -- Zul'Gurub 
            nodes[13][40764187] = { id = 64, type = "Dungeon" } -- Shadowfang Keep 
            nodes[13][46583029] = { id = { 311, 316 }, type = "Dungeon" } -- Scarlet Halls, Monastery 
            nodes[13][52176317] = { id = { 1197, 239 }, type = "Dungeon" } --  Legacy of Tyr Dragonflight Dungeon & Vanilla Uldaman 
            nodes[13][53646537] = { id = 239, name = "Uldaman back entrance", type = "Dungeon" } -- Uldaman (Secondary Entrance) 
            nodes[13][50573677] = { id = 246, type = "Dungeon" } -- Scholomance
            nodes[13][52712836] = { id = 236, lfgid = 40, type = "Dungeon" } -- Stratholme 
            nodes[13][54472924] = { id = 236, lfgid = 274, type = "Dungeon" }-- Stratholme Service Entrance 
            nodes[23][43251854] = { id = 236, lfgid = 274, type = "Dungeon", showInZone = true }-- Stratholme Service Entrance 
            nodes[13][42915972] = { id = 231, type = "Dungeon" } -- Gnomeregan 
            nodes[13][49428163] = { id = 860, type = "Dungeon" } -- Return to Karazhan 
            nodes[13][53977927] = { id = 237, type = "Dungeon" } -- The Temple of Atal'hakkar 
            nodes[13][40808194] = { id = 63, type = "Dungeon" } -- Deadmines
            nodes[13][53135585] = { id = 71, type = "Dungeon" } -- Grim Batol
          end
    
          -- Eastern  Kingdom Raids
          if self.db.profile.showContinentRaids then
    
            nodes[122][44304570] = { id = 752, type = "Raid" } -- Sunwell Plateau 
            nodes[13][47546862] = { id = 73, type = "Raid" } -- Blackwind Descent 
            nodes[13][54905899] = { id = 72, type = "Raid" } -- The Bastion of Twilight 
            nodes[13][35565150] = { id = 75, type = "Raid" } -- Baradin Hold
          end
    
          --Eastern Kingdom Multiple
          if self.db.profile.showContinentMultiple then
    
            nodes[13][46886972] = { id = { 741, 742, 66, 228, 229, 559 }, type = "Multiple" } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            nodes[13][49428163] = { id = { 745, 860 },  type = "Multiple" } -- Karazhan, Return to Karazhan
          end
    
          --Eastern Kingdom Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[18][60735867] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal to Orgrimmar from Tirisfal
              nodes[18][61905899] = { name = L["Portal"] .. " - " .. L["Stranglethorn"], type = "HPortal", showInZone = true } -- Portal to Orgrimmar from Tirisfal
              nodes[2070][59506694] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal to Orgrimmar from Tirisfal
              nodes[2070][59506797] = { name = L["Portal"] .. " - " .. L["Stranglethorn"], type = "HPortal", showInZone = true } -- Portal to Stranglethorn from Tirisfal
              nodes[2070][60126689] = { name = L["Portal"] .. " - " .. L["Howling Fjord"], type = "HPortal", showInZone = true } -- Portal to Howling Fjord from Tirisfal
              nodes[50][37545099] = { name = L["Portal"] .. " - " .. L["Ruins of Lordaeron, Undercity"] .. " " .. L["(on the tower)"], type = "HPortal", showInZone = true } -- Portal to Undercity from Grom'gol
              nodes[224][42233253] = { name = L["Portal"] .. " - " .. L["Ruins of Lordaeron, Undercity"] .. " " .. L["(on the tower)"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Undercity from Grom'gol
              nodes[13][43358708] = { name = L["Portal"] .. " - " .. L["Ruins of Lordaeron, Undercity"] .. " " .. L["(on the tower)"], type = "HPortal", showInZone = true } -- Portal to Undercity from Grom'gol
              nodes[94][54552795] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal to Orgrimmar from Silvermoon 
              nodes[110][58511859] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Orgrimmar from Silvermoon 
              nodes[14][27442938] = { name = L["Portal"] .. " - " .. L["Zandalar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Arathi to Zandalar 
              nodes[17][55005418] = { name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Warspear, Ashran"] ..")", type = "HPortal", showInZone = true } -- Portal from Blasted Lands to Warspear
              nodes[245][56397967] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal Tol Bard to Orgimmar  
              nodes[13][33874948] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = false } -- Portal Tol Bard to Orgimmar
              nodes[90][85181711] = { name = L["Portal"] .. " - " .. L["Hellfire Peninsula"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Portal from Old Undercity to Hellfire
              nodes[241][73595355] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Portal Tol Orgrimmar from Twilight Highlands  
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[17][66382798] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal to Stormwind 
              nodes[84][43748538] = { name = L["Portal"] .. " - " .. L["Caverns of Time"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Caverns of Time 
              nodes[84][44888577] = { name = L["Portal"] .. " - " .. L["Shattrath"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Shattrath 
              nodes[84][43638719] = { name = L["Portal"] .. " - " .. L["Exodar"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Exodar 
              nodes[84][44388868] = { name = L["Portal"] .. " - " .. L["Dalaran, Crystalsong Forest"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Dalaran 
              nodes[84][45708715] = { name = L["Portal"] .. " - " .. L["Jade Forest"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Jade Forest 
              nodes[84][48099198] = { name = L["Portal"] .. " - " .. L["Stormshield, Ashran"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Stormshield 
              nodes[84][46869339] = { name = L["Portal"] .. " - " .. L["Azsuna"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Azsuna 
              nodes[84][47579495] = { name = L["Portal"] .. " - " .. L["Oribos"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Oribos 
              nodes[84][48849344] = { name = L["Portal"] .. " - " .. L["Valdrakken"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Valdrakken 
              nodes[84][48759519] = { name = L["Portal"] .. " - " .. L["Boralus"] .. " " .. L["(inside portal chamber)"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Boralus 
              nodes[17][55005418] = { name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Stormshield, Ashran"] ..")", type = "APortal", showInZone = true } -- Portal from Blasted Lands to Warspear
              nodes[13][35134883] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = false } -- Portal Tol Bard to Stormwind
              nodes[245][75235887] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = true, showInZone = true } -- Portal Tol Bard to Stormwind  
            end
          end
    
          --Eastern Kingdom Ships
          if self.db.profile.showContinentShips then
    
            nodes[224][37037615] = { name = L["Ship"] .. " - " .. L["Ratchet, Northern Barrens"], type = "Ship", hideOnContinent = false } -- Ship from Booty Bay to Ratchet
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[13][40937205] = { name = L["Ship"] .. " - " .. L["Valiance Keep, Borean Tundra"] .. " / " .. L["Boralus Harbor, Tiragarde Sound"], type = "AShip", showInZone = true } -- Ship from Stormwind to Valiance Keep
            end
          end
          --Eastern Kingdom ContinentOldVanilla
          if self.db.profile.showContinentOldVanilla then
    
            nodes[13][54113049] = { name = L["Old version of Naxxramas - Secret Entrance (Wards of the Dread Citadel - Achievement)"], type = "VRaid", showInZone = true }-- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel 
            nodes[23][42152576] = { name = L["Old version of Naxxramas - Secret Entrance (Wards of the Dread Citadel - Achievement)"], type = "VRaid", showInZone = true, hideOnContinent = true }-- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel 
            nodes[19][48275496] = { name = L["Old keychain - use the old keychain to activate the old versions of Scarlet Monastery dungeons (you need to get first (The Scarlet Key) from Hallow's End world event or buy from auction house)"], type = "VKey1", showInZone = true } -- Scarlet Monastery Key for Old dungeons 
            nodes[13][46193139] = { name = L["Old keychain - use the old keychain to activate the old versions of Scarlet Monastery dungeons (you need to get first (The Scarlet Key) from Hallow's End world event or buy from auction house)"], type = "VKey1", showInZone = true } -- Scarlet Monastery Key for Old dungeons
            nodes[18][83863199] = { name = L["Old keychain - use the old keychain to activate the old versions of Scarlet Monastery dungeons (you need to get first (The Scarlet Key) from Hallow's End world event or buy from auction house)"], type = "VKey1", showInZone = true, hideOnContinent = true } -- Scarlet Monastery Key for Old dungeons 
            nodes[18][85353028] = { name = L["Old version of Scarlet Monastery Cathedral (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = false } -- Scarlet Monastery - Cathedral 
            nodes[18][85153180] = { name = L["Old version of Scarlet Monastery Library (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = false } -- Scarlet Monastery - Library 
            nodes[18][84763039] = { name = L["Old version of Scarlet Monastery Graveyard (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = false } -- Scarlet Monastery - Graveyard 
            nodes[18][85573138] = { name = L["Old version of Scarlet Monastery Armory (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = false } -- Scarlet Monastery - Armory 
            nodes[19][78882223] = { name = L["Old version of Scarlet Monastery Cathedral (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = true } -- Scarlet Monastery - Cathedral 
            nodes[19][78255762] = { name = L["Old version of Scarlet Monastery Library (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = true } -- Scarlet Monastery - Library 
            nodes[19][68832372] = { name = L["Old version of Scarlet Monastery Graveyard (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = true } -- Scarlet Monastery - Graveyard 
            nodes[19][86414766] = { name = L["Old version of Scarlet Monastery Armory (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"], type = "VDungeon", showInZone = true } -- Scarlet Monastery - Armory 
            nodes[13][51383556] = { type = "VDungeon", name = L["Old version of Scholomance - Secret Entrance (Memory of Scholomance - Achievement)"], showInZone = true, } -- Old Scholomance version - Memory of Scholomance - Secret Entrance Old Scholomance version 
            nodes[22][70897246] = { type = "VDungeon", name = L["Old version of Scholomance - Secret Entrance (Memory of Scholomance - Achievement)"], showInZone = true, hideOnContinent = true } -- Old Scholomance version - Memory of Scholomance - Secret Entrance Old Scholomance version
          end
        end
    
    
        -- OUTLAND
        if self.db.profile.showContinentOutland then
    
          -- Outland Dungeons
          if self.db.profile.showContinentDungeons then
    
            nodes[101][44487857] = { id = 247, type = "Dungeon", showInZone = true } -- Auchenai Crypts 
            nodes[101][46027626] = { id = 250, type = "Dungeon", showInZone = true } -- Mana-Tombs 
            nodes[101][47577861] = { id = 252, type = "Dungeon", showInZone = true } -- Sethekk Halls 
            nodes[101][46028099] = { id = 253, type = "Dungeon", showInZone = true } -- Shadow Labyrinth 
            nodes[101][65842044] = { id = 257, type = "Dungeon" } -- The Botanica 
            nodes[101][65542528] = { id = 258, type = "Dungeon" } -- The Mechanar  
            nodes[101][66722143] = { id = 254, type = "Dungeon" } -- The Arcatraz
          end
    
          -- Outland Raids
          if self.db.profile.showContinentRaids then
    
            nodes[101][66452335] = { id = 749, type = "Raid" } -- The Eye  
            nodes[101][72298069] = { id = 751, type = "Raid" } -- Black Temple 
            nodes[101][45131901] = { id = 746, type = "Raid" } -- Gruul's Lairend
          end
    
          -- Outland Multiple
          if self.db.profile.showContinentMultiple then
    
            nodes[101][56695240] = { id = { 747, 248, 256, 259 }, type = "Multiple" } -- Hellfire Ramparts, The Blood Furnace, The Shattered Halls, Magtheridon's Lair 
            nodes[101][34624490] = { id = { 748, 260, 261, 262 }, type = "Multiple" } -- Slave Pens, The Steamvault, The Underbog, Serpentshrine Cavern
          end
    
          -- Outland Portals
          if self.db.profile.showContinentPortals then
    
              nodes[111][48614203] = { name = L["Portal"] .. " - " .. L["Isle of Quel'Danas"], type = "Portal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Quel'Danas 
              nodes[108][29542339] = { name = L["Portal"] .. " - " .. L["Isle of Quel'Danas"], type = "Portal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Quel'Danas 
              nodes[101][41526586] = { name = L["Portal"] .. " - " .. L["Isle of Quel'Danas"], type = "Portal", showInZone = true } -- Portal from Shattrath to Quel'Danas
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[100][88574770] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Portal from Hellfire to Orgrimmar 
              nodes[100][89234945] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Portal from Hellfire to Orgrimmar 
              nodes[111][56784884] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Orgrimmar 
              nodes[108][31332481] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Orgrimmar 
              nodes[101][45136633] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Shattrath to Orgrimmar
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[100][88635281] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = true, showInZone = false } -- Portal from Hellfire to Stormwind 
              nodes[100][89215101] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = true } -- Portal from Hellfire to Stormwind 
              nodes[111][57214825] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Stormwind 
              nodes[108][31332481] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Stormwind 
              nodes[101][45136633] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal from Shattrath to Stormwind
            end
          end
        end
    
    
        -- Northrend
        if self.db.profile.showContinentNorthrend then
    
          -- Northrend Dungeon
          if self.db.profile.showContinentDungeons then
    
            nodes[113][40595892] = { id = { 271, 272 }, type = "Dungeon" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub 
            nodes[113][77707945] = { id = 285, type = "Dungeon" } -- Utgarde Keep, at doorway entrance 
            nodes[113][77557824] = { id = 286, type = "Dungeon" } -- Utgarde Pinnacle 
            nodes[113][41154408] = { id = { 276, 278, 280 }, type = "Dungeon" } -- The Forge of Souls, Halls of Reflection, Pit of Saron 
            nodes[113][59091507] = { id = 275, type = "Dungeon" } -- Halls of Lightning 
            nodes[113][56911729] = { id = 277, type = "Dungeon" } -- Halls of Stone 
            nodes[113][62405001] = { id = 273, type = "Dungeon" } -- Drak'Tharon Keep 
            nodes[113][75113259] = { id = 274, type = "Dungeon" } -- Gundrak Left Entrance 
            nodes[113][76533471] = { id = 274, type = "Dungeon" } -- Gundrak Right Entrance 
            nodes[127][34154413] = { id = 283, type = "Dungeon", showInZone = true } -- The Violet Hold
          end
    
          -- Northrend Raids
          if self.db.profile.showContinentRaids then
    
            nodes[113][58415888] = { id = 754, type = "Raid" } -- Naxxramas 
            nodes[113][50346038] = { id = { 755, 761 }, type = "Raid", showInZone = true } -- The Ruby Sanctum, The Obsidian Sanctum 
            nodes[113][40794199] = { id = 758, type = "Raid" } -- Icecrown Citadel 
            nodes[113][57721389] = { id = 759, type = "Raid" } -- Ulduar
            nodes[113][36624457] = { id = 753, type = "Raid" } -- Vault of Archavon
          end
    
          -- Northrend Multiple
          if self.db.profile.showContinentMultiple then
    
            nodes[113][47652029] = { id = { 757, 284 }, type = "Multiple" } -- Trial of the Crusader, Trial of the Champion 
            nodes[113][14725757] = { id = { 756, 282, 281 }, type = "Multiple" } -- The Eye of Eternity, The Nexus, The Oculus
          end
    
          if self.db.profile.showContinentPortals then  --Portal
    
            nodes[123][49111534] = { name = L["Portal"] .. " - " .. L["Dalaran"], type = "Portal", hideOnContinent = true, showInZone = true } -- LakeWintergrasp to Dalaran Portal 
            nodes[113][36504679] = { name = L["Portal"] .. " - " .. L["Dalaran"], type = "Portal", showInZone = true } -- LakeWintergrasp to Dalaran Portal
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[125][55322545] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Dalaran to Orgrimmar Portal 
              nodes[127][31103140] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } --  Dalaran to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[125][40796326] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = true } -- Dalaran to Stormwind City Portal
              nodes[127][26614271] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } --  Dalaran to Stormwind City Portal
            end
          end
    
          if self.db.profile.showContinentZeppelins then  --Zeppelins
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[113][18766562] = { name = L["Zeppelin"] .. " - " .. L["Orgrimmar"], type = "HZeppelin", showInZone = true } -- Zeppelin from Borean Tundra to Ogrimmar
            end
          end
    
          if self.db.profile.showContinentShips then  --Ships
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[113][24557044] = { name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Ship to Stormwind from Borean Tundra
              nodes[113][78998350] = { name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Ship to Stormwind from Borean Tundra
            end
          end
        end
    
    
        -- Pandaria
        if self.db.profile.showContinentPandaria then
    
          -- Pandaria Dungeons
          if self.db.profile.showContinentDungeons then
    
            nodes[424][72275515] = { id = 313, type = "Dungeon" } -- Temple of the Jade Serpent 
            nodes[424][48117132] = { id = 302, type = "Dungeon" } -- Stormstout Brewery
            nodes[424][40002920] = { id = 312, type = "Dungeon" } -- Shado-Pan Monastery
            nodes[424][23575057] = { id = 324, type = "Dungeon" } -- Siege of Niuzao Temple 
            nodes[424][42975779] = { id = 303, type = "Dungeon" } -- Gate of the Setting Sun 
            nodes[424][53575100] = { id = 321, type = "Dungeon" } -- Mogu'shan Palace
          end
    
          -- Pandaria Raids
          if self.db.profile.showContinentRaids then
    
            nodes[424][49152606] = { id = 317, type = "Raid" } -- Mogu'shan Vaults 
            nodes[424][52355265] = { id = 369, type = "Raid" } -- Siege of Orgrimmar 
            nodes[424][30076296] = { id = 330, type = "Raid" } -- Heart of Fear 
            nodes[424][23100860] = { id = 362, type = "Raid" } -- Throne of Thunder
            nodes[424][56685529] = { id = 320, type = "Raid" } -- Terrace of Endless Spring  
          end
    
          -- Pandaria Portals
          if self.db.profile.showContinentPortals then
    
            nodes[388][50657339] = { name = L["Portal"] .. " - " .. L["Isle of Thunder"], type = "Portal", hideOnContinent = false, showInZone = true } -- Portal from Shado-Pan Garrison to IsleoftheThunderKing 
            nodes[424][17970919] = { name = L["Portal"] .. " - " .. L["Shado-Pan Garrison, TownlongWastes"], type = "Portal", hideOnContinent = false } -- Portal from IsleoftheThunderKing to Shado-Pan Garrison
            nodes[504][33223269] = { name = L["Portal"] .. " - " .. L["Shado-Pan Garrison, TownlongWastes"], type = "Portal", hideOnContinent = true, showInZone = true } -- Portal from IsleoftheThunderKing to Shado-Pan Garrison
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[424][59733518] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portal from Jade Forest to Orgrimmar
            end
          end
        end
    
    
        -- Draenor
        if self.db.profile.showContinentDraenor then
    
          -- Draenor Dungeons
          if self.db.profile.showContinentDungeons then
    
            nodes[572][34102566] = { id = 385, type = "Dungeon" } -- Bloodmaul Slag Mines
            nodes[572][51322183] = { id = 536, type = "Dungeon" } -- Grimrail Depot
            nodes[572][52932678] = { id = 556, type = "Dungeon" } -- The Everbloom
            nodes[572][47961477] = { id = 558, type = "Dungeon" } -- Iron Docks
            nodes[572][53196866] = { id = 537, type = "Dungeon" } -- Shadowmoon Burial Grounds
            nodes[572][42607342] = { id = 476, type = "Dungeon" } -- Skyreach
            nodes[572][40256374] = { id = 547, type = "Dungeon" } -- Auchindoun
          end
    
          --Draenor Raids
          if self.db.profile.showContinentRaids then
    
            nodes[572][56854685] = { id = 669, type = "Raid" } -- Hellfire Citadel
            nodes[572][49992014] = { id = 457, type = "Raid" } -- Blackrock Foundry
            nodes[572][21125032] = { id = 477, type = "Raid" } -- Highmaul
          end
    
          --Draenor Garrison Portals
          if self.db.profile.showContinentOgreWaygates then
    
            nodes[543][58033444] = { name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Gorgrond
            nodes[525][59544752] = { name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate FrostfireRidge
            nodes[550][32164623] = { name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Nagrand
            nodes[535][55084813] = { name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Talador
            nodes[542][54625163] = { name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate SpiresOfArak
            nodes[539][50463566] = { name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Shadowmoon Valley
          end
    
          --Draenor Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[572][71343912] = { name = L["Portal"] .. " - " .. L["Orgrimmar"] .. " / " .. L["Vol'mar"], type = "HPortal" } -- Portal from Ashran to Orgrimmar, Vol'mar
              nodes[590][75184879] = { name = L["Portal"] .. " - " .. L["Ashran"], type = "HPortal", showInZone = true } -- Portal from Garrison to Ashran
              nodes[534][61024735] = { name = L["Portal"] .. " - " .. L["Ashran"], type = "HPortal", showInZone = true } -- Portal from Vol'mar to Ashran
              nodes[525][51416484] = { name = L["Portal"] .. " - " .. L["Ashran"], type = "HPortal", showInZone = true } -- Portal from Garrison to Ashran
              nodes[624][60825159] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, } -- Portal from Garrison to Ashran
              nodes[588][45001476] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Garrison to Ashran (Ashran Zone)
              nodes[624][53184384] = { name = L["Portal"] .. " - " .. L["Vol'mar"], type = "HPortal", showInZone = true } -- Portal from Ashran to Vol'mar Captive
              nodes[588][42911275] = { name = L["Portal"] .. " - " .. L["Vol'mar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Vol'mar Captive (Ashran Zone)
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[622][60813785] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal from Ashran to Stormwind
              nodes[588][43848830] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true } -- Portal from Ashran to Stormwind
              nodes[582][68522819] = { name = L["Portal"] .. " - " .. L["Ashran"], type = "APortal", showInZone = true } -- Portal from Garison to Ashran
              nodes[539][32261571] = { name = L["Portal"] .. " - " .. L["Ashran"], type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Garison to Ashran
            end
          end
        end
    
    
        --Broken Isles
        if self.db.profile.showContinentBrokenIsles then
    
          --Broken Isles Dungeons
          if self.db.profile.showContinentDungeons then
    
            nodes[619][47276616] = { id = 777, type = "Dungeon" } -- Assault on Violet Hold
            nodes[619][38805780] = { id = 716, type = "Dungeon" } -- Eye of Azshara
            nodes[619][34207210] = { id = 707, type = "Dungeon" } -- Vault of the Wardens
            nodes[619][89551352] = { id = 945, type = "Dungeon" } -- The Seat of the Triumvirate
            nodes[619][29403300] = { id = 740, type = "Dungeon" } -- Black Rook Hold
            nodes[619][59003060] = { id = 727, type = "Dungeon" } -- Maw of Souls
            nodes[619][47302810] = { id = 767, type = "Dungeon" } -- Neltharion's Lair
            nodes[619][49104970] = { id = 800, type = "Dungeon" } -- Court of Stars
            nodes[619][46004883] = { id = 726, type = "Dungeon" } -- The Arcway
            nodes[619][56416109] = { id = 900, type = "Dungeon" } -- Cathedral of the Night
            nodes[619][65573821] = { id = 721, type = "Dungeon" } -- Halls of Valor
            nodes[619][35792725] = { id = 762, type = "Dungeon" } -- Darkheart Thicket
            nodes[905][52513071] = { id = 945, type = "Dungeon", showInZone = true } -- The Seat of the Triumvirate
          end
    
          --Broken Isles Raids
          if self.db.profile.showContinentRaids then
    
            nodes[619][86262011] = { id = 946, type = "Raid" } -- Antorus, the Burning Throne
            nodes[619][46864732] = { id = 786, type = "Raid" } -- The Nighthold
            nodes[619][56506240] = { id = 875, type = "Raid" } -- Tomb of Sargeras
            nodes[619][64553903] = { id = 861, type = "Raid" } -- Trial of Valor
            nodes[619][34982901] = { id = 768, type = "Raid" } -- The Emerald Nightmare
            nodes[905][32896084] = { id = 946, type = "Raid", showInZone = true } -- Antorus, the Burning Throne
          end
    
          --Broken Isles Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[627][55242392] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Dalaran to Orgrimmar Portal
              nodes[619][45606186] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } --  Dalaran to Orgrimmar Portal
              nodes[630][46654129] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal to Orgrimmar from Aszuna
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[627][40416378] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = true } --  Dalaran to Stormwind City Portal
              nodes[619][45296767] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = false } --  Portal from Dalaran to Stormwind
              nodes[630][44664143] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal to Stormwind from Aszuna
              nodes[941][43092506] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = false } --  Portal from Krokuun - Vindikaar to Stormwind
             end
          end
        end
    
    
        --Zandalar
        if self.db.profile.showContinentZandalar then
    
          --Zandalar Dungeons
          if self.db.profile.showContinentDungeons then
    
            nodes[875][48865880] = { id = 968, type = "Dungeon" } -- Atal'Dazar
            nodes[875][45205880] = { id = 1041, type = "Dungeon" } -- Kings' Rest
            nodes[875][58243603] = { id = 1022, type = "Dungeon" } -- The Underrot
            nodes[875][40781425] = { id = 1030, type = "Dungeon" } -- Temple of Sethraliss
          
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[1165][44049256] = { id = 1012, type = "Dungeon", showInZone = true } -- The MOTHERLODE HORDE
              nodes[862][55995989] = { id = 1012, type = "Dungeon" } -- The MOTHERLODE HORDE
            end
          
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[875][45457850] = { id = 1012, type = "Dungeon" } -- The MOTHERLODE Alliance
            end
          end
    
          --Zandalar Raids
          if self.db.profile.showContinentRaids then
    
            nodes[875][59413469] = { id = 1031, type = "Raid" } -- Uldir
            nodes[875][86731430] = {  id = 1179, type = "Raid" } -- The Eternal Palace
            nodes[1355][50341233] = {  id = 1179, type = "Raid", showInZone = true } -- The Eternal Palace
            nodes[1528][47353182] = {  id = 1179, type = "Raid", showInZone = true } -- The Eternal Palace
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
            nodes[875][56005350] = { id = 1176, type = "Raid" } -- Battle of Dazar'alor
            end
          end
    
          -- Zandalar Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
    
              nodes[862][58474432] = { name = L["Portalroom"] .. " - " .. L["Dazar'alor"] .. " " .. L["(inside building)"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portalroom from Dazar'alor
              nodes[1165][51424583] = { name = L["Portalroom"] .. " - "  .. L["Dazar'alor"] .. " " .. L["(inside building)"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portalroom from Dazar'alor
              nodes[1163][73726194] = { name = L["Portal"] .. " - " .. L["Silvermoon City"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][74006974] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][74027739] = { name = L["Portal"] .. " - " .. L["Thunderbluff"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][73808541] = { name = L["Portal"] .. " - " .. L["Silithus"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][63008553] = { name = L["Portal"] .. " - " .. L["Nazjatar"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1165][41838761] = { name = L["(Captain Krooz) will take you to Mechagon"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Portal from Dazar'alor to Mechagon
              nodes[1165][51929455] = { name = L["These portals are only active in the game if your faction is currently occupying (Ar'gorok for the Arathi Highlands portal) or (Bashal'Aran for the Darkshore portal)"], type = "HPortal", showInZone = true } -- Portal from Dazar'alor to Arathi or Darkshore
              nodes[862][58486027] = { name = L["These portals are only active in the game if your faction is currently occupying (Ar'gorok for the Arathi Highlands portal) or (Bashal'Aran for the Darkshore portal)"], type = "HPortal", showInZone = true } -- Portal from Dazar'alor to Arathi or Darkshore
              nodes[1355][47276279] = { name = L["Portal"] .. " - " .. L["Dazar'alor"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Newhome to Dazar'alor
            end
          end
    
          if self.db.profile.showContinentShips then
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[875][57957497] = { name = L["Ship"] .. " - " .. L["Echo Isles, Durotar"], type = "HShip" } -- Ship from Zandalar to Echo Isles 
              nodes[862][54985825] = { name = L["(Captain Krooz) will take you to Mechagon"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Ship from Dazar'alor to Mechagon 
              nodes[1462][75522266] = { name = L["(Captain Krooz) will take you back to Zuldazar"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Ship from Mechagon to Zuldazar
              nodes[862][58466298] = { name = L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Ship from Dazar'alor to Drustvar, Tiragarde Sound or Stormsong Valley
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[875][33051846] = { name = L["Back to Boralus"], type = "AShip" } -- Ship to Boralus from Vol'dun 
              nodes[875][62402600] = { name = L["Back to Boralus"], type = "AShip" } -- Ship to Boralus from Nazmir 
              nodes[875][47177779] = { name = L["Back to Boralus"], type = "AShip" } -- Ship to Boralus from Zuldazar 
              nodes[1161][67952670] = { name = L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Portal from Dazar'alor to Mechagon
            end
          end
        end
    
        -- Kul Tiras
        if self.db.profile.showContinentKulTiras then 
    
          if self.db.profile.showContinentDungeons then
            nodes[876][19872697] = { id = 1178, type = "Dungeon" } -- Operation: Mechagon 
            nodes[876][67018056] = { id = 1001, type = "Dungeon" } -- Freehold 
            nodes[876][31675333] = { id = 1021, type = "Dungeon" } -- Waycrest Manor 
            nodes[942][78932647] = { id = 1036, type = "Dungeon" } -- Shrine of Storm 
            nodes[876][77566206] = { id = 1002, type = "Dungeon" } -- Tol Dagor
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[876][61865000] = { id = 1023, type = "Dungeon" } -- Siege of Boralus
            end
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[876][69936482] = { id = 1023, type = "Dungeon" } -- Siege of Boralus
            end
          end
    
          --Kul Tiras Raids
          if self.db.profile.showContinentRaids then
    
            nodes[876][68262354] = { id = 1177, type = "Raid" } -- Crucible of Storms
            nodes[876][86571446] = { id = 1179, type = "Raid" } -- The Eternal Palace
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[876][61645308] = { id = 1176, type = "Raid" } -- Battle of Dazar'alor
            end
          end
    
          -- Kul Tiras Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[876][61085021] = { name = L["Portalroom"] .. " - "  .. L["Boralus"] .. " " .. L["(inside building)"], type = "APortal", showInZone = true, hideOnContinent = false } -- portalroom from Boralus
              nodes[895][74072427] = { name = L["Portalroom"] .. " - "  .. L["Boralus"] .. " " .. L["(inside building)"], type = "APortal", showInZone = true } -- Portalroom from Boralus
              nodes[1161][70351605] = { name = L["Portalroom"] .. " - "  .. L["Boralus"] .. " " .. L["(inside building)"], type = "APortal", showInZone = true, hideOnContinent = false } -- Portalroom from Boralus
              nodes[1161][69641590] = { name = L["Portal"] .. " - " .. L["Silithus"], type = "APortal", showInZone = false, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][70131684] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", showInZone = false } -- Portalroom from Boralus
              nodes[1161][70381499] = { name = L["Portal"] .. " - " .. L["Exodar"], type = "APortal", showInZone = false } -- Portalroom from Boralus
              nodes[1161][70891536] = { name = L["Portal"] .. " - " .. L["Ironforge"], type = "APortal", showInZone = false } -- Portalroom from Boralu
              nodes[1161][66202451] = { name = L["These portals are only active in the game if your faction is currently occupying (Ar'gorok for the Arathi Highlands portal) or (Bashal'Aran for the Darkshore portal)"], type = "APortal", showInZone = true } -- Portalroom from Boralus
              nodes[1161][66202451] = { name = L["These portals are only active in the game if your faction is currently occupying (Ar'gorok for the Arathi Highlands portal) or (Bashal'Aran for the Darkshore portal)"], type = "APortal", showInZone = true } -- Portalroom from Boralus
            end
          end
    
          -- Kul Tiras Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[876][25676657] = {  name = L["Back to Zuldazar"], type = "HShip" } -- Portal from Drustvar to Zuldazar
              nodes[876][54391406] = {  name = L["Back to Zuldazar"], type = "HShip" } -- Portal from Stormsong Valley to Zuldazar
              nodes[876][68326548] = {  name = L["Back to Zuldazar"], type = "HShip" } -- Portal from Tiragarde Sound to Zuldazar
              nodes[876][20182395] = {  name = L["Back to Zuldazar"], type = "HShip" } -- Portal from Mechagon to Zuldazar
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[876][62485167] = { name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip" } -- Ship to Stormwind
            end
          end
        end
    
        -- Shadowlands
        if self.db.profile.showContinentShadowlands then
    
          -- Shadowlands Dungeons
          if self.db.profile.showContinentDungeons then
    
            nodes[1533][40085519] = { id = 1182, type = "Dungeon" } -- The Necrotic Wake
            nodes[1533][58602852] = { id = 1186, type = "Dungeon" } -- Spires of Ascension
            nodes[1536][59306484] = { id = 1183, type = "Dungeon" } -- Plaguefall
            nodes[1536][53215314] = { id = 1187, type = "Dungeon" } -- Theater of Pain
            nodes[1565][35715421] = { id = 1184, type = "Dungeon" } -- Mists of Tirna Scithe
            nodes[1565][68646667] = { id = 1188, type = "Dungeon" } -- De Other Side
            nodes[1525][78624930] = { id = 1185, type = "Dungeon" } -- Halls of Atonement
            nodes[1525][51093007] = { id = 1189, type = "Dungeon" } -- Sanguine Depths
            nodes[1550][31957638] = { id = 1194, type = "Dungeon" } -- Tazavesh, the Veiled Market
            nodes[2016][88914392] = { id = 1194, type = "Dungeon" } -- Tazavesh, the Veiled Market
          end
    
          --Shadowlands Raids
          if self.db.profile.showContinentRaids then
    
            nodes[1550][89067983] = { id = 1195, type = "Raid" } -- Sepulcher of the First Ones
            nodes[1970][80765336] = { id = 1195, type = "Raid" } -- Sepulcher of the First Ones
            nodes[1525][45764149] = { id = 1190, type = "Raid" } -- Castle Nathria
            nodes[1550][27081359] = { id = 1193, type = "Raid" } -- Sanctum of Domination
            nodes[1543][69703210] = { id = 1193, type = "Raid" } -- Sanctum of Domination  
          end
    
          -- Shadowlands Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[1670][20805432] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Oribos to Orgrimmar Portal
              nodes[1550][46555240] = { name = L["Portal"] .. " - " .. L["Orgrimmar"], type = "HPortal", hideOnContinent = false, showInZone = false } -- Oribos to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[1670][20654625] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = true } -- Oribos to Stormwind City Portal
              nodes[1550][46555240] = { name = L["Portal"] .. " - " .. L["Stormwind City"] , type = "APortal", hideOnContinent = false, showInZone = false } -- Oribos to Stormwind City Portal
             end
          end
        end
    
    
        -- Dragonflight
        if self.db.profile.showContinentDragonIsles then
    
          -- Dragonflight Dungeons
          if self.db.profile.showContinentDungeons then
    
            nodes[1978][52884168] = { id = 1202, type = "Dungeon" } -- Ruby Life Pools
            nodes[1978][42163601] = { id = 1199, type = "Dungeon" } -- Neltharus
            nodes[1978][43635285] = { id = 1198, type = "Dungeon" } -- The Nokhud Offensive
            nodes[1978][35407585] = { id = 1196, type = "Dungeon" } -- Brackenhide Hollow
            nodes[1978][47408261] = { id = 1203, type = "Dungeon" } -- The Azure Vault
            nodes[1978][63114151] = { id = 1201, type = "Dungeon" } -- Algeth'ar Academy
            nodes[1978][63614887] = { id = 1204, type = "Dungeon" } -- Halls of Infusion
            nodes[1978][64415841] = { id = 1209, type = "Dungeon" } -- Dawn of the Infinite
          end
    
          -- Dragonflight Raids
          if self.db.profile.showContinentRaids then
    
            nodes[2025][73065567] = { id = 1200, type = "Raid" } -- Vault of the Incarnates
            nodes[1978][86737309] = { id = 1208, type = "Raid" } -- Aberrus, the Shadowed Crucible
            nodes[2133][48451022] = { id = 1208, type = "Raid" } -- Aberrus, the Shadowed Crucible
            nodes[2200][18495245] = { id = 1207, type = "Raid" } -- Amirdrassil, the Dream's Hope
            nodes[2023][18585257] = { id = 1207, type = "Raid", showInZone = true, hideOnContinent = false }-- Amirdrassil, the Dream's Hope
          end
    
          -- Dragonflight Portals
          if self.db.profile.showContinentPortals then
    
            nodes[2025][40656084] = { name = L["Portal"] .. " - " .. L["The Timeways"], type = "Portal", hideOnContinent = false, showInZone = true } --  Portal from Valdrakken to Nazmir, Uldum and Tiragarde Sound
            nodes[2112][26104102] = { name = L["Portal"] .. " - " .. L["Badlands"], type = "Portal", hideOnContinent = false, showInZone = true } --  Portal from Valdrakken to the Badlands
            nodes[2112][53875511] = { name = L["Portal"] .. " - " .. L["The Timeways"], type = "Portal", hideOnContinent = false, showInZone = true } --  Portal from Valdrakken to Nazmir, Uldum and Tiragarde Sound
            nodes[2200][73065245] = { name = L["Portal"] .. " - " .. L["Ohn'ahran Plains"], type = "Portal", showInZone = true, hideOnContinent = false } -- Portal The Emerald Dream to Ohn'ahran Plains
            nodes[2025][36895880] = { name = L["Portal"] .. " - " .. L["Badlands"], type = "Portal", showInZone = true, hideOnContinent = false } -- Portal to Badlands
            nodes[2025][41796084] = { name = L["Portal"] .. " - " .. L["The Emerald Dream"], type = "Portal", showInZone = true, hideOnContinent = false } -- Portal to The Emerald Dream
            nodes[2023][18295226] = { name = L["Portal"] .. " - " .. L["The Emerald Dream"], type = "Portal", showInZone = false, hideOnContinent = true } -- Portal to The Emerald Dream
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then
              nodes[2112][56593828] = { name = L["Portal"] .. " - " .. L["Orgrimmar"] .. " " .. L["(inside building)"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Valdrakken to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[2112][59804169] = { name = L["Portal"] .. " - " .. L["Stormwind City"] .. " " .. L["(inside building)"], type = "APortal", hideOnContinent = false, showInZone = true } -- Valdrakken to Stormwind City Portal
            end
          end
    
          if self.db.profile.showContinentZeppelins then      -- Zeppelin
    
            if self.faction == "Horde" or db.show["EnemyFaction"] then 
              nodes[1978][59572607] = { name = L["Zeppelin"] .. " - " .. L["Orgrimmar"], type = "HZeppelin", showInZone = true } -- Zeppelin from The Waking Shores to Orgrimmar 
            end
          end
    
          if self.db.profile.showContinentShips then
    
            if self.faction == "Alliance" or db.show["EnemyFaction"] then
              nodes[1978][59732701] = { name = L["Ship"] .. " - " .. L["Stormwind City"], type = "AShip", showInZone = true } -- Zeppelin from The Waking Shores to Stormwind
            end
          end
        end
      end
    end