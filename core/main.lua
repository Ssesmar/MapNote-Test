local ADDON_NAME, ns = ...

local HandyNotes = LibStub("AceAddon-3.0"):GetAddon("HandyNotes", true)
if not HandyNotes then return end

local ADDON_NAME = "HandyNotes_MapNotes"
local COLORED_ADDON_NAME = "|cffff0000Map|r|cff00ccffNotes|r"
local iconLink = "Interface\\Addons\\" .. ADDON_NAME .. "\\images\\"
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)
local MapNotesMiniButton = LibStub("AceAddon-3.0"):NewAddon("MNMiniMapButton", "AceConsole-3.0")  
local MNMMBIcon = LibStub("LibDBIcon-1.0", true)


local db = { }
local nodes = { }
local minimap = { }
local lfgIDs = { }
local assignedIDs = { }


local icons = { 
["Dungeon"] = "Interface\\MINIMAP\\Dungeon",
["Raid"] = "Interface\\MINIMAP\\Raid",
["PassageDungeonM"] = iconLink .. "PassageDungeonM",
["PassageRaidM"] = iconLink .. "passageRaidM",
["PassageDungeonL"] = iconLink .. "PassageDungeonL",
["PassageRaidL"] = iconLink .. "passageRaidL",
["TravelL"] = iconLink .. "travelL",
["TravelM"] = iconLink .. "travelm",
["VDungeon"] = iconLink .. "vanilladungeons",
["VRaid"] = iconLink .. "vanilladungeons",
["VKey1"] = iconLink .. "vkey1",
["MultipleM"] = iconLink .. "multipleM",
["MultipleD"] = iconLink .. "multipleD",
["MultipleR"] = iconLink .. "multipleR",
["Locked"] = iconLink .. "gray",
["Zeppelin"] = iconLink .. "zeppelin",
["HZeppelin"] = iconLink .. "zeppelinH",
["AZeppelin"] = iconLink .. "zeppelinA",
["Portal"] = iconLink .. "portal",
["HPortal"] = "interface/minimap/vehicle-hordemageportal",
["APortal"] = "Interface/Minimap/Vehicle-AllianceMagePortal",
["Ship"] = iconLink .. "ship",
["HShip"] = iconLink .. "shipH",
["AShip"] = iconLink .. "shipA",
["Exit"] = "interface/TARGETINGFRAME/UI-RaidTargetingIcon_7",
["PassageUpL"] = iconLink .. "passageupL",
["PassageDownL"] = iconLink .. "passagedownL",
["PassageRightL"] = iconLink .. "passagerightL",
["PassageLeftL"] = iconLink .. "passageleftL",
["PassageUpM"] = iconLink .. "passageupM",
["PassageDownM"] = iconLink .. "passagedownM",
["PassageRightM"] = iconLink .. "passagerightM",
["PassageLeftM"] = iconLink .. "passageleftM",
["TransportHelper"] = iconLink .. "tport",
["OgreWaygate"] = "Interface/Minimap/Vehicle-AllianceWarlockPortal",
}

TextIcon = IconClass
TextIconMNL4 = TextIcon(iconLink .. "MNL4") 
TextIconPassageDungeonM = TextIcon(iconLink .. "PassageDungeonM", 64, 64, 10, 50, 50, 1)
TextIconPassageRaidM = TextIcon(iconLink .. "PassageRaidM", 64, 64, 10, 50, 50, 1)
TextIconPortal = TextIcon(iconLink .. "portal", 64, 64, 10, 50, 50, 1) --(0, 0, 0, 0, 0, 0 = horizontal reflection?, ?, skalierung?, y achse,? )
TextIconHPortal = TextIcon("Interface/Minimap/Vehicle-HordeMagePortal", 64, 64, 10, 50, 50, 1)
TextIconAPortal = TextIcon("Interface/Minimap/Vehicle-AllianceMagePortal", 64, 64, 10, 50, 50, 1)
TextIconDungeon = TextIcon("Interface\\MINIMAP\\Dungeon", 64, 64, 10, 50, 50, 1)
TextIconRaid = TextIcon("Interface\\MINIMAP\\Raid", 64, 64, 10, 50, 50, 1)
TextIconVDungeon = TextIcon(iconLink .. "vanilladungeons", 64, 64, 10, 50, 50, 1)
TextIconVRaid = TextIcon(iconLink .. "vanilladungeons", 64, 64, 10, 50, 50, 1)
TextIconVKey1 = TextIcon(iconLink .. "vkey1")
TextIconMultipleM = TextIcon(iconLink .. "multipleM", 64, 64, 10, 50, 50, 1)
TextIconMultipleD = TextIcon(iconLink .. "multipleD", 64, 64, 10, 50, 50, 1)
TextIconMultipleR = TextIcon(iconLink .. "multipleR", 64, 64, 10, 50, 50, 1)
TextIconLocked = TextIcon(iconLink .. "gray", 64, 64, 10, 50, 50, 1)
TextIconZeppelin = TextIcon(iconLink .. "zeppelin")
TextIconHZeppelin = TextIcon(iconLink .. "zeppelinH")
TextIconAZeppelin = TextIcon(iconLink .. "zeppelinA")
TextIconShip = TextIcon(iconLink .. "ship")
TextIconHShip = TextIcon(iconLink .. "shipH")
TextIconAShip = TextIcon(iconLink .. "shipA")
TextIconExit = TextIcon("interface/TARGETINGFRAME/UI-RaidTargetingIcon_7", 64, 64, 10, 50, 50, 1)
TextIconPassageup = TextIcon(iconLink .. "PassageUpL")
TextIconPassagedown = TextIcon(iconLink .. "PassageDownL")
TextIconPassageright = TextIcon(iconLink .. "PassageRightL")
TextIconPassageleft = TextIcon(iconLink .. "PassageLeftL")
TextIconTravelL = TextIcon(iconLink .. "travelL")
TextIconTransportHelper = TextIcon(iconLink .. "tport", 64, 64, 10, 50, 50, 1)
TextIconOgreWaygate = TextIcon("Interface/Minimap/Vehicle-AllianceWarlockPortal", 64, 64, 10, 50, 50, 1)
TextIconCheck = TextIcon("Interface/Buttons/UI-CheckBox-Up", 64, 64, 10, 50, 50, 1)
TextIconHorde = TextIcon("interface/pvprankbadges/pvprankhorde")
TextIconAlliance = TextIcon("interface/pvprankbadges/pvprankalliance")
TextIconTomTom = TextIcon(iconLink .."tomtompoint")
TextIconJournal = TextIcon("interface/encounterjournal/ui-ej-journalbg")
TextIconKilledBosses = TextIcon("Interface/TargetingFrame/UI-RaidTargetingIcon_8")
TextIconKalimdor = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-Orc")
TextIconEK = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-Human")
TextIconBC = TextIcon("Interface/Icons/Achievement_Boss_Illidan")
TextIconNorthrend = TextIcon("interface/lfgframe/ui-lfr-portrait")
TextIconPandaria = TextIcon("Interface/CharacterFrame/TEMPORARYPORTRAIT-FEMALE-PANDAREN")
TextIconDraenor = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-MagharOrc")
TextIconLegion = TextIcon("Interface/Icons/artifactability_HavocDemonHunter_AnguishoftheDeceiver")
TextIconZandalar = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-ZandalariTroll")
TextIconKT = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-KulTiran")
TextIconSL = TextIcon("interface/icons/achievement_leader_sylvanas")
TextIconDF = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-Dracthyr")

function MapNotesMiniButton:OnInitialize() --mmb.lua
  self.db = LibStub("AceDB-3.0"):New("MNMiniMapButtonDB", { profile = { minimap = { hide = false, }, }, }) 
  MNMMBIcon:Register("MNMiniMapButton", ns.miniButton, self.db.profile.minimap)
end

local function updateAssignedID()
    table.wipe(assignedIDs)
    for i=1,GetNumSavedInstances() do
        local name, _, _, _, locked, _, _, _, _, difficultyName, numEncounters, encounterProgress = GetSavedInstanceInfo(i)
        if (locked) then
          --print(name, difficultyName, numEncounters, encounterProgress)
          if (not assignedIDs[name]) then
          assignedIDs[name] = { }
          end
          assignedIDs[name][difficultyName] = encounterProgress .. "/" .. numEncounters
        end
    end
end

local pluginHandler = { }
function pluginHandler:OnEnter(uiMapId, coord)
  local nodeData = nil

	if (minimap[uiMapId] and minimap[uiMapId][coord]) then
	  nodeData = minimap[uiMapId][coord]
	end

	if (nodes[uiMapId] and nodes[uiMapId][coord]) then
	  nodeData = nodes[uiMapId][coord]
	end
	
	if (not nodeData) then return end
	
	local tooltip = self:GetParent() == WorldMapButton and WorldMapTooltip or GameTooltip
	if ( self:GetCenter() > UIParent:GetCenter() ) then -- compare X coordinate
	  tooltip:SetOwner(self, "ANCHOR_LEFT")
	else
		tooltip:SetOwner(self, "ANCHOR_RIGHT")
	end

    if (not nodeData.name) then return end

	local instances = { strsplit("\n", nodeData.name) }
	

	updateAssignedID()
	
	for i, v in pairs(instances) do
    --print(i, v)
	  if (db.assignedID and (assignedIDs[v] or (lfgIDs[v] and assignedIDs[lfgIDs[v]]))) then
 	    if (assignedIDs[v]) then
        --print("Dungeon/Raid is locked")
	      for a,b in pairs(assignedIDs[v]) do
          --tooltip:AddLine(v .. ": " .. a .. " " .. b, nil, nil, nil, false)
	        tooltip:AddDoubleLine(v, a .. " " .. b, 1, 1, 1, 1, 1, 1)
 	      end
	    end
      if (lfgIDs[v] and assignedIDs[lfgIDs[v]]) then
        for a,b in pairs(assignedIDs[lfgIDs[v]]) do
          --tooltip:AddLine(v .. ": " .. a .. " " .. b, nil, nil, nil, false)
          tooltip:AddDoubleLine(v, a .. " " .. b, 1, 1, 1, 1, 1, 1)
        end
      end
	  else
	    tooltip:AddLine(v, nil, nil, nil, false)
	  end

    if nodeData.mnID then
      local mnIDnames = C_Map.GetMapInfo(nodeData.mnID).name
      if mnIDnames then
          tooltip:AddDoubleLine("=>  " .. mnIDnames, nil, nil, false)
      end
    end
     	tooltip:Show()
  end
end

function pluginHandler:OnLeave(uiMapID, coord)
    if self:GetParent() == WorldMapButton then
      WorldMapTooltip:Hide()
    else
      GameTooltip:Hide()
    end
end

do
	local tablepool = setmetatable({}, {__mode = 'k'})
	
	local function deepCopy(object)
		local lookup_table = {}
		local function _copy(object)
			if type(object) ~= "table" then
				return object
			elseif lookup_table[object] then
				return lookup_table[object]
			end

			local new_table = {}
			  lookup_table[object] = new_table
			for index, value in pairs(object) do
				new_table[_copy(index)] = _copy(value)
			end

			return setmetatable(new_table, getmetatable(object))
		end
			return _copy(object)
	end

	local function iter(t, prestate)
		if not t then return end
		local data = t.data

		local state, value = next(data, prestate)

		while value do
			local alpha
			
			local allLocked = true
			local anyLocked = false
			if value.name == nil then value.name = value.id or value.mnID end
			local instances = { strsplit("\n", value.name) }
			for i, v in pairs(instances) do
				if (not assignedIDs[v] and not assignedIDs[lfgIDs[v]]) then
					allLocked = false
				else
					anyLocked = true
				end
			end

			local icon = icons[value.type]
			if ((anyLocked and db.graymultipleID) or (allLocked and not db.graymultipleID)) then
				icon = icons["Locked"]
			end

      if ((anyLocked and db.invertlockout) or (allLocked and not db.invertlockout) and db.uselockoutalpha) then
				alpha = db.mapnoteAlpha
			end

			if value.showInZone or t.minimapUpdate or not db.show.Azeroth then
			  return state, nil, icon, db.mapnoteScale, alpha --set this to the same Scale as for iterCont, cause we only wanna use 1 Scale options at the moment
			end
      
			state, value = next(data, state)
		end
		wipe(t)
		tablepool[t] = true
	end


	local function iterCont(t, prestate)
		if not t then return end
    if not db.show.Continent then return end
  	local zone = t.C[t.Z]
		local data = nodes[zone]
		local state, value

		while zone do
			if data then -- Only if there is data for this zone
				state, value = next(data, prestate)

				while state do -- Have we reached the end of this zone?
          local icon, alpha

					local allLocked = true
					local anyLocked = false
          --
					local instances = { strsplit("\n", value.name) }
					for i, v in pairs(instances) do
						if (not assignedIDs[v] and not assignedIDs[lfgIDs[v]]) then
							allLocked = false
						else
							anyLocked = true
						end
					end

          icon = icons[value.type]
					if ((anyLocked and db.assignedgray) or (allLocked and db.assignedgray)) then   
						icon = icons["Locked"]
					end
          if ((anyLocked and db.invertlockout) or (allLocked and not db.invertlockout) and db.uselockoutalpha) then
						alpha = db.mapnoteAlpha
					end

					if not value.hideOnContinent and db.show.Continent then
						return state, zone, icon, db.mapnoteScale, alpha --set this to the same Scale as for iterCont, cause we only wanna use 1 Scale options at the moment 
          end

					state, value = next(data, state)  -- Get next data
				end
			end
      -- Get next zone
			t.Z = next(t.C, t.Z)
			zone = t.C[t.Z]
			data = nodes[zone]
			prestate = nil
		end
		wipe(t)
		tablepool[t] = true
	end

	function pluginHandler:GetNodes2(uiMapId, isMinimapUpdate, coord)
    --print(uiMapId)
		local C = deepCopy(HandyNotes:GetContinentZoneList(uiMapId)) -- Is this a continent?
		if C then
			table.insert(C, uiMapId)
			local tbl = next(tablepool) or {}
			tablepool[tbl] = nil
			tbl.C = C
			tbl.Z = next(C)
			tbl.contId = uiMapId
			return iterCont, tbl, nil
		else
			if (nodes[uiMapId] == nil) then return iter end 
			local tbl = next(tablepool) or {}
			tablepool[tbl] = nil
			tbl.minimapUpdate = isMinimapUpdate
			if (isMinimapUpdate and minimap[uiMapId]) then
				tbl.data = minimap[uiMapId]
			else
				tbl.data = nodes[uiMapId]
			end
			return iter, tbl, nil
		end
	end
end

local waypoints = {}
local function setWaypoint(uiMapID, coord)
	local dungeon = nodes[uiMapID][coord]


	local waypoint = nodes[dungeon]
	if waypoint and TomTom:IsValidWaypoint(waypoint) then
		return
	end

	local title = dungeon.name
	local x, y = HandyNotes:getXY(coord)
	waypoints[dungeon] = TomTom:AddWaypoint(uiMapID , x, y, {
		title = dungeon.name,
		persistent = nil,
		minimap = true,
		world = true
	})
end



function pluginHandler:OnClick(button, pressed, uiMapId, coord)
  if db.show.ShiftWorld then   
    if (not pressed) then return end

    if IsShiftKeyDown() and (button == "RightButton" and db.tomtom and TomTom) then
        setWaypoint(uiMapId, coord)
        return
    end
    if IsShiftKeyDown() and (button == "LeftButton" and db.journal) then
      if (not EncounterJournal_OpenJournal) then 
        UIParentLoadAddOn('Blizzard_EncounterJournal')
      end

      local mapIDs
      if (nodes[uiMapId] and nodes[uiMapId][coord] and nodes[uiMapId][coord].mnID) then
        WorldMapFrame:SetMapID(nodes[uiMapId][coord].mnID)
      end

      local dungeonID
      if (type(nodes[uiMapId][coord].id) == "table") then
          dungeonID = nodes[uiMapId][coord].id[1]
      else
          dungeonID = nodes[uiMapId][coord].id
      end

      if (not dungeonID) then return end

      local name, _, _, _, _, _, _, link = EJ_GetInstanceInfo(dungeonID)
      if not link then return end
      local difficulty = string.match(link, 'journal:.-:.-:(.-)|h') 
      if (not dungeonID or not difficulty) then return end
      EncounterJournal_OpenJournal(difficulty, dungeonID)
      _G.EncounterJournal:SetScript("OnShow", nil)
    end
  end

  if not db.show.ShiftWorld then   
    if (not pressed) then return end

    if (button == "RightButton" and db.tomtom and TomTom) then
        setWaypoint(uiMapId, coord)
        return
    end
    if (button == "LeftButton" and db.journal) then
      if (not EncounterJournal_OpenJournal) then 
        UIParentLoadAddOn('Blizzard_EncounterJournal')
      end

      if (nodes[uiMapId] and nodes[uiMapId][coord] and nodes[uiMapId][coord].mnID) then
        WorldMapFrame:SetMapID(nodes[uiMapId][coord].mnID)
      end

      local dungeonID
      if (type(nodes[uiMapId][coord].id) == "table") then
          dungeonID = nodes[uiMapId][coord].id[1]
      else
          dungeonID = nodes[uiMapId][coord].id
      end

      if (not dungeonID) then return end

      local name, _, _, _, _, _, _, link = EJ_GetInstanceInfo(dungeonID)
      if not link then return end
      local difficulty = string.match(link, 'journal:.-:.-:(.-)|h') 
      if (not dungeonID or not difficulty) then return end
      EncounterJournal_OpenJournal(difficulty, dungeonID) 
      _G.EncounterJournal:SetScript("OnShow", nil)
    end
  end
end

local Addon = CreateFrame("Frame")
ns.Addon = Addon
Addon:RegisterEvent("PLAYER_LOGIN")
Addon:SetScript("OnEvent", function(self, event, ...) return self[event](self, ...)end)

local function updateStuff()
  updateAssignedID()
  HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end

function Addon:PLAYER_ENTERING_WORLD()
  if (not self.faction) then
      self.faction = UnitFactionGroup("player")
      self:PopulateTable()
      self:PopulateMinimap()
      self:ProcessTable()
  end

    updateAssignedID()
    updateStuff()
end

function Addon:PLAYER_LOGIN()

  local options = {
    type = "group",
    name = TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString(),
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
          Description = {
            type = "header",
            name = L["Description"],
            order = 0.1,
            },
          DescriptionText = {
            name = "|cffffff00" .. L["Show different symbols on different maps. All symbols are clickable (except on the minimap) and have a function Map symbols work with or without the shift key. Simply change the Shift function!"],
            type = "description",
            order = 0.2,
            },          
          General = {
            type = "header",
            name = L["General"],
            order = 1,
            },
          ShiftWorld = {
            type = "toggle",
            name = "|cff00ff00" .. "" .. L["Shift function!"],
            desc = L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many symbols in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."],
            order = 1.1,
            width = 1.89,
            get = function() return db.show.ShiftWorld end,
            set = function(info, v) db.show.ShiftWorld = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
              if not db.show.ShiftWorld then MNMMBIcon:Show("MNMiniMapButton") print(COLORED_ADDON_NAME .. "|cffffff00", L["Shift function"], "|cffff0000" .. L["is deactivated"]) else
              if db.show.ShiftWorld then MNMMBIcon:Hide("MNMiniMapButton") print(COLORED_ADDON_NAME .. "|cffffff00", L["Shift function"], "|cff00ff00" .. L["is activated"]) end end end,
            },
            General2 = {
            type = "header",
            name = "",
            order = 2,
            },
          mapnoteScale = {
            disabled = function() return db.show["HideMapNote"] end,
            type = "range",
            name = L["symbol size"],
            desc = L["Resizes symbols on the azeroth, continent, zone, dungeon and minimap"],
            min = 0.5, max = 2, step = 0.1,
            order = 2.1,
            },
          mapnoteAlpha = {
            disabled = function() return db.show["HideMapNote"] end,
            type = "range",
            name = L["symbol visibility"],
            desc = L["Changes the visibility of the symbols"],
            min = 0, max = 1, step = 0.1,
            order = 2.2,
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
            name = TextIconMultipleM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. TextIconPassageRaidM:GetIconString() .. " " .. L["multiple points"],
            desc = L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"],
            order = 10.5,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
              if self.db.profile.graymultipleID then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["multiple points"], "|cff00ff00" .. L["is activated"]) else 
              if not self.db.profile.graymultipleID then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["multiple points"], "|cffff0000" ..  L["is deactivated"]) end end end,
            },
          showEnemyFaction = {
            disabled = function() return db.show["HideMapNote"] end,
            type = "toggle",
            name = TextIconHorde:GetIconString() ..  " " .. TextIconAlliance:GetIconString() .. " " .. L["enemy faction"],
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
        desc = L["Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"],
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
          showAzerothPassage = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconPassageRaidM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. L["Passages"],
            desc = L["Show symbols of passage to raids and dungeons on the Azeroth map"],
            order = 21.3,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
              if self.db.profile.showAzerothPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Passages"], "|cff00ff00" .. L["are shown"]) else 
              if not self.db.profile.showAzerothPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Passages"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothMultiple = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
            desc = L["Show symbols of multiple on the Azeroth map"],
            order = 21.4,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Multiple"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Multiple"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothPortals = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. L["Portals"],
            desc = L["Show symbols of portals on the Azeroth map"],
            order = 21.5,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothZeppelins = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
            desc = L["Show symbols of zeppelins on the Azeroth map"],
            order = 21.6,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zeppelins"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zeppelins"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothShips = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
            desc = L["Show symbols of ships on the Azeroth map"],
            order = 21.7,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Ships"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Ships"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothTransport = {
            disabled = function() return not db.show["DungeonMap"] end,
            type = "toggle",
            name = TextIconTravelL:GetIconString() .. " " .. TextIconTransportHelper:GetIconString() .. " " .. L["Transport"] .. "\n",
            desc = L["Show symbols of other transport possibilities on the Azeroth map"],
            order = 21.8,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothOldVanilla = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconVRaid:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
            desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
            order = 21.9,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cff00ff00" .. L["is activated"]) else 
                  if not self.db.profile.showAzerothOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
            },
          Azerothheader3 = {
            type = "header",
            name = L["Show all MapNotes for a specific map"],
            order = 23
            },
          showAzerothKalimdor = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
            desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 23.1,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kalimdor"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kalimdor"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothEasternKingdom = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
            desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 23.2,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Eastern Kingdom"], L["symbols"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Eastern Kingdom"], L["symbols"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothNorthrend = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
            desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 23.3,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Northrend"], L["symbols"],  "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Northrend"], L["symbols"],  "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothPandaria = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconPandaria:GetIconString() .. " " .. L["Pandaria"],
            desc = L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 23.4,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothPandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Pandaria"], L["symbols"],  "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothPandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Pandaria"], L["symbols"],  "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothBrokenIsles = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconLegion:GetIconString() .. " " .. L["Broken Isles"],
            desc = L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 23.5,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Broken Isles"], L["symbols"],  "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Broken Isles"], L["symbols"],  "|cffff0000" .. L["are hidden"])end end end,
            },  
          showAzerothZandalar = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconZandalar:GetIconString() .. " " .. L["Zandalar"],
            desc = L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 23.6,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zandalar"], L["symbols"],  "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zandalar"], L["symbols"],  "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothKulTiras = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconKT:GetIconString() .. " " .. L["Kul Tiras"],
            desc = L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 23.7,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showAzerothKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kul Tiras"], L["symbols"],  "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showAzerothKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kul Tiras"], L["symbols"],  "|cffff0000" .. L["are hidden"])end end end,
            },
          showAzerothDragonIsles = {
            disabled = function() return not db.show["Azeroth"] end,
            type = "toggle",
            name = TextIconDF:GetIconString() .. " " .. L["Dragon Isles"],
            desc = L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"],
            order = 23.8,
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
        desc = L["Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"],
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
          showContinentPassage = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconPassageRaidM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. L["Passages"],
            desc = L["Show symbols of passage to raids and dungeons on the continent map"],
            order = 30.6,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
              if self.db.profile.showContinentPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Passages"], "|cff00ff00" .. L["are shown"]) else 
              if not self.db.profile.showContinentPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Passages"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentMultiple = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
            desc = L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"],
            order = 30.7,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Multiple"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Multiple"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentPortals = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. L["Portals"],
            desc = L["Show symbols of portals on the continant map and minimap"],
            order = 30.8,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentZeppelins = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
            desc = L["Show symbols of zeppelins on the continant map and minimap"],
            order = 30.9,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Zeppelins"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Zeppelins"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentShips = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
            desc = L["Show symbols of ships on the continant map and minimap"],
            order = 31.0,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Ships"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Ships"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentTransport = {
            disabled = function() return not db.show["DungeonMap"] end,
            type = "toggle",
            name = TextIconTravelL:GetIconString() .. " " .. TextIconTransportHelper:GetIconString() .. " " .. L["Transport"] .. "\n",
            desc = L["Show symbols of other transport possibilities on the continent and minimap"],
            order = 31.1,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showContinentTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
            },
          showContinentOldVanilla = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconVRaid:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
            desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
            order = 31.2,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showContinentOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cff00ff00" .. L["is activated"]) else 
                  if not self.db.profile.showContinentOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
            },
          showContinentOgreWaygates = {
            disabled = function() return not db.show["Continent"] end,
            type = "toggle",
            name = TextIconOgreWaygate:GetIconString() .. " " .. L["Ogre Waygate"],
            desc = L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"],
            order = 31.3,
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
        desc = L["Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"],
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
            desc = L["Enables the display of all possible symbols on the dungeon map"],
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
            showDungeonTransport = {
            disabled = function() return not db.show["DungeonMap"] end,
            type = "toggle",
            name = TextIconTravelL:GetIconString() .. " " .. TextIconTransportHelper:GetIconString() .. " " .. L["Transport"] .. "\n",
            desc = L["Show symbols of other transport possibilities on the dungeon map"],
            order = 41.4,
            set = function(info, v) db[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                  if self.db.profile.showDungeonTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                  if not self.db.profile.showDungeonTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
            },
        }
      }
    }
  }
  
  HandyNotes:RegisterPluginDB("MapNotes", pluginHandler, options)
  self.db = LibStub("AceDB-3.0"):New(ADDON_NAME .. "DB", ns.defaults, true)
  db = self.db.profile
  Addon:RegisterEvent("PLAYER_ENTERING_WORLD") -- Check for any lockout changes when we zone
  LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("MNMiniMapButton", options)
  if db.show.HideMMB then 
    MNMMBIcon:Hide("MNMiniMapButton")
  end
end

function Addon:PopulateMinimap()
   --print('Populating minimap')
    local temp = { }
    for k,v in pairs(nodes) do
        if (minimap[k]) then
          --print('Minimap already exists')
          for a,b in pairs(minimap[k]) do -- Looks at the nodes we already have on the minimap and marks them down in a temp table
            temp[a] = true
          end
          for c,d in pairs(v) do -- Looks at the nodes in the normal node table and if they are also not in the temp table then add them to the minimap
              if (not temp[c] and not d.hideOnMinimap) then
                minimap[k][c] = d
	            end
            end
        end
    end
end


function Addon:PopulateTable()
  ns.nodes = nodes
  table.wipe(nodes)
  table.wipe(minimap)
  ns.LoadNodeInfo()
  ns.LoadLocationsInfo(self)
  --ns.LoadInstancesMapNodesInfo
end

function Addon:UpdateInstanceNames(node)
  local dungeonInfo = EJ_GetInstanceInfo
    local id = node.id 

      if (node.lfgid) then
        dungeonInfo = GetLFGDungeonInfo
        id = node.lfgid
      end

      if (type(id) == "table") then
        for i,v in pairs(node.id) do
          local name = dungeonInfo(v)
            self:UpdateAlter(v, name)
          if (node.name) then
            node.name = node.name .. "\n" .. name
          else
            node.name = name
          end
        end
      elseif (id) then
        node.name = dungeonInfo(id)
        self:UpdateAlter(id, node.name)
      end
end

function Addon:ProcessTable()
  table.wipe(lfgIDs)

  lfgIDs = {

  [63]=326, [64]=327, [66]=323, [65]=1150, [67]=1148, [68]=1147, [69]=1151, [70]=321, [71]=1149, [72]=316, [73]=314, [74]=318, [75]=329, [76]=334, [77]=340, [78]=362,
  [186]=439, [184]=1152, [185]=437, [187]=448,
  [226]=4, [227]=10, [229]=32, [231]=14, [233]=20, [234]=16, [236]=1458, [239]=22, [240]=1, [241]=24, [246]=472, [247]=178, [248]=188, [249]=1154, 
  [250]=1013, [252]=180, [253]=181, [254]=1011, [257]=191, [258]=192, [261]=185, [271]=1016, [272]=241, [273]=215, [274]=1017, [275]=1018, 
  [276]=256, [277]=213, [278]=1153, [279]=210, [280]=252, [281]=1019, [282]=1296, [283]=221, [284]=249, [285]=242, [286]=1020,
  [302]=1466, [303]=1464, [311]=473, [312]=1468, [313]=1469, [316]=474, [317]=532, [320]=834, [321]=1467, [324]=1465, [330]=534, [369]=766, [362]=634, [385]=1005,
  [457]=900, [476]=1010, [477]=897, 
  [536]=1006, [537]=1009, [547]=1008, [556]=1003, [558]=1007, [559]=1004,
  [669]=989,
  [707]=1044, [716]=1175, [721]=1473, [726]=1190, [727]=1192, [740]=1205, [741]=48, [742]=50, [743]=160, [744]=161, [745]=175, [746]=177, [747]=176, [748]=194, [749]=193, 
  [751]=196, [753]=240, [754]=227, [755]=238, [756]=1423, [757]=248, [758]=280, [759]=244, [760]=257, [761]=1502, [762]=1202, [767]=1207, [768]=1350, [777]=1209, [786]=1353,
  [800]=1319, [861]=1439, [875]=1527,
  [900]=1488 }

  function Addon:UpdateAlter(id, name)
    if (lfgIDs[id]) then
      local lfgIDs1, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, lfgIDs2 = GetLFGDungeonInfo(lfgIDs[id])
        if (lfgIDs2 and lfgIDs1 == name) then
      	  lfgIDs1 = lfgIDs2
        end

      if (lfgIDs1) then
        if (lfgIDs1 == name) then
        else
        lfgIDs[id] = nil
        lfgIDs[name] = lfgIDs1
        end
      end
    end
  end

  for i,v in pairs(nodes) do
    for j,u in pairs(v) do
      self:UpdateInstanceNames(u)
    end
  end

  for i,v in pairs(minimap) do
    for j,u in pairs(v) do
      if (not u.name) then
  	    self:UpdateInstanceNames(u)
      end
    end
  end
end

function Addon:FullUpdate()
  self:PopulateTable()
  self:PopulateMinimap()
  self:ProcessTable()
end