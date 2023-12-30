local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadInstance_Outland_BLack_Temple()
local nodes = ns.nodes


nodes[339][28657991] = { mnID = 340, name = L["Passage"], type = "PassageDownL", showInZone = true } -- 
nodes[339][76054672] = { mnID = 341, name = L["Passage"], type = "PassageRightL", showInZone = true } --       
nodes[340][27240693] = { mnID = 339, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
nodes[341][61933384] = { mnID = 342, name = L["Passage"], type = "PassageRightL", showInZone = true } -- 
nodes[341][21124985] = { mnID = 339, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- 
nodes[341][57859035] = { mnID = 343, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- 
nodes[341][26302301] = { mnID = 344, name = L["Passage"], type = "PassageDownL", showInZone = true } -- 
nodes[342][63033918] = { mnID = 341, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- 
nodes[343][74966845] = { mnID = 341, name = L["Passage"], type = "PassageRightL", showInZone = true } -- 
nodes[344][08254813] = { mnID = 341, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
nodes[344][67275590] = { mnID = 345, name = L["Passage"], type = "PassageDownL", showInZone = true } -- 
nodes[345][47333054] = { mnID = 346, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
nodes[345][69461241] = { mnID = 344, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
nodes[346][52821234] = { mnID = 345, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
end