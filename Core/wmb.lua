local ADDON_NAME, ns = ...

local COLORED_ADDON_NAME = "|cffff0000Map|r|cff00ccffNotes|r"
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

local WorldMapOptionsButtonMixin = {}
_G[ADDON_NAME .. 'WorldMapOptionsButtonMixin'] = WorldMapOptionsButtonMixin

function WorldMapOptionsButtonMixin:OnLoad()

end


function WorldMapOptionsButtonMixin:OnClick(button)
local info = C_Map.GetMapInfo(WorldMapFrame:GetMapID())

    if button == "LeftButton" then

        if not LibStub("AceConfigDialog-3.0"):Close("MNMiniMapButton") then
            LibStub("AceConfigDialog-3.0"):Open("MNMiniMapButton")
        end 

    end

    if button == "MiddleButton" then

        if not ns.Addon.db.profile.show.HideMapNote then
            ns.Addon.db.profile.show.HideMapNote = true
            print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffff0000", L["All MapNotes icons have been hidden"])
        else
            ns.Addon.db.profile.show.HideMapNote = false
            print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cff00ff00", L["All set icons have been restored"])
        end

    end

    if button == "RightButton" then 

        if WorldMapFrame:GetMapID() == 946 then -- World Map
        
            if not ns.Addon.db.profile.show.CosmosMap then
                ns.Addon.db.profile.show.CosmosMap = true
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", WORLDMAP_BUTTON, "|cff00ff00" .. L["is activated"])
            else
                ns.Addon.db.profile.show.CosmosMap = false
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", WORLDMAP_BUTTON, "|cffff0000" .. L["is deactivated"])
            end

        end

        if WorldMapFrame:GetMapID() == 947 then-- Azeroth World Map

            if not ns.Addon.db.profile.show.Azeroth then
                ns.Addon.db.profile.show.Azeroth = true
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. WORLD_MAP, "|cff00ff00" .. L["is activated"])
            else
                ns.Addon.db.profile.show.Azeroth = false
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. WORLD_MAP, "|cffff0000" .. L["is deactivated"])
            end

        end

        if info.mapType == 2 then -- Continent Maps
        
            if not ns.Addon.db.profile.show.Continent then
                ns.Addon.db.profile.show.Continent = true
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], "|cff00ff00" .. L["is activated"])
            else
                ns.Addon.db.profile.show.Continent = false
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], "|cffff0000" .. L["is deactivated"])
            end

        end

        if info.mapType == 4 and not WorldMapFrame:GetMapID() == 1670 or not WorldMapFrame:GetMapID() == 125 then -- Dungeon Maps
        
            if not ns.Addon.db.profile.show.DungeonMap then
                ns.Addon.db.profile.show.DungeonMap = true
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Dungeon map"], "|cff00ff00" .. L["is activated"])
            else
                ns.Addon.db.profile.show.DungeonMap = false
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Dungeon map"], "|cffff0000" .. L["is deactivated"])
            end

        end

        --Zones without Capitals
        if (info.mapType == 3 or WorldMapFrame:GetMapID() == 327) and not 
            (WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
            or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
            or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 or WorldMapFrame:GetMapID() == 394
            or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 or WorldMapFrame:GetMapID() == 626
            or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161 or WorldMapFrame:GetMapID() == 1163
            or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 or WorldMapFrame:GetMapID() == 1672
            or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112) then
        
            if not ns.Addon.db.profile.show.ZoneMap then
                ns.Addon.db.profile.show.ZoneMap = true
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zone map"], "|cff00ff00" .. L["is activated"])
            else
                ns.Addon.db.profile.show.ZoneMap = false
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zone map"], "|cffff0000" .. L["is deactivated"])
            end

        end

        --Capitals
        if (WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
        or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
        or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 or WorldMapFrame:GetMapID() == 394
        or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 or WorldMapFrame:GetMapID() == 626
        or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161 or WorldMapFrame:GetMapID() == 1163
        or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 or WorldMapFrame:GetMapID() == 1672
        or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112) then
        
            if not ns.Addon.db.profile.show.Capitals then
                ns.Addon.db.profile.show.Capitals = true
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"], "|cff00ff00" .. L["is activated"])
            else
                ns.Addon.db.profile.show.Capitals = false
                print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"], "|cffff0000" .. L["is deactivated"])
            end

        end

    end
    ns.Addon:FullUpdate()
    HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end


function WorldMapOptionsButtonMixin:OnMouseDown(button)
    self.Icon:SetPoint('TOPLEFT', 8, -8)

end


function WorldMapOptionsButtonMixin:OnMouseUp()
    self.Icon:SetPoint('TOPLEFT', self, 'TOPLEFT', 6, -6)
end


function WorldMapOptionsButtonMixin:OnEnter()
local info = C_Map.GetMapInfo(WorldMapFrame:GetMapID())

    GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
    GameTooltip_SetTitle(GameTooltip, COLORED_ADDON_NAME)
    GameTooltip:AddLine(L["Left-click => Open/Close"] .. "|cffffcc00" .. " " .. COLORED_ADDON_NAME,1,1,1)
    GameTooltip:AddLine(" ",1,1,1)
    GameTooltip:AddLine(L["Middle-Mouse-Button => Open/Close"] .. " => " .. "|cffffcc00" .. L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] .. " " .. SHOW .. " / " .. HIDE,1,1,1,1)
    GameTooltip:AddLine(" ",1,1,1)

    if WorldMapFrame:GetMapID() == 946 then -- World Map
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. WORLDMAP_BUTTON .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

    if WorldMapFrame:GetMapID() == 947 then-- Azeroth World Map
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. WORLD_MAP .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end    

    if info.mapType == 2 then -- Continent Maps
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

    --Zones without Capitals
    if (info.mapType == 3 or WorldMapFrame:GetMapID() == 327) and not 
        (WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
        or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
        or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 or WorldMapFrame:GetMapID() == 394
        or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 or WorldMapFrame:GetMapID() == 626
        or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161 or WorldMapFrame:GetMapID() == 1163
        or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 or WorldMapFrame:GetMapID() == 1672
        or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112) then
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Zone map"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

    if info.mapType == 4 then -- Dungeon Maps
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. DUNGEONS .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

    -- Capitals
    if (WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
    or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
    or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 or WorldMapFrame:GetMapID() == 394
    or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 or WorldMapFrame:GetMapID() == 626
    or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161 or WorldMapFrame:GetMapID() == 1163
    or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 or WorldMapFrame:GetMapID() == 1672
    or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112) then
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Capitals"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end
end



function WorldMapOptionsButtonMixin:Refresh()

end