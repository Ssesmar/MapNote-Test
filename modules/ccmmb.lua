local ADDON_NAME, ns = ...
     
local db = ns.Addon --Fizzlemizz changes
print(db) --Fizzlemizz changes
 
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)
local COLORED_ADDON_NAME = "|cffff0000Map|r|cff00ccffNotes|r"
local MNMMBIcon = LibStub("LibDBIcon-1.0", true)
 
SLASH_INFO1, SLASH_INFO2, SLASH_INFO3, SLASH_INFO4, SLASH_INFO5, SLASH_INFO6, SLASH_INFO7, SLASH_INFO8 , SLASH_INFO09 = "/mn", "/MN", "/mapnotes", "/MAPNOTES", "/mnhelp", "/MNHELP", "/mnh", "/MNH", "/handynotes_mapnotes";
function SlashCmdList.INFO(msg, editbox)
  print("|cff00ccff".."------------------------------------------------------------------------------------------")
  print("|cffffff00~~"..COLORED_ADDON_NAME .. "|cffffff00~~") 
  print("|cffffff00".. L["Chat commands:"])
  print("|cffffff00                      • ".. L["to open MapNotes menu: /mno, /MNO"])
  print("|cffffff00                      • ".. L["to close MapNotes menu: /mnc, /MNC"])
  print("|cffffff00                      • ".. L["to show minimap button: /mnb or /MNB"])
  print("|cffffff00                      • ".. L["to hide minimap button: /mnbh or /MNBH"])
  print("|cffffff00~~"..COLORED_ADDON_NAME .. "|cffffff00~~") 
  print("|cff00ccff".."------------------------------------------------------------------------------------------")
end
 
SLASH_OPEN1, SLASH_OPEN2 = "/mno", "/MNO";
function SlashCmdList.OPEN(msg, editbox)
  LibStub("AceConfigDialog-3.0"):Open("MNMiniMapButton") 
  print(COLORED_ADDON_NAME.."|cffffff00  ".. L["MapNotes menu window"], "|cff00ff00" .. L["is activated"])
end
 
SLASH_CLOSE1, SLASH_CLOSE2 = "/mnc", "/MNC";
function SlashCmdList.CLOSE(msg, editbox)
  LibStub("AceConfigDialog-3.0"):Close("MNMiniMapButton") 
  print(COLORED_ADDON_NAME.."|cffffff00  ".. L["MapNotes menu window"], "|cffff0000" .. L["is deactivated"])
end
 
SLASH_MMBSHOW1, SLASH_MMBSHOW2 = "/mnb", "/MNB";
function SlashCmdList.MMBSHOW(msg, editbox)
  MNMMBIcon:Show("MNMiniMapButton")
  ns.Addondb.profile.show.HideMMB = false --Fizzlemizz changes
  print(COLORED_ADDON_NAME .. "|cffffff00  " .. L["-> MiniMapButton <-"], "|cff00ff00" .. L["is activated"])
end
 
SLASH_MMBHIDE1, SLASH_MMBHIDE2 = "/mnbh", "/MNBH";
function SlashCmdList.MMBHIDE(msg, editbox)
  MNMMBIcon:Hide("MNMiniMapButton")
--  db.show.HideMMB = true
  ns.Addon.db.profile.show.HideMMB = true --Fizzlemizz changes
  print(COLORED_ADDON_NAME .. "|cffffff00  " .. L["-> MiniMapButton <-"], "|cffff0000" .. L["is deactivated"])
end