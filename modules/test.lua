local ADDON_NAME, ns = ...

local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)


local nodes = { }
ns.nodes = nodes

  nodes[11] = { } -- Wailing Caverns
  nodes[12] = { } -- Kalimdor 
  nodes[67] = { } -- Maraudon Outside  
  nodes[68] = { } -- Maraudon Foulspore Cavern  
  nodes[69] = { } -- Feralas
  nodes[75] = { } -- Caverns of Time lower half
  nodes[948] = { } -- The Stonecore

  --if ns.Addon.db.profile.show.ContinentDungeons then
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
  --end