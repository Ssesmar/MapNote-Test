local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.RestoreStaticPopUps()

    StaticPopupDialogs["Restore_Zone?"] = {
      text = TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. ": " .. L["Restore all deleted icons"] .. " ? " .. TextIconMNL4:GetIconString(),
      button1 = YES,
      button2 = NO,
      showAlert = true,
      exclusive  = true,
      OnAccept = function()
        if ns.Addon.db.profile.RestoreZoneDeletedIcons then
          wipe(ns.Addon.db.char.ZoneDeletedIcons)
          wipe(ns.Addon.db.char.MinimapZoneDeletedIcons)
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00",L["Zones"] .. " & " .. MINIMAP_LABEL .. " - " .. "|cffff0000" .. L["All deleted icons have been restored"])
        end
        HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
      end,
      OnCancel = function()
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. "|cffffff00 ".. L["Zones"] .. " - " .. L["Restore all deleted icons"] .."|cff00ff00" .. " " .. CLUB_FINDER_CANCELED)
      end,
      timeout = 5,
    }
    StaticPopupDialogs["Restore_Continent?"] = {
      text = TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. ": " .. L["Restore all deleted icons"] .. " ? " .. TextIconMNL4:GetIconString(),
      button1 = YES,
      button2 = NO,
      showAlert = true,
      exclusive  = true,
      OnAccept = function()
        if ns.Addon.db.profile.RestoreContinentDeletedIcons then
          wipe(ns.Addon.db.char.ContinentDeletedIcons)
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00",L["Continents"] .. " - " .. "|cffff0000" .. L["All deleted icons have been restored"])
        end
        HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
      end,
      OnCancel = function()
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. "|cffffff00 ".. L["Continents"] .. " - " .. L["Restore all deleted icons"] .."|cff00ff00" .. " " .. CLUB_FINDER_CANCELED)
      end,
      timeout = 5,
    }
    StaticPopupDialogs["Restore_Azeroth?"] = {
      text = TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. ": " .. L["Restore all deleted icons"] .. " ? " .. TextIconMNL4:GetIconString(),
      button1 = YES,
      button2 = NO,
      showAlert = true,
      exclusive  = true,
      OnAccept = function()
        if ns.Addon.db.profile.RestoreAzerothDeletedIcons then
          wipe(ns.Addon.db.char.AzerothDeletedIcons)
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00",AZEROTH .. " - " .. "|cff00ff00" .. "|cffff0000" .. L["All deleted icons have been restored"])
        end
        HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
      end,
      OnCancel = function()
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. "|cffffff00 ".. AZEROTH .. " - " .. "|cffffff00 ".. L["Restore all deleted icons"] .."|cff00ff00" .. " " .. CLUB_FINDER_CANCELED)
      end,
      timeout = 5,
    }
    StaticPopupDialogs["Restore_Dungeon?"] = {
      text = TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. ": " .. L["Restore all deleted icons"] .. " ? " .. TextIconMNL4:GetIconString(),
      button1 = YES,
      button2 = NO,
      showAlert = true,
      exclusive  = true,
      OnAccept = function()
        if ns.Addon.db.profile.RestoreDungeonDeletedIcons then
          wipe(ns.Addon.db.char.DungeonDeletedIcons)
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00",CALENDAR_TYPE_DUNGEON .. " - " .. "|cffff0000" .. L["All deleted icons have been restored"])
        end
        HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
      end,
      OnCancel = function()
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. "|cffffff00 ".. CALENDAR_TYPE_DUNGEON .. " - " .. L["Restore all deleted icons"] .."|cff00ff00" .. " " .. " " .. CLUB_FINDER_CANCELED)
      end,
      timeout = 5,
    }
    StaticPopupDialogs["Restore_Capitals?"] = {
      text = TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. ": " .. L["Restore all deleted icons"] .. " ? " .. TextIconMNL4:GetIconString(),
      button1 = YES,
      button2 = NO,
      showAlert = true,
      exclusive  = true,
      OnAccept = function()
        if ns.Addon.db.profile.RestoreCapitalsDeletedIcons then
          wipe(ns.Addon.db.char.CapitalsDeletedIcons)
          wipe(ns.Addon.db.char.MinimapCapitalsDeletedIcons)
          print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00",L["Capitals"] .. " & " .. L["Capitals"] .. " - " .. MINIMAP_LABEL .. " - " .. "|cffff0000" .. L["All deleted icons have been restored"])
        end
        HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
      end,
      OnCancel = function()
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. "|cffffff00 ".. L["Capitals"] .. " - " .. L["Restore all deleted icons"] .."|cff00ff00" .. " " .. CLUB_FINDER_CANCELED)
      end,
      timeout = 5,
    }
  end