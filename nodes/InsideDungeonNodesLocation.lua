local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadInsideDungeonNodesLocationInfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

--#####################################################################################################
--##########################        function to hide all nodes below         ##########################
--#####################################################################################################
if not db.show.HideMapNote then

    --#####################################################################################################
    --##################################           Dungeon Map           ##################################
    --#####################################################################################################
    
    if db.show.DungeonMap then
    
    
        --################################
        --##### Inside Dungeon Exits  ####
        --################################
    
          if self.db.profile.showDungeonExit then
    
    
        --#############################
        --#### Kalimdor Exit Notes ####
        --#############################
            nodes[280][62402795] = { mnID = 67, name = "", type = "Exit", showInZone = true } -- Maraudon Caverns of Maraudon Orange Crystal
            nodes[280][78676842] = { mnID = 68, name = "", type = "Exit", showInZone = true } -- Maraudon Caverns of Maraudon Purple Crystal 
            nodes[324][54089545] = { mnID = 207, name = "", type = "Exit", showInZone = true } -- The Stonecore
            nodes[325][54241642] = { mnID = 1527, name = "", type = "Exit", showInZone = true } -- The Vortex Pinnacle
            nodes[297][50009404] = { mnID = 1527, name = "", type = "Exit", showInZone = true } -- Halls of Orientation
            nodes[277][32581995] = { mnID = 1527, name = "", type = "Exit", showInZone = true } -- Lost City of the Tol'vir
            nodes[328][47177426] = { mnID = 1527, name = "", type = "Exit", showInZone = true } -- Throne of the Four Winds
            nodes[247][61141177] = { mnID = 81, name = "", type = "Exit", showInZone = true } -- Ruins of Ahn'Qiraj
            nodes[320][52352694] = { mnID = 81, name = "", type = "Exit", showInZone = true } -- Temple of Ahn'Qiraj
            nodes[219][56288980] = { mnID = 71, name = "", type = "Exit", showInZone = true } -- Zul'Farrak
            nodes[409][49698368] = { mnID = 75, name = "", type = "Exit", showInZone = true } -- Dragon Soul
            nodes[130][86417097] = { mnID = 75, name = "", type = "Exit", showInZone = true } -- The Culling of Stratholme
            nodes[273][49531493] = { mnID = 75, name = "", type = "Exit", showInZone = true } -- The Black Morass
            nodes[274][27084695] = { mnID = 75, name = "", type = "Exit", showInZone = true } -- Old Hillsbrad Foothills
            nodes[401][82964460] = { mnID = 75, name = "", type = "Exit", showInZone = true } -- End Time
            nodes[398][28456261] = { mnID = 75, name = "", type = "Exit", showInZone = true } -- Well of Eternity
            nodes[399][48001952] = { mnID = 75, name = "", type = "Exit", showInZone = true } -- Hour of Twilight
            nodes[248][33992035] = { mnID = 70, name = "", type = "Exit", showInZone = true } -- Onyxia Lair
            nodes[300][23471893] = { mnID = 199, name = "", type = "Exit", showInZone = true } -- Razorfen Downs
            nodes[301][71358352] = { mnID = 199, name = "", type = "Exit", showInZone = true } -- Razorfen Kraul
            nodes[240][28185543] = { mnID = 69, name = "", type = "Exit", showInZone = true } -- Dire Maul Warpwood Quarter 
            nodes[235][71829239] = { mnID = 69, name = "", type = "Exit", showInZone = true } -- Dire Maul Gordok Commons
            nodes[236][93635048] = { mnID = 69, name = "", type = "Exit", showInZone = true } -- Dire Maul Capital Gardens
            nodes[236][93637191] = { mnID = 69, name = "", type = "Exit", showInZone = true } -- Dire Maul Capital Gardens
            nodes[239][26778493] = { mnID = 69, name = "", type = "Exit", showInZone = true } -- Dire Maul Warpwood Quarter
            nodes[239][92544766] = { mnID = 69, name = "", type = "Exit", showInZone = true } -- Dire Maul Warpwood Quarter
            nodes[279][46235920] = { mnID = 10, name = "", type = "Exit", showInZone = true } -- Wailing Caverns
            nodes[213][60990723] = { mnID = 86, name = "", type = "Exit", showInZone = true } -- Ragefire Chasm
            nodes[221][45131069] = { mnID = 63, name = "", type = "Exit", showInZone = true } -- Blackfathom Deeps
            nodes[367][24579004] = { mnID = 198, name = "", type = "Exit", showInZone = true } -- Firelands
        --####################################
        --#### Eastern Kingdom Exit Notes ####
        --####################################
            nodes[220][49841022] = { mnID = 51, name = "", type = "Exit", showInZone = true } -- Tempel of Atal'hakkar
            nodes[225][50008109] = { mnID = 84, name = "", type = "Exit", showInZone = true } -- The Stockade  
            nodes[226][64132741] = { mnID = 27, name = "", type = "Exit", showInZone = true } -- Gnomeregan          
            nodes[230][28506908] = { mnID = 15, name = "", type = "Exit", showInZone = true } -- Uldaman
            nodes[230][67897238] = { mnID = 16, name = "", type = "Exit", showInZone = true } -- Uldaman
            nodes[232][25832277] = { mnID = 35, name = "", type = "Exit", showInZone = true } -- Molten Core
            nodes[242][33207928] = { mnID = 35, name = "", type = "Exit", showInZone = true } -- Blackwing Depths
            nodes[253][36814201] = { mnID = 33, name = "", type = "Exit", showInZone = true } -- Lower Blackrock Spire
            nodes[252][37854109] = { mnID = 33, name = "", type = "Exit", showInZone = true } -- Lower Blackrock Spire
            nodes[282][47339074] = { mnID = 244, name = "", type = "Exit", showInZone = true } -- Baradin Hold
            nodes[283][31016916] = { mnID = 34, name = "", type = "Exit", showInZone = true } -- Blackwing Caverns      
            nodes[285][46866374] = { mnID = 36, name = "", type = "Exit", showInZone = true } -- Blackwing Descent
            nodes[287][52518345] = { mnID = 33, name = "", type = "Exit", showInZone = true } -- Blackwing Lair
            nodes[291][29751328] = { mnID = 52, name = "", type = "Exit", showInZone = true } -- Deadmines
            nodes[293][07935708] = { mnID = 241, name = "", type = "Exit", showInZone = true } -- Grim Batol
            nodes[294][39335449] = { mnID = 241, name = "", type = "Exit", showInZone = true } -- The Bastion of Twilight
            nodes[302][83118250] = { mnID =19, name = "", type = "Exit", showInZone = true } -- Old Scarlet Monastery - Graveyard
            nodes[303][13112473] = { mnID =19, name = "", type = "Exit", showInZone = true } -- Old Scarlet Monastery - Library
            nodes[304][60849535] = { mnID =19, name = "", type = "Exit", showInZone = true } -- Old Scarlet Monastery - Armory
            nodes[305][61999199] = { mnID =19, name = "", type = "Exit", showInZone = true } -- Old Scarlet Monastery - Cathedral              
            nodes[306][39146031] = { mnID = 22, name = "", type = "Exit", showInZone = true } -- Old Scholomance  
            nodes[310][70406108] = { mnID = 21, name = "", type = "Exit", showInZone = true } -- Shadowfang Keep  
            nodes[317][68798791] = { mnID = 23, name = "", type = "Exit", showInZone = true } -- Stratholme - Main Gate
            nodes[317][63888791] = { mnID = 23, name = "", type = "Exit", showInZone = true } -- Stratholme - Main Gate
            nodes[318][65859058] = { mnID = 23, name = "", type = "Exit", showInZone = true } -- Stratholme Service Entrance
            nodes[322][49849388] = { mnID = 203, name = "", type = "Exit", showInZone = true } -- Throne of the Tides      
            nodes[333][09195307] = { mnID = 95, name = "", type = "Exit", showInZone = true } -- Zul'Aman
            nodes[335][30853659] = { mnID = 122, name = "", type = "Exit", showInZone = true } -- Sunwell Plateau
            nodes[337][29124867] = { mnID = 50, name = "", type = "Exit", showInZone = true } -- Zul'Gurub
            nodes[349][42629380] = { mnID = 122, name = "", type = "Exit", showInZone = true } -- Magisters'Terrace      
            nodes[350][61778163] = { mnID = 42, name = "", type = "Exit", showInZone = true } -- Karazhan
            nodes[431][33998886] = { mnID = 18, name = "", type = "Exit", showInZone = true } -- Scarlet Halls
            nodes[435][79354554] = { mnID = 18, name = "", type = "Exit", showInZone = true } -- Scarlet Monastery
            nodes[476][17827050] = { mnID = 22, name = "", type = "Exit", showInZone = true } -- Scholomance      
            nodes[616][37293212] = { mnID = 33, name = "", type = "Exit", showInZone = true } -- Upper Blackrock Spire
            nodes[814][64286068] = { mnID = 42, name = "", type = "Exit", showInZone = true } -- Return to Karazhan
            nodes[2071][75274137] = { mnID = 15, name = "", type = "Exit", showInZone = true } -- Uldaman Legacy of Tyr
        --#############################
        --#### Outland Exit Notes #####
        --#############################
            nodes[340][21756343] = { mnID = 104, name = "", type = "Exit", showInZone = true } -- Black Temple exit
            nodes[334][50168768] = { mnID = 109, name = "", type = "Exit", showInZone = true } -- The Eye
            nodes[330][81397732] = { mnID = 108, name = "", type = "Exit", showInZone = true } -- Gruul
            nodes[331][60991776] = { mnID = 100, name = "", type = "Exit", showInZone = true } -- Magtheridons
            nodes[332][13436343] = { mnID = 102, name = "", type = "Exit", showInZone = true } -- Serpentshrine Cavern
            nodes[266][90343942] = { mnID = 109, name = "", type = "Exit", showInZone = true } -- Botanica
            nodes[267][49378580] = { mnID = 109, name = "", type = "Exit", showInZone = true } -- Mechanar
            nodes[269][41378627] = { mnID = 109, name = "", type = "Exit", showInZone = true } -- Arcatraz
            nodes[265][21121328] = { mnID = 102, name = "", type = "Exit", showInZone = true } -- Slave Pens
            nodes[263][17353047] = { mnID = 102, name = "", type = "Exit", showInZone = true } -- Steamvault
            nodes[347][52207097] = { mnID = 100, name = "", type = "Exit", showInZone = true } -- Hellfire Ramparts
            nodes[262][28027003] = { mnID = 102, name = "", type = "Exit", showInZone = true } -- The Underbog
            nodes[261][48439051] = { mnID = 100, name = "", type = "Exit", showInZone = true } -- Blood Furnace
            nodes[260][21750952] = { mnID = 108, name = "", type = "Exit", showInZone = true } -- Shadow Labyrinth
            nodes[246][61929285] = { mnID = 100, name = "", type = "Exit", showInZone = true } -- Shattered Halls
            nodes[258][73393824] = { mnID = 108, name = "", type = "Exit", showInZone = true } -- Sethekk Halls
            nodes[272][33361564] = { mnID = 108, name = "", type = "Exit", showInZone = true } -- Mana Tombs
            nodes[256][44197716] = { mnID = 108, name = "", type = "Exit", showInZone = true } -- Auchenai Crypts
        --#############################
        --#### Northrend Exit Notes ####
        --#############################
            nodes[129][36818875] = { mnID = 114, name = "", type = "Exit", showInZone = true } -- The Nexus
            nodes[132][89717928] = { mnID = 115, name = "", type = "Exit", showInZone = true } -- Ahn'kahet
            nodes[132][07155048] = { mnID = 115, name = "", type = "Exit", showInZone = true } -- Ahn'kahet
            nodes[133][69787598] = { mnID = 117, name = "", type = "Exit", showInZone = true } -- Utgarde Keep
            nodes[137][44511493] = { mnID = 117, name = "", type = "Exit", showInZone = true } -- Utgarde Pinnacle
            nodes[138][04175378] = { mnID = 120, name = "", type = "Exit", showInZone = true } -- Halls of Lightning
            nodes[140][33993643] = { mnID = 120, name = "", type = "Exit", showInZone = true } -- Halls of Stone
            nodes[143][60834860] = { mnID = 114, name = "", type = "Exit", showInZone = true } -- The Oculus
            nodes[147][52519647] = { mnID = 120, name = "", type = "Exit", showInZone = true } -- Ulduar
            nodes[154][36812906] = { mnID = 121, name = "", type = "Exit", showInZone = true } --  Gundrak
            nodes[154][56592435] = { mnID = 121, name = "", type = "Exit", showInZone = true } --  Gundrak
            nodes[155][63654954] = { mnID = 115, name = "", type = "Exit", showInZone = true } -- Sanctum of Obsidian
            nodes[156][49218634] = { mnID = 123, name = "", type = "Exit", showInZone = true } -- Vault of Archavon
            nodes[159][12338705] = { mnID = 115, name = "", type = "Exit", showInZone = true } -- Azjol Nerub
            nodes[160][27718116] = { mnID = 121, name = "", type = "Exit", showInZone = true } -- Drak'Tharon Keep
            nodes[166][53144954] = { mnID = 115, name = "", type = "Exit", showInZone = true } -- Naxxramas
            nodes[168][45929293] = { mnID = 125, name = "", type = "Exit", showInZone = true } -- Violet Keep
            nodes[171][65705291] = { mnID = 118, name = "", type = "Exit", showInZone = true } -- Trial of the Champion
            nodes[172][65705260] = { mnID = 118, name = "", type = "Exit", showInZone = true } -- Trial of the Crusader
            nodes[183][65858917] = { mnID = 118, name = "", type = "Exit", showInZone = true } -- The Forge of Souls
            nodes[184][40607992] = { mnID = 118, name = "", type = "Exit", showInZone = true } -- Pit of Saron
            nodes[185][47338069] = { mnID = 118, name = "", type = "Exit", showInZone = true } -- Halls of Reflection
            nodes[186][38860982] = { mnID = 118, name = "", type = "Exit", showInZone = true } -- IcecrownGlacier
            nodes[200][49532819] = { mnID = 115, name = "", type = "Exit", showInZone = true } -- Sanctum of Ruby
        --#############################
        --#### Pandaria Exit Notes ####
        --#############################
            nodes[429][29594366] = { mnID = 371, name = "", type = "Exit", showInZone = true } -- The Temple of the Jade Serpent
            nodes[456][92544884] = { mnID = 433, name = "", type = "Exit", showInZone = true } -- Terrace of Endless Spring
            nodes[557][94264530] = { mnID = 390, name = "", type = "Exit", showInZone = true } -- Siege of Orgrimmar
            nodes[453][28181995] = { mnID = 390, name = "", type = "Exit", showInZone = true } -- Mogu'shan Palace
            nodes[437][61618815] = { mnID = 390, name = "", type = "Exit", showInZone = true } -- Gate of the Setting Sun
            nodes[439][80293902] = { mnID = 376, name = "", type = "Exit", showInZone = true } -- Stormstout Brewery
            nodes[474][34159074] = { mnID = 422, name = "", type = "Exit", showInZone = true } -- Heart of Fear
            nodes[458][65228587] = { mnID = 388, name = "", type = "Exit", showInZone = true } -- Siege of Niuzao Temple
            nodes[444][86415833] = { mnID = 579, name = "", type = "Exit", showInZone = true } -- Shado-Pan Monastery
            nodes[471][75437521] = { mnID = 579, name = "", type = "Exit", showInZone = true } -- Mogu'shan Vaults
            nodes[508][29592553] = { mnID = 504, name = "", type = "Exit", showInZone = true } -- Throne of Thunder
        --#############################
        --#### Draenor Exit Notes #####
        --#############################
            nodes[573][52048698] = { mnID = 525, name = "", type = "Exit", showInZone = true } -- Bloodmaul Slag Mines  
            nodes[574][08256955] = { mnID = 539, name = "", type = "Exit", showInZone = true } -- Shadowmoon Burial Grounds  
            nodes[593][49849145] = { mnID = 535, name = "", type = "Exit", showInZone = true } -- Auchindoun
            nodes[595][29594366] = { mnID = 543, name = "", type = "Exit", showInZone = true } -- Iron Docks
            nodes[598][41059246] = { mnID = 543, name = "", type = "Exit", showInZone = true } -- Blackrock Foundry
            nodes[601][60362459] = { mnID = 542, name = "", type = "Exit", showInZone = true } -- Skyreach
            nodes[606][32422553] = { mnID = 543, name = "", type = "Exit", showInZone = true } -- Grimrail Depoot
            nodes[611][26772324] = { mnID = 550, name = "", type = "Exit", showInZone = true } -- Highmaul
            nodes[620][72295519] = { mnID = 543, name = "", type = "Exit", showInZone = true } -- Everbloom
            nodes[661][72604342] = { mnID = 534, name = "", type = "Exit", showInZone = true } -- Hellfire Citadel 
        --#############################
        --##### Legion Exit Notes #####
        --#############################
            nodes[704][47730708] = { mnID = 634, name = "", type = "Exit", showInZone = true } -- Halls of Valor  
            nodes[706][46398375] = { mnID = 634, name = "", type = "Exit", showInZone = true } -- Maw of Souls
            nodes[710][69317756] = { mnID = 630, name = "", type = "Exit", showInZone = true } -- Vault of the Wardens
            nodes[713][49378886] = { mnID = 630, name = "", type = "Exit", showInZone = true } -- Eye of Azshara
            nodes[731][89555449] = { mnID = 650, name = "", type = "Exit", showInZone = true } -- Neltharion's Lair
            nodes[732][50788086] = { mnID = 627, name = "", type = "Exit", showInZone = true } -- Assault on Violet Hold
            nodes[733][36661564] = { mnID = 641, name = "", type = "Exit", showInZone = true } -- Darkheart Thicket
            nodes[749][48122160] = { mnID = 680, name = "", type = "Exit", showInZone = true } -- The Arcway
            nodes[751][29120622] = { mnID = 641, name = "", type = "Exit", showInZone = true } -- Black Rook Hold
            nodes[761][05476847] = { mnID = 680, name = "", type = "Exit", showInZone = true } -- Court of Stars
            nodes[761][41877597] = { mnID = 680, name = "", type = "Exit", showInZone = true } -- Court of Stars
            nodes[764][25518846] = { mnID = 680, name = "", type = "Exit", showInZone = true } -- The Nighthold
            nodes[777][42315825] = { mnID = 641, name = "", type = "Exit", showInZone = true } -- The Emerald Nightmare
            nodes[807][51570575] = { mnID = 634, name = "", type = "Exit", showInZone = true } -- Trial of Valor
            nodes[845][46639166] = { mnID = 646, name = "", type = "Exit", showInZone = true } -- Cathedral of Eternal Night
            nodes[850][45139239] = { mnID = 646, name = "", type = "Exit", showInZone = true } -- Tomb of Sargeras
            nodes[903][21468879] = { mnID = 882, name = "", type = "Exit", showInZone = true } -- Seat of the Triumvirate
            nodes[909][90656704] = { mnID = 885, name = "", type = "Exit", showInZone = true } -- Antorus, the Burning Throne
        --######################################
        --#### Battle of Azeroth Exit Notes ####
        --######################################
            nodes[934][79514836] = { mnID = 862, name = "", type = "Exit", showInZone = true } -- Atal'Dazar
            nodes[936][70563589] = { mnID = 895, name = "", type = "Exit", showInZone = true } -- Freehold
            nodes[974][75275526] = { mnID = 895, name = "", type = "Exit", showInZone = true } -- Tol Dagor
            nodes[1004][89874719] = { mnID = 862, name = "", type = "Exit", showInZone = true } -- Kings Rest
            nodes[1015][51418674] = { mnID = 896, name = "", type = "Exit", showInZone = true } -- Waycrest Manor
            nodes[1038][67899710] = { mnID = 864, name = "", type = "Exit", showInZone = true } -- Temple of Sethraliss
            nodes[1039][45760810] = { mnID = 942, name = "", type = "Exit", showInZone = true } -- Shrine of the Storm
            nodes[1041][36191611] = { mnID = 863, name = "", type = "Exit", showInZone = true } -- The Underrot      
            nodes[1148][52679428] = { mnID = 863, name = "", type = "Exit", showInZone = true } -- Uldir    
            nodes[1010][50639270] = { mnID = 862, name = "", type = "Exit", showInZone = true } -- The Motherlode    
            nodes[1162][76681988] = { mnID = 895, name = "", type = "Exit", showInZone = true } -- Siege of Boralus
            nodes[1345][68368768] = { mnID = 942, name = "", type = "Exit", showInZone = true } -- Crucible of Storms
            nodes[1490][71683749] = { mnID = 1462, name = "", type = "Exit", showInZone = true } -- Operation: Mechagon
            nodes[1512][94264884] = { mnID = 1355, name = "", type = "Exit", showInZone = true } -- The Eternal Palace
            
            if self.faction == "Horde" then
              nodes[1358][23941752] = { mnID = 862, name = "", type = "Exit", showInZone = true } -- Battle of Dazar'alor  
            end

            if self.faction == "Alliance" then
              nodes[1358][23941752] = { mnID = 895, name = "", type = "Exit", showInZone = true } -- Battle of Dazar'alor 
            end
        --################################
        --#### Shadowlands Exit Notes ####
        --################################
            nodes[1663][89875409] = { mnID = 1525, name = "", type = "Exit", showInZone = true } -- Halls of Atonement
            nodes[1666][82863999] = { mnID = 1533, name = "", type = "Exit", showInZone = true } -- The Necrotic Wake
            nodes[1669][93861796] = { mnID = 1565, name = "", type = "Exit", showInZone = true } -- Mists of Tirna Scithe
            nodes[1674][29981643] = { mnID = 1536, name = "", type = "Exit", showInZone = true } -- Plaguefall
            nodes[1675][09825103] = { mnID = 1525, name = "", type = "Exit", showInZone = true } -- Sanguine Depths
            nodes[1680][50581456] = { mnID = 1565, name = "", type = "Exit", showInZone = true } -- De Other Side
            nodes[1683][50498296] = { mnID = 1536, name = "", type = "Exit", showInZone = true } -- Theater of Pain
            nodes[1692][40586445] = { mnID = 1533, name = "", type = "Exit", showInZone = true } -- Spires of Ascension
            nodes[1735][34468069] = { mnID = 1525, name = "", type = "Exit", showInZone = true } -- Castle Nathria
            nodes[1998][29478607] = { mnID = 1543, name = "", type = "Exit", showInZone = true } -- Sanctum of Domination
            nodes[1989][90914372] = { mnID = 2016, name = "", type = "Exit", showInZone = true } -- Tazavesh, the Veiled Market
            nodes[2047][07465150] = { mnID = 1970, name = "", type = "Exit", showInZone = true } -- Sepulcher of the First Ones
        --#################################
        --#### Dragon Isles Exit Notes ####
        --#################################
            nodes[2073][77623071] = { mnID = 2024, name = "", type = "Exit", showInZone = true } -- The Azure Vault
            nodes[2080][52562070] = { mnID = 2022, name = "", type = "Exit", showInZone = true } -- Neltharus
            nodes[2082][08403471] = { mnID = 2025, name = "", type = "Exit", showInZone = true } -- Halls of Infusion
            nodes[2093][60673862] = { mnID = 2023, name = "", type = "Exit", showInZone = true } -- The Nokhud Offensive
            nodes[2095][42789333] = { mnID = 2022, name = "", type = "Exit", showInZone = true } -- Ruby Life Pools
            nodes[2096][06524366] = { mnID = 2024, name = "", type = "Exit", showInZone = true } -- Brackenhide Hollow
            nodes[2097][42157591] = { mnID = 2025, name = "", type = "Exit", showInZone = true } -- Algeth'ar Academy
            nodes[2190][33202089] = { mnID = 2025, name = "", type = "Exit", showInZone = true } -- Dawn of the Infinite
            nodes[2119][63509475] = { mnID = 2025, name = "", type = "Exit", showInZone = true } -- Vault of the Incarnates
            nodes[2166][51269498] = { mnID = 2133, name = "", type = "Exit", showInZone = true } -- Aberrus, the Shadowed Crucible
            nodes[2232][50789310] = { mnID = 2200, name = "", type = "Exit", showInZone = true } -- Amirdrassil, the Dream's Hope
          end
    
    
        --################################
        --#### Inside Dungeon Passage ####
        --################################
          if self.db.profile.showDungeonPassage then

        --##########################
        --#### Kalimdor Passage ####
        --##########################
          --Mauradon
            nodes[280][13585809] = { mnID = 281, dnID = DUNGEON_FLOOR_MARAUDON2, name = "", type = "PassageLeftL", showInZone = true } -- Maraudon passage to Zaetar's Grave
            nodes[281][29120410] = { mnID = 280, dnID = DUNGEON_FLOOR_MARAUDON1, name = "", type = "PassageRightL", showInZone = true } -- Maraudon passage to Zaetar's Grave
          --Blackfathom Deeps
            nodes[221][61467332] = { mnID = 222, dnID = DUNGEON_FLOOR_BLACKFATHOMDEEPS2, name = "", type = "PassageDownL", showInZone = true } -- The Pool of Ask'Ar
            nodes[222][33682913] = { mnID = 221, dnID = DUNGEON_FLOOR_BLACKFATHOMDEEPS1, name = "", type = "PassageLeftL", showInZone = true } -- Moonshrine Sanctum
            nodes[222][45767732] = { mnID = 223, dnID = DUNGEON_FLOOR_BLACKFATHOMDEEPS3, name = "", type = "PassageRightL", showInZone = true } -- Moonshrine Sanctum
            nodes[223][40426226] = { mnID = 222, dnID = DUNGEON_FLOOR_BLACKFATHOMDEEPS2, name = "", type = "PassageLeftL", showInZone = true } -- The Forgotten Pool
          --Firelands
            nodes[367][49532089] = { mnID = 369, dnID = DUNGEON_FLOOR_FIRELANDS2, name = "", type = "PassageUpL", showInZone = true } -- Firelands
            nodes[369][50949145] = { mnID = 367, dnID = DUNGEON_FLOOR_FIRELANDS0, name = "", type = "PassageDownL", showInZone = true } -- Sulfuron Keep
          --The Culling of Stratholme
            nodes[130][47331948] = { mnID = 131, dnID = DUNGEON_FLOOR_COTSTRATHOLME1, name = "", type = "PassageUpL", showInZone = true } -- The Culling of Stratholme
            nodes[131][50477779] = { mnID = 130, dnID = DUNGEON_FLOOR_COTSTRATHOLME0, name = "", type = "PassageDownL", showInZone = true } -- Stratholme City
          --Hour of Twillight
            nodes[399][49847521] = { mnID = 400, dnID = DUNGEON_FLOOR_HOUROFTWILIGHT1, name = "", type = "PassageDownL", showInZone = true } -- Hour of Twillight
            nodes[400][44661477] = { mnID = 399, dnID = DUNGEON_FLOOR_HOUROFTWILIGHT0, name = "", type = "PassageUpL", showInZone = true } -- Wyrmrest Temple
          --Halls of Orientation
            nodes[297][67425072] = { mnID = 299, dnID = DUNGEON_FLOOR_HALLSOFORIGINATION3, name = "", type = "PassageUpL", showInZone = true } -- Hall des Lichts
            nodes[299][47334914] = { mnID = 297, dnID = DUNGEON_FLOOR_HALLSOFORIGINATION1, name = "", type = "PassageDownL", showInZone = true } -- Die Vier Sitze
            nodes[297][67584914] = { mnID = 298, dnID = DUNGEON_FLOOR_HALLSOFORIGINATION2, name = "", type = "PassageRightL", showInZone = true } -- Hall des Lichts
            nodes[298][33204938] = { mnID = 297, dnID = DUNGEON_FLOOR_HALLSOFORIGINATION1, name = "", type = "PassageLeftL", showInZone = true } -- Grab des Erdwüters
          --Ahn'Qiraj
            nodes[320][48906273] = { mnID = 321, dnID = DUNGEON_FLOOR_AHNQIRAJ3, name = "", type = "PassageDownL", showInZone = true } -- Die Tempeltore
            nodes[321][47022819] = { mnID = 320, dnID = DUNGEON_FLOOR_AHNQIRAJ2, name = "", type = "PassageDownL", showInZone = true } -- Höhle von C'Thun
            nodes[321][58794130] = { mnID = 319, dnID = DUNGEON_FLOOR_AHNQIRAJ1, name = "", type = "PassageDownL", showInZone = true } -- Höhle von C'Thun
            nodes[321][45134820] = { mnID = 319, dnID = DUNGEON_FLOOR_AHNQIRAJ1, name = "", type = "PassageDownL", showInZone = true } -- Höhle von C'Thun
            nodes[319][34774507] = { mnID = 321, dnID = DUNGEON_FLOOR_AHNQIRAJ3, name = "", type = "PassageUpL", showInZone = true } -- Untergrund des Schwarmbaus
            nodes[319][31015331] = { mnID = 321, dnID = DUNGEON_FLOOR_AHNQIRAJ3, name = "", type = "PassageUpL", showInZone = true } -- Untergrund des Schwarmbaus
        --#################################
        --#### Eastern Kingdom Passage ####
        --#################################
          --Old Scholomance
            nodes[306][66643330] = { mnID = 307, dnID = DUNGEON_FLOOR_SCHOLOMANCE2, name = "", type = "PassageUpL", showInZone = true } -- The Reliquary
            nodes[307][29083252] = { mnID = 308, dnID = DUNGEON_FLOOR_SCHOLOMANCE3, name = "", type = "PassageRightL", showInZone = true } -- Chamber of Summoning
            nodes[307][62092937] = { mnID = 306, dnID = DUNGEON_FLOOR_SCHOLOMANCE1, name = "", type = "PassageDownL", showInZone = true } -- Chamber of Summoning
            nodes[307][29638662] = { mnID = 308, dnID = DUNGEON_FLOOR_SCHOLOMANCE3, name = "", type = "PassageUpL", showInZone = true } -- Chamber of Summoning
            nodes[307][63505338] = { mnID = 308, dnID = DUNGEON_FLOOR_SCHOLOMANCE3, name = "", type = "PassageRightL", showInZone = true } -- Chamber of Summoning
            nodes[307][41058886] = { mnID = 309, dnID = DUNGEON_FLOOR_SCHOLOMANCE4, name = "", type = "PassageLeftL", showInZone = true } -- Chamber of Summoning
            nodes[308][28812372] = { mnID = 307, dnID = DUNGEON_FLOOR_SCHOLOMANCE2, name = "", type = "PassageLeftL", showInZone = true } -- The Upper Study
            nodes[308][28812372] = { mnID = 307, dnID = DUNGEON_FLOOR_SCHOLOMANCE2, name = "", type = "PassageLeftL", showInZone = true } -- The Upper Study
            nodes[308][35408274] = { mnID = 307, dnID = DUNGEON_FLOOR_SCHOLOMANCE2, name = "", type = "PassageUpL", showInZone = true } -- The Upper Study
            nodes[308][58956226] = { mnID = 307, dnID = DUNGEON_FLOOR_SCHOLOMANCE2, name = "", type = "PassageLeftL", showInZone = true } -- The Upper Study
            nodes[309][48275691] = { mnID = 307, dnID = DUNGEON_FLOOR_SCHOLOMANCE2, name = "", type = "PassageUpL", showInZone = true } -- Headmaster's Study                
          --Old Naxxramas
            nodes[162][68327703] = { mnID = 166, dnID = DUNGEON_FLOOR_NAXXRAMAS5, name = "", type = "PassageRightL", showInZone = true }
            nodes[163][30777726] = { mnID = 166, dnID = DUNGEON_FLOOR_NAXXRAMAS5, name = "", type = "PassageLeftL", showInZone = true }
            nodes[164][65602313] = { mnID = 166, dnID = DUNGEON_FLOOR_NAXXRAMAS5, name = "", type = "PassageRightL", showInZone = true }
            nodes[165][33072286] = { mnID = 166, dnID = DUNGEON_FLOOR_NAXXRAMAS5, name = "", type = "PassageLeftL", showInZone = true }
            nodes[166][51054636] = { mnID = 162, dnID = DUNGEON_FLOOR_NAXXRAMAS1, name = "", type = "PassageLeftL", showInZone = true }
            nodes[166][55674647] = { mnID = 163, dnID = DUNGEON_FLOOR_NAXXRAMAS2, name = "", type = "PassageRightL", showInZone = true }
            nodes[166][50905253] = { mnID = 164, dnID = DUNGEON_FLOOR_NAXXRAMAS3, name = "", type = "PassageLeftL", showInZone = true }
            nodes[166][55675253] = { mnID = 165, dnID = DUNGEON_FLOOR_NAXXRAMAS4, name = "", type = "PassageRightL", showInZone = true }
          --Stratholme
            nodes[317][90343235] = { mnID = 318, dnID = DUNGEON_FLOOR_STRATHOLME2, name = "", type = "PassageRightL", showInZone = true }
            nodes[318][58427709] = { mnID = 317, dnID = DUNGEON_FLOOR_STRATHOLME1, name = "", type = "PassageLeftL", showInZone = true }     
          --Sunwell Plateau
            nodes[335][68052583] = { mnID = 336, dnID = DUNGEON_FLOOR_SUNWELLPLATEAU1, name = "", type = "PassageDownL", showInZone = true }
            nodes[336][52961406] = { mnID = 335, dnID = DUNGEON_FLOOR_SUNWELLPLATEAU0, name = "", type = "PassageUpL", showInZone = true }            
          --Magisters'Terrace
            nodes[348][83123808] = { mnID = 349, dnID = DUNGEON_FLOOR_MAGISTERSTERRACE2, name = "", type = "PassageUpL", showInZone = true }
            nodes[349][83124625] = { mnID = 348, dnID = DUNGEON_FLOOR_MAGISTERSTERRACE1, name = "", type = "PassageDownL", showInZone = true }
          --Scarlet Halls
            nodes[431][55491493] = { mnID = 432, dnID = DUNGEON_FLOOR_SCARLETHALLS2, name = "", type = "PassageUpL", showInZone = true }
            nodes[432][47499411] = { mnID = 431, dnID = DUNGEON_FLOOR_SCARLETHALLS1, name = "", type = "PassageDownL", showInZone = true }
          --Scarlet Monastery
            nodes[435][48599270] = { mnID = 436, dnID = DUNGEON_FLOOR_SCARLETCATHEDRAL2, name = "", type = "PassageDownL", showInZone = true }
            nodes[436][49211140] = { mnID = 435, dnID = DUNGEON_FLOOR_SCARLETCATHEDRAL1, name = "", type = "PassageUpL", showInZone = true }
          ----Shadowfang Keep
            nodes[310][38073895] = { mnID = 311, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP2, name = "", type = "PassageDownL", showInZone = true }
            nodes[310][35726720] = { mnID = 316, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP7, name = "", type = "PassageUpL", showInZone = true }
            nodes[310][14848721] = { mnID = 311, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP2, name = "", type = "PassageDownL", showInZone = true }
            nodes[311][27248964] = { mnID = 310, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP1, name = "", type = "PassageUpL", showInZone = true }
            nodes[311][61611265] = { mnID = 310, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP1, name = "", type = "PassageUpL", showInZone = true }
            nodes[316][23477528] = { mnID = 310, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP1, name = "", type = "PassageDownL", showInZone = true }
            nodes[316][44033290] = { mnID = 312, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP3, name = "", type = "PassageUpL", showInZone = true }
            nodes[312][51738957] = { mnID = 313, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP4, name = "", type = "PassageUpL", showInZone = true }
            nodes[312][52966131] = { mnID = 316, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP7, name = "", type = "PassageDownL", showInZone = true }
            nodes[313][52048964] = { mnID = 312, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP3, name = "", type = "PassageDownL", showInZone = true }
            nodes[313][42787410] = { mnID = 314, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP5, name = "", type = "PassageUpL", showInZone = true }
            nodes[314][47337732] = { mnID = 313, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP4, name = "", type = "PassageUpL", showInZone = true }
            nodes[314][42787379] = { mnID = 315, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP6, name = "", type = "PassageDownL", showInZone = true }
            nodes[315][41688493] = { mnID = 314, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP5, name = "", type = "PassageDownL", showInZone = true }
          --Scholomance
            nodes[476][80612388] = { mnID = 477, dnID = DUNGEON_FLOOR_SCHOLOMANCE2, name = "", type = "PassageLeftL", showInZone = true }
            nodes[477][77002654] = { mnID = 476, dnID = DUNGEON_FLOOR_SCHOLOMANCE1, name = "", type = "PassageRightL", showInZone = true }
            nodes[477][57539388] = { mnID = 478, dnID = DUNGEON_FLOOR_SCHOLOMANCE3, name = "", type = "PassageDownL", showInZone = true }
            nodes[478][49531423] = { mnID = 477, dnID = DUNGEON_FLOOR_SCHOLOMANCE2, name = "", type = "PassageUpL", showInZone = true }
            nodes[478][49692718] = { mnID = 479, dnID = DUNGEON_FLOOR_SCHOLOMANCE4, name = "", type = "PassageDownL", showInZone = true }
            nodes[479][50001854] = { mnID = 478, dnID = DUNGEON_FLOOR_SCHOLOMANCE3, name = "", type = "PassageUpL", showInZone = true }
           --Bastion of Twilight 
            nodes[294][53928980] = { mnID = 295, dnID = DUNGEON_FLOOR_THEBASTIONOFTWILIGHT2, name = "", type = "PassageDownL", showInZone = true }
            nodes[295][55021194] = { mnID = 294, dnID = DUNGEON_FLOOR_THEBASTIONOFTWILIGHT1, name = "", type = "PassageUpL", showInZone = true }
            nodes[295][69627598] = { mnID = 296, dnID = DUNGEON_FLOOR_THEBASTIONOFTWILIGHT3, name = "", type = "PassageDownL", showInZone = true }
          --Gnomeregan
            nodes[226][34936437] = { mnID = 227, dnID = DUNGEON_FLOOR_GNOMEREGAN2, name = "", type = "PassageDownL", showInZone = true }
            nodes[226][47498509] = { mnID = 227, dnID = DUNGEON_FLOOR_GNOMEREGAN2, name = "", type = "PassageDownL", showInZone = true }
            nodes[227][42788328] = { mnID = 228, dnID = DUNGEON_FLOOR_GNOMEREGAN3, name = "", type = "PassageDownL", showInZone = true }
            nodes[227][73548093] = { mnID = 226, dnID = DUNGEON_FLOOR_GNOMEREGAN1, name = "", type = "PassageUpL", showInZone = true }
            nodes[227][61306115] = { mnID = 226, dnID = DUNGEON_FLOOR_GNOMEREGAN1, name = "", type = "PassageUpL", showInZone = true }
            nodes[228][44514366] = { mnID = 227, dnID = DUNGEON_FLOOR_GNOMEREGAN3, name = "", type = "PassageUpL", showInZone = true }
            nodes[228][23325001] = { mnID = 229, dnID = DUNGEON_FLOOR_GNOMEREGAN4, name = "", type = "PassageDownL", showInZone = true }
            nodes[229][46555550] = { mnID = 228, dnID = DUNGEON_FLOOR_GNOMEREGAN3, name = "", type = "PassageUpL", showInZone = true }
          --Throne of the Tides
            nodes[322][50003148] = { mnID = 323, dnID = DUNGEON_FLOOR_THRONEOFTIDES2, name = "", type = "PassageUpL", showInZone = true }
            nodes[323][50318368] = { mnID = 322, dnID = DUNGEON_FLOOR_THRONEOFTIDES1, name = "", type = "PassageDownL", showInZone = true }
            nodes[323][51415190] = { mnID = 322, dnID = DUNGEON_FLOOR_THRONEOFTIDES1, name = "", type = "PassageDownL", showInZone = true }
          --Uldaman
            nodes[230][47171328] = { mnID = 231, dnID = DUNGEON_FLOOR_ULDAMAN2, name = "", type = "PassageUpL", showInZone = true }
            nodes[231][64914184] = { mnID = 230, dnID = DUNGEON_FLOOR_ULDAMAN1, name = "", type = "PassageUpL", showInZone = true }
          --Blackrock Caverns
            nodes[283][54242388] = { mnID = 284, dnID = DUNGEON_FLOOR_BLACKWINGDESCENT2, name = "", type = "PassageUpL", showInZone = true }
            nodes[284][33991477] = { mnID = 283, dnID = DUNGEON_FLOOR_BLACKWINGDESCENT1, name = "", type = "PassageUpL", showInZone = true }
          --Blackwing Descent
            nodes[285][47024577] = { mnID = 286, dnID = DUNGEON_FLOOR_BLACKROCKCAVERNS1, name = "", type = "PassageUpL", showInZone = true }
            nodes[286][47499058] = { mnID = 285, dnID = DUNGEON_FLOOR_BLACKROCKCAVERNS2, name = "", type = "PassageDownL", showInZone = true }
          --Upper Blackrock Spire
            nodes[616][30221477] = { mnID = 617, dnID = DUNGEON_FLOOR_UPPERBLACKROCKSPIRE2, name = "", type = "PassageUpL", showInZone = true }
            nodes[617][30071658] = { mnID = 616, dnID = DUNGEON_FLOOR_UPPERBLACKROCKSPIRE1, name = "", type = "PassageDownL", showInZone = true }
            nodes[617][28344201] = { mnID = 618, dnID = DUNGEON_FLOOR_UPPERBLACKROCKSPIRE3, name = "", type = "PassageUpL", showInZone = true }
            nodes[618][39294090] = { mnID = 617, dnID = DUNGEON_FLOOR_UPPERBLACKROCKSPIRE2, name = "", type = "PassageDownL", showInZone = true }
          --Lower Blackrock Spire
            nodes[250][59576461] = { mnID = 251, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE2, name = "", type = "PassageUpL", showInZone = true }
            nodes[250][63347003] = { mnID = 251, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE2, name = "", type = "PassageRightL", showInZone = true }
            nodes[251][56755079] = { mnID = 252, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE3, name = "", type = "PassageRightL", showInZone = true }
            nodes[251][59266398] = { mnID = 250, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE1, name = "", type = "PassageDownL", showInZone = true }
            nodes[251][64287070] = { mnID = 250, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE1, name = "", type = "PassageLeftL", showInZone = true }
            nodes[251][51887457] = { mnID = 252, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE3, name = "", type = "PassageLeftL", showInZone = true }
            nodes[252][50474107] = { mnID = 253, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE4, name = "", type = "PassageLeftL", showInZone = true }
            nodes[252][55185072] = { mnID = 251, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE2, name = "", type = "PassageLeftL", showInZone = true }
            nodes[252][39804813] = { mnID = 253, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE4, name = "", type = "PassageRightL", showInZone = true }
            nodes[252][62715425] = { mnID = 251, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE2, name = "", type = "PassageDownL", showInZone = true }
            nodes[252][47026508] = { mnID = 253, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE4, name = "", type = "PassageUpL", showInZone = true }
            nodes[252][49697356] = { mnID = 251, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE2, name = "", type = "PassageRightL", showInZone = true }
            nodes[253][49534083] = { mnID = 252, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE3, name = "", type = "PassageRightL", showInZone = true }
            nodes[253][39174836] = { mnID = 252, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE3, name = "", type = "PassageLeftL", showInZone = true }
            nodes[253][45456414] = { mnID = 252, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE3, name = "", type = "PassageDownL", showInZone = true }
            nodes[253][42627568] = { mnID = 254, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE5, name = "", type = "PassageUpL", showInZone = true }
            nodes[254][42627568] = { mnID = 253, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE4, name = "", type = "PassageDownL", showInZone = true }
            nodes[254][39485990] = { mnID = 255, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE6, name = "", type = "PassageRightL", showInZone = true }
            nodes[256][42316024] = { mnID = 254, dnID = DUNGEON_FLOOR_BLACKROCKSPIRE5, name = "", type = "PassageLeftL", showInZone = true }
          --Blackwing Lair 
            nodes[287][43413031] = { mnID = 288, dnID = DUNGEON_FLOOR_BLACKWINGLAIR2, name = "", type = "PassageUpL", showInZone = true }
            nodes[287][35871312] = { mnID = 288, dnID = DUNGEON_FLOOR_BLACKWINGLAIR2, name = "", type = "PassageUpL", showInZone = true }
            nodes[288][51883283] = { mnID = 287, dnID = DUNGEON_FLOOR_BLACKWINGLAIR1, name = "", type = "PassageDownL", showInZone = true }
            nodes[288][46232011] = { mnID = 287, dnID = DUNGEON_FLOOR_BLACKWINGLAIR1, name = "", type = "PassageDownL", showInZone = true }
            nodes[288][50318274] = { mnID = 289, dnID = DUNGEON_FLOOR_BLACKWINGLAIR3, name = "", type = "PassageUpL", showInZone = true }
            nodes[289][39802089] = { mnID = 290, dnID = DUNGEON_FLOOR_BLACKWINGLAIR4, name = "", type = "PassageUpL", showInZone = true }
            nodes[289][52358728] = { mnID = 288, dnID = DUNGEON_FLOOR_BLACKWINGLAIR2, name = "", type = "PassageDownL", showInZone = true }
            nodes[290][31794813] = { mnID = 289, dnID = DUNGEON_FLOOR_BLACKWINGLAIR3, name = "", type = "PassageDownL", showInZone = true }
            --The Deadmines
            nodes[291][65546861] = { mnID = 292, dnID = DUNGEON_FLOOR_THEDEADMINES2, name = "", type = "PassageDownL", showInZone = true }            
            nodes[292][17198328] = { mnID = 291, dnID = DUNGEON_FLOOR_THEDEADMINES1, name = "", type = "PassageUpL", showInZone = true }
          -- 
            nodes[313][49211140] = { mnID = 435, dnID = DUNGEON_FLOOR_SHADOWFANGKEEP, name = "", type = "PassageUpL", showInZone = true }        



        --##########################
        --#### Outland Passage #####
        --##########################
          --Black Temple
            nodes[339][28657991] = { mnID = 340, dnID = DUNGEON_FLOOR_BLACKTEMPLE1, name = "", type = "PassageDownL", showInZone = true } -- Kanä
            nodes[339][76054672] = { mnID = 341, dnID = DUNGEON_FLOOR_BLACKTEMPLE2, name = "", type = "PassageRightL", showInZone = true } --       
            nodes[340][27240693] = { mnID = 339, dnID = DUNGEON_FLOOR_BLACKTEMPLE0, name = "", type = "PassageUpL", showInZone = true } -- Kanäle von Karabor
            nodes[341][61933384] = { mnID = 342, dnID = DUNGEON_FLOOR_BLACKTEMPLE3, name = "", type = "PassageRightL", showInZone = true } -- 
            nodes[341][21124985] = { mnID = 339, dnID = DUNGEON_FLOOR_BLACKTEMPLE0, name = "", type = "PassageLeftL", showInZone = true } -- 
            nodes[341][57859035] = { mnID = 343, dnID = DUNGEON_FLOOR_BLACKTEMPLE4, name = "", type = "PassageLeftL", showInZone = true } -- 
            nodes[341][26302301] = { mnID = 344, dnID = DUNGEON_FLOOR_BLACKTEMPLE5, name = "", type = "PassageDownL", showInZone = true } -- 
            nodes[342][63033918] = { mnID = 341, dnID = DUNGEON_FLOOR_BLACKTEMPLE2, name = "", type = "PassageLeftL", showInZone = true } -- 
            nodes[343][74966845] = { mnID = 341, dnID = DUNGEON_FLOOR_BLACKTEMPLE2, name = "", type = "PassageRightL", showInZone = true } -- 
            nodes[344][08254813] = { mnID = 341, dnID = DUNGEON_FLOOR_BLACKTEMPLE2, name = "", type = "PassageUpL", showInZone = true } -- 
            nodes[344][67275590] = { mnID = 345, dnID = DUNGEON_FLOOR_BLACKTEMPLE6, name = "", type = "PassageDownL", showInZone = true } -- 
            nodes[345][47333054] = { mnID = 346, dnID = DUNGEON_FLOOR_BLACKTEMPLE7, name = "", type = "PassageUpL", showInZone = true } -- 
            nodes[345][69461241] = { mnID = 344, dnID = DUNGEON_FLOOR_BLACKTEMPLE5, name = "", type = "PassageUpL", showInZone = true } -- 
            nodes[346][52821234] = { mnID = 345, dnID = DUNGEON_FLOOR_BLACKTEMPLE6, name = "", type = "PassageUpL", showInZone = true } -- 
        --###########################
        --#### Northrend Passage ####
        --###########################
    
        --##########################
        --#### Pandaria Passage ####
        --##########################
    
        --##########################
        --#### Draenor Passage #####
        --##########################
    
        --##############################
        --#### Borken Isles Passage ####
        --##############################

        --###################################
        --#### Northrend Dungeon Portals ####
        --###################################        
          end


        --##################################
        --#### Inside Dungeon Transport ####
        --##################################
          if self.db.profile.showDungeonTransport then

        --####################################
        --#### Kalimdor Dungeon Transport ####
        --####################################
          --Dragon Soul
            nodes[409][49145903] = { mnID = 410, dnID = DUNGEON_FLOOR_DRAGONSOUL1, name = "", type = "TravelM", showInZone = true } -- Dragon Soul
            nodes[409][51055925] = { mnID = 411, dnID = DUNGEON_FLOOR_DRAGONSOUL2, name = "", type = "TravelM", showInZone = true } -- Dragon Soul
            nodes[409][50145769] = { name = L["(on the tower)"], type = "TravelM", showInZone = true } -- Dragon Soul
          end



        --################################
        --#### Inside Dungeon Portals ####
        --################################
          if self.db.profile.showDungeonPortal then

        --###################################
        --#### Kalimdor Dungeon Portals #####
        --###################################
          --Dragon Soul
            nodes[411][57698846] = { mnID = 409, dnID = DUNGEON_FLOOR_DRAGONSOUL0, name = "", type = "Portal", showInZone = true } -- to Maw of Shu'ma
            nodes[410][23324020] = { mnID = 409, dnID = DUNGEON_FLOOR_DRAGONSOUL0, name = "", type = "Portal", showInZone = true } -- to Maw of Go'rath
            nodes[412][52181359] = { mnID = 409, dnID = DUNGEON_FLOOR_DRAGONSOUL0, name = "", type = "Portal", showInZone = true } -- to Eye of Eternity
            nodes[409][50606029] = { mnID = 412, dnID = DUNGEON_FLOOR_DRAGONSOUL3, name = "", type = "Portal", showInZone = true } -- Dragon Soul to Eye of Eternity
          --End Time
            nodes[401][79774484] = { mnID = 403, dnID = DUNGEON_FLOOR_ENDTIME0, name = "", type = "Portal", showInZone = true } -- End Time - 
            nodes[403][33054295] = { mnID = 402, dnID = DUNGEON_FLOOR_ENDTIME1, name = "", type = "Portal", showInZone = true } -- End Time - to Ruby Dragonshrine
            nodes[402][41428063] = { mnID = 401, dnID = DUNGEON_FLOOR_ENDTIME2, name = "", type = "Portal", showInZone = true } -- End Time - to Azure Dragonshrine
        --##########################################
        --#### Eastern Kingdom Dungeon Portals #####
        --##########################################
          --Old Naxxramas
            nodes[166][55844846] = { mnID = 23, name = L["Secret Portal"] .. " " .. L["(Wards of the Dread Citadel - Achievement)"] , type = "Portal", showInZone = true }
            nodes[162][24531196] = { mnID = 166, dnID = DUNGEON_FLOOR_NAXXRAMAS5, name = "", type = "Portal", showInZone = true }
            nodes[163][72381984] = { mnID = 166, dnID = DUNGEON_FLOOR_NAXXRAMAS5, name = "", type = "Portal", showInZone = true }
            nodes[164][27438096] = { mnID = 166, dnID = DUNGEON_FLOOR_NAXXRAMAS5, name = "", type = "Portal", showInZone = true }
            nodes[165][80352881] = { mnID = 166, dnID = DUNGEON_FLOOR_NAXXRAMAS5, name = "", type = "Portal", showInZone = true }
            nodes[166][53324933] = { mnID = 167, dnID = DUNGEON_FLOOR_NAXXRAMAS6, name = "", type = "Portal", showInZone = true }
            nodes[167][74087267] = { mnID = 166, dnID = DUNGEON_FLOOR_NAXXRAMAS5, name = "", type = "Portal", showInZone = true }
            --
        --###################################
        --#### Northrend Dungeon Portals ####
        --###################################
          --Icecrown Citadel
            nodes[186][33822342] = { mnID = 125, name = "", type = "Portal", showInZone = true } -- IcecrownGlacier
        --###################################
        --#### Pandaria Dungeon Portals #####
        --###################################
          end
        end
      end 
    end