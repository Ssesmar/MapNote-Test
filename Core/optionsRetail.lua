local ADDON_NAME, ns = ...

local HandyNotes = LibStub("AceAddon-3.0"):GetAddon("HandyNotes", true)
if not HandyNotes then return end

local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)
local COLORED_ADDON_NAME = "|cffff0000Map|r|cff00ccffNotes|r"
local MNMMBIcon = LibStub("LibDBIcon-1.0", true)

function ns.LoadOptions(self)
  
ns.options = {
  type = "group",
  name = TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString(),
  childGroups = "tab",
  desc = L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"],
  get = function(info) return ns.Addon.db.profile[info[#info]] end,
  set = function(info, v) ns.Addon.db.profile[info[#info]] = v HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") end,
  args = {  
    GeneralTab = {
      type = "group",
      name = GENERAL,
      desc = L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"],
      order = 0,
      args = {
        Description = {
          type = "header",
          name = BINDING_NAME_TOGGLECOREABILITIESBOOK,
          order = 0.1,
          },
        hideAddon = {
          type = "toggle",
          name = "|cffff0000" .. L["hide MapNotes!"],
          desc = L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"],
          order = 0.5,
          width = 1.10,
          get = function() return ns.Addon.db.profile.show.HideMapNote end,
          set = function(info, v) ns.Addon.db.profile.show.HideMapNote = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.HideMapNote then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffff0000", L["All MapNotes icons have been hidden"]) else
                if not ns.Addon.db.profile.show.HideMapNote then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cff00ff00", L["All set icons have been restored"]) end end end,
          },  
        hideMMB = {
          type = "toggle",
          name = "|cffff0000" .. L["hide minimap button"],
          desc = L["Hide the MapNotes button on the minimap"],
          order = 0.7,
          width = 1.25,
          get = function() return ns.Addon.db.profile.show.HideMMB end,
          set = function(info, v) ns.Addon.db.profile.show.HideMMB = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            if not ns.Addon.db.profile.show.HideMMB then MNMMBIcon:Show("MNMiniMapButton") print(COLORED_ADDON_NAME .. "|cffffff00", L["-> MiniMapButton <-"], L["icons"], "|cff00ff00" .. L["is activated"]) else
            if ns.Addon.db.profile.show.HideMMB then MNMMBIcon:Hide("MNMiniMapButton") print(COLORED_ADDON_NAME .. "|cffffff00", L["-> MiniMapButton <-"], L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        hideWMB = {
          type = "toggle",
          name = "|cffff0000" .. L["hide worldmap button"],
          desc = L["Hide the MapNotes button on the worldmap"],
          order = 0.8,
          width = 1.20,
          get = function() return ns.Addon.db.profile.show.HideWMB end,
          set = function(info, v) ns.Addon.db.profile.show.HideWMB = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            if not ns.Addon.db.profile.show.HideWMB then ns.WorldMapButton:Show() LibStub("Krowi_WorldMapButtons-1.4").SetPoints(); print(COLORED_ADDON_NAME .. "|cffffff00", L["-> WorldMapButton <-"], L["icons"], "|cff00ff00" .. L["is activated"]) else
            if ns.Addon.db.profile.show.HideWMB then ns.WorldMapButton:Hide() LibStub("Krowi_WorldMapButtons-1.4").SetPoints(); print(COLORED_ADDON_NAME .. "|cffffff00", L["-> WorldMapButton <-"], L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        DescriptionHeader2 = {
          type = "header",
          name = L["General"],
          order = 1.6,
          },
        RemoveBlizzPOIs = {
          -- disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = COLORED_ADDON_NAME .. " " .. L["icons"],
          desc = TextIconMNL4:GetIconString() ..  " " .. TextIconHIcon:GetIconString() ..  " " .. TextIconAIcon:GetIconString() .. " " .. L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] .. "\n" .. "\n" .. TextIconRaid:GetIconString() .. " " .. TextIconDungeon:GetIconString() .. " " ..  L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] .. "\n" .. "\n" .. L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"],
          order = 1.7,
          width = 1.05,
          get = function() return ns.Addon.db.profile.show.RemoveBlizzPOIs end,
          set = function(info, v) ns.Addon.db.profile.show.RemoveBlizzPOIs = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.show.RemoveBlizzPOIs then SetCVar("showDungeonEntrancesOnMap", 0) print(COLORED_ADDON_NAME, "|cffffff00" .. SLASH_TEXTTOSPEECH_BLIZZARD .. " " .. L["icons"], "|cffff0000" .. L["are hidden"] ) else
                if not ns.Addon.db.profile.show.RemoveBlizzPOIs then SetCVar("showDungeonEntrancesOnMap", 1) print(COLORED_ADDON_NAME, "|cffffff00" .. SLASH_TEXTTOSPEECH_BLIZZARD .. " " ..L["icons"], "|cff00ccff" .. L["are shown"] )end end end,
          },
        showEnemyFaction = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = L["enemy faction"],
          desc = TextIconHorde:GetIconString() ..  " " .. TextIconAlliance:GetIconString() .. " " .. L["Shows enemy faction (horde/alliance) icons"],
          order = 1.8,
          width = 0.90,
          get = function() return ns.Addon.db.profile.show.EnemyFaction end,
          set = function(info, v) ns.Addon.db.profile.show.EnemyFaction = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.show.EnemyFaction then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["enemy faction"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.show.EnemyFaction then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["enemy faction"], "|cffff0000" ..  L["is deactivated"]) end end end,
         },
        ShiftWorld = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = L["Shift function!"],
          desc = L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."],
          order = 1.9,
          width = 0.75,
          get = function() return ns.Addon.db.profile.show.ShiftWorld end,
          set = function(info, v) ns.Addon.db.profile.show.ShiftWorld = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.show.ShiftWorld then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Shift function"], "|cff00ff00" .. L["is deactivated"] .. " " .. L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"]) else
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.show.ShiftWorld then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Shift function"], "|cffff0000" .. L["is activated"] .. " " .. L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"]) end end end,
          },
        ClassicIcons = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = CLASSIC_STYLE,
          desc = L["Only affects instance passage icons, not path icons such as exit icons or icons on an instance map or the Capitals category / Minimap Capitals"] .. "\n" .. "\n" .. L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] .. "\n" .. "\n" .. L["At the same time, all icons representing additional instance inputs are removed"],
          order = 2.0,
          width = 0.85,
          get = function() return ns.Addon.db.profile.show.ClassicIcons end,
          set = function(info, v) ns.Addon.db.profile.show.ClassicIcons = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.show.ClassicIcons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", CLASSIC_STYLE, "|cff00ff00" .. L["is deactivated"]) else
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.show.ClassicIcons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", CLASSIC_STYLE, "|cffff0000" .. L["is activated"]) end end end,
          }, 
        FogOfWar = {
          --disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = L["Unexplored Areas"],
          desc = L["Reveals unexplored areas and shows the individual areas of each zone that are actually still unexplored"],
          order = 2.1,
          width = 1.05,
          get = function() return ns.Addon.db.profile.show.FogOfWar end,
          set = function(info, v) ns.Addon.db.profile.show.FogOfWar = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            HandyNotes:GetModule("FogOfWarButton"):Refresh()
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.show.FogOfWar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Unexplored Areas"], L["icons"], "|cffff0000" .. L["is deactivated"]) else
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.show.FogOfWar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Unexplored Areas"], L["icons"], "|cff00ff00" .. L["is activated"]) end end end,
          }, 
        FogOfWarAlphaReduce = {
          disabled = function() return not ns.Addon.db.profile.show.FogOfWar end,
          type = "toggle",
          name = L["Mist of the Unexplored"],
          desc = L["Leaves the unexplored areas revealed but adds a slight fog so you can still see which ones you haven't explored yet"],
          width = 2,
          order = 2.2,
          get = function() return ns.Addon.db.profile.show.FogOfWarAlphaReduce end,
          set = function(info, v) ns.Addon.db.profile.show.FogOfWarAlphaReduce = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            HandyNotes:GetModule("FogOfWarButton"):Refresh()
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.show.FogOfWarAlphaReduce then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Mist of the Unexplored"], L["icons"], "|cffff0000" .. L["is deactivated"]) else
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.show.FogOfWarAlphaReduce then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00",L["Mist of the Unexplored"], L["icons"], "|cff00ff00" .. L["is activated"]) end end end,
          }, 
        GeneralHeader = {
          type = "header",
          name = L["General settings / Additional functions"],
          order = 3.0,
          },
        journal = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconJournal:GetIconString() .. " " .. L["Adventure guide"],
          desc = L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] .. " " .. L["Left-clicking on a multiple icon will open the map where the dungeons are located"],
          order = 3.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.journal then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Adventure guide"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.journal then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Adventure guide"], L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
          },    
        tomtom = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconTomTom:GetIconString() .. " " .. L["TomTom waypoints"],
          desc = L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"],
          order = 3.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.tomtom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["TomTom waypoints"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.tomtom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["TomTom waypoints"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        extraInformation = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconKilledBosses:GetIconString() .. " " .. L["extra information"],
          desc = L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"],
          order = 3.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.assignedID then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["extra information"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.assignedID then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["extra information"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        assignedgray = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote or ns.Addon.db.profile.graymultipleID end,
          type = "toggle",
          name = TextIconLocked:GetIconString() .. " " .. TextIconRaid:GetIconString() .. " " .. TextIconDungeon:GetIconString() .. " " .. L["gray single"],
          desc = L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"],
          order = 3.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.assignedgray then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["gray single"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.assignedgray then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["gray single"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        graymultipleID = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconLocked:GetIconString() .. " " .. TextIconMultipleM:GetIconString() .. " " .. TextIconPassageDungeonMultiM:GetIconString() .. " " .. L["gray all"],
          desc = L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"],
          order = 3.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.graymultipleID then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["gray all"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.graymultipleID then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["gray all"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        noChatMassage = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconMNL4:GetIconString() .. " " .. L["chat message"],
          desc = L["Disables MapNotes status chat messages excluding core information"],
          order = 3.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["chat message"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
            if not ns.Addon.db.profile.noChatMassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["chat message"], L["icons"], "|cffff0000" .. L["is deactivated"] ) end end end,
          }, 
        DescriptionHeader3 = {
          type = "header",
          name = "",
          order = 4.0,
          },
        InfoTab = {
          type = "group",
          name = "-> " .. DESCRIPTION .. " <-",
          desc = L["A description of what this addon does and what functions it offers"],
          order = 1,
          args = {
          InfoDescriptionText = {
            name = "• " .. L["Displays instance entrances, portals, ships, zeppelins, exits, passage, enemy faction and other transport icons"] .. "\n" .. "• " .. L["All icons can be activated or deactivated separately!"] .. "\n" .. "• " .. L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] .. "\n" .. "• " .. L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"] .. "\n" .. "• " .. L["Normally on a maximized map you cannot use instance icons from Blizzard or other addons that would open the adventure guide. But not for MapNotes! You can use all functions on minimized or maximized maps!"],
            type = "description",
            order = 10.1,
            },
          },
        },
        InfoTab2 = {
          type = "group",
          name = "-> " .. L["Worldmap function"] .. " <-",
          desc = L["A collection of various icons on various maps from previous expansions up to Dragonflight"],
          order = 2,
          args = {
            InfoDescriptionText2 = {
              name = "• " .. L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] .. "\n" .. "• " .. L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] .. "\n" .. "• " .. L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] .. "\n" .. "• " .. L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"] .. "\n" .. "• " .. L["Example zone map: => Orgrimmar. Left-click on this icon opens the map of Orgrimmar"] .. "\n" .. "• " .. L["Example Azeroth/continent map: 'Jade Forest Portal => Orgrimmar' Left-click on this symbol opens the map of the Jade Forest. So you can see where you need to go to get to the portal"],
              type = "description",
              order = 20.1,
              },
            },
          },
        InfoTab3 = {
          type = "group",
          name = "-> " .. WORLDMAP_BUTTON .. " - " .. WINDOWED_MAXIMIZED .. " <-",
          desc = L["A collection of various icons on various maps from previous expansions up to Dragonflight"],
          order = 3,
          args = {
            InfoDescriptionText3 = {
              name = "• " .. L["After the adventure guide is opened using a MapNote instance icon and you then switch to the dungeon map using the 'Show map' option in the adventure guide, the map is shown reduced in size so that you can move with the character within the instance and see where you have to go. This minimized map feature ends when you close the map or once! Press the “World map on/off” button (which you have set under 'ESC - Keyboard assignment - Interface function'), whereupon the map will be maximized"],
              type = "description",
              order = 30.1,
              },
            },
          },
        InfoTab4 = {
          type = "group",
          name = L["-> MiniMapButton <-"],
          desc = L["A collection of various icons on various maps from previous expansions up to Dragonflight"],
          order = 4,
          args = {
            InfoDescriptionText4 = {
              name = "• " .. L["Left-click opens or close the MapNote setting menu"] .. "\n" .. "\n" .. "• " .. HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " " .. MINIMAP_LABEL .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE .. "\n" .. "\n" .. "• " .. L["Shift+Right-click hide the minimap button"] .. "\n" .. "\n" .. "• " .. L["Middle-Mouse-Button => Open/Close"],
              type = "description",
              order = 30.1,
              },
            },
          },
        InfoTab5 = {
          type = "group",
          name = L["-> WorldMapButton <-"],
          desc = L["A collection of various icons on various maps from previous expansions up to Dragonflight"],
          order = 5,
          args = {
            InfoDescriptionText5 = {
              name =  "• " .. L["Left-click => Open/Close"] .. " " .. HUD_EDIT_MODE_MICRO_MENU_LABEL .. "\n" .. "\n" .. "• " .. MIDDLE_BUTTON_STRING .. " => " .. L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] .. " " .. SHOW .. " / " .. HIDE  .. "\n" .. "\n" .. "• " .. HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. WORLDMAP_BUTTON .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,
              type = "description",
              order = 50.1,
              },
            },
          },
        InfoTab6 = {
          type = "group",
          name = "-> " .. L["Chat commands"] .. " <-",
          desc = L["A collection of various icons on various maps from previous expansions up to Dragonflight"],
          order = 6,
          args = {
            InfoDescriptionText6 = {
              name =  "• " .. L["to show MapNotes info in chat: /mn, /MN"] .. "\n" .. "• " .. L["to open MapNotes menu: /mno, /MNO"] .. "\n" .. "• " .. L["to close MapNotes menu: /mnc, /MNC"] .. "\n" .. "• " .. L["to show minimap button: /mnb or /MNB"] .. "\n" .. "• " .. L["to hide minimap button: /mnbh or /MNBH"],
              type = "description",
              order = 60.1,
              },
            },
          },
      },
    },
    MiniMapTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = MINIMAP_LABEL,
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 1,
      args = {
        MiniMapheader = {
          type = "header",
          name = MINIMAP_LABEL .. " " .. L["Informations"],
          order = 10,
          },
        MiniMapDescriptionText = {
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"],
          type = "description",
          order = 10.1,
          },      
        MiniMaptheader1 = {
          type = "description",
          name = "",
          order = 10.3,
          },
        showMiniMapMap = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          width = 1,
          order = 10.4,
          get = function() return ns.Addon.db.profile.show.MiniMap end,
          set = function(info, v) ns.Addon.db.profile.show.MiniMap = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.MiniMap then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.MiniMap then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        minimapScale = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "range",
          name = L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          width = 1.25,
          order = 10.8,
          },
        minimapAlpha = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "range",
          name = L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 1.25,
          order = 10.9,
          },
        MiniMapheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 11.0,
          },
        showMiniMapRaids = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
          desc = L["Show icons of raids on this map"],
          order = 12.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Raids"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Raids"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapDungeons = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
          desc = L["Show icons of dungeons on this map"],
          order = 12.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Dungeons"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Dungeons"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapPassage = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap or ns.Addon.db.profile.show.ClassicIcons end,
          type = "toggle",
          name = TextIconPassageRaidM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. TextIconPassageRaidMultiM:GetIconString() .. " " .. TextIconPassageDungeonMultiM:GetIconString() .. " " ..L["Passages"],
          desc = L["Show icons of passage to raids and dungeons on this map"],
          order = 12.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapPassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Passages"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapPassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Passages"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapMultiple = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
          desc = L["Show icons of multiple (dungeons,raids) on this map"],
          order = 12.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Multiple"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Multiple"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapPortals = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. TextIconWayGateGreen:GetIconString().. " " .. TextIconWayGateGolden:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 12.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Portals"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Portals"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapZeppelins = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
          desc = L["Show icons of zeppelins on this map"],
          order = 12.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Zeppelins"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Zeppelins"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapShips = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
          desc = L["Show icons of ships on this map"],
          order = 12.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Ships"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Ships"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapTransport = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconOgreWaygate:GetIconString() .. " " .. TextIconTravelL:GetIconString() .. " " .. TextIconTransport:GetIconString() .. " " .. TextIconDwarfF:GetIconString() .. " ".. TextIconCarriage:GetIconString() .. " " .. L["Transport"],
          desc = L["Shows special transport icons like"] .. "\n" .. "\n" .. " " .. TextIconOgreWaygate:GetIconString() .. " " .. L["Ogre Waygate"] .. " - " .. GARRISON_LOCATION_TOOLTIP .. "/" .. L["Draenor"] .. "\n" .. "\n" .. " " .. TextIconTransport:GetIconString() .. " " .. L["Teleporter"] .. " - " .. L["Oribos"] .. "/" .. L["Korthia"] .. "/" .. "\n" .. " " .. L["The Maw"] .. "/" .. L["Shadowlands"] .. "\n" .. "\n" .. " " .. TextIconTransport:GetIconString() .. " " .. TextIconDwarfF:GetIconString() .. " " .. L["Travel"] .. " - " .. L["Zandalar"] .. "/" .. L["Kul Tiras"] .. "\n" .. "\n" .. " " .. TextIconCarriage:GetIconString() .. " " .. L["Transport"] .. " - " .. DUNGEON_FLOOR_DEEPRUNTRAM1,
          order = 12.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Transport"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Transport"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapOldVanilla = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconVInstance:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
          desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
          order = 12.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, L["Old Instances"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        showMiniMapLFR = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconLFR:GetIconString() .. " " .. PLAYER_DIFFICULTY3,
          desc = L["Shows the locations of Raidbrowser applicants for old Raids"] .. "\n" .. "\n" .. EXPANSION_NAME3 .. " - " .. DUNGEON_FLOOR_TANARIS18 .. "\n" ..  "\n" .. EXPANSION_NAME4 .. " - " .. L["Vale of Eternal Blossoms"] .. "\n" .. "\n" .. EXPANSION_NAME5 .. " - " .. GARRISON_LOCATION_TOOLTIP .. "\n" .. "\n" .. EXPANSION_NAME6 .. " - " .. DUNGEON_FLOOR_DALARAN1 .. "\n" .. "\n" .. EXPANSION_NAME7 .. " - " .. L["Dazar'alor"] .. " / " .. L["Boralus"] .. "\n" .. "\n" .. EXPANSION_NAME8 .. " - " .. L["Oribos"],
          order = 13.0,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        MiniMapheader4 = {
          type = "header",
          name = L["Show all MapNotes for a specific map"],
          order = 14.1,
          },
        showMiniMapKalimdor= {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapOutland = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconBC:GetIconString() .. " " .. L["Outland"],
          desc = L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Outland"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Outland"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Northrend"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Northrend"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapPandaria = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconPandaria:GetIconString() .. " " .. L["Pandaria"],
          desc = L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapPandaria then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Pandaria"], L["icons"],L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapPandaria then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Pandaria"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapDraenor = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconDraenor:GetIconString() .. " " .. L["Draenor"],
          desc = L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapDraenor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Draenor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapDraenor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Draenor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapBrokenIsles = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconLegion:GetIconString() .. " " .. L["Broken Isles"],
          desc = L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapBrokenIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Broken Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapBrokenIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Broken Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapZandalar = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconZandalar:GetIconString() .. " " .. L["Zandalar"],
          desc = L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapZandalar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Zandalar"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapZandalar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Zandalar"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapKulTiras = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconKT:GetIconString() .. " " .. L["Kul Tiras"],
          desc = L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 15,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapKulTiras then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Kul Tiras"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapKulTiras then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Kul Tiras"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapShadowlands = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconSL:GetIconString() .. " " .. L["Shadowlands"],
          desc = L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 15.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapShadowlands then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Shadowlands"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapShadowlands then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Shadowlands"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapDragonIsles = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconDF:GetIconString() .. " " .. L["Dragon Isles"],
          desc = L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 15.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapDragonIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Dragon Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapDragonIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Dragon Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },   
        },
      },
    ZoneTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = L["Zones"],
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 2,
      args = {
        zoneheader = {
          type = "header",
          name = COMMUNITIES_ROSTER_COLUMN_TITLE_ZONE .. "-" ..BRAWL_TOOLTIP_MAPS .. " " .. L["Informations"],
          order = 20,
          },
        ZoneDescriptionText = {
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"],
          type = "description",
          order = 20.1,
          },
        showZoneMap = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          width = 0.90,
          order = 20.2,
          get = function() return ns.Addon.db.profile.show.ZoneMap end,
          set = function(info, v) ns.Addon.db.profile.show.ZoneMap = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.ZoneMap then OpenWorldMap(uiMapID) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zone map"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.ZoneMap then OpenWorldMap(uiMapID) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zone map"], L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        zonetheader1 = {
          type = "description",
          name = "",
          order = 20.5,
          },
        zoneScale = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "range",
          name = COMMUNITIES_ROSTER_COLUMN_TITLE_ZONE .. " " .. L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          width = 0.80,  
          order = 20.6,
          },
        zoneAlpha = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "range",
          name = COMMUNITIES_ROSTER_COLUMN_TITLE_ZONE .. " " .. L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 0.90,
          order = 20.7,
          },
        instanceScale = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "range",
          name = INSTANCE .. " " .. L["symbol size"],
          desc = L["Changes the size of the icons"] .. "\n" .. "|cffffff00" .. L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"],
          min = 0.5, max = 3, step = 0.1,
          width = 0.85,
          order = 20.8,
          },
        instanceAlpha = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "range",
          name = INSTANCE .. " " .. L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 1,
          order = 20.9,
          },
        zoneheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 21.0,
          },
        showZoneRaids = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
          desc = L["Show icons of raids on this map"],
          order = 22.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Raids"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Raids"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneDungeons = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
          desc = L["Show icons of dungeons on this map"],
          order = 22.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Dungeons"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Dungeons"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZonePassage = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap or ns.Addon.db.profile.show.ClassicIcons end,
          type = "toggle",
          name = TextIconPassageRaidM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. TextIconPassageRaidMultiM:GetIconString() .. " " .. TextIconPassageDungeonMultiM:GetIconString() .. " " ..L["Passages"],
          desc = L["Show icons of passage to raids and dungeons on this map"],
          order = 22.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZonePassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Passages"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZonePassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Passages"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneMultiple = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
          desc = L["Show icons of multiple (dungeons,raids) on this map"],
          order = 22.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Multiple"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Multiple"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZonePortals = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. TextIconWayGateGreen:GetIconString().. " " .. TextIconWayGateGolden:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 22.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZonePortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Portals"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZonePortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Portals"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneZeppelins = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
          desc = L["Show icons of zeppelins on this map"],
          order = 22.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Zeppelins"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Zeppelins"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneShips = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
          desc = L["Show icons of ships on this map"],
          order = 22.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Ships"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Ships"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneTransport = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconOgreWaygate:GetIconString() .. " " .. TextIconTravelL:GetIconString() .. " " .. TextIconTransport:GetIconString() .. " " .. TextIconDwarfF:GetIconString() .. " ".. TextIconCarriage:GetIconString() .. " " .. L["Transport"],
          desc = L["Shows special transport icons like"] .. "\n" .. "\n" .. " " .. TextIconOgreWaygate:GetIconString() .. " " .. L["Ogre Waygate"] .. " - " .. GARRISON_LOCATION_TOOLTIP .. "/" .. L["Draenor"] .. "\n" .. "\n" .. " " .. TextIconTransport:GetIconString() .. " " .. L["Teleporter"] .. " - " .. L["Oribos"] .. "/" .. L["Korthia"] .. "/" .. "\n" .. " " .. L["The Maw"] .. "/" .. L["Shadowlands"] .. "\n" .. "\n" .. " " .. TextIconTransport:GetIconString() .. " " .. TextIconDwarfF:GetIconString() .. " " .. L["Travel"] .. " - " .. L["Zandalar"] .. "/" .. L["Kul Tiras"] .. "\n" .. "\n" .. " " .. TextIconCarriage:GetIconString() .. " " .. L["Transport"] .. " - " .. DUNGEON_FLOOR_DEEPRUNTRAM1,
          order = 22.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneOldVanilla = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconVInstance:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
          desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
          order = 22.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zone map"], L["Old Instances"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zone map"], L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        showZoneLFR = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconLFR:GetIconString() .. " " .. PLAYER_DIFFICULTY3,
          desc = L["Shows the locations of Raidbrowser applicants for old Raids"] .. "\n" .. "\n" .. EXPANSION_NAME3 .. " - " .. DUNGEON_FLOOR_TANARIS18 .. "\n" ..  "\n" .. EXPANSION_NAME4 .. " - " .. L["Vale of Eternal Blossoms"] .. "\n" .. "\n" .. EXPANSION_NAME5 .. " - " .. GARRISON_LOCATION_TOOLTIP .. "\n" .. "\n" .. EXPANSION_NAME6 .. " - " .. DUNGEON_FLOOR_DALARAN1 .. "\n" .. "\n" .. EXPANSION_NAME7 .. " - " .. L["Dazar'alor"] .. " / " .. L["Boralus"] .. "\n" .. "\n" .. EXPANSION_NAME8 .. " - " .. L["Oribos"],
          order = 23.0,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        zoneheader4 = {
          type = "header",
          name = L["Show all MapNotes for a specific map"],
          order = 23.1,
          },
        showZoneKalimdor= {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 23.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 23.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneOutland = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconBC:GetIconString() .. " " .. L["Outland"],
          desc = L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 23.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Outland"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Outland"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 23.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Northrend"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Northrend"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZonePandaria = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconPandaria:GetIconString() .. " " .. L["Pandaria"],
          desc = L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 23.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZonePandaria then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Pandaria"], L["icons"],L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZonePandaria then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Pandaria"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneDraenor = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconDraenor:GetIconString() .. " " .. L["Draenor"],
          desc = L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 23.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneDraenor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Draenor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneDraenor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Draenor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneBrokenIsles = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconLegion:GetIconString() .. " " .. L["Broken Isles"],
          desc = L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 23.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneBrokenIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Broken Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneBrokenIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Broken Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneZandalar = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconZandalar:GetIconString() .. " " .. L["Zandalar"],
          desc = L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 23.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneZandalar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Zandalar"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneZandalar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Zandalar"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneKulTiras = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconKT:GetIconString() .. " " .. L["Kul Tiras"],
          desc = L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 24,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneKulTiras then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Kul Tiras"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneKulTiras then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Kul Tiras"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneShadowlands = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconSL:GetIconString() .. " " .. L["Shadowlands"],
          desc = L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 24.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneShadowlands then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Shadowlands"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneShadowlands then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Shadowlands"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneDragonIsles = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconDF:GetIconString() .. " " .. L["Dragon Isles"],
          desc = L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 24.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneDragonIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Dragon Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneDragonIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Dragon Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },   
        }
      },
    ContinentTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = L["Continents"],
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 3,
      args = {
        continentheader = {
          type = "header",
          name = CONTINENT .. "-" .. BRAWL_TOOLTIP_MAPS .. " " .. L["Informations"],
          order = 30,
          },
        ContinentDescriptionText = {
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"],
          type = "description",
          order = 30.1,
          },   
        Continenthdesc = {
          type = "description",
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"],
          order = 30.2,
        },  
        continentheader1 = {
          type = "description",
          name = "",
          order = 30.5,
          },
        showContinent = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          order = 30.6,
          get = function() return ns.Addon.db.profile.show.Continent end,
          set = function(info, v) ns.Addon.db.profile.show.Continent = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.Continent and not WorldMapFrame:IsShown() then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(12) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.Continent and not WorldMapFrame:IsShown() then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(12) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
          continentScale = {
            disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "range",
          name = L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          width = 1.25,  
          order = 30.7,
          },
        continentAlpha = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "range",
          name = L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 1.25,
          order = 30.8,
        },
        continentheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 31.0,
          },
        showContinentRaids = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
          desc = L["Show icons of raids on this map"],
          order = 32.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Raids"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Raids"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentDungeons = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
          desc = L["Show icons of dungeons on this map"],
          order = 32.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Dungeons"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Dungeons"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentPassage = {
          disabled = function() return not ns.Addon.db.profile.show.Continent or ns.Addon.db.profile.show.ClassicIcons end,
          type = "toggle",
          name = TextIconPassageRaidM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. TextIconPassageRaidMultiM:GetIconString() .. " " .. TextIconPassageDungeonMultiM:GetIconString() .. " " ..L["Passages"],
          desc = L["Show icons of passage to raids and dungeons on this map"],
          order = 32.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentPassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Passages"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentPassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Passages"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentMultiple = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
          desc = L["Show icons of multiple (dungeons,raids) on this map"],
          order = 32.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Multiple"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Multiple"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentPortals = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. TextIconWayGateGreen:GetIconString().. " " .. TextIconWayGateGolden:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 32.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Portals"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Portals"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentZeppelins = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
          desc = L["Show icons of zeppelins on this map"],
          order = 32.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Zeppelins"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Zeppelins"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentShips = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
          desc = L["Show icons of ships on this map"],
          order = 32.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Ships"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Ships"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentTransport = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconOgreWaygate:GetIconString() .. " " .. TextIconTravelL:GetIconString() .. " " .. TextIconDwarfF:GetIconString() .. " " .. TextIconCarriage:GetIconString() .. " " .. L["Transport"],
          desc = L["Shows special transport icons like"] .. "\n" .. "\n" .. " " .. TextIconOgreWaygate:GetIconString() .. " " .. L["Ogre Waygate"] .. " - " .. GARRISON_LOCATION_TOOLTIP .. "/" .. L["Draenor"] .. "\n" .. "\n" .. " " .. TextIconTravelL:GetIconString() .. " " .. TextIconDwarfF:GetIconString() .. " " .. L["Travel"] .. " - " .. L["Zandalar"] .. "/" .. L["Kul Tiras"] .. "\n" .. "\n" .. " " .. TextIconCarriage:GetIconString() .. " " .. L["Transport"] .. " - " .. DUNGEON_FLOOR_DEEPRUNTRAM1,
          order = 32.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Transport"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Transport"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentOldVanilla = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconVInstance:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
          desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
          order = 32.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Old Instances"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        showContinentLFR = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconLFR:GetIconString() .. " " .. PLAYER_DIFFICULTY3,
          desc = L["Shows the locations of Raidbrowser applicants for old Raids"] .. "\n" .. "\n" .. EXPANSION_NAME3 .. " - " .. DUNGEON_FLOOR_TANARIS18 .. "\n" ..  "\n" .. EXPANSION_NAME4 .. " - " .. L["Vale of Eternal Blossoms"] .. "\n" .. "\n" .. EXPANSION_NAME5 .. " - " .. GARRISON_LOCATION_TOOLTIP .. "\n" .. "\n" .. EXPANSION_NAME6 .. " - " .. DUNGEON_FLOOR_DALARAN1 .. "\n" .. "\n" .. EXPANSION_NAME7 .. " - " .. L["Dazar'alor"] .. " / " .. L["Boralus"] .. "\n" .. "\n" .. EXPANSION_NAME8 .. " - " .. L["Oribos"],
          order = 33.0,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        continentheader4 = {
          type = "header",
          name = L["Show all MapNotes for a specific map"],
          order = 33.1
          },
        showContinentKalimdor= {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentOutland = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconBC:GetIconString() .. " " .. L["Outland"],
          desc = L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Outland"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Outland"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Northrend"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Northrend"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentPandaria = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconPandaria:GetIconString() .. " " .. L["Pandaria"],
          desc = L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentPandaria then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Pandaria"], L["icons"],L["icons"], "|cff00ff00" .. L["are shown"]) else 
                  if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentPandaria then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Pandaria"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentDraenor = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconDraenor:GetIconString() .. " " .. L["Draenor"],
          desc = L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentDraenor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Draenor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentDraenor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Draenor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentBrokenIsles = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconLegion:GetIconString() .. " " .. L["Broken Isles"],
          desc = L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentBrokenIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Broken Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentBrokenIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Broken Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentZandalar = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconZandalar:GetIconString() .. " " .. L["Zandalar"],
          desc = L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentZandalar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Zandalar"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentZandalar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Zandalar"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentKulTiras = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconKT:GetIconString() .. " " .. L["Kul Tiras"],
          desc = L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 34,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentKulTiras then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Kul Tiras"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentKulTiras then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Kul Tiras"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentShadowlands = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconSL:GetIconString() .. " " .. L["Shadowlands"],
          desc = L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 34.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentShadowlands then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Shadowlands"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentShadowlands then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Shadowlands"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentDragonIsles = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconDF:GetIconString() .. " " .. L["Dragon Isles"],
          desc = L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 34.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentDragonIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Dragon Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentDragonIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Dragon Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        },
      },
    AzerothTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = AZEROTH,
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 4,
      args = {
        Azerothheader = {
          type = "header",
          name = L["Azeroth map"] .. " " .. L["Informations"],
          order = 40,
          },
        AzerothDescriptionText = {
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"],
          type = "description",
          order = 40.1,
          },   
        Azerothhdesc = {
          type = "description",
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"],
          order = 40.2,
          },  
        Azerothheader1 = {
          type = "description",
          name = "",
          order = 40.5,
          },
        showAzeroth = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          order = 40.6,
          get = function() return ns.Addon.db.profile.show.Azeroth end,
          set = function(info, v) ns.Addon.db.profile.show.Azeroth = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.show.Azeroth then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(947) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Azeroth map"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.Azeroth then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(947) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Azeroth map"], L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        azerothScale = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "range",
          name = L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          width = 1.25,  
          order = 40.7,
          },
        azerothAlpha = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "range",
          name = L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 1.25,  
          order = 40.8,
          },
        Azerothheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 41
          },
        showAzerothRaids = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
          desc = L["Show icons of raids on this map"],
          order = 42.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Raids"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Raids"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothDungeons = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
          desc = L["Show icons of dungeons on this map"],
          order = 42.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Dungeons"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Dungeons"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothPassage = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth or ns.Addon.db.profile.show.ClassicIcons end,
          type = "toggle",
          name = TextIconPassageRaidM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. TextIconPassageRaidMultiM:GetIconString() .. " " .. TextIconPassageDungeonMultiM:GetIconString() .. " " ..L["Passages"],
          desc = L["Show icons of passage to raids and dungeons on this map"],
          order = 42.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothPassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Passages"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothPassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Passages"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothMultiple = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
          desc = L["Show icons of multiple on this map"],
          order = 42.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Multiple"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.howAzerothMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Multiple"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothPortals = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. TextIconWayGateGreen:GetIconString().. " " .. TextIconWayGateGolden:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 42.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Portals"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Portals"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothZeppelins = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
          desc = L["Show icons of zeppelins on this map"],
          order = 42.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Zeppelins"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Zeppelins"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothShips = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
          desc = L["Show icons of ships on this map"],
          order = 42.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Ships"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Ships"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothTransport = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconDwarfF:GetIconString() .. " " .. TextIconUndeadF:GetIconString() .. " " .. TextIconGoblinF:GetIconString() .. " " .. TextIconGilneanF:GetIconString() .. " " .. TextIconCarriage:GetIconString() .. " " .. L["Transport"],
          desc = L["Shows special transport icons like"] .. "\n" .. "\n" .. L["Travel"] .. " - " .. L["Zandalar"] .. "/" .. L["Kul Tiras"] .. "\n" .. "\n" .. " " .. TextIconCarriage:GetIconString() .. " " .. L["Transport"] .. " - " .. DUNGEON_FLOOR_DEEPRUNTRAM1,
          order = 42.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Transport"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Transport"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothOldVanilla = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconVInstance:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
          desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
          order = 42.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Azeroth map"], L["Old Instances"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Azeroth map"], L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        showAzerothLFR = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconLFR:GetIconString() .. " " .. PLAYER_DIFFICULTY3,
          desc = L["Shows the locations of Raidbrowser applicants for old Raids"] .. "\n" .. "\n" .. EXPANSION_NAME3 .. " - " .. DUNGEON_FLOOR_TANARIS18 .. "\n" ..  "\n" .. EXPANSION_NAME4 .. " - " .. L["Vale of Eternal Blossoms"] .. "\n" .. "\n" .. EXPANSION_NAME5 .. " - " .. GARRISON_LOCATION_TOOLTIP .. "\n" .. "\n" .. EXPANSION_NAME6 .. " - " .. DUNGEON_FLOOR_DALARAN1 .. "\n" .. "\n" .. EXPANSION_NAME7 .. " - " .. L["Dazar'alor"] .. " / " .. L["Boralus"] .. "\n" .. "\n" .. EXPANSION_NAME8 .. " - " .. L["Oribos"],
          order = 43.0,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        Azerothheader3 = {
          type = "header",
          name = L["Show all MapNotes for a specific map"],
          order = 44
          },
        showAzerothKalimdor = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 44.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 44.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 44.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Northrend"], L["icons"],  L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Northrend"], L["icons"],  L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothPandaria = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconPandaria:GetIconString() .. " " .. L["Pandaria"],
          desc = L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 44.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothPandaria then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Pandaria"], L["icons"],  L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothPandaria then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Pandaria"], L["icons"],  L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothBrokenIsles = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconLegion:GetIconString() .. " " .. L["Broken Isles"],
          desc = L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 44.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothBrokenIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Broken Isles"], L["icons"],  L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothBrokenIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Broken Isles"], L["icons"],  L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },  
        showAzerothZandalar = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconZandalar:GetIconString() .. " " .. L["Zandalar"],
          desc = L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 44.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothZandalar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Zandalar"], L["icons"],  L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothZandalar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Zandalar"], L["icons"],  L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothKulTiras = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconKT:GetIconString() .. " " .. L["Kul Tiras"],
          desc = L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 44.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothKulTiras then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Kul Tiras"], L["icons"],  L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothKulTiras then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Kul Tiras"], L["icons"],  L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothDragonIsles = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconDF:GetIconString() .. " " .. L["Dragon Isles"],
          desc = L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 44.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothDragonIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Dragon Isles"], L["icons"],  L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothDragonIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Dragon Isles"], L["icons"],  L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        }
      },
    CosmosTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = WORLDMAP_BUTTON,
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 5,
      args = {
        Cosmosheader = {
          type = "header",
          name = WORLDMAP_BUTTON .. " " .. L["Informations"],
          order = 50,
          },
        CosmosDescriptionText = {
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"],
          type = "description",
          order = 50.1,
          },      
        Cosmostheader1 = {
          type = "description",
          name = "",
          order = 50.3,
          },
        showCosmos = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          order = 50.6,
          width = 1,
          get = function() return ns.Addon.db.profile.show.CosmosMap end,
          set = function(info, v) ns.Addon.db.profile.show.CosmosMap = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.CosmosMap then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(946) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", WORLDMAP_BUTTON, L["icons"], "|cff00ff00" .. L["is activated"]) else
                if not ns.Addon.db.profile.show.CosmosMap then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(946) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", WORLDMAP_BUTTON, L["icons"], "|cffff0000" .. L["is deactivated"] ) end end end,
          },  
        cosmosScale = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "range",
          name = L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          width = 1.15,
          order = 50.8,
          },
        cosmosAlpha = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "range",
          name = L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 1.15,
          order = 50.9,
          },
        Cosmosheader4 = {
            type = "header",
            name = L["Show all MapNotes for a specific map"],
            order = 53.1,
            },
        showCosmosKalimdor= {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCosmosKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCosmosKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showCosmosEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCosmosEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCosmosEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showCosmosNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCosmosNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Northrend"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCosmosNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Northrend"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showCosmosPandaria = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "toggle",
          name = TextIconPandaria:GetIconString() .. " " .. L["Pandaria"],
          desc = L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCosmosPandaria then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Pandaria"], L["icons"],L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCosmosPandaria then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Pandaria"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showCosmosBrokenIsles = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "toggle",
          name = TextIconLegion:GetIconString() .. " " .. L["Broken Isles"],
          desc = L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCosmosBrokenIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Broken Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCosmosBrokenIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Broken Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showCosmosZandalar = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "toggle",
          name = TextIconZandalar:GetIconString() .. " " .. L["Zandalar"],
          desc = L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCosmosZandalar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Zandalar"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCosmosZandalar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Zandalar"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showCosmosKulTiras = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "toggle",
          name = TextIconKT:GetIconString() .. " " .. L["Kul Tiras"],
          desc = L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCosmosKulTiras then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Kul Tiras"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCosmosKulTiras then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Kul Tiras"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showCosmosDragonIsles = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "toggle",
          name = TextIconDF:GetIconString() .. " " .. L["Dragon Isles"],
          desc = L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCosmosDragonIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Dragon Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCosmosDragonIsles then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Dragon Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showCosmosShadowlands = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "toggle",
          name = TextIconSL:GetIconString() .. " " .. L["Shadowlands"],
          desc = L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 54.0,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCosmosShadowlands then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Shadowlands"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCosmosShadowlands then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Shadowlands"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showCosmosOutland = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "toggle",
          name = TextIconBC:GetIconString() .. " " .. L["Outland"],
          desc = L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 54.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCosmosOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Outland"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCosmosOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Outland"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showCosmosDraenor = {
          disabled = function() return not ns.Addon.db.profile.show.CosmosMap end,
          type = "toggle",
          name = TextIconDraenor:GetIconString() .. " " .. L["Draenor"],
          desc = L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 54.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCosmosDraenor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Draenor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCosmosDraenor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLDMAP_BUTTON, L["Draenor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        },
      },
    DungeonMapTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = DUNGEONS,
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 6,
      args = {
        DungeonMapheader = {
          type = "header",
          name = TRACKER_HEADER_DUNGEON .. "-" .. BRAWL_TOOLTIP_MAPS .. " " .. L["Informations"],
          order = 60,
          },
        DungeonMapDescriptionText = {
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"],
          type = "description",
          order = 60.1,
          },      
        DungeonMapheader1 = {
            type = "description",
            name = "",
            order = 60.2,
          },
        showDungeonMap = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Enables the display of all possible icons on this map"],
          order = 60.5,
          get = function() return ns.Addon.db.profile.show.DungeonMap end,
          set = function(info, v) ns.Addon.db.profile.show.DungeonMap = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.DungeonMap and not WorldMapFrame:IsShown() then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(661) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Dungeon map"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.DungeonMap and not WorldMapFrame:IsShown() then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(661) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Dungeon map"], L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        dungeonScale = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "range",
          name = L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          width = 1.25,  
          order = 60.6,
          },
        dungeonAlpha = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "range",
          name = L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 1.25,  
          order = 60.7,
          },
        DungeonMapheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 61.0,
          },
        showDungeonExit = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "toggle",
          name = TextIconExit:GetIconString() .. " " .. L["Exits"],
          desc = L["Show icons of MapNotes dungeon exit on this map"],
          order = 62.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showDungeonExit then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Dungeon map"], L["Exits"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showDungeonExit then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Dungeon map"], L["Exits"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showDungeonPortal = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 62.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showDungeonPortal then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Dungeon map"], L["Portals"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showDungeonPortal then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Dungeon map"], L["Portals"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },    
        showDungeonPassage = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "toggle",
          name = TextIconPassageup:GetIconString() .. " " .. TextIconPassagedown:GetIconString() .. " " .. TextIconPassageright:GetIconString() .. " " .. TextIconPassageleft:GetIconString() .. " " .. L["Passages"],
          desc = L["Show icons of passage on this map"],
          order = 62.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showDungeonPassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Dungeon map"], L["Passages"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showDungeonPassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Dungeon map"], L["Passages"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
          showDungeonTransport = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "toggle",
          name = TextIconTravelL:GetIconString() .. " " .. TextIconTransportHelper:GetIconString() .. " " .. TextIconTransport:GetIconString() .. " " .. L["Transport"],
          desc = L["Shows special transport icons like"],
          order = 62.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showDungeonTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Dungeon map"], L["Transport"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showDungeonTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Dungeon map"], L["Transport"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        },
      },
    Capitals = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = L["Capitals"],
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] .. "\n" .. "\n" .. L["Capitals"] .. ":" .. "\n" .. "\n" .. ORGRIMMAR .. "\n" .. L["Thunder Bluff"] .. "\n" .. L["Silvermoon City"] .. "\n" .. L["Undercity"] .. "\n" .. STORMWIND .. "\n" .. L["Ironforge"] .. "\n" .. L["Darnassus"] .. "\n" .. L["Exodar"] .. "\n" .. L["Shattrath City"] .. "\n" .. DUNGEON_FLOOR_DALARAN1 .. " - " .. POSTMASTER_PIPE_NORTHREND .. "\n" .. DUNGEON_FLOOR_DALARAN1 .. " - " .. EXPANSION_NAME6 .. "\n" .. L["Shrine7Stars"] .. "\n" .. L["Shrine2Moons"] .. "\n" .. L["Stormshield"] .. "\n" .. L["Warspear"] .. "\n" .. L["Dazar'alor"] .. "\n" .. L["Boralus"] .. "\n" .. L["Oribos"] .. "\n" .. L["Valdrakken"],
      order = 7,
      args = {
        Capitalstheader1 = {
          type = "header",
          name = L["Capitals"] .. " " .. L["icons"],
          order = 70,
          },
        showCapitals = {
          type = "toggle",
          name = L["Capitals"] .. " " .. L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"] .. "\n" .. "\n" .. L["Capitals"] .. ":" .. "\n" .. "\n" .. ORGRIMMAR .. "\n" .. L["Thunder Bluff"] .. "\n" .. L["Silvermoon City"] .. "\n" .. L["Undercity"] .. "\n" .. STORMWIND .. "\n" .. L["Ironforge"] .. "\n" .. L["Darnassus"] .. "\n" .. L["Exodar"] .. "\n" .. L["Shattrath City"] .. "\n" .. DUNGEON_FLOOR_DALARAN1 .. " - " .. POSTMASTER_PIPE_NORTHREND .. "\n" .. DUNGEON_FLOOR_DALARAN1 .. " - " .. EXPANSION_NAME6 .. "\n" .. L["Shrine7Stars"] .. "\n" .. L["Shrine2Moons"] .. "\n" .. L["Stormshield"] .. "\n" .. L["Warspear"] .. "\n" .. L["Dazar'alor"] .. "\n" .. L["Boralus"] .. "\n" .. L["Oribos"] .. "\n" .. L["Valdrakken"],
          width = 1.8,
          order = 70.1,
          get = function() return ns.Addon.db.profile.show.Capitals end,
          set = function(info, v) ns.Addon.db.profile.show.Capitals = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.Capitals then OpenWorldMap(uiMapID) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.Capitals then OpenWorldMap(uiMapID) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"], L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        showCapitalEnemyFaction = {
          disabled = function() return not ns.Addon.db.profile.show.Capitals end,
          type = "toggle",
          name = L["Capitals"] .. " " .. L["enemy faction"],
          desc = TextIconHorde:GetIconString() ..  " " .. TextIconAlliance:GetIconString() .. " " .. L["Shows enemy faction (horde/alliance) icons"],
          order = 70.2,
          width = 1.8,
          get = function() return ns.Addon.db.profile.show.CapitalEnemyFaction end,
          set = function(info, v) ns.Addon.db.profile.show.CapitalEnemyFaction = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.show.CapitalEnemyFaction then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"] .. " " .. L["enemy faction"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.show.CapitalEnemyFaction then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"] .. " " .. L["enemy faction"], "|cffff0000" ..  L["is deactivated"]) end end end,
         },
        CapitalsTab = {
          type = "group",
          name = "• " .. L["Capitals"],
          desc = L["Enables the display of icons for a specific capital city"],
          order = 70.3,
          args = {
            Capitalsheader6 = {
              type = "header",
              name = FACTION_HORDE,
              order = 70.4,
              },
            showOrgrimmar = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconOrgrimmar:GetIconString() .. " " .. ORGRIMMAR,
              desc = "",
              width = 0.80,
              order = 70.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showOrgrimmar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], ORGRIMMAR, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showOrgrimmar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], ORGRIMMAR, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showThunderBluff = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconThunderBluff:GetIconString() .. " " .. L["Thunder Bluff"],
              desc = "",
              width = 0.80,
              order = 70.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showThunderBluff then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Thunder Bluff"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showThunderBluff then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Thunder Bluff"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showSilvermoon = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconSilvermoon:GetIconString() .. " " .. L["Silvermoon City"],
              desc = "",
              width = 0.80,
              order = 70.7,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showSilvermoon then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Silvermoon City"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showSilvermoon then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Silvermoon City"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showUndercity = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconUndercity:GetIconString() .. " " .. L["Undercity"],
              desc = "",
              width = 0.80,
              order = 70.8,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showUndercity then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Undercity"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showUndercity then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Undercity"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showDazarAlor = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconDazarAlor:GetIconString() .. " " .. L["Dazar'alor"],
              desc = "",
              width = 0.80,
              order = 70.9,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showDazarAlor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Dazar'alor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showDazarAlor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Dazar'alor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showSot2M = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconSot2M:GetIconString() .. " " .. L["Shrine2Moons"],
              desc = EXPANSION_NAME4,
              width = 0.95,
              order = 71,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showSot2M then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Shrine2Moons"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showSot2M then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Shrine2Moons"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showWarspear = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconWarspear:GetIconString() .. " " .. L["Warspear"] .. " / " .. GARRISON_LOCATION_TOOLTIP,
              desc = "",
              width = 1.40,
              order = 71.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showWarspear then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Warspear"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showWarspear then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Warspear"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            Capitalsheader7 = {
              type = "header",
              name = FACTION_ALLIANCE,
              order = 72,
              },
            showStormwind = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconStormwind:GetIconString() .. " " .. L["Stormwind"],
              desc = "",
              width = 0.80,
              order = 72.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showStormwind then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Stormwind"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showStormwind then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Stormwind"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showIronforge = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconIronforge:GetIconString() .. " " .. L["Ironforge"],
              desc = "",
              width = 0.80,
              order = 72.2,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showIronforge then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Ironforge"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showIronforge then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Ironforge"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showDarnassus = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconDarnassus:GetIconString() .. " " .. L["Darnassus"],
              desc = "",
              width = 0.80,
              order = 72.3,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showDarnassus then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Darnassus"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showDarnassus then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" ..  L["Capitals"], L["Darnassus"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showExodar = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconExodar:GetIconString() .. " " .. L["Exodar"],
              desc = "",
              width = 0.80,
              order = 72.4,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showExodar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Exodar"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showExodar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Exodar"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showBoralus = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconBoralus:GetIconString() .. " " .. L["Boralus"],
              desc = "",
              width = 0.80,
              order = 72.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showBoralus then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Boralus"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showBoralus then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Boralus"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showSot7S = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconSot7S:GetIconString() .. " " .. L["Shrine7Stars"],
              desc = EXPANSION_NAME4,
              width = 1,
              order = 72.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showSot7S then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Shrine7Stars"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showSot7S then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Shrine7Stars"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showStormshield = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconStormshield:GetIconString() .. " " .. L["Stormshield"] .. " / " .. GARRISON_LOCATION_TOOLTIP,
              desc = "",
              width = 1.40,
              order = 72.7,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showStormshield then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Stormshield"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showStormshield then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Stormshield"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            Capitalsheader8 = {
              type = "header",
              name = FACTION_NEUTRAL,
              order = 74.,
              },
            showShattrath = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconShattrath:GetIconString() .. " " .. L["Shattrath City"],
              desc = "",
              width = 0.80,
              order = 74.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showShattrath then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Shattrath City"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showShattrath then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Shattrath City"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showDalaranNorthrend = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconDalaranNorthrend:GetIconString() .. " " .. DUNGEON_FLOOR_DALARAN1,
              desc = DUNGEON_FLOOR_DALARAN1 .. "-" .. POSTMASTER_PIPE_NORTHREND,
              width = 0.80,
              order = 74.2,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showDalaranNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], DUNGEON_FLOOR_DALARAN1 .. "-" .. POSTMASTER_PIPE_NORTHREND, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showDalaranNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], DUNGEON_FLOOR_DALARAN1 .. "-" .. POSTMASTER_PIPE_NORTHREND, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showDalaranLegion = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconDalaranLegion:GetIconString() .. " " .. DUNGEON_FLOOR_DALARAN1,
              desc = DUNGEON_FLOOR_DALARAN1 .. "-" .. EXPANSION_NAME6,
              width = 0.80,
              order = 74.3,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showDalaranLegion then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], DUNGEON_FLOOR_DALARAN1 .. "-" .. EXPANSION_NAME6, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showDalaranLegion then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], DUNGEON_FLOOR_DALARAN1 .. "-" .. EXPANSION_NAME6, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showOribos = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconOribos:GetIconString() .. " " .. L["Oribos"],
              desc = "",
              width = 0.80,
              order = 74.4,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showOribos then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Oribos"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showOribos then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Oribos"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showValdrakken = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = TextIconValdrakken:GetIconString() .. " " .. L["Valdrakken"],
              desc = "",
              width = 0.80,
              order = 74.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showValdrakken then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Valdrakken"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showValdrakken then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Valdrakken"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            },
          },
        InstanceTab = {
          type = "group",
          name = "• " .. INSTANCE .. " " .. L["icons"],
          desc = "",
          order = 72,
          args = {
            showCapitalsInstances = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = L["Activate icons"],
              desc = L["Activates the display of all possible icons on this map"],
              width = 0.90,
              order = 72.1,
              get = function() return ns.Addon.db.profile.showCapitalsInstances end,
              set = function(info, v) ns.Addon.db.profile.showCapitalsInstances = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                    if ns.Addon.db.profile.showCapitalsInstances then OpenWorldMap(uiMapID) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"] .. " " .. INSTANCE .. " " .. L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if not ns.Addon.db.profile.showCapitalsInstances then OpenWorldMap(uiMapID) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"] .. " " .. INSTANCE .. " " .. L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
              },
            CapitalsInstanceScale = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsInstances end,
              type = "range",
              name = L["symbol size"],
              desc = L["Changes the size of the icons"] .. "\n" .. "|cffffff00" .. L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"],
              min = 0.5, max = 3, step = 0.1,
              width = 0.80,  
              order = 72.3,
              },
            CapitalsInstanceAlpha = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsInstances end,
              type = "range",
              name = L["symbol visibility"],
              desc = L["Changes the visibility of the icons"],
              min = 0, max = 1, step = 0.1,
              width = 0.80,
              order = 72.4,
              },
            Capitalsheader2 = {
              type = "description",
              name = "",
              order = 73.0,
              },
            showCapitalsRaids = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsInstances end,
              type = "toggle",
              name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
              desc = L["Show icons of raids on this map"],
              order = 73.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Raids"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Raids"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCapitalsInstancePassage = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsInstances end,
              type = "toggle",
              name = TextIconPassageRaidM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. TextIconPassageRaidMultiM:GetIconString() .. " " .. TextIconPassageDungeonMultiM:GetIconString() .. " " ..L["Passages"],
              desc = L["Show icons of passage to raids and dungeons on this map"],
              order = 73.2,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsInstancePassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Passages"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsInstancePassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Passages"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCapitalsMultiple = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsInstances end,
              type = "toggle",
              name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
              desc = L["Show icons of multiple (dungeons,raids) on this map"],
              order = 73.3,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Multiple"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Multiple"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCapitalsOldVanilla = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsInstances end,
              type = "toggle",
              name = TextIconVInstance:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
              desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
              order = 73.4,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"], L["Old Instances"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"], L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
              },
              showCapitalsDungeons = {
                disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsInstances end,
              type = "toggle",
              name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
              desc = L["Show icons of dungeons on this map"],
              order = 73.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Dungeons"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Dungeons"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCapitalsLFR = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsInstances end,
              type = "toggle",
              name = TextIconLFR:GetIconString() .. " " .. PLAYER_DIFFICULTY3,
              desc = L["Shows the locations of Raidbrowser applicants for old Raids"] .. "\n" .. "\n" .. EXPANSION_NAME3 .. " - " .. DUNGEON_FLOOR_TANARIS18 .. "\n" ..  "\n" .. EXPANSION_NAME4 .. " - " .. L["Vale of Eternal Blossoms"] .. "\n" .. "\n" .. EXPANSION_NAME5 .. " - " .. GARRISON_LOCATION_TOOLTIP .. "\n" .. "\n" .. EXPANSION_NAME6 .. " - " .. DUNGEON_FLOOR_DALARAN1 .. "\n" .. "\n" .. EXPANSION_NAME7 .. " - " .. L["Dazar'alor"] .. " / " .. L["Boralus"] .. "\n" .. "\n" .. EXPANSION_NAME8 .. " - " .. L["Oribos"],
              order = 73.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, "|cffff0000" ..  L["is deactivated"]) end end end,
              },
            },
          },
        Transportab = {
          type = "group",
          name = "• " .. L["Transport"] .. " " .. L["icons"],
          desc = "",
          order = 74,
          args = {
            showCapitalsTransporting = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = L["Activate icons"],
              desc = L["Enables the display of all possible icons on this map"],
              width = 0.90,
              order = 74.1,
              get = function() return ns.Addon.db.profile.showCapitalsTransporting end,
              set = function(info, v) ns.Addon.db.profile.showCapitalsTransporting = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                    if ns.Addon.db.profile.showCapitalsTransporting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. L["Capitals"] .. " " ..  L["Transport"] .. " " .. L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if not ns.Addon.db.profile.showCapitalsTransporting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. L["Capitals"] .. " " ..  L["Transport"] .. " " .. L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
              },
            CapitalsTransportScale = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsTransporting end,
              type = "range",
              name = L["symbol size"],
              desc = L["Changes the size of the icons"] .. "\n" .. "|cffffff00" .. L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"],
              min = 0.5, max = 3, step = 0.1,
              width = 0.80,  
              order = 74.1,
              },
            CapitalsTransportAlpha = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsTransporting end,
              type = "range",
              name = L["symbol visibility"],
              desc = L["Changes the visibility of the icons"],
              min = 0, max = 1, step = 0.1,
              width = 0.80,
              order = 74.2,
              },
            Capitalsheader3 = {
              type = "description",
              name = "",
              order = 74.5,
              },
            showCapitalsPortals = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsTransporting end,
              type = "toggle",
              name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. TextIconWayGateGreen:GetIconString().. " " .. TextIconWayGateGolden:GetIconString() .. " " .. L["Portals"],
              desc = L["Show icons of portals on this map"],
              order = 74.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Portals"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Portals"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCapitalsZeppelins = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsTransporting end,
              type = "toggle",
              name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
              desc = L["Show icons of zeppelins on this map"],
              order = 74.7,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Zeppelins"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Zeppelins"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCapitalsShips = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsTransporting end,
              type = "toggle",
              name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
              desc = L["Show icons of ships on this map"],
              order = 74.8,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Ships"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Ships"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCapitalsTransport = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsTransporting end,
              type = "toggle",
              name = TextIconOgreWaygate:GetIconString() .. " " .. TextIconTravelL:GetIconString() .. " " .. TextIconTransport:GetIconString() .. " " .. TextIconDwarfF:GetIconString() .. " ".. TextIconCarriage:GetIconString() .. " " .. L["Transport"],
              desc = L["Shows special transport icons like"] .. "\n" .. "\n" .. " " .. TextIconOgreWaygate:GetIconString() .. " " .. L["Ogre Waygate"] .. " - " .. GARRISON_LOCATION_TOOLTIP .. "/" .. L["Draenor"] .. "\n" .. "\n" .. " " .. TextIconTransport:GetIconString() .. " " .. L["Teleporter"] .. " - " .. L["Oribos"] .. "/" .. L["Korthia"] .. "/" .. "\n" .. " " .. L["The Maw"] .. "/" .. L["Shadowlands"] .. "\n" .. "\n" .. " " .. TextIconTransport:GetIconString() .. " " .. TextIconDwarfF:GetIconString() .. " " .. L["Travel"] .. " - " .. L["Zandalar"] .. "/" .. L["Kul Tiras"] .. "\n" .. "\n" .. " " .. TextIconCarriage:GetIconString() .. " " .. L["Transport"] .. " - " .. DUNGEON_FLOOR_DEEPRUNTRAM1,
              order = 74.9,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Transport"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Transport"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            },
          },
        ProfessionTab = {
          type = "group",
          name = "• " .. GUILD_ROSTER_DROPDOWN_PROFESSION .. " " .. L["icons"],
          desc = "",
          order = 76,
          args = {
            showProfessions = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = L["Activate icons"],
              desc = L["Enables the display of all possible icons on this map"],
              width = 0.90,
              order = 76.1,
              get = function() return ns.Addon.db.profile.showProfessions end,
              set = function(info, v) ns.Addon.db.profile.showProfessions = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                    if ns.Addon.db.profile.showProfessions then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. L["Capitals"] .. " " .. GUILD_ROSTER_DROPDOWN_PROFESSION .. " " .. L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if not ns.Addon.db.profile.showProfessions then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. L["Capitals"] .. " " .. GUILD_ROSTER_DROPDOWN_PROFESSION .. " " .. L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
              },
            ProfessionsScale = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "range",
              name = L["symbol size"],
              desc = L["Changes the size of the icons"],
              min = 0.5, max = 3, step = 0.1,
              width = 0.80, 
              order = 76.2,
              },
            ProfessionsAlpha = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "range",
              name = L["symbol visibility"],
              desc = L["Changes the visibility of the icons"],
              min = 0, max = 1, step = 0.1,
              width = 0.80, 
              order = 76.3,
              },
            Capitalsheader4 = {
              type = "description",
              name = "",
              order = 76.4,
              },
            showAlchemy = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconAlchemy:GetIconString() .. " " .. L["Alchemy"],
              desc = "",
              width = 1.2, -- width professions
              order = 77,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAlchemy then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Alchemy"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAlchemy then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Alchemy"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showEngineer = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconEngineer:GetIconString() .. " " .. L["Engineer"],
              desc = "",
              width = 1.2, -- width professions
              order = 77.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showEngineer then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Engineer"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showEngineer then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Engineer"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showJewelcrafting = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconJewelcrafting:GetIconString() .. " " .. L["Jewelcrafting"],
              desc = "",
              width = 1.2, -- width professions
              order = 77.2,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showJewelcrafting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Jewelcrafting"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showJewelcrafting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Jewelcrafting"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showBlacksmith = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconBlacksmith:GetIconString() .. " " .. L["Blacksmithing"],
              desc = "",
              width = 1.2, -- width professions
              order = 77.4,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showBlacksmith then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Blacksmithing"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showBlacksmith then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Blacksmithing"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showTailoring = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconTailoring:GetIconString() .. " " .. L["Tailoring"],
              desc = "",
              width = 1.2, -- width professions
              order = 77.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showTailoring then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Tailoring"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showTailoring then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Tailoring"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showSkinning = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconSkinning:GetIconString() .. " " .. L["Skinning"],
              desc = "",
              width = 1.2, -- width professions
              order = 77.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showSkinning then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Skinning"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showSkinning then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Skinning"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMining = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconMining:GetIconString() .. " " .. L["Mining"],
              desc = "",
              width = 1.2, -- width professions
              order = 77.7,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMining then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Mining"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMining then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Mining"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showHerbalism = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconHerbalism:GetIconString() .. " " .. L["Herbalism"],
              desc = "",
              width = 1.2, -- width professions
              order = 77.8,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showHerbalism then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Herbalism"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showHerbalism then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Herbalism"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showInscription = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconInscription:GetIconString() .. " " .. INSCRIPTION,
              desc = "",
              width = 1.2, -- width professions
              order = 77.9,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showInscription then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, INSCRIPTION, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showInscription then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, INSCRIPTION, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showFishing = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconFishing:GetIconString() .. " " .. PROFESSIONS_FISHING,
              desc = "",
              width = 1.2, -- width professions
              order = 78,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showFishing then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, PROFESSIONS_FISHING, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showFishing then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38,PROFESSIONS_FISHING, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCooking = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconCooking:GetIconString() .. " " .. PROFESSIONS_COOKING,
              desc = "",
              width = 1.2, -- width professions
              order = 78.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCooking then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, PROFESSIONS_COOKING, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCooking then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, PROFESSIONS_COOKING, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showArchaeology = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconArchaeology:GetIconString() .. " " .. PROFESSIONS_ARCHAEOLOGY,
              desc = "",
              width = 1.2, -- width professions
              order = 78.2,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showArchaeology then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, PROFESSIONS_ARCHAEOLOGY, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showArchaeology then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, PROFESSIONS_ARCHAEOLOGY, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showEnchanting = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconEnchanting:GetIconString() .. " " .. L["Enchanting"],
              desc = "",
              width = 1.2, -- width professions
              order = 78.3,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showEnchanting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Enchanting"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showEnchanting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Enchanting"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showLeatherworking = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showProfessions end,
              type = "toggle",
              name = TextIconLeatherworking:GetIconString() .. " " .. L["Leatherworking"],
              desc = "",
              width = 1.2, -- width professions
              order = 78.4,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showLeatherworking then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Leatherworking"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showLeatherworking then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. TUTORIAL_TITLE38, L["Leatherworking"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            },
          },
        GeneralCapitalTab = {
          type = "group",
          name = "• " .. L["Generals"] .. " " .. L["icons"],
          desc = "",
          order = 79,
          args = {
            showCapitalsGeneral = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals end,
              type = "toggle",
              name = L["Activate icons"],
              desc = L["Activates the display of all possible icons on this map"],
              width = 0.90,
              order = 79.1,
              get = function() return ns.Addon.db.profile.showCapitalsGeneral end,
              set = function(info, v) ns.Addon.db.profile.showCapitalsGeneral = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                    if ns.Addon.db.profile.showCapitalsGeneral then OpenWorldMap(uiMapID) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"] .. " " .. L["Generals"] .. " " .. L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if not ns.Addon.db.profile.showCapitalsGeneral then OpenWorldMap(uiMapID) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"] .. " " .. L["Generals"] .. " " .. L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
              },
            CapitalsGeneralScale = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsGeneral end,
              type = "range",
              name = L["symbol size"],
              desc = L["Changes the size of the icons"],
              min = 0.5, max = 3, step = 0.1,
              width = 0.80, 
              order = 79.2,
              },
            CapitalsGeneralAlpha = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsGeneral end,
              type = "range",
              name = L["symbol visibility"],
              desc = L["Changes the visibility of the icons"],
              min = 0, max = 1, step = 0.1,
              width = 0.80, 
              order = 79.3,
              },
            Capitalsheader4 = {
              type = "description",
              name = "",
              order = 79.4,
              },
            showCapitalsMapNotes = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsGeneral end,
              type = "toggle",
              name = TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME,
              desc = L["This MapNotes icons shows various icons that are too close to each other together"] .. "\n" .. "\n" .. TextIconBank:GetIconString() .. " " .. BANK .. "\n" .. TextIconAuctioneer:GetIconString() .. " " .. MINIMAP_TRACKING_AUCTIONEER .. "\n" .. TextIconHearthstone:GetIconString() .. " " .. MINIMAP_TRACKING_INNKEEPER .. "\n" .. TextIconPassageup:GetIconString() .. " " .. TextIconPassagedown:GetIconString() .. " " .. TextIconPassageleft:GetIconString() .. " " .. TextIconPassageright:GetIconString() .. " " .. L["Paths"],
              width = 0.80,
              order = 79.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsMapNotes then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], COLORED_ADDON_NAME, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsMapNotes then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], COLORED_ADDON_NAME, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCapitalsPaths = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsGeneral end,
              type = "toggle",
              name = TextIconPassageup:GetIconString() .. " " .. TextIconPassagedown:GetIconString() .. " " .. TextIconPassageleft:GetIconString() .. " " .. TextIconPassageright:GetIconString() .. " " .. L["Paths"],
              desc = L["Exit"] .. " / " .. L["Paths"] .. " / " .. L["Passage"],
              width = 0.80,
              order = 79.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsPaths then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Paths"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsPaths then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], L["Paths"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCapitalsHearthstone = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsGeneral end,
              type = "toggle",
              name = TextIconHearthstone:GetIconString() .. " " .. MINIMAP_TRACKING_INNKEEPER,
              desc = "",
              width = 0.80,
              order = 79.7,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsHearthstone then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], MINIMAP_TRACKING_INNKEEPER, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsHearthstone then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], MINIMAP_TRACKING_INNKEEPER, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCapitalsAuctioneer = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsGeneral end,
              type = "toggle",
              name = TextIconAuctioneer:GetIconString() .. " " .. MINIMAP_TRACKING_AUCTIONEER,
              desc = "",
              width = 0.80,
              order = 79.8,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsAuctioneer then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], MINIMAP_TRACKING_AUCTIONEER, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsAuctioneer then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], MINIMAP_TRACKING_AUCTIONEER, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showCapitalsBank = {
              disabled = function() return not ns.Addon.db.profile.show.Capitals or not ns.Addon.db.profile.showCapitalsGeneral end,
              type = "toggle",
              name = TextIconBank:GetIconString() .. " " .. BANK,
              desc = "",
              width = 0.80,
              order = 79.9,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showCapitalsBank then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], BANK, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showCapitalsBank then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Capitals"], BANK, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            },
          },
        },
      },
    CapitalsMinimap = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = L["Capitals"] .. " - " .. MINIMAP_LABEL,
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] .. "\n" .. "\n" .. L["Capitals"] .. ":" .. "\n" .. "\n" .. ORGRIMMAR .. "\n" .. L["Thunder Bluff"] .. "\n" .. L["Silvermoon City"] .. "\n" .. L["Undercity"] .. "\n" .. STORMWIND .. "\n" .. L["Ironforge"] .. "\n" .. L["Darnassus"] .. "\n" .. L["Exodar"] .. "\n" .. L["Shattrath City"] .. "\n" .. DUNGEON_FLOOR_DALARAN1 .. " - " .. POSTMASTER_PIPE_NORTHREND .. "\n" .. DUNGEON_FLOOR_DALARAN1 .. " - " .. EXPANSION_NAME6 .. "\n" .. L["Shrine7Stars"] .. "\n" .. L["Shrine2Moons"] .. "\n" .. L["Stormshield"] .. "\n" .. L["Warspear"] .. "\n" .. L["Dazar'alor"] .. "\n" .. L["Boralus"] .. "\n" .. L["Oribos"] .. "\n" .. L["Valdrakken"],
      order = 8,
      args = {
        Capitalstheader1 = {
          type = "header",
          name = L["Capitals"] .. " " .. L["icons"],
          order = 80,
          },
        showMinimapCapitals = {
          type = "toggle",
          name = L["Capitals"] .. " " .. MINIMAP_LABEL .. " " .. L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"] .. "\n" .. "\n" .. L["Capitals"] .. ":" .. "\n" .. "\n" .. ORGRIMMAR .. "\n" .. L["Thunder Bluff"] .. "\n" .. L["Silvermoon City"] .. "\n" .. L["Undercity"] .. "\n" .. STORMWIND .. "\n" .. L["Ironforge"] .. "\n" .. L["Darnassus"] .. "\n" .. L["Exodar"] .. "\n" .. L["Shattrath City"] .. "\n" .. DUNGEON_FLOOR_DALARAN1 .. " - " .. POSTMASTER_PIPE_NORTHREND .. "\n" .. DUNGEON_FLOOR_DALARAN1 .. " - " .. EXPANSION_NAME6 .. "\n" .. L["Shrine7Stars"] .. "\n" .. L["Shrine2Moons"] .. "\n" .. L["Stormshield"] .. "\n" .. L["Warspear"] .. "\n" .. L["Dazar'alor"] .. "\n" .. L["Boralus"] .. "\n" .. L["Oribos"] .. "\n" .. L["Valdrakken"],
          width = 1.8,
          order = 80.1,
          get = function() return ns.Addon.db.profile.show.MinimapCapitals end,
          set = function(info, v) ns.Addon.db.profile.show.MinimapCapitals = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.MinimapCapitals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL .. " " .. L["Capitals"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.MinimapCapitals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL .. " " .. L["Capitals"], L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        showMinimapCapitalEnemyFaction = {
          disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
          type = "toggle",
          name = L["Capitals"] .. " " .. MINIMAP_LABEL .. " " .. L["enemy faction"],
          desc = TextIconHorde:GetIconString() ..  " " .. TextIconAlliance:GetIconString() .. " " .. L["Shows enemy faction (horde/alliance) icons"],
          order = 80.2,
          width = 1.8,
          get = function() return ns.Addon.db.profile.show.MinimapCapitalEnemyFaction end,
          set = function(info, v) ns.Addon.db.profile.show.MinimapCapitalEnemyFaction = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.show.MinimapCapitalEnemyFaction then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"] .. " " .. L["enemy faction"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.show.MinimapCapitalEnemyFaction then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Capitals"] .. " " .. L["enemy faction"], "|cffff0000" ..  L["is deactivated"]) end end end,
         },
        CapitalsMinimapTab = {
          type = "group",
          name = "• " .. L["Capitals"],
          desc = L["Enables the display of icons for a specific capital city"],
          order = 80.3,
          args = {
            Capitalsheader6 = {
              type = "header",
              name = FACTION_HORDE,
              order = 80.4,
              },
            showMinimapOrgrimmar = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconOrgrimmar:GetIconString() .. " " .. ORGRIMMAR,
              desc = "",
              width = 0.80,
              order = 80.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapOrgrimmar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], ORGRIMMAR, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapOrgrimmar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], ORGRIMMAR, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapThunderBluff = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconThunderBluff:GetIconString() .. " " .. L["Thunder Bluff"],
              desc = "",
              width = 0.80,
              order = 80.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapThunderBluff then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Thunder Bluff"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapThunderBluff then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Thunder Bluff"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapSilvermoon = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconSilvermoon:GetIconString() .. " " .. L["Silvermoon City"],
              desc = "",
              width = 0.80,
              order = 80.7,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapSilvermoon then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Silvermoon City"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapSilvermoon then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Silvermoon City"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapUndercity = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconUndercity:GetIconString() .. " " .. L["Undercity"],
              desc = "",
              width = 0.80,
              order = 80.8,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapUndercity then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Undercity"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapUndercity then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Undercity"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapDazarAlor = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconDazarAlor:GetIconString() .. " " .. L["Dazar'alor"],
              desc = "",
              width = 0.80,
              order = 80.9,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapDazarAlor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Dazar'alor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapDazarAlor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Dazar'alor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapSot2M = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconSot2M:GetIconString() .. " " .. L["Shrine2Moons"],
              desc = EXPANSION_NAME4,
              width = 1,
              order = 81,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapSot2M then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Shrine2Moons"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapSot2M then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Shrine2Moons"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapWarspear = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconWarspear:GetIconString() .. " " .. L["Warspear"] .. " / " .. GARRISON_LOCATION_TOOLTIP,
              desc = "",
              width = 1.40,
              order = 81.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapWarspear then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Warspear"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapWarspear then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Warspear"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            Capitalsheader7 = {
              type = "header",
              name = FACTION_ALLIANCE,
              order = 82,
              },
            showMinimapStormwind = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconStormwind:GetIconString() .. " " .. L["Stormwind"],
              desc = "",
              width = 0.80,
              order = 82.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapStormwind then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Stormwind"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapStormwind then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Stormwind"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapIronforge = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconIronforge:GetIconString() .. " " .. L["Ironforge"],
              desc = "",
              width = 0.80,
              order = 82.2,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapIronforge then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Ironforge"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapIronforge then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Ironforge"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapDarnassus = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconDarnassus:GetIconString() .. " " .. L["Darnassus"],
              desc = "",
              width = 0.80,
              order = 82.3,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapDarnassus then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Darnassus"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapDarnassus then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" ..  MINIMAP_LABEL .. " " .. L["Capitals"], L["Darnassus"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapExodar = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconExodar:GetIconString() .. " " .. L["Exodar"],
              desc = "",
              width = 0.80,
              order = 82.4,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapExodar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Exodar"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapExodar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" ..  MINIMAP_LABEL .. " " .. L["Capitals"], L["Exodar"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapBoralus = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconBoralus:GetIconString() .. " " .. L["Boralus"],
              desc = "",
              width = 0.80,
              order = 82.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapBoralus then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Boralus"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapBoralus then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Boralus"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapSot7S = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconSot7S:GetIconString() .. " " .. L["Shrine7Stars"],
              desc = EXPANSION_NAME4,
              width = 1,
              order = 82.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapSot7S then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Shrine7Stars"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapSot7S then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Shrine7Stars"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapStormshield = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconStormshield:GetIconString() .. " " .. L["Stormshield"] .. " / " .. GARRISON_LOCATION_TOOLTIP,
              desc = "",
              width = 1.40,
              order = 82.7,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapStormshield then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Stormshield"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapStormshield then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Stormshield"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            Capitalsheader8 = {
              type = "header",
              name = FACTION_NEUTRAL,
              order = 83,
              },
            showMinimapShattrath = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconShattrath:GetIconString() .. " " .. L["Shattrath City"],
              desc = "",
              width = 0.80,
              order = 83.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapShattrath then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Shattrath City"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapShattrath then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Shattrath City"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapDalaranNorthrend = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconDalaranNorthrend:GetIconString() .. " " .. DUNGEON_FLOOR_DALARAN1,
              desc = DUNGEON_FLOOR_DALARAN1 .. "-" .. POSTMASTER_PIPE_NORTHREND,
              width = 0.80,
              order = 83.2,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapDalaranNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], DUNGEON_FLOOR_DALARAN1 .. "-" .. POSTMASTER_PIPE_NORTHREND, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapDalaranNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], DUNGEON_FLOOR_DALARAN1 .. "-" .. POSTMASTER_PIPE_NORTHREND, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapDalaranLegion = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconDalaranLegion:GetIconString() .. " " .. DUNGEON_FLOOR_DALARAN1,
              desc = DUNGEON_FLOOR_DALARAN1 .. "-" .. EXPANSION_NAME6,
              width = 0.80,
              order = 83.3,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapDalaranLegion then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], DUNGEON_FLOOR_DALARAN1 .. "-" .. EXPANSION_NAME6, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapDalaranLegion then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], DUNGEON_FLOOR_DALARAN1 .. "-" .. EXPANSION_NAME6, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapOribos = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconOribos:GetIconString() .. " " .. L["Oribos"],
              desc = "",
              width = 0.80,
              order = 83.4,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapOribos then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Oribos"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapOribos then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Oribos"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapValdrakken = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = TextIconValdrakken:GetIconString() .. " " .. L["Valdrakken"],
              desc = "",
              width = 0.80,
              order = 83.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapValdrakken then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Valdrakken"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapValdrakken then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Valdrakken"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            },
          },
        InstanceMinimapTab = {
          type = "group",
          name = "• " .. INSTANCE .. " " .. L["icons"],
          desc = "",
          order = 82,
          args = {
            showMinimapCapitalsInstances = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = L["Activate icons"],
              desc = L["Activates the display of all possible icons on this map"],
              width = 0.90,
              order = 82.1,
              get = function() return ns.Addon.db.profile.showMinimapCapitalsInstances end,
              set = function(info, v) ns.Addon.db.profile.showMinimapCapitalsInstances = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                    if ns.Addon.db.profile.showMinimapCapitalsInstances then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL .. " " .. L["Capitals"],INSTANCE, L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if not ns.Addon.db.profile.showMinimapCapitalsInstances then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL .. " " .. L["Capitals"],INSTANCE, L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
              },
            CapitalsMinimapInstanceScale = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsInstances end,
              type = "range",
              name = L["symbol size"],
              desc = L["Changes the size of the icons"] .. "\n" .. "|cffffff00" .. L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"],
              min = 0.5, max = 3, step = 0.1,
              width = 0.80,  
              order = 82.3,
              },
            CapitalsMinimapInstanceAlpha = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsInstances end,
              type = "range",
              name = L["symbol visibility"],
              desc = L["Changes the visibility of the icons"],
              min = 0, max = 1, step = 0.1,
              width = 0.80,
              order = 82.4,
              },
            Capitalsheader2 = {
              type = "description",
              name = "",
              order = 83.0,
              },
            showMinimapCapitalsRaids = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsInstances end,
              type = "toggle",
              name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
              desc = L["Show icons of raids on this map"],
              order = 83.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Raids"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Raids"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCapitalsPassage = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsInstances end,
              type = "toggle",
              name = TextIconPassageRaidM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. TextIconPassageRaidMultiM:GetIconString() .. " " .. TextIconPassageDungeonMultiM:GetIconString() .. " " ..L["Passages"],
              desc = L["Show icons of passage to raids and dungeons on this map"],
              order = 83.2,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsPassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Passages"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsPassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Passages"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCapitalsMultiple = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsInstances end,
              type = "toggle",
              name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
              desc = L["Show icons of multiple (dungeons,raids) on this map"],
              order = 83.3,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Multiple"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Multiple"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCapitalsOldVanilla = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsInstances end,
              type = "toggle",
              name = TextIconVInstance:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
              desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
              order = 83.4,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL .. " " .. L["Capitals"], L["Old Instances"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsOldVanilla then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL .. " " .. L["Capitals"], L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
              },
              showMinimapCapitalsDungeons = {
                disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsInstances end,
              type = "toggle",
              name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
              desc = L["Show icons of dungeons on this map"],
              order = 83.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Dungeons"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Dungeons"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCapitalsLFR = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsInstances end,
              type = "toggle",
              name = TextIconLFR:GetIconString() .. " " .. PLAYER_DIFFICULTY3,
              desc = L["Shows the locations of Raidbrowser applicants for old Raids"] .. "\n" .. "\n" .. EXPANSION_NAME3 .. " - " .. DUNGEON_FLOOR_TANARIS18 .. "\n" ..  "\n" .. EXPANSION_NAME4 .. " - " .. L["Vale of Eternal Blossoms"] .. "\n" .. "\n" .. EXPANSION_NAME5 .. " - " .. GARRISON_LOCATION_TOOLTIP .. "\n" .. "\n" .. EXPANSION_NAME6 .. " - " .. DUNGEON_FLOOR_DALARAN1 .. "\n" .. "\n" .. EXPANSION_NAME7 .. " - " .. L["Dazar'alor"] .. " / " .. L["Boralus"] .. "\n" .. "\n" .. EXPANSION_NAME8 .. " - " .. L["Oribos"],
              order = 83.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsLFR then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, PLAYER_DIFFICULTY3, "|cffff0000" ..  L["is deactivated"]) end end end,
              },
            },
          },
        TransportMinimapTab = {
          type = "group",
          name = "• " .. L["Transport"] .. " " .. L["icons"],
          desc = "",
          order = 84,
          args = {
            showMinimapCapitalsTransporting = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = L["Activate icons"],
              desc = L["Enables the display of all possible icons on this map"],
              width = 0.90,
              order = 84.1,
              get = function() return ns.Addon.db.profile.showMinimapCapitalsTransporting end,
              set = function(info, v) ns.Addon.db.profile.showMinimapCapitalsTransporting = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                    if ns.Addon.db.profile.showMinimapCapitalsTransporting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Transport"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if not ns.Addon.db.profile.showMinimapCapitalsTransporting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Transport"], L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
              },
            CapitalsMinimapTransportScale = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsTransporting end,
              type = "range",
              name = L["symbol size"],
              desc = L["Changes the size of the icons"] .. "\n" .. "|cffffff00" .. L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"],
              min = 0.5, max = 3, step = 0.1,
              width = 0.80,  
              order = 84.1,
              },
            CapitalsMinimapTransportAlpha = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsTransporting end,
              type = "range",
              name = L["symbol visibility"],
              desc = L["Changes the visibility of the icons"],
              min = 0, max = 1, step = 0.1,
              width = 0.80,
              order = 84.2,
              },
            Capitalsheader3 = {
              type = "description",
              name = "",
              order = 84.5,
              },
            showMinimapCapitalsPortals = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsTransporting end,
              type = "toggle",
              name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. TextIconWayGateGreen:GetIconString().. " " .. TextIconWayGateGolden:GetIconString() .. " " .. L["Portals"],
              desc = L["Show icons of portals on this map"],
              order = 84.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Portals"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Portals"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCapitalsZeppelins = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsTransporting end,
              type = "toggle",
              name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
              desc = L["Show icons of zeppelins on this map"],
              order = 84.7,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Zeppelins"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Zeppelins"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCapitalsShips = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsTransporting end,
              type = "toggle",
              name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
              desc = L["Show icons of ships on this map"],
              order = 84.8,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Ships"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Ships"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCapitalsTransport = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsTransporting end,
              type = "toggle",
              name = TextIconOgreWaygate:GetIconString() .. " " .. TextIconTravelL:GetIconString() .. " " .. TextIconTransport:GetIconString() .. " " .. TextIconDwarfF:GetIconString() .. " ".. TextIconCarriage:GetIconString() .. " " .. L["Transport"],
              desc = L["Shows special transport icons like"] .. "\n" .. "\n" .. " " .. TextIconOgreWaygate:GetIconString() .. " " .. L["Ogre Waygate"] .. " - " .. GARRISON_LOCATION_TOOLTIP .. "/" .. L["Draenor"] .. "\n" .. "\n" .. " " .. TextIconTransport:GetIconString() .. " " .. L["Teleporter"] .. " - " .. L["Oribos"] .. "/" .. L["Korthia"] .. "/" .. "\n" .. " " .. L["The Maw"] .. "/" .. L["Shadowlands"] .. "\n" .. "\n" .. " " .. TextIconTransport:GetIconString() .. " " .. TextIconDwarfF:GetIconString() .. " " .. L["Travel"] .. " - " .. L["Zandalar"] .. "/" .. L["Kul Tiras"] .. "\n" .. "\n" .. " " .. TextIconCarriage:GetIconString() .. " " .. L["Transport"] .. " - " .. DUNGEON_FLOOR_DEEPRUNTRAM1,
              order = 84.9,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Transport"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Transport"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            },
          },
        ProfessionMinimapTab = {
          type = "group",
          name = "• " .. GUILD_ROSTER_DROPDOWN_PROFESSION .. " " .. L["icons"],
          desc = "",
          order = 86,
          args = {
            showMinimapProfessions = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = L["Activate icons"],
              desc = L["Enables the display of all possible icons on this map"],
              width = 0.90,
              order = 86.1,
              get = function() return ns.Addon.db.profile.showMinimapProfessions end,
              set = function(info, v) ns.Addon.db.profile.showMinimapProfessions = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                    if ns.Addon.db.profile.showMinimapProfessions then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. MINIMAP_LABEL .. " " .. L["Capitals"], GUILD_ROSTER_DROPDOWN_PROFESSION, L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if not ns.Addon.db.profile.showMinimapProfessions then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. MINIMAP_LABEL .. " " .. L["Capitals"], GUILD_ROSTER_DROPDOWN_PROFESSION, L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
              },
            ProfessionsMinimapScale = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "range",
              name = L["symbol size"],
              desc = L["Changes the size of the icons"],
              min = 0.5, max = 3, step = 0.1,
              width = 0.80,   
              order = 86.2,
              },
            ProfessionsMinimapAlpha = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "range",
              name = L["symbol visibility"],
              desc = L["Changes the visibility of the icons"],
              min = 0, max = 1, step = 0.1,
              width = 0.80,  
              order = 86.3,
              },
            Capitalsheader4 = {
              type = "description",
              name = "",
              order = 86.4,
              },
            showMinimapAlchemy = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconAlchemy:GetIconString() .. " " .. L["Alchemy"],
              desc = "",
              width = 1.2, -- width professions
              order = 87,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapAlchemy then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Alchemy"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapAlchemy then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Alchemy"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapEngineer = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconEngineer:GetIconString() .. " " .. L["Engineer"],
              desc = "",
              width = 1.2, -- width professions
              order = 87.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapEngineer then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Engineer"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapEngineer then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Engineer"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapJewelcrafting = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconJewelcrafting:GetIconString() .. " " .. L["Jewelcrafting"],
              desc = "",
              width = 1.2, -- width professions
              order = 87.2,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapJewelcrafting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Jewelcrafting"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapJewelcrafting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Jewelcrafting"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapBlacksmith = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconBlacksmith:GetIconString() .. " " .. L["Blacksmithing"],
              desc = "",
              width = 1.2, -- width professions
              order = 87.4,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapBlacksmith then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Blacksmithing"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapBlacksmith then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Blacksmithing"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapTailoring = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconTailoring:GetIconString() .. " " .. L["Tailoring"],
              desc = "",
              width = 1.2, -- width professions
              order = 87.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapTailoring then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Tailoring"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapTailoring then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Tailoring"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapSkinning = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconSkinning:GetIconString() .. " " .. L["Skinning"],
              desc = "",
              width = 1.2, -- width professions
              order = 87.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapSkinning then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Skinning"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapSkinning then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Skinning"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapMining = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconMining:GetIconString() .. " " .. L["Mining"],
              desc = "",
              width = 1.2, -- width professions
              order = 87.7,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapMining then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Mining"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapMining then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Mining"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapHerbalism = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconHerbalism:GetIconString() .. " " .. L["Herbalism"],
              desc = "",
              width = 1.2, -- width professions
              order = 87.8,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapHerbalism then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Herbalism"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapHerbalism then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Herbalism"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapInscription = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconInscription:GetIconString() .. " " .. INSCRIPTION,
              desc = "",
              width = 1.2, -- width professions
              order = 87.9,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapInscription then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, INSCRIPTION, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapInscription then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, INSCRIPTION, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapFishing = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconFishing:GetIconString() .. " " .. PROFESSIONS_FISHING,
              desc = "",
              width = 1.2, -- width professions
              order = 88,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapFishing then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, PROFESSIONS_FISHING, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapFishing then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38,PROFESSIONS_FISHING, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCooking = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconCooking:GetIconString() .. " " .. PROFESSIONS_COOKING,
              desc = "",
              width = 1.2, -- width professions
              order = 88.1,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCooking then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, PROFESSIONS_COOKING, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCooking then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, PROFESSIONS_COOKING, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapArchaeology = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconArchaeology:GetIconString() .. " " .. PROFESSIONS_ARCHAEOLOGY,
              desc = "",
              width = 1.2, -- width professions
              order = 88.2,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapArchaeology then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, PROFESSIONS_ARCHAEOLOGY, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapArchaeology then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, PROFESSIONS_ARCHAEOLOGY, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapEnchanting = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconEnchanting:GetIconString() .. " " .. L["Enchanting"],
              desc = "",
              width = 1.2, -- width professions
              order = 88.3,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapEnchanting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Enchanting"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapEnchanting then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Enchanting"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapLeatherworking = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapProfessions end,
              type = "toggle",
              name = TextIconLeatherworking:GetIconString() .. " " .. L["Leatherworking"],
              desc = "",
              width = 1.2, -- width professions
              order = 88.4,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapLeatherworking then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Leatherworking"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapLeatherworking then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. TUTORIAL_TITLE38, L["Leatherworking"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            },
          },
        GeneralMinimapCapitalTab = {
          type = "group",
          name = "• " .. L["Generals"] .. " " .. L["icons"],
          desc = "",
          order = 89,
          args = {
            showMinimapCapitalsGeneral = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals end,
              type = "toggle",
              name = L["Activate icons"],
              desc = L["Activates the display of all possible icons on this map"],
              width = 0.90,
              order = 89.1,
              get = function() return ns.Addon.db.profile.showMinimapCapitalsGeneral end,
              set = function(info, v) ns.Addon.db.profile.showMinimapCapitalsGeneral = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                    if ns.Addon.db.profile.showMinimapCapitalsGeneral then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Generals"], L["icons"], "|cff00ff00" .. L["is activated"]) else 
                    if not ns.Addon.db.profile.showMinimapCapitalsGeneral then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Generals"], L["icons"], "|cffff0000" .. L["is deactivated"]) end end end,
              },
            CapitalsMinimapGeneralScale = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsGeneral end,
              type = "range",
              name = L["symbol size"],
              desc = L["Changes the size of the icons"],
              min = 0.5, max = 3, step = 0.1,
              width = 0.80, 
              order = 89.2,
              },
            CapitalsMinimapGeneralAlpha = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsGeneral end,
              type = "range",
              name = L["symbol visibility"],
              desc = L["Changes the visibility of the icons"],
              min = 0, max = 1, step = 0.1,
              width = 0.80, 
              order = 89.3,
              },
            Capitalsheader4 = {
              type = "description",
              name = "",
              order = 89.4,
              },
            showMinimapCapitalsMapNotes = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsGeneral end,
              type = "toggle",
              name = TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME,
              desc = L["This MapNotes icons shows various icons that are too close to each other together"] .. "\n" .. "\n" .. TextIconBank:GetIconString() .. " " .. BANK .. "\n" .. TextIconAuctioneer:GetIconString() .. " " .. MINIMAP_TRACKING_AUCTIONEER .. "\n" .. TextIconHearthstone:GetIconString() .. " " .. MINIMAP_TRACKING_INNKEEPER .. "\n" .. TextIconPassageup:GetIconString() .. " " .. TextIconPassagedown:GetIconString() .. " " .. TextIconPassageleft:GetIconString() .. " " .. TextIconPassageright:GetIconString() .. " " .. L["Paths"],
              width = 0.80,
              order = 89.5,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsMapNotes then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" ..  MINIMAP_LABEL .. " " .. L["Capitals"], COLORED_ADDON_NAME, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsMapNotes then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" ..  MINIMAP_LABEL .. " " .. L["Capitals"], COLORED_ADDON_NAME, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCapitalsPaths = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsGeneral end,
              type = "toggle",
              name = TextIconPassageup:GetIconString() .. " " .. TextIconPassagedown:GetIconString() .. " " .. TextIconPassageleft:GetIconString() .. " " .. TextIconPassageright:GetIconString() .. " " ..L["Paths"],
              desc = L["Exit"] .. " / " .. L["Paths"] .. " / " .. L["Passage"],
              width = 0.80,
              order = 89.6,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsPaths then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Paths"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsPaths then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL .. " " .. L["Capitals"], L["Paths"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCapitalsHearthstone = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsGeneral end,
              type = "toggle",
              name = TextIconHearthstone:GetIconString() .. " " .. MINIMAP_TRACKING_INNKEEPER,
              desc = "",
              width = 0.80,
              order = 89.7,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsHearthstone then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" ..  MINIMAP_LABEL .. " " .. L["Capitals"], MINIMAP_TRACKING_INNKEEPER, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsHearthstone then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" ..  MINIMAP_LABEL .. " " .. L["Capitals"], MINIMAP_TRACKING_INNKEEPER, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCapitalsAuctioneer = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsGeneral end,
              type = "toggle",
              name = TextIconAuctioneer:GetIconString() .. " " .. MINIMAP_TRACKING_AUCTIONEER,
              desc = "",
              width = 0.80,
              order = 89.8,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsAuctioneer then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" ..  MINIMAP_LABEL .. " " .. L["Capitals"], MINIMAP_TRACKING_AUCTIONEER, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsAuctioneer then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" ..  MINIMAP_LABEL .. " " .. L["Capitals"], MINIMAP_TRACKING_AUCTIONEER, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            showMinimapCapitalsBank = {
              disabled = function() return not ns.Addon.db.profile.show.MinimapCapitals or not ns.Addon.db.profile.showMinimapCapitalsGeneral end,
              type = "toggle",
              name = TextIconBank:GetIconString() .. " " .. BANK,
              desc = "",
              width = 0.80,
              order = 89.9,
              set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                    if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMinimapCapitalsBank then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" ..  MINIMAP_LABEL .. " " .. L["Capitals"], BANK, L["icons"], "|cff00ff00" .. L["are shown"]) else 
                    if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMinimapCapitalsBank then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" ..  MINIMAP_LABEL .. " " .. L["Capitals"], BANK, L["icons"], "|cffff0000" .. L["are hidden"])end end end,
              },
            },
          },
        },
      },
    },
  }
end