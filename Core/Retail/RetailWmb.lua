local ADDON_NAME, ns = ...

local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

local WorldMapOptionsButtonMixin = {}
_G[ADDON_NAME .. 'WorldMapOptionsButtonMixin'] = WorldMapOptionsButtonMixin

function WorldMapOptionsButtonMixin:OnLoad()

end


function WorldMapOptionsButtonMixin:OnClick(button)
local info = C_Map.GetMapInfo(WorldMapFrame:GetMapID())

    if button == "LeftButton" then

        if not LibStub("AceConfigDialog-3.0"):Close("MapNotes") then
            LibStub("AceConfigDialog-3.0"):Open("MapNotes")
        end 

    end

    if button == "MiddleButton" then

        if not ns.Addon.db.profile.activate.HideMapNote then
            ns.Addon.db.profile.activate.HideMapNote = true
            print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffff0000", L["All MapNotes icons have been hidden"])
        else
            ns.Addon.db.profile.activate.HideMapNote = false
            print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cff00ff00", L["All set icons have been restored"])
        end

    end

    if button == "RightButton" then 

        -- Cosmos
        if info.mapType == 0 then 
        
            if not ns.Addon.db.profile.activate.CosmosMap then
                ns.Addon.db.profile.activate.CosmosMap = true
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", WORLDMAP_BUTTON, L["icons"], "|cff00ff00" .. L["are shown"])
            else
                ns.Addon.db.profile.activate.CosmosMap = false
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", WORLDMAP_BUTTON, L["icons"], "|cffff0000" .. L["are hidden"])
            end

        end

        -- Azeroth World Map
        if info.mapType == 1 then

            if not ns.Addon.db.profile.activate.Azeroth then
                ns.Addon.db.profile.activate.Azeroth = true
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. AZEROTH, L["icons"], "|cff00ff00" .. L["are shown"])
            else
                ns.Addon.db.profile.activate.Azeroth = false
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. AZEROTH, L["icons"], "|cffff0000" .. L["are hidden"])
            end

        end
        
        -- Continent Maps
        if info.mapType == 2 then 

            if WorldMapFrame:GetMapID() == 12 or WorldMapFrame:GetMapID() == 948 then
                if ns.Addon.db.profile.showContinentKalimdor then
                    ns.Addon.db.profile.showContinentKalimdor = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentKalimdor = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            elseif WorldMapFrame:GetMapID() == 13 then
                if ns.Addon.db.profile.showContinentEasternKingdom then
                    ns.Addon.db.profile.showContinentEasternKingdom = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentEasternKingdom = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            elseif WorldMapFrame:GetMapID() == 101 then
                if ns.Addon.db.profile.showContinentOutland then
                    ns.Addon.db.profile.showContinentOutland = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Outland"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentOutland = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Outland"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            elseif WorldMapFrame:GetMapID() == 113 then
                if ns.Addon.db.profile.showContinentNorthrend then
                    ns.Addon.db.profile.showContinentNorthrend = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Northrend"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentNorthrend = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Northrend"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            elseif WorldMapFrame:GetMapID() == 424 then
                if ns.Addon.db.profile.showContinentPandaria then
                    ns.Addon.db.profile.showContinentPandaria = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Pandaria"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentPandaria = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Pandaria"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            elseif WorldMapFrame:GetMapID() == 572 then
                if ns.Addon.db.profile.showContinentDraenor then
                    ns.Addon.db.profile.showContinentDraenor = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Draenor"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentDraenor = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Draenor"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            elseif WorldMapFrame:GetMapID() == 619 then
                if ns.Addon.db.profile.showContinentBrokenIsles then
                    ns.Addon.db.profile.showContinentBrokenIsles = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Broken Isles"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentBrokenIsles = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Broken Isles"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            elseif WorldMapFrame:GetMapID() == 875 then
                if ns.Addon.db.profile.showContinentZandalar then
                    ns.Addon.db.profile.showContinentZandalar = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Zandalar"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentZandalar = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Zandalar"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            elseif WorldMapFrame:GetMapID() == 876 then
                if ns.Addon.db.profile.showContinentKulTiras then
                    ns.Addon.db.profile.showContinentKulTiras = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Kul Tiras"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentKulTiras = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Kul Tiras"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            elseif WorldMapFrame:GetMapID() == 1550 then
                if ns.Addon.db.profile.showContinentShadowlands then
                    ns.Addon.db.profile.showContinentShadowlands = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Shadowlands"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentShadowlands = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Shadowlands"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            elseif WorldMapFrame:GetMapID() == 1978 then
                if ns.Addon.db.profile.showContinentDragonIsles then
                    ns.Addon.db.profile.showContinentDragonIsles = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Dragon Isles"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentDragonIsles = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Dragon Isles"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            elseif WorldMapFrame:GetMapID() == 2274 then
                if ns.Addon.db.profile.showContinentKhazAlgar then
                    ns.Addon.db.profile.showContinentKhazAlgar = false
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Khaz Algar"], L["icons"], "|cffff0000" .. L["are hidden"])
                else
                    ns.Addon.db.profile.showContinentKhazAlgar = true
                    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Khaz Algar"], L["icons"], "|cff00ff00" .. L["are shown"])
                end
            end

        end

        -- Dungeon Maps
        if info.mapType == 4 and not 
            (WorldMapFrame:GetMapID() == 1454 or WorldMapFrame:GetMapID() == 1456 --Cata nodes
            or WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
            or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
            or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 
            or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 
            or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161
            or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 
            or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 2339
            or WorldMapFrame:GetMapID() == 2266) 
        then
        
            if not ns.Addon.db.profile.activate.DungeonMap then
                ns.Addon.db.profile.activate.DungeonMap = true
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Dungeon map"], L["icons"], "|cff00ff00" .. L["are shown"])
            else
                ns.Addon.db.profile.activate.DungeonMap = false
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Dungeon map"], L["icons"], "|cffff0000" .. L["are hidden"])
            end

        end

        --Zones without Sync function
        if not ns.Addon.db.profile.activate.SyncZoneAndMinimap and (info.mapType == 3 or info.mapType == 5 or info.mapType == 6 or WorldMapFrame:GetMapID() == 327 or WorldMapFrame:GetMapID() == 2266) and not 
            (WorldMapFrame:GetMapID() == 1454 or WorldMapFrame:GetMapID() == 1456 -- Cata nodes
            or WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
            or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
            or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 
            or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 
            or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161
            or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 
            or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 2339) 
        then
        
            if not ns.Addon.db.profile.activate.ZoneMap then
                ns.Addon.db.profile.activate.ZoneMap = true
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zone map"], L["icons"], "|cff00ff00" .. L["are shown"])
            else
                ns.Addon.db.profile.activate.ZoneMap = false
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zone map"], L["icons"], "|cffff0000" .. L["are hidden"])
            end

        end

        --Zones Sync function
        if ns.Addon.db.profile.activate.SyncZoneAndMinimap and (info.mapType == 3 or info.mapType == 5 or info.mapType == 6 or WorldMapFrame:GetMapID() == 327 or WorldMapFrame:GetMapID() == 2266) and not 
            (WorldMapFrame:GetMapID() == 1454 or WorldMapFrame:GetMapID() == 1456 -- Cata nodes
            or WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
            or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
            or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 
            or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 
            or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161
            or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 
            or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 2339) 
        then
        
            if not ns.Addon.db.profile.activate.ZoneMap then
                ns.Addon.db.profile.activate.ZoneMap = true
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. " " .. L["icons"], "|cff00ff00" .. L["are shown"])
            else
                ns.Addon.db.profile.activate.ZoneMap = false
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Zones"] .. " & " .. MINIMAP_LABEL .. " " .. L["icons"], "|cffff0000" .. L["are hidden"])
            end

        end

        --Capitals without Sync function
        if not ns.Addon.db.profile.activate.SyncCapitalsAndMinimap and (WorldMapFrame:GetMapID() == 1454 or WorldMapFrame:GetMapID() == 1456 -- Cata nodes
            or WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
            or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
            or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 
            or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 
            or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161
            or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 
            or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 2339) 
        then
        
            if not ns.Addon.db.profile.activate.Capitals then
                ns.Addon.db.profile.activate.Capitals = true
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"], L["icons"], "|cff00ff00" .. L["are shown"])
            else
                ns.Addon.db.profile.activate.Capitals = false
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"], L["icons"], "|cffff0000" .. L["are hidden"])
            end

        end

        --Capitals Sync function
        if ns.Addon.db.profile.activate.SyncCapitalsAndMinimap and (WorldMapFrame:GetMapID() == 1454 or WorldMapFrame:GetMapID() == 1456 -- Cata nodes
            or WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
            or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
            or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 
            or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 
            or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161
            or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 
            or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 2339) then
        
            if not ns.Addon.db.profile.activate.Capitals then
                ns.Addon.db.profile.activate.Capitals = true
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Capitals"] .. " & " ..  L["Capitals"] .. " - " .. MINIMAP_LABEL .. " " .. L["icons"], "|cff00ff00" .. L["are shown"])
            else
                ns.Addon.db.profile.activate.Capitals = false
                print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["synchronizes"] .. " " .. L["Capitals"] .. " & " ..  L["Capitals"] .. " - " .. MINIMAP_LABEL .. " " .. L["icons"], "|cffff0000" .. L["are hidden"])
            end
            
        end

    end
    ns.Addon:FullUpdate()
    HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end

function WorldMapOptionsButtonMixin:OnEnter()
local info = C_Map.GetMapInfo(WorldMapFrame:GetMapID())

    GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
    GameTooltip_SetTitle(GameTooltip, ns.COLORED_ADDON_NAME)
    GameTooltip:AddLine(L["Left-click => Open/Close"] .. "|cffffcc00" .. " " .. ns.COLORED_ADDON_NAME,1,1,1)
    GameTooltip:AddLine(" ",1,1,1)
    GameTooltip:AddLine(L["Middle-Mouse-Button => Open/Close"] .. " => " .. "|cffffcc00" .. L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] .. " " .. SHOW .. " / " .. HIDE,1,1,1,1)
    GameTooltip:AddLine(" ",1,1,1)
    
    -- Cosmos Map
    if info.mapType == 0 then 
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. WORLDMAP_BUTTON .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

    if info.mapType == 1 then-- Azeroth World Map
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. AZEROTH .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end    

    -- Continent Maps
    if info.mapType == 2 then 

        if WorldMapFrame:GetMapID() == 12 or WorldMapFrame:GetMapID() == 948 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Kalimdor"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        elseif WorldMapFrame:GetMapID() == 13 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Eastern Kingdom"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        elseif WorldMapFrame:GetMapID() == 101 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Outland"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        elseif WorldMapFrame:GetMapID() == 113 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Northrend"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        elseif WorldMapFrame:GetMapID() == 424 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Pandaria"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        elseif WorldMapFrame:GetMapID() == 573 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Draenor"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        elseif WorldMapFrame:GetMapID() == 619 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Broken Isles"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        elseif WorldMapFrame:GetMapID() == 875 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Zandalar"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        elseif WorldMapFrame:GetMapID() == 876 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Kul Tiras"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        elseif WorldMapFrame:GetMapID() == 1550 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Shadowlands"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        elseif WorldMapFrame:GetMapID() == 1978 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Dragon Isles"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        elseif WorldMapFrame:GetMapID() == 2274 then
            GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. " " .. L["Khaz Algar"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
            GameTooltip:Show()
        end

    end

    --Zones without Sync function
    if not ns.Addon.db.profile.activate.SyncZoneAndMinimap and (info.mapType == 3 or info.mapType == 5 or info.mapType == 6 or WorldMapFrame:GetMapID() == 327 or WorldMapFrame:GetMapID() == 2266) and not 
        (WorldMapFrame:GetMapID() == 1454 or WorldMapFrame:GetMapID() == 1456 -- Cata nodes
        or WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
        or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
        or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 
        or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 
        or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161
        or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 
        or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 2339) 
    then
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Zone map"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

    --Zones Sync function
    if ns.Addon.db.profile.activate.SyncZoneAndMinimap and (info.mapType == 3 or info.mapType == 5 or info.mapType == 6 or WorldMapFrame:GetMapID() == 327 or WorldMapFrame:GetMapID() == 2266) and not 
        (WorldMapFrame:GetMapID() == 1454 or WorldMapFrame:GetMapID() == 1456 -- Cata nodes
        or WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
        or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
        or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 
        or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 
        or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161
        or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 
        or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 2339) 
    then
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Zones"] .. " & " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

    --Dungeon Maps
    if info.mapType == 4 and not 
        (WorldMapFrame:GetMapID() == 1454 or WorldMapFrame:GetMapID() == 1456 -- Cata nodes
        or WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
        or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
        or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 
        or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 
        or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161
        or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 
        or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 2339 
        or WorldMapFrame:GetMapID() == 2266) 
    then
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. DUNGEONS .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

    -- Capitals without Sync function
    if not ns.Addon.db.profile.activate.SyncCapitalsAndMinimap and (WorldMapFrame:GetMapID() == 1454 or WorldMapFrame:GetMapID() == 1456 -- Cata nodes
        or WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
        or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
        or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 
        or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 
        or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161
        or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 
        or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 2339) 
    then
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Capitals"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

    -- Capitals Sync function
    if ns.Addon.db.profile.activate.SyncCapitalsAndMinimap and (WorldMapFrame:GetMapID() == 1454 or WorldMapFrame:GetMapID() == 1456 -- Cata nodes
        or WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
        or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111
        or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 
        or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 
        or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161
        or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 
        or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 2339) 
    then
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Capitals"] .. " & " ..  L["Capitals"] .. " - " .. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end
end

function WorldMapOptionsButtonMixin:OnMouseDown(button)
    self.Icon:SetPoint('TOPLEFT', 8, -8)

end


function WorldMapOptionsButtonMixin:OnMouseUp()
    self.Icon:SetPoint('TOPLEFT', self, 'TOPLEFT', 6, -6)
end

function WorldMapOptionsButtonMixin:Refresh()

end