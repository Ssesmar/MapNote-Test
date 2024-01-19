local ADDON_NAME, ns = ...

local Pins = ns.Pins
local Map = ns.Map
local points = ns.points

---
--- Template for our custom pins. We need to define frame pin template.
---
--- @see DataProviderMixin.xml
---
local PinTemplate = ADDON_NAME .. 'PinTemplate'

-- Create our data provider.
local DataProviderMixin = Pins:createFromMixins(Pins.MapCanvasDataProviderMixin)

---
--- Removes all our custom pins from map.
---
function DataProviderMixin:RemoveAllData()
  local map = self:GetMap()
  if not map then
    return
  end

  -- ns removes all pins from our template. It also registers our pin template
  -- to world map canvas if it doesn't exists.
  map:RemoveAllPinsByTemplate(PinTemplate)
end
ns.DataProviderMixin = DataProviderMixin
