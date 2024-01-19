local ADDON_NAME, ns = ...

local Pins = {}

---
--- This mixin provides worldmap with data, we supply our pins (paths and pois) to map via this.
---
--- @link https://www.townlong-yak.com/framexml/ptr/Blizzard_MapCanvas/MapCanvas_DataProviderBase.lua
---
Pins.MapCanvasDataProviderMixin = MapCanvasDataProviderMixin

---
--- This mixin handles displaying and styling for pins (paths and pois).
---
--- @link https://www.townlong-yak.com/framexml/ptr/Blizzard_MapCanvas/MapCanvas_DataProviderBase.lua
---
Pins.MapCanvasPinMixin = MapCanvasPinMixin

ns.Pins = Pins