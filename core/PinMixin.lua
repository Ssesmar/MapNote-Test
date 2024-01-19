local ADDON_NAME, ns = ...

local API = ns.API
MapCanvasPinMixin = MapCanvasPinMixin

-- Create our pin mixin.
local PinMixin = API:createFromMixins(API.MapCanvasPinMixin)

-- We need to assign our pin mixin to global template, or Blizzard_MapCanvas doesn't know, what to use.
_G[ADDON_NAME .. 'PinMixin'] = PinMixin

---
--- This event is fired, when our pin mixin is loaded.
---
function PinMixin:OnLoad()
  -- We need to change frame level, because with default one, icons are not seen.
  --self:UseFrameLevelType('PIN_FRAME_LEVEL_MAP_HIGHLIGHT')
  self:UseFrameLevelType('PIN_FRAME_LEVEL_AREA_POI')
end