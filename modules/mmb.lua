local ADDON_NAME, ns = ...

local iconLink = "Interface\\Addons\\" .. ADDON_NAME .. "\\images\\"
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)
local COLORED_ADDON_NAME = "|cffff0000Map|r|cff00ccffNotes|r"
local MNMMBIcon = LibStub("LibDBIcon-1.0", true)

local db = { }

ns.miniButton = {
text = COLORED_ADDON_NAME,
type = "data source",
icon = iconLink .. "MN_Logo",
OnTooltipShow = function(tooltip)
  if not tooltip or not tooltip.AddLine then return end
  tooltip:AddLine(COLORED_ADDON_NAME)
  tooltip:AddLine(" ")
  tooltip:AddLine(L["Left-click => Open/Close"] .. " " .. COLORED_ADDON_NAME,1,1,1)
  tooltip:AddLine(L["Shift + Right-click => hide"] .. "|cffff0000  " .. L["-> MiniMapButton <-"],1,1,1)
  tooltip:AddLine("|cffffff00" .. L["(also opens MapNotes if hiding was unwanted)"],1,1,1,1)       
  end,
OnClick = function(self, button)
  if IsShiftKeyDown() and button == "RightButton" then
    MNMMBIcon:Hide("MNMiniMapButton")
    db.show.HideMMB = true  
    LibStub("AceConfigDialog-3.0"):Open("MNMiniMapButton")
    print(COLORED_ADDON_NAME .. "|cffffff00  " .. L["-> MiniMapButton <-"], "|cffff0000" .. L["is deactivated"]) 
    print(COLORED_ADDON_NAME.."|cffffff00  ".. L["MapNotes menu window"], "|cff00ff00" .. L["is activated"])  
    
  end
  if button == "LeftButton" then
    if not LibStub("AceConfigDialog-3.0"):Close("MNMiniMapButton") then
      LibStub("AceConfigDialog-3.0"):Open("MNMiniMapButton") 
      print(COLORED_ADDON_NAME.."|cffffff00  ".. L["MapNotes menu window"], "|cff00ff00" .. L["is activated"])
    end 
  end
end } 