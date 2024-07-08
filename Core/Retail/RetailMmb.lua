local ADDON_NAME, ns = ...

local iconLink = "Interface\\Addons\\" .. ADDON_NAME .. "\\images\\"
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)
local MNMMBIcon = LibStub("LibDBIcon-1.0", true)

local info = C_Map.GetMapInfo(WorldMapFrame:GetMapID())
ns.miniButton = {
text = ns.COLORED_ADDON_NAME,
type = "data source",
icon = iconLink .. "MNL4",
OnTooltipShow = function(tooltip)
if not tooltip or not tooltip.AddLine then return end
  tooltip:AddLine(ns.COLORED_ADDON_NAME)
  tooltip:AddLine(" ")
  tooltip:AddLine(L["Left-click => Open/Close"] .. " " .. ns.COLORED_ADDON_NAME,1,1,1)
  tooltip:AddLine(L["Shift + Right-click => hide"] .. " " .. "|cffffff00" .. L["-> MiniMapButton <-"],1,1,1)
  tooltip:AddLine(L["Middle-Mouse-Button => Open/Close"] .. " " .. "|cff00ccff" .. "-> " .. WORLDMAP_BUTTON .." <-",1,1,1)

  -- Zone without Sync function
  if not ns.Addon.db.profile.activate.SyncZoneAndMinimap and (info.mapType == 3 or info.mapType == 5 or info.mapType == 6)
    and not (C_Map.GetBestMapForUnit("player") == 1454 or C_Map.GetBestMapForUnit("player") == 1456 --Cata nodes
    or C_Map.GetBestMapForUnit("player") == 84 or C_Map.GetBestMapForUnit("player") == 87 or C_Map.GetBestMapForUnit("player") == 89 or C_Map.GetBestMapForUnit("player") == 103 or C_Map.GetBestMapForUnit("player") == 85
    or C_Map.GetBestMapForUnit("player") == 90 or C_Map.GetBestMapForUnit("player") == 86 or C_Map.GetBestMapForUnit("player") == 88 or C_Map.GetBestMapForUnit("player") == 110 or C_Map.GetBestMapForUnit("player") == 111
    or C_Map.GetBestMapForUnit("player") == 125 or C_Map.GetBestMapForUnit("player") == 126 or C_Map.GetBestMapForUnit("player") == 391 or C_Map.GetBestMapForUnit("player") == 392 or C_Map.GetBestMapForUnit("player") == 393 
    or C_Map.GetBestMapForUnit("player") == 394 or C_Map.GetBestMapForUnit("player") == 582 or C_Map.GetBestMapForUnit("player") == 590 or C_Map.GetBestMapForUnit("player") == 622 or C_Map.GetBestMapForUnit("player") == 624 
    or C_Map.GetBestMapForUnit("player") == 626 or C_Map.GetBestMapForUnit("player") == 627 or C_Map.GetBestMapForUnit("player") == 628 or C_Map.GetBestMapForUnit("player") == 629 or C_Map.GetBestMapForUnit("player") == 1161
    or C_Map.GetBestMapForUnit("player") == 1163 or C_Map.GetBestMapForUnit("player") == 1164 or C_Map.GetBestMapForUnit("player") == 1165 or C_Map.GetBestMapForUnit("player") == 1670 or C_Map.GetBestMapForUnit("player") == 1671 
    or C_Map.GetBestMapForUnit("player") == 1672 or C_Map.GetBestMapForUnit("player") == 1673 or C_Map.GetBestMapForUnit("player") == 2112 or C_Map.GetBestMapForUnit("player") == 407 or C_Map.GetBestMapForUnit("player") == 2339
    or C_Map.GetBestMapForUnit("player") == 499 or C_Map.GetBestMapForUnit("player") == 500)
  then
    --Kalimdor
    if (C_Map.GetBestMapForUnit("player") == 1 or C_Map.GetBestMapForUnit("player") == 7 or C_Map.GetBestMapForUnit("player") == 10 or C_Map.GetBestMapForUnit("player") == 11 or C_Map.GetBestMapForUnit("player") == 57 or C_Map.GetBestMapForUnit("player") == 62 
      or C_Map.GetBestMapForUnit("player") == 63 or C_Map.GetBestMapForUnit("player") == 64 or C_Map.GetBestMapForUnit("player") == 65 or C_Map.GetBestMapForUnit("player") == 66 or C_Map.GetBestMapForUnit("player") == 67 or C_Map.GetBestMapForUnit("player") == 68 
      or C_Map.GetBestMapForUnit("player") == 69 or C_Map.GetBestMapForUnit("player") == 70 or C_Map.GetBestMapForUnit("player") == 71 or C_Map.GetBestMapForUnit("player") == 74 or C_Map.GetBestMapForUnit("player") == 75 or C_Map.GetBestMapForUnit("player") == 76 
      or C_Map.GetBestMapForUnit("player") == 77 or C_Map.GetBestMapForUnit("player") == 78 or C_Map.GetBestMapForUnit("player") == 80 or C_Map.GetBestMapForUnit("player") == 81 or C_Map.GetBestMapForUnit("player") == 83 or C_Map.GetBestMapForUnit("player") == 97 
      or C_Map.GetBestMapForUnit("player") == 106 or C_Map.GetBestMapForUnit("player") == 199 or C_Map.GetBestMapForUnit("player") == 327 or C_Map.GetBestMapForUnit("player") == 460 or C_Map.GetBestMapForUnit("player") == 461 or C_Map.GetBestMapForUnit("player") == 462 
      or C_Map.GetBestMapForUnit("player") == 468 or C_Map.GetBestMapForUnit("player") == 1527 or C_Map.GetBestMapForUnit("player") == 198 or C_Map.GetBestMapForUnit("player") == 249)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Kalimdor"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Eastern Kingdom
    elseif (WorldMapFrame:GetMapID() == 13 or WorldMapFrame:GetMapID() == 14 or WorldMapFrame:GetMapID() == 15 or WorldMapFrame:GetMapID() == 16 or WorldMapFrame:GetMapID() == 17 or WorldMapFrame:GetMapID() == 18 
      or WorldMapFrame:GetMapID() == 19 or WorldMapFrame:GetMapID() == 21 or WorldMapFrame:GetMapID() == 22 or WorldMapFrame:GetMapID() == 23 or WorldMapFrame:GetMapID() == 25 or WorldMapFrame:GetMapID() == 26 
      or WorldMapFrame:GetMapID() == 27 or WorldMapFrame:GetMapID() == 28 or WorldMapFrame:GetMapID() == 30 or WorldMapFrame:GetMapID() == 32 or WorldMapFrame:GetMapID() == 33 or WorldMapFrame:GetMapID() == 34 
      or WorldMapFrame:GetMapID() == 35 or WorldMapFrame:GetMapID() == 36 or WorldMapFrame:GetMapID() == 37 or WorldMapFrame:GetMapID() == 42 or WorldMapFrame:GetMapID() == 47 or WorldMapFrame:GetMapID() == 48 
      or WorldMapFrame:GetMapID() == 49 or WorldMapFrame:GetMapID() == 50 or WorldMapFrame:GetMapID() == 51 or WorldMapFrame:GetMapID() == 52 or WorldMapFrame:GetMapID() == 55 or WorldMapFrame:GetMapID() == 56 
      or WorldMapFrame:GetMapID() == 94 or WorldMapFrame:GetMapID() == 210 or WorldMapFrame:GetMapID() == 224 or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 425 or WorldMapFrame:GetMapID() == 427 
      or WorldMapFrame:GetMapID() == 465 or WorldMapFrame:GetMapID() == 467 or WorldMapFrame:GetMapID() == 469 or WorldMapFrame:GetMapID() == 499 or WorldMapFrame:GetMapID() == 500 or WorldMapFrame:GetMapID() == 2070 
      or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 203 or WorldMapFrame:GetMapID() == 204 or WorldMapFrame:GetMapID() == 205 or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 244 
      or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 201 or WorldMapFrame:GetMapID() == 95 or WorldMapFrame:GetMapID() == 122 or WorldMapFrame:GetMapID() == 217  or WorldMapFrame:GetMapID() == 226)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Eastern Kingdom"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Outland
    elseif (WorldMapFrame:GetMapID() == 100 or WorldMapFrame:GetMapID() == 102 or WorldMapFrame:GetMapID() == 104 or WorldMapFrame:GetMapID() == 105 or WorldMapFrame:GetMapID() == 107 or WorldMapFrame:GetMapID() == 108
      or WorldMapFrame:GetMapID() == 109)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Outland"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Northrend
    elseif (WorldMapFrame:GetMapID() == 114 or WorldMapFrame:GetMapID() == 115 or WorldMapFrame:GetMapID() == 116 or WorldMapFrame:GetMapID() == 117 or WorldMapFrame:GetMapID() == 118 or WorldMapFrame:GetMapID() == 119
      or WorldMapFrame:GetMapID() == 120 or WorldMapFrame:GetMapID() == 121 or WorldMapFrame:GetMapID() == 123 or WorldMapFrame:GetMapID() == 127 or WorldMapFrame:GetMapID() == 170)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Northrend"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Pandaria
    elseif (WorldMapFrame:GetMapID() == 371 or WorldMapFrame:GetMapID() == 376 or WorldMapFrame:GetMapID() == 379 or WorldMapFrame:GetMapID() == 388 or WorldMapFrame:GetMapID() == 390 or WorldMapFrame:GetMapID() == 418
      or WorldMapFrame:GetMapID() == 422 or WorldMapFrame:GetMapID() == 433 or WorldMapFrame:GetMapID() == 434 or WorldMapFrame:GetMapID() == 504 or WorldMapFrame:GetMapID() == 554  or WorldMapFrame:GetMapID() == 1530
      or WorldMapFrame:GetMapID() == 507)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Pandaria"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Draenor
    elseif (WorldMapFrame:GetMapID() == 525 or WorldMapFrame:GetMapID() == 534 or WorldMapFrame:GetMapID() == 535 or WorldMapFrame:GetMapID() == 539 or WorldMapFrame:GetMapID() == 542 or WorldMapFrame:GetMapID() == 543
      or WorldMapFrame:GetMapID() == 550 or WorldMapFrame:GetMapID() == 588)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Draenor"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Broken Isles
    elseif (WorldMapFrame:GetMapID() == 630 or WorldMapFrame:GetMapID() == 634 or WorldMapFrame:GetMapID() == 641 or WorldMapFrame:GetMapID() == 646 or WorldMapFrame:GetMapID() == 650 or WorldMapFrame:GetMapID() == 652
      or WorldMapFrame:GetMapID() == 750 or WorldMapFrame:GetMapID() == 680 or WorldMapFrame:GetMapID() == 830 or WorldMapFrame:GetMapID() == 882 or WorldMapFrame:GetMapID() == 885 or WorldMapFrame:GetMapID() == 905
      or WorldMapFrame:GetMapID() == 941 or WorldMapFrame:GetMapID() == 790)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Broken Isles"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Zandalar
    elseif (WorldMapFrame:GetMapID() == 862 or WorldMapFrame:GetMapID() == 863 or WorldMapFrame:GetMapID() == 864 or WorldMapFrame:GetMapID() == 1355 or WorldMapFrame:GetMapID() == 1528)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Zandalar"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Kul Tiras
    elseif (WorldMapFrame:GetMapID() == 895 or WorldMapFrame:GetMapID() == 896 or WorldMapFrame:GetMapID() == 942 or WorldMapFrame:GetMapID() == 1462 or WorldMapFrame:GetMapID() == 1169)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Kul Tiras"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Shadowlands
    elseif (WorldMapFrame:GetMapID() == 1525 or WorldMapFrame:GetMapID() == 1533 or WorldMapFrame:GetMapID() == 1536 or WorldMapFrame:GetMapID() == 1543 or WorldMapFrame:GetMapID() == 1565 or WorldMapFrame:GetMapID() == 1961
      or WorldMapFrame:GetMapID() == 1970 or WorldMapFrame:GetMapID() == 2016)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Shadowlands"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Dragon Isles
    elseif (WorldMapFrame:GetMapID() == 2022 or WorldMapFrame:GetMapID() == 2023 or WorldMapFrame:GetMapID() == 2024 or WorldMapFrame:GetMapID() == 2025 or WorldMapFrame:GetMapID() == 2026 or WorldMapFrame:GetMapID() == 2133
      or WorldMapFrame:GetMapID() == 2151 or WorldMapFrame:GetMapID() == 2200 or WorldMapFrame:GetMapID() == 2239 or WorldMapFrame:GetMapID() == 2266)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Dragon Isles"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    end
  end

  -- Zone Sync function
  if ns.Addon.db.profile.activate.SyncZoneAndMinimap and (info.mapType == 3 or info.mapType == 5 or info.mapType == 6)
    and not (C_Map.GetBestMapForUnit("player") == 1454 or C_Map.GetBestMapForUnit("player") == 1456 --Cata nodes
    or C_Map.GetBestMapForUnit("player") == 84 or C_Map.GetBestMapForUnit("player") == 87 or C_Map.GetBestMapForUnit("player") == 89 or C_Map.GetBestMapForUnit("player") == 103 or C_Map.GetBestMapForUnit("player") == 85
    or C_Map.GetBestMapForUnit("player") == 90 or C_Map.GetBestMapForUnit("player") == 86 or C_Map.GetBestMapForUnit("player") == 88 or C_Map.GetBestMapForUnit("player") == 110 or C_Map.GetBestMapForUnit("player") == 111
    or C_Map.GetBestMapForUnit("player") == 125 or C_Map.GetBestMapForUnit("player") == 126 or C_Map.GetBestMapForUnit("player") == 391 or C_Map.GetBestMapForUnit("player") == 392 or C_Map.GetBestMapForUnit("player") == 393 
    or C_Map.GetBestMapForUnit("player") == 394 or C_Map.GetBestMapForUnit("player") == 582 or C_Map.GetBestMapForUnit("player") == 590 or C_Map.GetBestMapForUnit("player") == 622 or C_Map.GetBestMapForUnit("player") == 624 
    or C_Map.GetBestMapForUnit("player") == 626 or C_Map.GetBestMapForUnit("player") == 627 or C_Map.GetBestMapForUnit("player") == 628 or C_Map.GetBestMapForUnit("player") == 629 or C_Map.GetBestMapForUnit("player") == 1161
    or C_Map.GetBestMapForUnit("player") == 1163 or C_Map.GetBestMapForUnit("player") == 1164 or C_Map.GetBestMapForUnit("player") == 1165 or C_Map.GetBestMapForUnit("player") == 1670 or C_Map.GetBestMapForUnit("player") == 1671 
    or C_Map.GetBestMapForUnit("player") == 1672 or C_Map.GetBestMapForUnit("player") == 1673 or C_Map.GetBestMapForUnit("player") == 2112 or C_Map.GetBestMapForUnit("player") == 407 or C_Map.GetBestMapForUnit("player") == 2339
    or C_Map.GetBestMapForUnit("player") == 499 or C_Map.GetBestMapForUnit("player") == 500)
  then
    --Kalimdor
    if (C_Map.GetBestMapForUnit("player") == 1 or C_Map.GetBestMapForUnit("player") == 7 or C_Map.GetBestMapForUnit("player") == 10 or C_Map.GetBestMapForUnit("player") == 11 or C_Map.GetBestMapForUnit("player") == 57 or C_Map.GetBestMapForUnit("player") == 62 
      or C_Map.GetBestMapForUnit("player") == 63 or C_Map.GetBestMapForUnit("player") == 64 or C_Map.GetBestMapForUnit("player") == 65 or C_Map.GetBestMapForUnit("player") == 66 or C_Map.GetBestMapForUnit("player") == 67 or C_Map.GetBestMapForUnit("player") == 68 
      or C_Map.GetBestMapForUnit("player") == 69 or C_Map.GetBestMapForUnit("player") == 70 or C_Map.GetBestMapForUnit("player") == 71 or C_Map.GetBestMapForUnit("player") == 74 or C_Map.GetBestMapForUnit("player") == 75 or C_Map.GetBestMapForUnit("player") == 76 
      or C_Map.GetBestMapForUnit("player") == 77 or C_Map.GetBestMapForUnit("player") == 78 or C_Map.GetBestMapForUnit("player") == 80 or C_Map.GetBestMapForUnit("player") == 81 or C_Map.GetBestMapForUnit("player") == 83 or C_Map.GetBestMapForUnit("player") == 97 
      or C_Map.GetBestMapForUnit("player") == 106 or C_Map.GetBestMapForUnit("player") == 199 or C_Map.GetBestMapForUnit("player") == 327 or C_Map.GetBestMapForUnit("player") == 460 or C_Map.GetBestMapForUnit("player") == 461 or C_Map.GetBestMapForUnit("player") == 462 
      or C_Map.GetBestMapForUnit("player") == 468 or C_Map.GetBestMapForUnit("player") == 1527 or C_Map.GetBestMapForUnit("player") == 198 or C_Map.GetBestMapForUnit("player") == 249)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Kalimdor"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Eastern Kingdom
    elseif (WorldMapFrame:GetMapID() == 13 or WorldMapFrame:GetMapID() == 14 or WorldMapFrame:GetMapID() == 15 or WorldMapFrame:GetMapID() == 16 or WorldMapFrame:GetMapID() == 17 or WorldMapFrame:GetMapID() == 18 
      or WorldMapFrame:GetMapID() == 19 or WorldMapFrame:GetMapID() == 21 or WorldMapFrame:GetMapID() == 22 or WorldMapFrame:GetMapID() == 23 or WorldMapFrame:GetMapID() == 25 or WorldMapFrame:GetMapID() == 26 
      or WorldMapFrame:GetMapID() == 27 or WorldMapFrame:GetMapID() == 28 or WorldMapFrame:GetMapID() == 30 or WorldMapFrame:GetMapID() == 32 or WorldMapFrame:GetMapID() == 33 or WorldMapFrame:GetMapID() == 34 
      or WorldMapFrame:GetMapID() == 35 or WorldMapFrame:GetMapID() == 36 or WorldMapFrame:GetMapID() == 37 or WorldMapFrame:GetMapID() == 42 or WorldMapFrame:GetMapID() == 47 or WorldMapFrame:GetMapID() == 48 
      or WorldMapFrame:GetMapID() == 49 or WorldMapFrame:GetMapID() == 50 or WorldMapFrame:GetMapID() == 51 or WorldMapFrame:GetMapID() == 52 or WorldMapFrame:GetMapID() == 55 or WorldMapFrame:GetMapID() == 56 
      or WorldMapFrame:GetMapID() == 94 or WorldMapFrame:GetMapID() == 210 or WorldMapFrame:GetMapID() == 224 or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 425 or WorldMapFrame:GetMapID() == 427 
      or WorldMapFrame:GetMapID() == 465 or WorldMapFrame:GetMapID() == 467 or WorldMapFrame:GetMapID() == 469 or WorldMapFrame:GetMapID() == 499 or WorldMapFrame:GetMapID() == 500 or WorldMapFrame:GetMapID() == 2070 
      or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 203 or WorldMapFrame:GetMapID() == 204 or WorldMapFrame:GetMapID() == 205 or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 244 
      or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 201 or WorldMapFrame:GetMapID() == 95 or WorldMapFrame:GetMapID() == 122 or WorldMapFrame:GetMapID() == 217  or WorldMapFrame:GetMapID() == 226)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Eastern Kingdom"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Outland
    elseif (WorldMapFrame:GetMapID() == 100 or WorldMapFrame:GetMapID() == 102 or WorldMapFrame:GetMapID() == 104 or WorldMapFrame:GetMapID() == 105 or WorldMapFrame:GetMapID() == 107 or WorldMapFrame:GetMapID() == 108
      or WorldMapFrame:GetMapID() == 109)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Outland"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Northrend
    elseif (WorldMapFrame:GetMapID() == 114 or WorldMapFrame:GetMapID() == 115 or WorldMapFrame:GetMapID() == 116 or WorldMapFrame:GetMapID() == 117 or WorldMapFrame:GetMapID() == 118 or WorldMapFrame:GetMapID() == 119
      or WorldMapFrame:GetMapID() == 120 or WorldMapFrame:GetMapID() == 121 or WorldMapFrame:GetMapID() == 123 or WorldMapFrame:GetMapID() == 127 or WorldMapFrame:GetMapID() == 170)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Northrend"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Pandaria
    elseif (WorldMapFrame:GetMapID() == 371 or WorldMapFrame:GetMapID() == 376 or WorldMapFrame:GetMapID() == 379 or WorldMapFrame:GetMapID() == 388 or WorldMapFrame:GetMapID() == 390 or WorldMapFrame:GetMapID() == 418
      or WorldMapFrame:GetMapID() == 422 or WorldMapFrame:GetMapID() == 433 or WorldMapFrame:GetMapID() == 434 or WorldMapFrame:GetMapID() == 504 or WorldMapFrame:GetMapID() == 554  or WorldMapFrame:GetMapID() == 1530
      or WorldMapFrame:GetMapID() == 507)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Pandaria"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Draenor
    elseif (WorldMapFrame:GetMapID() == 525 or WorldMapFrame:GetMapID() == 534 or WorldMapFrame:GetMapID() == 535 or WorldMapFrame:GetMapID() == 539 or WorldMapFrame:GetMapID() == 542 or WorldMapFrame:GetMapID() == 543
      or WorldMapFrame:GetMapID() == 550 or WorldMapFrame:GetMapID() == 588)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Draenor"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Broken Isles
    elseif (WorldMapFrame:GetMapID() == 630 or WorldMapFrame:GetMapID() == 634 or WorldMapFrame:GetMapID() == 641 or WorldMapFrame:GetMapID() == 646 or WorldMapFrame:GetMapID() == 650 or WorldMapFrame:GetMapID() == 652
      or WorldMapFrame:GetMapID() == 750 or WorldMapFrame:GetMapID() == 680 or WorldMapFrame:GetMapID() == 830 or WorldMapFrame:GetMapID() == 882 or WorldMapFrame:GetMapID() == 885 or WorldMapFrame:GetMapID() == 905
      or WorldMapFrame:GetMapID() == 941 or WorldMapFrame:GetMapID() == 790)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Broken Isles"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Zandalar
    elseif (WorldMapFrame:GetMapID() == 862 or WorldMapFrame:GetMapID() == 863 or WorldMapFrame:GetMapID() == 864 or WorldMapFrame:GetMapID() == 1355 or WorldMapFrame:GetMapID() == 1528)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Zandalar"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Kul Tiras
    elseif (WorldMapFrame:GetMapID() == 895 or WorldMapFrame:GetMapID() == 896 or WorldMapFrame:GetMapID() == 942 or WorldMapFrame:GetMapID() == 1462 or WorldMapFrame:GetMapID() == 1169)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Kul Tiras"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Shadowlands
    elseif (WorldMapFrame:GetMapID() == 1525 or WorldMapFrame:GetMapID() == 1533 or WorldMapFrame:GetMapID() == 1536 or WorldMapFrame:GetMapID() == 1543 or WorldMapFrame:GetMapID() == 1565 or WorldMapFrame:GetMapID() == 1961
      or WorldMapFrame:GetMapID() == 1970 or WorldMapFrame:GetMapID() == 2016)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Shadowlands"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    --Dragon Isles
    elseif (WorldMapFrame:GetMapID() == 2022 or WorldMapFrame:GetMapID() == 2023 or WorldMapFrame:GetMapID() == 2024 or WorldMapFrame:GetMapID() == 2025 or WorldMapFrame:GetMapID() == 2026 or WorldMapFrame:GetMapID() == 2133
      or WorldMapFrame:GetMapID() == 2151 or WorldMapFrame:GetMapID() == 2200 or WorldMapFrame:GetMapID() == 2239 or WorldMapFrame:GetMapID() == 2266)
    then
      tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Dragon Isles"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
      tooltip:Show()
    end
  end

  -- Capital without Synch function
  if not ns.Addon.db.profile.activate.SyncCapitalsAndMinimap 
    and (C_Map.GetBestMapForUnit("player") == 1454 or C_Map.GetBestMapForUnit("player") == 1456 --Cata nodes
    or C_Map.GetBestMapForUnit("player") == 84 or C_Map.GetBestMapForUnit("player") == 87 or C_Map.GetBestMapForUnit("player") == 89 or C_Map.GetBestMapForUnit("player") == 103 or C_Map.GetBestMapForUnit("player") == 85
    or C_Map.GetBestMapForUnit("player") == 90 or C_Map.GetBestMapForUnit("player") == 86 or C_Map.GetBestMapForUnit("player") == 88 or C_Map.GetBestMapForUnit("player") == 110 or C_Map.GetBestMapForUnit("player") == 111
    or C_Map.GetBestMapForUnit("player") == 125 or C_Map.GetBestMapForUnit("player") == 126 or C_Map.GetBestMapForUnit("player") == 391 or C_Map.GetBestMapForUnit("player") == 392 or C_Map.GetBestMapForUnit("player") == 393 
    or C_Map.GetBestMapForUnit("player") == 394 or C_Map.GetBestMapForUnit("player") == 582 or C_Map.GetBestMapForUnit("player") == 590 or C_Map.GetBestMapForUnit("player") == 622 or C_Map.GetBestMapForUnit("player") == 624 
    or C_Map.GetBestMapForUnit("player") == 626 or C_Map.GetBestMapForUnit("player") == 627 or C_Map.GetBestMapForUnit("player") == 628 or C_Map.GetBestMapForUnit("player") == 629 or C_Map.GetBestMapForUnit("player") == 1161
    or C_Map.GetBestMapForUnit("player") == 1163 or C_Map.GetBestMapForUnit("player") == 1164 or C_Map.GetBestMapForUnit("player") == 1165 or C_Map.GetBestMapForUnit("player") == 1670 or C_Map.GetBestMapForUnit("player") == 1671 
    or C_Map.GetBestMapForUnit("player") == 1672 or C_Map.GetBestMapForUnit("player") == 1673 or C_Map.GetBestMapForUnit("player") == 2112 or C_Map.GetBestMapForUnit("player") == 407 or C_Map.GetBestMapForUnit("player") == 2339
    or C_Map.GetBestMapForUnit("player") == 499 or C_Map.GetBestMapForUnit("player") == 500) 
  then
    tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Capitals"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
    tooltip:Show()
  end

  -- Capital Synch function
  if ns.Addon.db.profile.activate.SyncCapitalsAndMinimap 
    and (C_Map.GetBestMapForUnit("player") == 1454 or C_Map.GetBestMapForUnit("player") == 1456 --Cata nodes
    or C_Map.GetBestMapForUnit("player") == 84 or C_Map.GetBestMapForUnit("player") == 87 or C_Map.GetBestMapForUnit("player") == 89 or C_Map.GetBestMapForUnit("player") == 103 or C_Map.GetBestMapForUnit("player") == 85
    or C_Map.GetBestMapForUnit("player") == 90 or C_Map.GetBestMapForUnit("player") == 86 or C_Map.GetBestMapForUnit("player") == 88 or C_Map.GetBestMapForUnit("player") == 110 or C_Map.GetBestMapForUnit("player") == 111
    or C_Map.GetBestMapForUnit("player") == 125 or C_Map.GetBestMapForUnit("player") == 126 or C_Map.GetBestMapForUnit("player") == 391 or C_Map.GetBestMapForUnit("player") == 392 or C_Map.GetBestMapForUnit("player") == 393 
    or C_Map.GetBestMapForUnit("player") == 394 or C_Map.GetBestMapForUnit("player") == 582 or C_Map.GetBestMapForUnit("player") == 590 or C_Map.GetBestMapForUnit("player") == 622 or C_Map.GetBestMapForUnit("player") == 624 
    or C_Map.GetBestMapForUnit("player") == 626 or C_Map.GetBestMapForUnit("player") == 627 or C_Map.GetBestMapForUnit("player") == 628 or C_Map.GetBestMapForUnit("player") == 629 or C_Map.GetBestMapForUnit("player") == 1161
    or C_Map.GetBestMapForUnit("player") == 1163 or C_Map.GetBestMapForUnit("player") == 1164 or C_Map.GetBestMapForUnit("player") == 1165 or C_Map.GetBestMapForUnit("player") == 1670 or C_Map.GetBestMapForUnit("player") == 1671 
    or C_Map.GetBestMapForUnit("player") == 1672 or C_Map.GetBestMapForUnit("player") == 1673 or C_Map.GetBestMapForUnit("player") == 2112 or C_Map.GetBestMapForUnit("player") == 407 or C_Map.GetBestMapForUnit("player") == 2339
    or C_Map.GetBestMapForUnit("player") == 499 or C_Map.GetBestMapForUnit("player") == 500) 
  then
    tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Capitals"] .. " & " .. L["Capitals"] .. " " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
    tooltip:Show()
  end

  ns.Addon:FullUpdate()
  HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end,

OnClick = function(self, button)
  if button == "RightButton" and not IsShiftKeyDown() then

    -- Zone without Sync function
    if not ns.Addon.db.profile.activate.SyncZoneAndMinimap and (info.mapType == 3 or info.mapType == 5 or info.mapType == 6) 
      and not (C_Map.GetBestMapForUnit("player") == 1454 or C_Map.GetBestMapForUnit("player") == 1456 --Cata nodes
      or C_Map.GetBestMapForUnit("player") == 84 or C_Map.GetBestMapForUnit("player") == 87 or C_Map.GetBestMapForUnit("player") == 89 or C_Map.GetBestMapForUnit("player") == 103 or C_Map.GetBestMapForUnit("player") == 85
      or C_Map.GetBestMapForUnit("player") == 90 or C_Map.GetBestMapForUnit("player") == 86 or C_Map.GetBestMapForUnit("player") == 88 or C_Map.GetBestMapForUnit("player") == 110 or C_Map.GetBestMapForUnit("player") == 111
      or C_Map.GetBestMapForUnit("player") == 125 or C_Map.GetBestMapForUnit("player") == 126 or C_Map.GetBestMapForUnit("player") == 391 or C_Map.GetBestMapForUnit("player") == 392 or C_Map.GetBestMapForUnit("player") == 393 
      or C_Map.GetBestMapForUnit("player") == 394 or C_Map.GetBestMapForUnit("player") == 582 or C_Map.GetBestMapForUnit("player") == 590 or C_Map.GetBestMapForUnit("player") == 622 or C_Map.GetBestMapForUnit("player") == 624 
      or C_Map.GetBestMapForUnit("player") == 626 or C_Map.GetBestMapForUnit("player") == 627 or C_Map.GetBestMapForUnit("player") == 628 or C_Map.GetBestMapForUnit("player") == 629 or C_Map.GetBestMapForUnit("player") == 1161
      or C_Map.GetBestMapForUnit("player") == 1163 or C_Map.GetBestMapForUnit("player") == 1164 or C_Map.GetBestMapForUnit("player") == 1165 or C_Map.GetBestMapForUnit("player") == 1670 or C_Map.GetBestMapForUnit("player") == 1671 
      or C_Map.GetBestMapForUnit("player") == 1672 or C_Map.GetBestMapForUnit("player") == 1673 or C_Map.GetBestMapForUnit("player") == 2112 or C_Map.GetBestMapForUnit("player") == 407 or C_Map.GetBestMapForUnit("player") == 2339
      or C_Map.GetBestMapForUnit("player") == 499 or C_Map.GetBestMapForUnit("player") == 500)
    then
      --Kalimdor
      if (C_Map.GetBestMapForUnit("player") == 1 or C_Map.GetBestMapForUnit("player") == 7 or C_Map.GetBestMapForUnit("player") == 10 or C_Map.GetBestMapForUnit("player") == 11 or C_Map.GetBestMapForUnit("player") == 57 or C_Map.GetBestMapForUnit("player") == 62 
        or C_Map.GetBestMapForUnit("player") == 63 or C_Map.GetBestMapForUnit("player") == 64 or C_Map.GetBestMapForUnit("player") == 65 or C_Map.GetBestMapForUnit("player") == 66 or C_Map.GetBestMapForUnit("player") == 67 or C_Map.GetBestMapForUnit("player") == 68 
        or C_Map.GetBestMapForUnit("player") == 69 or C_Map.GetBestMapForUnit("player") == 70 or C_Map.GetBestMapForUnit("player") == 71 or C_Map.GetBestMapForUnit("player") == 74 or C_Map.GetBestMapForUnit("player") == 75 or C_Map.GetBestMapForUnit("player") == 76 
        or C_Map.GetBestMapForUnit("player") == 77 or C_Map.GetBestMapForUnit("player") == 78 or C_Map.GetBestMapForUnit("player") == 80 or C_Map.GetBestMapForUnit("player") == 81 or C_Map.GetBestMapForUnit("player") == 83 or C_Map.GetBestMapForUnit("player") == 97 
        or C_Map.GetBestMapForUnit("player") == 106 or C_Map.GetBestMapForUnit("player") == 199 or C_Map.GetBestMapForUnit("player") == 327 or C_Map.GetBestMapForUnit("player") == 460 or C_Map.GetBestMapForUnit("player") == 461 or C_Map.GetBestMapForUnit("player") == 462 
        or C_Map.GetBestMapForUnit("player") == 468 or C_Map.GetBestMapForUnit("player") == 1527 or C_Map.GetBestMapForUnit("player") == 198 or C_Map.GetBestMapForUnit("player") == 249)
      then
        if not ns.Addon.db.profile.showMiniMapKalimdor then
          ns.Addon.db.profile.showMiniMapKalimdor = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Kalimdor"] .. " " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showMiniMapKalimdor = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Kalimdor"] .. " " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Eastern Kingdom
      elseif (WorldMapFrame:GetMapID() == 13 or WorldMapFrame:GetMapID() == 14 or WorldMapFrame:GetMapID() == 15 or WorldMapFrame:GetMapID() == 16 or WorldMapFrame:GetMapID() == 17 or WorldMapFrame:GetMapID() == 18 
        or WorldMapFrame:GetMapID() == 19 or WorldMapFrame:GetMapID() == 21 or WorldMapFrame:GetMapID() == 22 or WorldMapFrame:GetMapID() == 23 or WorldMapFrame:GetMapID() == 25 or WorldMapFrame:GetMapID() == 26 
        or WorldMapFrame:GetMapID() == 27 or WorldMapFrame:GetMapID() == 28 or WorldMapFrame:GetMapID() == 30 or WorldMapFrame:GetMapID() == 32 or WorldMapFrame:GetMapID() == 33 or WorldMapFrame:GetMapID() == 34 
        or WorldMapFrame:GetMapID() == 35 or WorldMapFrame:GetMapID() == 36 or WorldMapFrame:GetMapID() == 37 or WorldMapFrame:GetMapID() == 42 or WorldMapFrame:GetMapID() == 47 or WorldMapFrame:GetMapID() == 48 
        or WorldMapFrame:GetMapID() == 49 or WorldMapFrame:GetMapID() == 50 or WorldMapFrame:GetMapID() == 51 or WorldMapFrame:GetMapID() == 52 or WorldMapFrame:GetMapID() == 55 or WorldMapFrame:GetMapID() == 56 
        or WorldMapFrame:GetMapID() == 94 or WorldMapFrame:GetMapID() == 210 or WorldMapFrame:GetMapID() == 224 or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 425 or WorldMapFrame:GetMapID() == 427 
        or WorldMapFrame:GetMapID() == 465 or WorldMapFrame:GetMapID() == 467 or WorldMapFrame:GetMapID() == 469 or WorldMapFrame:GetMapID() == 499 or WorldMapFrame:GetMapID() == 500 or WorldMapFrame:GetMapID() == 2070 
        or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 203 or WorldMapFrame:GetMapID() == 204 or WorldMapFrame:GetMapID() == 205 or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 244 
        or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 201 or WorldMapFrame:GetMapID() == 95 or WorldMapFrame:GetMapID() == 122 or WorldMapFrame:GetMapID() == 217  or WorldMapFrame:GetMapID() == 226)
      then
        if not ns.Addon.db.profile.showMiniMapEasternKingdom then
          ns.Addon.db.profile.showMiniMapEasternKingdom = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Eastern Kingdom"] .. " " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showMiniMapEasternKingdom = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Eastern Kingdom"] .. " " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Outland
      elseif (WorldMapFrame:GetMapID() == 100 or WorldMapFrame:GetMapID() == 102 or WorldMapFrame:GetMapID() == 104 or WorldMapFrame:GetMapID() == 105 or WorldMapFrame:GetMapID() == 107 or WorldMapFrame:GetMapID() == 108
        or WorldMapFrame:GetMapID() == 109)
      then
        if not ns.Addon.db.profile.showMiniMapOutland then
          ns.Addon.db.profile.showMiniMapOutland = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Outland"] .. " " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showMiniMapOutland = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Outland"] .. " " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Northrend
      elseif (WorldMapFrame:GetMapID() == 114 or WorldMapFrame:GetMapID() == 115 or WorldMapFrame:GetMapID() == 116 or WorldMapFrame:GetMapID() == 117 or WorldMapFrame:GetMapID() == 118 or WorldMapFrame:GetMapID() == 119
        or WorldMapFrame:GetMapID() == 120 or WorldMapFrame:GetMapID() == 121 or WorldMapFrame:GetMapID() == 123 or WorldMapFrame:GetMapID() == 127 or WorldMapFrame:GetMapID() == 170)
      then
        if not ns.Addon.db.profile.showMiniMapNorthrend then
          ns.Addon.db.profile.showMiniMapNorthrend = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Northrend"] .. " " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showMiniMapNorthrend = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Northrend"] .. " " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Pandaria
      elseif (WorldMapFrame:GetMapID() == 371 or WorldMapFrame:GetMapID() == 376 or WorldMapFrame:GetMapID() == 379 or WorldMapFrame:GetMapID() == 388 or WorldMapFrame:GetMapID() == 390 or WorldMapFrame:GetMapID() == 418
        or WorldMapFrame:GetMapID() == 422 or WorldMapFrame:GetMapID() == 433 or WorldMapFrame:GetMapID() == 434 or WorldMapFrame:GetMapID() == 504 or WorldMapFrame:GetMapID() == 554  or WorldMapFrame:GetMapID() == 1530
        or WorldMapFrame:GetMapID() == 507)
      then
        if not ns.Addon.db.profile.showMiniMapPandaria then
          ns.Addon.db.profile.showMiniMapPandaria = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Pandaria"] .. " " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showMiniMapPandaria = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Pandaria"] .. " " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Draenor
      elseif (WorldMapFrame:GetMapID() == 525 or WorldMapFrame:GetMapID() == 534 or WorldMapFrame:GetMapID() == 535 or WorldMapFrame:GetMapID() == 539 or WorldMapFrame:GetMapID() == 542 or WorldMapFrame:GetMapID() == 543
        or WorldMapFrame:GetMapID() == 550 or WorldMapFrame:GetMapID() == 588)
      then
        if not ns.Addon.db.profile.showMiniMapDraenor then
          ns.Addon.db.profile.showMiniMapDraenor = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Draenor"] .. " " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showMiniMapDraenor = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Draenor"] .. " " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Broken Isles
      elseif (WorldMapFrame:GetMapID() == 630 or WorldMapFrame:GetMapID() == 634 or WorldMapFrame:GetMapID() == 641 or WorldMapFrame:GetMapID() == 646 or WorldMapFrame:GetMapID() == 650 or WorldMapFrame:GetMapID() == 652
        or WorldMapFrame:GetMapID() == 750 or WorldMapFrame:GetMapID() == 680 or WorldMapFrame:GetMapID() == 830 or WorldMapFrame:GetMapID() == 882 or WorldMapFrame:GetMapID() == 885 or WorldMapFrame:GetMapID() == 905
        or WorldMapFrame:GetMapID() == 941 or WorldMapFrame:GetMapID() == 790)
      then
        if not ns.Addon.db.profile.showMiniMapBrokenIsles then
          ns.Addon.db.profile.showMiniMapBrokenIsles = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Broken Isles"] .. " " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showMiniMapBrokenIsles = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Broken Isles"] .. " " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Zandalar
      elseif (WorldMapFrame:GetMapID() == 862 or WorldMapFrame:GetMapID() == 863 or WorldMapFrame:GetMapID() == 864 or WorldMapFrame:GetMapID() == 1355 or WorldMapFrame:GetMapID() == 1528)
      then
        if not ns.Addon.db.profile.showMiniMapZandalar then
          ns.Addon.db.profile.showMiniMapZandalar = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zandalar"] .. " " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showMiniMapZandalar = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zandalar"] .. " " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Kul Tiras
      elseif (WorldMapFrame:GetMapID() == 895 or WorldMapFrame:GetMapID() == 896 or WorldMapFrame:GetMapID() == 942 or WorldMapFrame:GetMapID() == 1462 or WorldMapFrame:GetMapID() == 1169)
      then
        if not ns.Addon.db.profile.showMiniMapKulTiras then
          ns.Addon.db.profile.showMiniMapKulTiras = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Kul Tiras"] .. " " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showMiniMapKulTiras = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Kul Tiras"] .. " " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Shadowlands
      elseif (WorldMapFrame:GetMapID() == 1525 or WorldMapFrame:GetMapID() == 1533 or WorldMapFrame:GetMapID() == 1536 or WorldMapFrame:GetMapID() == 1543 or WorldMapFrame:GetMapID() == 1565 or WorldMapFrame:GetMapID() == 1961
        or WorldMapFrame:GetMapID() == 1970 or WorldMapFrame:GetMapID() == 2016)
      then
        if not ns.Addon.db.profile.showMiniMapShadowlands then
          ns.Addon.db.profile.showMiniMapShadowlands = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Shadowlands"] .. " " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showMiniMapShadowlands = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Shadowlands"] .. " " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Dragon Isles
      elseif (WorldMapFrame:GetMapID() == 2022 or WorldMapFrame:GetMapID() == 2023 or WorldMapFrame:GetMapID() == 2024 or WorldMapFrame:GetMapID() == 2025 or WorldMapFrame:GetMapID() == 2026 or WorldMapFrame:GetMapID() == 2133
        or WorldMapFrame:GetMapID() == 2151 or WorldMapFrame:GetMapID() == 2200 or WorldMapFrame:GetMapID() == 2239 or WorldMapFrame:GetMapID() == 2266)
      then
        if not ns.Addon.db.profile.showMiniMapDragonIsles then
          ns.Addon.db.profile.showMiniMapDragonIsles = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Dragon Isles"] .. " " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showMiniMapDragonIsles = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Dragon Isles"] .. " " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      end
    end

    -- Zone Sync function
    if ns.Addon.db.profile.activate.SyncZoneAndMinimap and (info.mapType == 3 or info.mapType == 5 or info.mapType == 6) 
      and not (C_Map.GetBestMapForUnit("player") == 1454 or C_Map.GetBestMapForUnit("player") == 1456 --Cata nodes
      or C_Map.GetBestMapForUnit("player") == 84 or C_Map.GetBestMapForUnit("player") == 87 or C_Map.GetBestMapForUnit("player") == 89 or C_Map.GetBestMapForUnit("player") == 103 or C_Map.GetBestMapForUnit("player") == 85
      or C_Map.GetBestMapForUnit("player") == 90 or C_Map.GetBestMapForUnit("player") == 86 or C_Map.GetBestMapForUnit("player") == 88 or C_Map.GetBestMapForUnit("player") == 110 or C_Map.GetBestMapForUnit("player") == 111
      or C_Map.GetBestMapForUnit("player") == 125 or C_Map.GetBestMapForUnit("player") == 126 or C_Map.GetBestMapForUnit("player") == 391 or C_Map.GetBestMapForUnit("player") == 392 or C_Map.GetBestMapForUnit("player") == 393 
      or C_Map.GetBestMapForUnit("player") == 394 or C_Map.GetBestMapForUnit("player") == 582 or C_Map.GetBestMapForUnit("player") == 590 or C_Map.GetBestMapForUnit("player") == 622 or C_Map.GetBestMapForUnit("player") == 624 
      or C_Map.GetBestMapForUnit("player") == 626 or C_Map.GetBestMapForUnit("player") == 627 or C_Map.GetBestMapForUnit("player") == 628 or C_Map.GetBestMapForUnit("player") == 629 or C_Map.GetBestMapForUnit("player") == 1161
      or C_Map.GetBestMapForUnit("player") == 1163 or C_Map.GetBestMapForUnit("player") == 1164 or C_Map.GetBestMapForUnit("player") == 1165 or C_Map.GetBestMapForUnit("player") == 1670 or C_Map.GetBestMapForUnit("player") == 1671 
      or C_Map.GetBestMapForUnit("player") == 1672 or C_Map.GetBestMapForUnit("player") == 1673 or C_Map.GetBestMapForUnit("player") == 2112 or C_Map.GetBestMapForUnit("player") == 407 or C_Map.GetBestMapForUnit("player") == 2339
      or C_Map.GetBestMapForUnit("player") == 499 or C_Map.GetBestMapForUnit("player") == 500)
    then
      --Kalimdor
      if (C_Map.GetBestMapForUnit("player") == 1 or C_Map.GetBestMapForUnit("player") == 7 or C_Map.GetBestMapForUnit("player") == 10 or C_Map.GetBestMapForUnit("player") == 11 or C_Map.GetBestMapForUnit("player") == 57 or C_Map.GetBestMapForUnit("player") == 62 
        or C_Map.GetBestMapForUnit("player") == 63 or C_Map.GetBestMapForUnit("player") == 64 or C_Map.GetBestMapForUnit("player") == 65 or C_Map.GetBestMapForUnit("player") == 66 or C_Map.GetBestMapForUnit("player") == 67 or C_Map.GetBestMapForUnit("player") == 68 
        or C_Map.GetBestMapForUnit("player") == 69 or C_Map.GetBestMapForUnit("player") == 70 or C_Map.GetBestMapForUnit("player") == 71 or C_Map.GetBestMapForUnit("player") == 74 or C_Map.GetBestMapForUnit("player") == 75 or C_Map.GetBestMapForUnit("player") == 76 
        or C_Map.GetBestMapForUnit("player") == 77 or C_Map.GetBestMapForUnit("player") == 78 or C_Map.GetBestMapForUnit("player") == 80 or C_Map.GetBestMapForUnit("player") == 81 or C_Map.GetBestMapForUnit("player") == 83 or C_Map.GetBestMapForUnit("player") == 97 
        or C_Map.GetBestMapForUnit("player") == 106 or C_Map.GetBestMapForUnit("player") == 199 or C_Map.GetBestMapForUnit("player") == 327 or C_Map.GetBestMapForUnit("player") == 460 or C_Map.GetBestMapForUnit("player") == 461 or C_Map.GetBestMapForUnit("player") == 462 
        or C_Map.GetBestMapForUnit("player") == 468 or C_Map.GetBestMapForUnit("player") == 1527 or C_Map.GetBestMapForUnit("player") == 198 or C_Map.GetBestMapForUnit("player") == 249)
      then
        if not ns.Addon.db.profile.showZoneKalimdor then
          ns.Addon.db.profile.showZoneKalimdor = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Kalimdor"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showZoneKalimdor = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Kalimdor"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Eastern Kingdom
      elseif (WorldMapFrame:GetMapID() == 13 or WorldMapFrame:GetMapID() == 14 or WorldMapFrame:GetMapID() == 15 or WorldMapFrame:GetMapID() == 16 or WorldMapFrame:GetMapID() == 17 or WorldMapFrame:GetMapID() == 18 
        or WorldMapFrame:GetMapID() == 19 or WorldMapFrame:GetMapID() == 21 or WorldMapFrame:GetMapID() == 22 or WorldMapFrame:GetMapID() == 23 or WorldMapFrame:GetMapID() == 25 or WorldMapFrame:GetMapID() == 26 
        or WorldMapFrame:GetMapID() == 27 or WorldMapFrame:GetMapID() == 28 or WorldMapFrame:GetMapID() == 30 or WorldMapFrame:GetMapID() == 32 or WorldMapFrame:GetMapID() == 33 or WorldMapFrame:GetMapID() == 34 
        or WorldMapFrame:GetMapID() == 35 or WorldMapFrame:GetMapID() == 36 or WorldMapFrame:GetMapID() == 37 or WorldMapFrame:GetMapID() == 42 or WorldMapFrame:GetMapID() == 47 or WorldMapFrame:GetMapID() == 48 
        or WorldMapFrame:GetMapID() == 49 or WorldMapFrame:GetMapID() == 50 or WorldMapFrame:GetMapID() == 51 or WorldMapFrame:GetMapID() == 52 or WorldMapFrame:GetMapID() == 55 or WorldMapFrame:GetMapID() == 56 
        or WorldMapFrame:GetMapID() == 94 or WorldMapFrame:GetMapID() == 210 or WorldMapFrame:GetMapID() == 224 or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 425 or WorldMapFrame:GetMapID() == 427 
        or WorldMapFrame:GetMapID() == 465 or WorldMapFrame:GetMapID() == 467 or WorldMapFrame:GetMapID() == 469 or WorldMapFrame:GetMapID() == 499 or WorldMapFrame:GetMapID() == 500 or WorldMapFrame:GetMapID() == 2070 
        or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 203 or WorldMapFrame:GetMapID() == 204 or WorldMapFrame:GetMapID() == 205 or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 244 
        or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 201 or WorldMapFrame:GetMapID() == 95 or WorldMapFrame:GetMapID() == 122 or WorldMapFrame:GetMapID() == 217  or WorldMapFrame:GetMapID() == 226)
      then
        if not ns.Addon.db.profile.showZoneEasternKingdom then
          ns.Addon.db.profile.showZoneEasternKingdom = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Eastern Kingdom"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showZoneEasternKingdom = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Eastern Kingdom"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Outland
      elseif (WorldMapFrame:GetMapID() == 100 or WorldMapFrame:GetMapID() == 102 or WorldMapFrame:GetMapID() == 104 or WorldMapFrame:GetMapID() == 105 or WorldMapFrame:GetMapID() == 107 or WorldMapFrame:GetMapID() == 108
        or WorldMapFrame:GetMapID() == 109)
      then
        if not ns.Addon.db.profile.showZoneOutland then
          ns.Addon.db.profile.showZoneOutland = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Outland"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showZoneOutland = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Outland"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Northrend
      elseif (WorldMapFrame:GetMapID() == 114 or WorldMapFrame:GetMapID() == 115 or WorldMapFrame:GetMapID() == 116 or WorldMapFrame:GetMapID() == 117 or WorldMapFrame:GetMapID() == 118 or WorldMapFrame:GetMapID() == 119
        or WorldMapFrame:GetMapID() == 120 or WorldMapFrame:GetMapID() == 121 or WorldMapFrame:GetMapID() == 123 or WorldMapFrame:GetMapID() == 127 or WorldMapFrame:GetMapID() == 170)
      then
        if not ns.Addon.db.profile.showZoneNorthrend then
          ns.Addon.db.profile.showZoneNorthrend = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Northrend"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showZoneNorthrend = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Northrend"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Pandaria
      elseif (WorldMapFrame:GetMapID() == 371 or WorldMapFrame:GetMapID() == 376 or WorldMapFrame:GetMapID() == 379 or WorldMapFrame:GetMapID() == 388 or WorldMapFrame:GetMapID() == 390 or WorldMapFrame:GetMapID() == 418
        or WorldMapFrame:GetMapID() == 422 or WorldMapFrame:GetMapID() == 433 or WorldMapFrame:GetMapID() == 434 or WorldMapFrame:GetMapID() == 504 or WorldMapFrame:GetMapID() == 554  or WorldMapFrame:GetMapID() == 1530
        or WorldMapFrame:GetMapID() == 507)
      then
        if not ns.Addon.db.profile.showZonePandaria then
          ns.Addon.db.profile.showZonePandaria = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Pandaria"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showZonePandaria = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Pandaria"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Draenor
      elseif (WorldMapFrame:GetMapID() == 525 or WorldMapFrame:GetMapID() == 534 or WorldMapFrame:GetMapID() == 535 or WorldMapFrame:GetMapID() == 539 or WorldMapFrame:GetMapID() == 542 or WorldMapFrame:GetMapID() == 543
        or WorldMapFrame:GetMapID() == 550 or WorldMapFrame:GetMapID() == 588)
      then
        if not ns.Addon.db.profile.showZoneDraenor then
          ns.Addon.db.profile.showZoneDraenor = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Draenor"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showZoneDraenor = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Draenor"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Broken Isles
      elseif (WorldMapFrame:GetMapID() == 630 or WorldMapFrame:GetMapID() == 634 or WorldMapFrame:GetMapID() == 641 or WorldMapFrame:GetMapID() == 646 or WorldMapFrame:GetMapID() == 650 or WorldMapFrame:GetMapID() == 652
        or WorldMapFrame:GetMapID() == 750 or WorldMapFrame:GetMapID() == 680 or WorldMapFrame:GetMapID() == 830 or WorldMapFrame:GetMapID() == 882 or WorldMapFrame:GetMapID() == 885 or WorldMapFrame:GetMapID() == 905
        or WorldMapFrame:GetMapID() == 941 or WorldMapFrame:GetMapID() == 790)
      then
        if not ns.Addon.db.profile.showZoneBrokenIsles then
          ns.Addon.db.profile.showZoneBrokenIsles = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Broken Isles"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showZoneBrokenIsles = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Broken Isles"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Zandalar
      elseif (WorldMapFrame:GetMapID() == 862 or WorldMapFrame:GetMapID() == 863 or WorldMapFrame:GetMapID() == 864 or WorldMapFrame:GetMapID() == 1355 or WorldMapFrame:GetMapID() == 1528)
      then
        if not ns.Addon.db.profile.showZoneZandalar then
          ns.Addon.db.profile.showZoneZandalar = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Zandalar"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showZoneZandalar = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Zandalar"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Kul Tiras
      elseif (WorldMapFrame:GetMapID() == 895 or WorldMapFrame:GetMapID() == 896 or WorldMapFrame:GetMapID() == 942 or WorldMapFrame:GetMapID() == 1462 or WorldMapFrame:GetMapID() == 1169)
      then
        if not ns.Addon.db.profile.showZoneKulTiras then
          ns.Addon.db.profile.showZoneKulTiras = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Kul Tiras"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showZoneKulTiras = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Kul Tiras"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Shadowlands
      elseif (WorldMapFrame:GetMapID() == 1525 or WorldMapFrame:GetMapID() == 1533 or WorldMapFrame:GetMapID() == 1536 or WorldMapFrame:GetMapID() == 1543 or WorldMapFrame:GetMapID() == 1565 or WorldMapFrame:GetMapID() == 1961
        or WorldMapFrame:GetMapID() == 1970 or WorldMapFrame:GetMapID() == 2016)
      then
        if not ns.Addon.db.profile.showZoneShadowlands then
          ns.Addon.db.profile.showZoneShadowlands = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Shadowlands"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showZoneShadowlands = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Shadowlands"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      --Dragon Isles
      elseif (WorldMapFrame:GetMapID() == 2022 or WorldMapFrame:GetMapID() == 2023 or WorldMapFrame:GetMapID() == 2024 or WorldMapFrame:GetMapID() == 2025 or WorldMapFrame:GetMapID() == 2026 or WorldMapFrame:GetMapID() == 2133
        or WorldMapFrame:GetMapID() == 2151 or WorldMapFrame:GetMapID() == 2200 or WorldMapFrame:GetMapID() == 2239 or WorldMapFrame:GetMapID() == 2266)
      then
        if not ns.Addon.db.profile.showZoneDragonIsles then
          ns.Addon.db.profile.showZoneDragonIsles = true
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Dragon Isles"]  .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["are shown"])
        else
          ns.Addon.db.profile.showZoneDragonIsles = false
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Dragon Isles"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["are hidden"])
        end
      end
    end

    -- CapitalsMinimap without Sync function
    if not ns.Addon.db.profile.activate.SyncCapitalsAndMinimap
      and (C_Map.GetBestMapForUnit("player") == 1454 or C_Map.GetBestMapForUnit("player") == 1456 --Cata nodes
      or C_Map.GetBestMapForUnit("player") == 84 or C_Map.GetBestMapForUnit("player") == 87 or C_Map.GetBestMapForUnit("player") == 89 or C_Map.GetBestMapForUnit("player") == 103 or C_Map.GetBestMapForUnit("player") == 85
      or C_Map.GetBestMapForUnit("player") == 90 or C_Map.GetBestMapForUnit("player") == 86 or C_Map.GetBestMapForUnit("player") == 88 or C_Map.GetBestMapForUnit("player") == 110 or C_Map.GetBestMapForUnit("player") == 111
      or C_Map.GetBestMapForUnit("player") == 125 or C_Map.GetBestMapForUnit("player") == 126 or C_Map.GetBestMapForUnit("player") == 391 or C_Map.GetBestMapForUnit("player") == 392 or C_Map.GetBestMapForUnit("player") == 393 
      or C_Map.GetBestMapForUnit("player") == 394 or C_Map.GetBestMapForUnit("player") == 582 or C_Map.GetBestMapForUnit("player") == 590 or C_Map.GetBestMapForUnit("player") == 622 or C_Map.GetBestMapForUnit("player") == 624 
      or C_Map.GetBestMapForUnit("player") == 626 or C_Map.GetBestMapForUnit("player") == 627 or C_Map.GetBestMapForUnit("player") == 628 or C_Map.GetBestMapForUnit("player") == 629 or C_Map.GetBestMapForUnit("player") == 1161
      or C_Map.GetBestMapForUnit("player") == 1163 or C_Map.GetBestMapForUnit("player") == 1164 or C_Map.GetBestMapForUnit("player") == 1165 or C_Map.GetBestMapForUnit("player") == 1670 or C_Map.GetBestMapForUnit("player") == 1671 
      or C_Map.GetBestMapForUnit("player") == 1672 or C_Map.GetBestMapForUnit("player") == 1673 or C_Map.GetBestMapForUnit("player") == 2112 or C_Map.GetBestMapForUnit("player") == 407 or C_Map.GetBestMapForUnit("player") == 2339
      or C_Map.GetBestMapForUnit("player") == 499 or C_Map.GetBestMapForUnit("player") == 500) 
    then
      if not ns.Addon.db.profile.activate.MinimapCapitals then
        ns.Addon.db.profile.activate.MinimapCapitals = true
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, L["Capitals"], L["icons"], "|cff00ff00" .. L["are shown"])
      else
        ns.Addon.db.profile.activate.MinimapCapitals = false
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, L["Capitals"], L["icons"], "|cffff0000" .. L["are hidden"])
      end
    end

    -- Capital Synch function
    if ns.Addon.db.profile.activate.SyncCapitalsAndMinimap
      and (C_Map.GetBestMapForUnit("player") == 1454 or C_Map.GetBestMapForUnit("player") == 1456 --Cata nodes
      or C_Map.GetBestMapForUnit("player") == 84 or C_Map.GetBestMapForUnit("player") == 87 or C_Map.GetBestMapForUnit("player") == 89 or C_Map.GetBestMapForUnit("player") == 103 or C_Map.GetBestMapForUnit("player") == 85
      or C_Map.GetBestMapForUnit("player") == 90 or C_Map.GetBestMapForUnit("player") == 86 or C_Map.GetBestMapForUnit("player") == 88 or C_Map.GetBestMapForUnit("player") == 110 or C_Map.GetBestMapForUnit("player") == 111
      or C_Map.GetBestMapForUnit("player") == 125 or C_Map.GetBestMapForUnit("player") == 126 or C_Map.GetBestMapForUnit("player") == 391 or C_Map.GetBestMapForUnit("player") == 392 or C_Map.GetBestMapForUnit("player") == 393 
      or C_Map.GetBestMapForUnit("player") == 394 or C_Map.GetBestMapForUnit("player") == 582 or C_Map.GetBestMapForUnit("player") == 590 or C_Map.GetBestMapForUnit("player") == 622 or C_Map.GetBestMapForUnit("player") == 624 
      or C_Map.GetBestMapForUnit("player") == 626 or C_Map.GetBestMapForUnit("player") == 627 or C_Map.GetBestMapForUnit("player") == 628 or C_Map.GetBestMapForUnit("player") == 629 or C_Map.GetBestMapForUnit("player") == 1161
      or C_Map.GetBestMapForUnit("player") == 1163 or C_Map.GetBestMapForUnit("player") == 1164 or C_Map.GetBestMapForUnit("player") == 1165 or C_Map.GetBestMapForUnit("player") == 1670 or C_Map.GetBestMapForUnit("player") == 1671 
      or C_Map.GetBestMapForUnit("player") == 1672 or C_Map.GetBestMapForUnit("player") == 1673 or C_Map.GetBestMapForUnit("player") == 2112 or C_Map.GetBestMapForUnit("player") == 407 or C_Map.GetBestMapForUnit("player") == 2339
      or C_Map.GetBestMapForUnit("player") == 499 or C_Map.GetBestMapForUnit("player") == 500) 
    then
      if not ns.Addon.db.profile.activate.Capitals then
        ns.Addon.db.profile.activate.Capitals = true
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Capitals"] .. " & " ..  L["Capitals"] .. " - " .. MINIMAP_LABEL .. " " .. L["icons"], "|cff00ff00" .. L["are shown"])
      else
        ns.Addon.db.profile.activate.Capitals = false
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Capitals"] .. " & " ..  L["Capitals"] .. " - " .. MINIMAP_LABEL .. " " .. L["icons"], "|cffff0000" .. L["are hidden"])
      end
    end

  end

  -- hide MiniMapButton
  if IsShiftKeyDown() and button == "RightButton" then
    MNMMBIcon:Hide("MNMiniMapButton")
    ns.Addon.db.profile.activate.HideMMB = true
    LibStub("AceConfigDialog-3.0"):Close("HandyNotes") 
    print(ns.COLORED_ADDON_NAME .. "|cffffff00 " .. L["-> MiniMapButton <-"], "|cffff0000" .. L["are hidden"]) 
    print(ns.COLORED_ADDON_NAME .. "|cffffff00 " .. L["to show minimap button: /mnb or /MNB"])
    print(ns.COLORED_ADDON_NAME .. "|cffffff00 ".. L["to open MapNotes menu: /mno, /MNO"])
  end

  -- open/close MapNotes menu
  if button == "LeftButton" then
    if not LibStub("AceConfigDialog-3.0"):Close("MapNotes") then
      LibStub("AceConfigDialog-3.0"):Open("MapNotes")
      LibStub("AceConfigDialog-3.0"):Close("HandyNotes")
    end
  end

  -- open/close Worldmap
  if button == "MiddleButton" then
    if WorldMapFrame:IsShown() then
      ToggleWorldMap()
      WorldMapFrame:Hide()
    else 
      ToggleWorldMap()
      WorldMapFrame:Show()
    end
  end

  ns.Addon:FullUpdate()
  HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end }