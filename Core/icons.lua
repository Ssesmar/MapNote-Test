local ADDON_NAME, ns = ...

local HandyNotes = LibStub("AceAddon-3.0"):GetAddon("HandyNotes", true)
if not HandyNotes then return end

local iconLink = "Interface\\Addons\\" .. ADDON_NAME .. "\\Images\\"

ns.icons = { 
--Addon Logo
["MNL"] = iconLink .. "MNL4",
--Professions
["Engineer"] = "interface/icons/trade_engineering.blp",
["Alchemy"] = "interface/icons/trade_alchemy.blp",
["Blacksmith"] = "interface/icons/trade_blacksmithing.blp",
["Skinning"] = "interface/icons/ui_profession_skinning.blp",
["Engraving"] = "interface/icons/trade_engraving.blp",
["Enchanting"] = "interface/icons/ui_profession_enchanting.blp",
["Tailoring"] = "interface/icons/trade_tailoring.blp",
["Jewelcrafting"] = "interface/icons/ui_profession_jewelcrafting.blp",
["Leatherworking"] = "interface/icons/trade_leatherworking.blp",
["Herbalism"] = "interface/icons/trade_herbalism.blp",
["Mining"] = "interface/icons/trade_mining.blp",
["Inscription"] = "interface/icons/ui_profession_inscription.blp",
["Archaeology"] = "interface/icons/trade_archaeology.blp",
["Fishing"] = "interface/icons/trade_fishing.blp",
["Cooking"] = "interface/icons/ui_profession_cooking.blp",
--expansion 
["LKalimdor"] = "interface/characterframe/temporaryportrait-male-orc.blp",
["LEK"] = "Interface/CharacterFrame/TemporaryPortrait-Female-Human",
["LBC"] = "Interface/Icons/Achievement_Boss_Illidan",
["LDF"] = "Interface/CharacterFrame/TemporaryPortrait-Male-Dracthyr",
["LZ"] = "Interface/CharacterFrame/TemporaryPortrait-Female-ZandalariTroll",
["LKT"] = "Interface/CharacterFrame/TemporaryPortrait-Male-KulTiran",
["LLG"] = "Interface/Icons/artifactability_HavocDemonHunter_AnguishoftheDeceiver",
["LMOP"] = "Interface/CharacterFrame/TEMPORARYPORTRAIT-FEMALE-PANDAREN",
["LWotlk"] = "interface/lfgframe/ui-lfr-portrait",
--instance
["LFR"] = iconLink .. "LFR",
["Dungeon"] = iconLink .. "Dungeon", 
["Raid"] = iconLink .. "Raid", 
["VInstance"] = iconLink .. "vanillaInstance",
["VKey1"] = iconLink .. "vkey1",
["MultipleM"] = iconLink .. "multipleM",
["MultipleD"] = iconLink .. "multipleD",
["MultipleR"] = iconLink .. "multipleR",
["Gray"] = iconLink .. "gray",
--zeppelin
["Zeppelin"] = iconLink .. "zeppelin",
["HZeppelin"] = iconLink .. "zeppelinH",
--portal
["Portal"] = iconLink .. "portal",
["HPortal"] = iconLink .. "hportal",
["HPortalS"] = iconLink .. "hportalS",
["APortal"] = iconLink .. "aportal",
["APortalS"] = iconLink .. "aportalS",
["PassagePortal"] = iconLink .. "passagePortal",
["PassageHPortal"] = iconLink .. "passageHPortal",
["PassageAPortal"] = iconLink .. "passageAPortal",
--ship
["Ship"] = iconLink .. "ship",
["HShip"] = iconLink .. "shipH",
["AShip"] = iconLink .. "shipA",
--world passage
["PassageDungeonRaid"] = iconLink .. "PassageDungeon",
["PassageDungeon"] = iconLink .. "PassageDungeon", 
["PassageRaid"] = iconLink .. "passageRaid", 
["PassageDungeonRaidMulti"] = iconLink .. "PassageDungeonRaidMulti", 
["PassageRaidMulti"] = iconLink .. "passageRaidMulti",
["PassageDungeonMulti"] = iconLink .. "PassageDungeonMulti",
--inside dungeon icons
["Exit"] = "interface/TARGETINGFRAME/UI-RaidTargetingIcon_7",
["PassageUpL"] = iconLink .. "passageupL",
["PassageDownL"] = iconLink .. "passagedownL",
["PassageRightL"] = iconLink .. "passagerightL",
["PassageLeftL"] = iconLink .. "passageleftL",
--transport
["TransportHelper"] = iconLink .. "tport",
["Tport2"] = iconLink .. "tport2",
["OgreWaygate"] = "Interface/Minimap/Vehicle-AllianceWarlockPortal",
["WayGateGolden"] = iconLink .. "WayGateGolden",
["WayGateGreen"] = iconLink .. "WayGateGreen",
["GPortal"] = iconLink .. "GPortal",
["Carriage"] = iconLink .. "Carriage",
--travel
["TravelL"] = iconLink .. "travelL",
["TravelM"] = iconLink .. "travelm",
["Travel"] = iconLink .. "travel", -- Horde and Alliance FP
["TravelH"] = iconLink .. "travelH", -- Horde FP
["TravelA"] = iconLink .. "travelA", -- Alliance FP
--special icons
["HIcon"] = iconLink .. "HIcon",
["AIcon"] = iconLink .. "AIcon",
["NT"] = iconLink .. "NeutralTower",
["Ghost"] = iconLink .. "Ghost",
--portrait icons
["B11M"] = "interface/characterframe/temporaryportrait-male-bloodelf",
["MOrcF"] = "interface/characterframe/temporaryportrait-female-magharorc",
["OrcM"] = "interface/characterframe/temporaryportrait-male-orc",
["UndeadF"] = "interface/characterframe/temporaryportrait-female-scourge",
["GoblinF"] = "interface/characterframe/temporaryportrait-female-goblin",
["GilneanF"] = "interface/characterframe/temporaryportrait-female-gilnean",
["KulM"] = "interface/characterframe/temporaryportrait-male-kultiran",
["DwarfF"] = "interface/characterframe/temporaryportrait-female-dwarf",
}

TextIcon = IconClass
TextIconMNL4 = TextIcon(iconLink .. "MNL4", 50, 50, 1, 50, 1, 50)
--Cities
TextIconOrgrimmar = TextIcon("interface/icons/spell_arcane_teleportorgrimmar.blp", 50, 50, 1, 50, 1, 50)
TextIconThunderBluff = TextIcon("interface/icons/spell_arcane_teleportthunderbluff.blp", 50, 50, 1, 50, 1, 50)
TextIconSilvermoon = TextIcon("interface/icons/spell_arcane_teleportsilvermoon.blp", 50, 50, 1, 50, 1, 50)
TextIconUndercity = TextIcon("interface/icons/spell_arcane_teleportundercity.blp", 50, 50, 1, 50, 1, 50)
--profession
TextIconEngineer = TextIcon("interface/icons/trade_engineering.blp", 50, 50, 1, 50, 1, 50)
TextIconAlchemy = TextIcon("interface/icons/trade_alchemy.blp", 50, 50, 1, 50, 1, 50)
TextIconBlacksmith = TextIcon("interface/icons/trade_blacksmithing.blp", 50, 50, 1, 50, 1, 50)
TextIconSkinning = TextIcon("interface/icons/ui_profession_skinning", 50, 50, 1, 50, 1, 50)
TextIconEngraving = TextIcon("interface/icons/trade_engraving.blp", 50, 50, 1, 50, 1, 50)
TextIconTailoring = TextIcon("interface/icons/trade_tailoring.blp", 50, 50, 1, 50, 1, 50)
TextIconJewelcrafting = TextIcon("interface/icons/ui_profession_jewelcrafting.blp", 50, 50, 1, 50, 1, 50)
TextIconLeatherworking = TextIcon("interface/icons/trade_leatherworking.blp", 50, 50, 1, 50, 1, 50)
TextIconHerbalism = TextIcon("interface/icons/trade_herbalism.blp", 50, 50, 1, 50, 1, 50)
TextIconMining = TextIcon("interface/icons/trade_mining.blp", 50, 50, 1, 50, 1, 50)
TextIconArchaeology = TextIcon("interface/icons/trade_archaeology.blp", 50, 50, 1, 50, 1, 50)
TextIconFishing = TextIcon("interface/icons/trade_fishing.blp", 50, 50, 1, 50, 1, 50)
TextIconCooking = TextIcon("interface/icons/ui_profession_cooking.blp", 50, 50, 1, 50, 1, 50)
TextIconInscription = TextIcon("interface/icons/ui_profession_inscription.blp", 50, 50, 1, 50, 1, 50)
TextIconEnchanting = TextIcon("interface/icons/ui_profession_enchanting.blp", 50, 50, 1, 50, 1, 50)
--portal
TextIconPortal = TextIcon(iconLink .. "portal", 50, 50, 1, 50, 1, 50) 
TextIconHPortal = TextIcon(iconLink .. "hportal", 50, 50, 1, 50, 1, 50)
TextIconAPortal = TextIcon(iconLink .. "aportal", 50, 50, 1, 50, 1, 50)
TextIconWayGateGolden = TextIcon(iconLink .. "WayGateGolden", 50, 50, 1, 50, 1, 50)
TextIconWayGateGreen = TextIcon(iconLink .. "WayGateGreen", 50, 50, 1, 50, 1, 50)
--instance
TextIconLFR = TextIcon(iconLink .. "LFR", 50, 50, 1, 50, 1, 50)
TextIconDungeon = TextIcon(iconLink .. "Dungeon", 50, 50, 1, 50, 1, 50)
TextIconRaid = TextIcon(iconLink .. "Raid", 50, 50, 1, 50, 1, 50)
TextIconVInstance = TextIcon(iconLink .. "vanillaInstance", 50, 50, 1, 50, 1, 50)
TextIconVKey1 = TextIcon(iconLink .. "vkey1", 50, 50, 1, 50, 1, 50)
TextIconMultipleM = TextIcon(iconLink .. "multipleM", 50, 50, 1, 50, 1, 50)
TextIconMultipleD = TextIcon(iconLink .. "multipleD", 50, 50, 1, 50, 1, 50)
TextIconMultipleR = TextIcon(iconLink .. "multipleR", 50, 50, 1, 50, 1, 50)
TextIconMultipleMgray = TextIcon(iconLink .. "multipleMgray", 50, 50, 1, 50, 1, 50)
TextIconMultipleDgray = TextIcon(iconLink .. "multipleDgray", 50, 50, 1, 50, 1, 50)
TextIconMultipleRgray = TextIcon(iconLink .. "multipleRgray", 50, 50, 1, 50, 1, 50)
TextIconPassageDungeonRaidM = TextIcon(iconLink .. "PassageDungeonRaid", 50, 50, 1, 50, 1, 50)
TextIconPassageDungeonM = TextIcon(iconLink .. "PassageDungeon", 50, 50, 1, 50, 1, 50)
TextIconPassageRaidM = TextIcon(iconLink .. "PassageRaid", 50, 50, 1, 50, 1, 50)
TextIconPassageDungeonRaidMultiM = TextIcon(iconLink .. "PassageDungeonRaidMulti", 50, 50, 1, 50, 1, 50)
TextIconPassageDungeonMultiM = TextIcon(iconLink .. "PassageDungeonMulti", 50, 50, 1, 50, 1, 50)
TextIconPassageRaidMultiM = TextIcon(iconLink .. "PassageRaidMulti", 50, 50, 1, 50, 1, 50)
TextIconLocked = TextIcon(iconLink .. "gray", 50, 50, 1, 50, 1, 50)
--zeppelin
TextIconZeppelin = TextIcon(iconLink .. "zeppelin", 50, 50, 1, 50, 1, 50)
TextIconHZeppelin = TextIcon(iconLink .. "zeppelinH", 50, 50, 1, 50, 1, 50)
TextIconAZeppelin = TextIcon(iconLink .. "zeppelinA", 50, 50, 1, 50, 1, 50)
--ship
TextIconShip = TextIcon(iconLink .. "ship", 50, 50, 1, 50, 1, 50)
TextIconHShip = TextIcon(iconLink .. "shipH", 50, 50, 1, 50, 1, 50)
TextIconAShip = TextIcon(iconLink .. "shipA", 70, 70, 1, 50, 1, 50)
--inside dungeon icons
TextIconExit = TextIcon("interface/TARGETINGFRAME/UI-RaidTargetingIcon_7", 50, 50, 1, 50, 1, 50)
TextIconPassageup = TextIcon(iconLink .. "PassageUpL", 50, 50, 1, 50, 1, 50)
TextIconPassagedown = TextIcon(iconLink .. "PassageDownL", 50, 50, 1, 50, 1, 50)
TextIconPassageright = TextIcon(iconLink .. "PassageRightL", 50, 50, 1, 50, 1, 50)
TextIconPassageleft = TextIcon(iconLink .. "PassageLeftL", 50, 50, 1, 50, 1, 50)
--special icon
TextIconNT = TextIcon("iconLink" .. "NeutralTower", 50, 50, 1, 50, 1, 50)
TextIconTravel = TextIcon(iconLink .. "travel", 50, 50, 1, 50, 1, 50)
TextIconTravelA = TextIcon(iconLink .. "travelA", 50, 50, 1, 50, 1, 50)
TextIconTravelH = TextIcon(iconLink .. "travelH", 50, 50, 1, 50, 1, 50)
TextIconTravelL = TextIcon(iconLink .. "travelL", 50, 50, 1, 50, 1, 50)
TextIconAIcon = TextIcon(iconLink .. "AIcon", 50, 50, 1, 50, 1, 50)
TextIconHIcon = TextIcon(iconLink .. "HIcon", 50, 50, 1, 50, 1, 50)
TextIconGhost = TextIcon(iconLink .. "Ghost", 50, 50, 1, 50, 1, 50)
--transport
TextIconTransportHelper = TextIcon(iconLink .. "tport", 60, 60, 1, 50, 1, 50)
TextIconTransport = TextIcon(iconLink .. "tport2", 60, 60, 1, 50, 1, 50)
TextIconOgreWaygate = TextIcon("Interface/Minimap/Vehicle-AllianceWarlockPortal", 60, 60, 1, 50, 1, 50)
TextIconCarriage = TextIcon("interface/minimap/vehicle-carriage", 60, 60, 1, 50, 1, 50)
--information
TextIconCheck = TextIcon("Interface/Buttons/UI-CheckBox-Up", 50, 50, 1, 50, 1, 50)
TextIconHorde = TextIcon("interface/pvprankbadges/pvprankhorde")
TextIconAlliance = TextIcon("interface/pvprankbadges/pvprankalliance")
TextIconTomTom = TextIcon(iconLink .."tomtompoint")
TextIconJournal = TextIcon("interface/icons/inv_misc_book_09")
TextIconKilledBosses = TextIcon("Interface/TargetingFrame/UI-RaidTargetingIcon_8")
--expansions
TextIconKalimdor = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-Orc")
TextIconEK = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-Human")
TextIconBC = TextIcon("Interface/Icons/Achievement_Boss_Illidan")
TextIconNorthrend = TextIcon("interface/lfgframe/ui-lfr-portrait")
TextIconPandaria = TextIcon("Interface/CharacterFrame/TEMPORARYPORTRAIT-FEMALE-PANDAREN")
TextIconDraenor = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-MagharOrc")
TextIconLegion = TextIcon("Interface/Icons/artifactability_HavocDemonHunter_AnguishoftheDeceiver")
TextIconZandalar = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-ZandalariTroll")
TextIconKT = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-KulTiran")
TextIconSL = TextIcon("interface/icons/achievement_leader_sylvanas")
TextIconDF = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-Dracthyr")
--portrait icons
TextIconDwarfF = TextIcon("interface/characterframe/temporaryportrait-female-dwarf")
TextIconGoblinF = TextIcon("interface/characterframe/temporaryportrait-female-goblin")
TextIconUndeadF = TextIcon("interface/characterframe/temporaryportrait-female-scourge")
TextIconGilneanF = TextIcon("interface/characterframe/temporaryportrait-female-gilnean")

-- 1 number --self.IconFileX = IconFileX or 0    -- the total X (horizontal) pixels in the image file - not just the icon we want
-- 2 number --self.IconFileY = IconFileY or 0    -- the total Y (vertical) pixels in the image file
-- 3 number --self.StartX = StartX or 0        -- The starting point in the file where the icon begins, counted from the left border, in pixels
-- 4 number --self.EndX = EndX or 0            -- The ending point in the file where the icon ends, counted from the left border, in pixels
-- 5 number --self.StartY = StartY or 0        -- The starting point in the file where the icon begins, counted from the top border, in pixels
-- 6 number --self.EndY = EndY or 0            -- The ending point in the file where the icon ends, counted from the top border, in pixels