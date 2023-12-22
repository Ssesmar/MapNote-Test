local ADDON_NAME, ns = ...

local HandyNotes = LibStub("AceAddon-3.0"):GetAddon("HandyNotes", true)
if not HandyNotes then return end

local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)
local COLORED_ADDON_NAME = "|cffff0000Map|r|cff00ccffNotes|r"
local MNMMBIcon = LibStub("LibDBIcon-1.0", true)
local iconLink = "Interface\\Addons\\" .. ADDON_NAME .. "\\images\\"

local db = { }

TextIcon = TextIcon
TextIconPortal = TextIcon(iconLink .. "portal.tga", 64, 64, 10, 50, 50, 1)
TextIconHPortal = TextIcon("Interface/Minimap/Vehicle-HordeMagePortal")
TextIconAPortal = TextIcon("Interface/Minimap/Vehicle-AllianceMagePortal", 64, 64, 10, 50, 50, 1)
TextIconDungeon = TextIcon("Interface\\MINIMAP\\Dungeon", 64, 64, 10, 50, 50, 1)
TextIconRaid = TextIcon("Interface\\MINIMAP\\Raid", 64, 64, 10, 50, 50, 1)
TextIconVDungeon = TextIcon(iconLink .. "vanilladungeons.tga", 64, 64, 10, 50, 50, 1)
TextIconVRaid = TextIcon(iconLink .. "vanilladungeons.tga", 64, 64, 10, 50, 50, 1)
TextIconVKey1 = TextIcon(iconLink .. "vkey1.blp", 64, 64, 10, 50, 50, 1)
TextIconMultiple = TextIcon(iconLink .. "merged.tga", 64, 64, 10, 50, 50, 1)
TextIconLocked = TextIcon(iconLink .. "gray.blp", 64, 64, 10, 50, 50, 1)
TextIconZeppelin = TextIcon(iconLink .. "zeppelin.tga", 64, 64, 10, 50, 50, 1)
TextIconHZeppelin = TextIcon(iconLink .. "hzeppelin.tga", 64, 64, 10, 50, 50, 1)
TextIconAZeppelin = TextIcon(iconLink .. "azeppelin.tga", 64, 64, 10, 50, 50, 1)
TextIconPortal = TextIcon(iconLink .. "portal.tga", 64, 64, 10, 50, 50, 1)
TextIconHPortal = TextIcon("Interface/Minimap/Vehicle-HordeMagePortal", 64, 64, 10, 50, 50, 1)
TextIconAPortal = TextIcon("Interface/Minimap/Vehicle-AllianceMagePortal", 64, 64, 10, 50, 50, 1)
TextIconShip = TextIcon(iconLink .. "ship.tga", 64, 64, 10, 50, 50, 1)
TextIconHShip = TextIcon(iconLink .. "hship.tga", 64, 64, 10, 50, 50, 1)
TextIconAShip = TextIcon(iconLink .. "aship.tga", 64, 64, 10, 50, 50, 1)
TextIconExit = TextIcon("interface/TARGETINGFRAME/UI-RaidTargetingIcon_7.blp", 64, 64, 10, 50, 50, 1)
TextIconPassageup = TextIcon(iconLink .. "passageup", 64, 64, 10, 50, 50, 1)
TextIconPassagedown = TextIcon(iconLink .. "passagedown", 64, 64, 10, 50, 50, 1)
TextIconPassageright = TextIcon(iconLink .. "passageright", 64, 64, 10, 50, 50, 1)
TextIconPassageleft = TextIcon(iconLink .. "passageleft", 64, 64, 10, 50, 50, 1)
TextIconTransportHelper = TextIcon(iconLink .. "tport.blp", 64, 64, 10, 50, 50, 1)
TextIconOgreWaygate = TextIcon("Interface/Minimap/Vehicle-AllianceWarlockPortal", 64, 64, 10, 50, 50, 1)
TextIconCheck = TextIcon("Interface/Buttons/UI-CheckBox-Up", 64, 64, 10, 50, 50, 1)
TextIconHordeAlliance = TextIcon(iconLink .. "MN_Logo", 64, 64, 10, 50, 50, 1)
TextIconTomTom = TextIcon(iconLink .."tomtompoint.tga")
TextIconJournal = TextIcon("Interface/EncounterJournal/AdventureGuide", 64, 64, 10, 50, 50, 1)
TextIconKilledBosses = TextIcon("Interface/TargetingFrame/UI-RaidTargetingIcon_8")
TextIconKalimdor = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-Orc")
TextIconEK = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-Human")
TextIconBC = TextIcon("Interface/Icons/Achievement_Boss_Illidan")
TextIconNorthrend = TextIcon("Interface/Icons/Achievement_Boss_LichKing")
TextIconPandaria = TextIcon("Interface/CharacterFrame/TEMPORARYPORTRAIT-FEMALE-PANDAREN")
TextIconDraenor = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-MagharOrc")
TextIconLegion = TextIcon("Interface/Icons/artifactability_HavocDemonHunter_AnguishoftheDeceiver")
TextIconZandalar = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-ZandalariTroll")
TextIconKT = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-KulTiran")
TextIconSL = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-Dracthyr")
TextIconDF = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-Dracthyr")


ns.options = {
    type = "group",
    name = COLORED_ADDON_NAME,
    childGroups = "tab",
    desc = L["Shows locations of raids, dungeons, portals ,ship and zeppelins symbols on different maps"],
    get = function(info) return db[info[#info]] end,
    set = function(info, v) db[info[#info]] = v HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") end,
    args = {  
      GeneralTab = {
        type = "group",
        name = L["General"],
        desc = L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"],
        order = 0,
        args = {
          hideMapNotesMMB = {
            type = "header",
            name = L["General"],
            order = 1,
            },
          mapnoteScale = {
            disabled = function() return db.show["HideMapNote"] end,
            type = "range",
            name = L["symbol size"],
            desc = L["Resizes symbols on the azeroth, continent, zone, dungeon and minimap"],
            min = 0.5, max = 2, step = 0.1,
            order = 1.1,
            },
          mapnoteAlpha = {
            disabled = function() return db.show["HideMapNote"] end,
            type = "range",
            name = L["symbol visibility"],
            desc = L["Changes the visibility of the symbols"],
            min = 0, max = 1, step = 0.1,
            order = 1.2,
           },
           ScaleHeader = {
            type = "header",
            name = "",
            order = 5,
            },
          hideAddon = {
            type = "toggle",
            name = "|cffff0000" .. L["hide MapNotes!"] .."\n",
            desc = L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"],
            order = 5.1,
            get = function() return db.show["HideMapNote"] end,
            set = function(info, v) db.show["HideMapNote"] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                  if db.show["HideMapNote"] then print(COLORED_ADDON_NAME .. "|cffff0000", L["All MapNotes symbols have been hidden"]) else
                  if not db.show["HideMapNote"] then print(COLORED_ADDON_NAME .. "|cff00ff00", L["All set symbols have been restored"]) end end end,
            },  
          hideMMB = {
            type = "toggle",
            name = "|cffff0000" .. "" .. L["hide minimap button"],
            desc = L["Hide the minimap button on the minimap"],
            order = 5.2,
            width = 1.89,
            get = function() return db.show.HideMMB end,
            set = function(info, v) db.show.HideMMB = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
              if not db.show.HideMMB then MNMMBIcon:Show("MNMiniMapButton") print(COLORED_ADDON_NAME .. "|cffffff00", L["-> MiniMapButton <-"], "|cff00ff00" .. L["is activated"]) else
              if db.show.HideMMB then MNMMBIcon:Hide("MNMiniMapButton") print(COLORED_ADDON_NAME .. "|cffffff00", L["-> MiniMapButton <-"], "|cffff0000" .. L["is deactivated"]) end end end,
            },
          GeneralHeader = {
            type = "header",
            name = L["General settings / Additional functions"],
            order = 10,
            },
          journal = {
            disabled = function() return db.show["HideMapNote"] end,
            type = "toggle",
            name = TextIconJournal:GetIconString() .. " " .. L["Adventure guide"],
            desc = L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"],
            order = 10.1,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.journal then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Adventure guide"], "|cff00ff00" .. L["is activated"]) else 
                  if not self.db.profile.journal then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Adventure guide"], "|cffff0000" .. L["is deactivated"]) end end end,
            },    
          tomtom = {
            disabled = function() return db.show["HideMapNote"] end,
            type = "toggle",
            name = TextIconTomTom:GetIconString() .. " " .. L["TomTom waypoints"],
            desc = L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"],
            order = 10.2,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.tomtom then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["TomTom waypoints"], "|cff00ff00" .. L["is activated"]) else 
                  if not self.db.profile.tomtom then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["TomTom waypoints"], "|cffff0000" ..  L["is deactivated"]) end end end,
            },
          assignedID = {
            disabled = function() return db.show["HideMapNote"] end,
            type = "toggle",
            name = TextIconKilledBosses:GetIconString() .. " " .. L["killed Bosses"],
            desc = L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"],
            order = 10.3,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
              if self.db.profile.assignedID then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["killed Bosses"], "|cff00ff00" .. L["is activated"]) else 
              if not self.db.profile.assignedID then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["killed Bosses"], "|cffff0000" ..  L["is deactivated"]) end end end,
            },
          assignedgray = {
            disabled = function() return db.show["HideMapNote"] end,
            type = "toggle",
            name = TextIconLocked:GetIconString() .. " " .. L["gray symbols"],
            desc = L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"],
            order = 10.4,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
              if self.db.profile.assignedgray then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["gray symbols"], "|cff00ff00" .. L["is activated"]) else 
              if not self.db.profile.assignedgray then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["gray symbols"], "|cffff0000" ..  L["is deactivated"]) end end end,
            },
          graymultipleID = {
            disabled = function() return db.show["HideMapNote"] end,
            type = "toggle",
            name = TextIconMultiple:GetIconString() .. " " .. TextIconLocked:GetIconString() .. " " .. L["multiple points"],
            desc = L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"],
            order = 10.5,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
              if self.db.profile.graymultipleID then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["multiple points"], "|cff00ff00" .. L["is activated"]) else 
              if not self.db.profile.graymultipleID then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["multiple points"], "|cffff0000" ..  L["is deactivated"]) end end end,
            },
          showEnemyFaction = {
            disabled = function() return db.show["HideMapNote"] end,
            type = "toggle",
            name = TextIconHordeAlliance:GetIconString() .. " " .. L["enemy faction"],
            desc = L["Shows enemy faction (horde/alliance) symbols"],
            order = 10.6,
            get = function() return db.show["EnemyFaction"] end,
            set = function(info, v) db.show["EnemyFaction"] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                  if db.show["EnemyFaction"] then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["enemy faction"], "|cff00ff00" .. L["is activated"]) else 
                  if not db.show["EnemyFaction"] then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["enemy faction"], "|cffff0000" ..  L["is deactivated"]) end end end,
           },
          InfoHeader = {
            type = "header",
            name = L["Informations"],
            order = 19,
            },
          infoChatCommands = {
  					name = L["Chat commands:"],
  					type = "description",
  					order = 19.2,
          },
          infoChat = {
  					name = "|cff00ccff" .. "" .. L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"].. "\n",
  					type = "description",
  					order = 19.2,
          },
          infoOpen = {
  					name = "|cff00ccff" .. "" .. L["to open MapNotes menu: /mno, /MNO"].. "\n",
  					type = "description",
  					order = 19.4,
          },
          infoClose = {
  					name = "|cff00ccff" ..  "" .. L["to close MapNotes menu: /mnc, /MNC"].. "\n",
  					type = "description",
  					order = 19.5,
          },
          infoShow = {
  					name = "|cff00ccff" ..  "" .. L["to show minimap button: /mnb or /MNB"].. "\n",
  					type = "description",
  					order = 19.6,
          },
          infoHide = {
  					name = "|cff00ccff" ..  "" .. L["to hide minimap button: /mnbh or /MNBH"].. "\n",
  					type = "description",
  					order = 19.7,
          },
        }
      },
      AzerothTab = {
        disabled = function() return db.show["HideMapNote"] end,
        type = "group",
        name = L["Azeroth map"],
        desc = L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"],
        order = 2,
        args = {
          Azerothheader1 = {
            type = "header",
            name = L["Azeroth map"],
            order = 20,
            },
          showAzeroth = {
            type = "toggle",
            name = L["Activate symbols"],
            desc = L["Activates the display of all possible symbols on the Azeroth map"],
            order = 20.1,
            get = function() return db.show["Azeroth"] end,
            set = function(info, v) db.show["Azeroth"] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if db.show["Azeroth"] then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Azeroth map"], "|cff00ff00" .. L["is activated"]) else 
                  if not db.show["Azeroth"] then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Azeroth map"], "|cffff0000" .. L["is deactivated"]) end end end,
            },
          --[[azerothScale = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "range",
            name = L["symbol size"],
            desc = L["Resizes symbols on the continent map"],
            min = 0.5, max = 2, step = 0.1,
            order = 20.3,
            },--]] --disabled because it became the general icon size
          Azerothheader2 = {
            type = "header",
            name = L["Show individual symbols"],
            order = 21
            },
          showAzerothRaid = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
            desc = L["Show symbols of raids on the Azeroth map"],
            order = 21.1,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothRaid then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Raids"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothRaid then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Raids"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothDungeon = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
            desc = L["Show symbols of dungeons on the Azeroth map"],
            order = 21.2,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
              if self.db.profile.showAzerothDungeon then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Dungeons"], "|cff00ff00" .. L["are shown"]) else 
              if not self.db.profile.showAzerothDungeon then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Dungeons"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothMultiple = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconMultiple:GetIconString() .. " " .. L["Multiple"],
            desc = L["Show symbols of multiple on the Azeroth map"],
            order = 21.3,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Multiple"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Multiple"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothPortals = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. L["Portals"],
            desc = L["Show symbols of portals on the Azeroth map"],
            order = 21.4,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothZeppelins = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
            desc = L["Show symbols of zeppelins on the Azeroth map"],
            order = 21.5,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zeppelins"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zeppelins"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothShips = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
            desc = L["Show symbols of ships on the Azeroth map"],
            order = 21.6,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Ships"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Ships"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothOldVanilla = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconVRaid:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
            desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
            order = 21.7,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cff00ff00" .. L["is activated"]) else 
                  if not self.db.profile.showAzerothOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
            },
          Azerothheader3 = {
            type = "header",
            name = L["Show all MapNotes for a specific map"],
            order = 22
            },
          showAzerothKalimdor = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
            desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 22.1,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kalimdor"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kalimdor"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothEasternKingdom = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
            desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 22.2,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Eastern Kingdom"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Eastern Kingdom"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothNorthrend = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
            desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 22.3,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Northrend"], L["symbols"],  "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Northrend"], L["symbols"],  "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothPandaria = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconPandaria:GetIconString() .. " " .. L["Pandaria"],
            desc = L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 22.4,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothPandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Pandaria"], L["symbols"],  "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothPandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Pandaria"], L["symbols"],  "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothBrokenIsles = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconLegion:GetIconString() .. " " .. L["Broken Isles"],
            desc = L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 22.5,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Broken Isles"], L["symbols"],  "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Broken Isles"], L["symbols"],  "|cffff0000" .. L["are hidden"])end end end,
            },  
          showAzerothZandalar = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconZandalar:GetIconString() .. " " .. L["Zandalar"],
            desc = L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 22.6,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zandalar"], L["symbols"],  "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zandalar"], L["symbols"],  "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothKulTiras = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconKT:GetIconString() .. " " .. L["Kul Tiras"],
            desc = L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 22.7,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kul Tiras"], L["symbols"],  "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kul Tiras"], L["symbols"],  "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothDragonIsles = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconDF:GetIconString() .. " " .. L["Dragon Isles"],
            desc = L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 22.8,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothDragonIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Dragon Isles"], L["symbols"],  "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothDragonIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Dragon Isles"], L["symbols"],  "|cffff0000" .. L["are hidden"])end end end,
            },
          AzerothInfoHeader = {
            type = "header",
            name = L["Informations"],
            order = 29,
            },
          Azerothdesc = {
            type = "description",
            name = "|cff00ccff" .. L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] .."\n",
            order = 29.9
          },
        }
      },
      ContinentTab = {
        disabled = function() return db.show["HideMapNote"] end,
        type = "group",
        name = L["Continent map"],
        desc = L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"],
        order = 3,
        args = {
          continentheader1 = {
            type = "header",
            name = L["Continent map"],
            order = 30,
            },
          showContinent = {
            type = "toggle",
            name = L["Activate symbols"],
            desc = L["Activates the display of all possible symbols on the continent map"],
            order = 30.1,
            get = function() return db.show["Continent"] end,
            set = function(info, v) db.show["Continent"] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                  if db.show["Continent"] then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Continent map"], "|cff00ff00" .. L["is activated"]) else 
                  if not db.show["Continent"] then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Continent map"], "|cffff0000" .. L["is deactivated"]) end end end,
            },
          --[[continentScale = {
            disabled = function() return not db.show["Continent"] end,
            type = "range",
            name = L["symbol size"],
            desc = L["Resizes symbols on the continent map"],
            min = 0.5, max = 2, step = 0.1,
            order = 30.2,
            },--]] --disabled because it became the general icon size
          continentheader2 = {
            type = "header",
            name = L["Show individual symbols"],
            order = 30.3,
            },
          showContinentRaids = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
            desc = L["Show symbols of raids on the continant map and minimap"],
            order = 30.4,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentRaids then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Raids"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentRaids then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Raids"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentDungeons = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
            desc = L["Show symbols of dungeons on the continant map and minimap"],
            order = 30.5,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentDungeons then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Dungeons"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentDungeons then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Dungeons"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentMultiple = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconMultiple:GetIconString() .. " " .. L["Multiple"],
            desc = L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"],
            order = 30.6,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Multiple"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Multiple"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentPortals = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. L["Portals"],
            desc = L["Show symbols of portals on the continant map and minimap"],
            order = 30.7,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentZeppelins = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
            desc = L["Show symbols of zeppelins on the continant map and minimap"],
            order = 30.8,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Zeppelins"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Zeppelins"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentShips = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
            desc = L["Show symbols of ships on the continant map and minimap"],
            order = 30.9,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Ships"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Ships"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentOldVanilla = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconVRaid:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
            desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
            order = 31.1,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cff00ff00" .. L["is activated"]) else 
                  if not self.db.profile.showContinentOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
            },
          showContinentOgreWaygates = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconOgreWaygate:GetIconString() .. " " .. L["Ogre Waygate"],
            desc = L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"],
            order = 31.2,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentOgreWaygates then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Ogre Waygate"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentOgreWaygates then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Ogre Waygate"], "|cffff0000" .. L["are hidden"])end end end,
            },
          continentheader4 = {
            type = "header",
            name = L["Show all MapNotes for a specific map"],
            order = 32
            },
          showContinentKalimdor= {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
            desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"],
            order = 32.1,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Kalimdor"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Kalimdor"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentEasternKingdom = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
            desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"],
            order = 32.2,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Eastern Kingdom"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Eastern Kingdom"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentOutland = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconBC:GetIconString() .. " " .. L["Outland"],
            desc = L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"],
            order = 32.3,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentOutland then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Outland"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentOutland then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Outland"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentNorthrend = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
            desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"],
            order = 32.4,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Northrend"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Northrend"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentPandaria = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconPandaria:GetIconString() .. " " .. L["Pandaria"],
            desc = L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"],
            order = 32.5,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentPandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Pandaria"], L["symbols"],"|cff00ff00" .. L["are shown"]) else 
                    if not self.db.profile.showContinentPandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Pandaria"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentDraenor = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconDraenor:GetIconString() .. " " .. L["Draenor"],
            desc = L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"],
            order = 32.6,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentDraenor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Draenor"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentDraenor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Draenor"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentBrokenIsles = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconLegion:GetIconString() .. " " .. L["Broken Isles"],
            desc = L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"],
            order = 32.7,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Broken Isles"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Broken Isles"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentZandalar = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconZandalar:GetIconString() .. " " .. L["Zandalar"],
            desc = L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"],
            order = 32.8,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Zandalar"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Zandalar"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentKulTiras = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconKT:GetIconString() .. " " .. L["Kul Tiras"],
            desc = L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"],
            order = 32.9,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Kul Tiras"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Kul Tiras"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentShadowlands = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconSL:GetIconString() .. " " .. L["Shadowlands"],
            desc = L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"],
            order = 33.0,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentShadowlands then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Shadowlands"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentShadowlands then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Shadowlands"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentDragonIsles = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconDF:GetIconString() .. " " .. L["Dragon Isles"],
            desc = L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"],
            order = 33.1,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentDragonIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Dragon Isles"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentDragonIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Dragon Isles"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
          },
        }
      },
      DungeonMapTab = {
        disabled = function() return db.show["HideMapNote"] end,
        type = "group",
        name = L["Dungeon map"],
        desc = L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"],
        order = 4,
        args = {
          DungeonMapheader1 = {
            type = "header",
            name = L["Dungeon map"],
            order = 40,
            },
          showDungeonMap = {
            type = "toggle",
            name = L["Activate symbols"],
            desc = L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"],
            order = 40.1,
            get = function() return db.show["DungeonMap"] end,
            set = function(info, v) db.show["DungeonMap"] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                  if db.show["DungeonMap"] then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Dungeon map"], "|cff00ff00" .. L["is activated"]) else 
                  if not db.show["DungeonMap"] then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Dungeon map"], "|cffff0000" .. L["is deactivated"]) end end end,
            },
          DungeonMapheader2 = {
            type = "header",
            name = L["Show individual symbols"],
            order = 41.0,
            },
          showDungeonExit = {
            disabled = function() return not db.show["DungeonMap"] end,
            type = "toggle",
            name = TextIconExit:GetIconString() .. " " .. L["Exits"] .. "\n",
            desc = L["Show symbols of MapNotes dungeon exit on the dungeon map"],
            order = 41.1,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showDungeonExit then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Exits"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showDungeonExit then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Exits"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showDungeonPortal = {
            disabled = function() return not db.show["DungeonMap"] end,
            type = "toggle",
            name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. L["Portals"] .. "\n",
            desc = L["Show symbols of portals on the dungeon map"],
            order = 41.2,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showDungeonPortal then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showDungeonPortal then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
            },            
          showDungeonPassage = {
            disabled = function() return not db.show["DungeonMap"] end,
            type = "toggle",
            name = TextIconPassageup:GetIconString() .. " " .. TextIconPassagedown:GetIconString() .. " " .. TextIconPassageright:GetIconString() .. " " .. TextIconPassageleft:GetIconString() .. " " .. L["Passages"] .. "\n",
            desc = L["Show symbols of passage on the dungeon map"],
            order = 41.3,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showDungeonPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Passages"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showDungeonPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Passages"], "|cffff0000" .. L["are hidden"])end end end,
            },
        }
      }
    }
  }