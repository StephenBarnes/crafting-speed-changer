function centify(prop,tab)
  tab[prop]=tab[prop]/100
end

--[[
assemblers
]]
centify("crafting_speed", data.raw["assembling-machine"]["assembling-machine-1"])
centify("crafting_speed", data.raw["assembling-machine"]["assembling-machine-2"])
centify("crafting_speed", data.raw["assembling-machine"]["assembling-machine-3"])
centify("crafting_speed", data.raw["assembling-machine"]["chemical-plant"])
centify("crafting_speed", data.raw["assembling-machine"]["oil-refinery"])
centify("crafting_speed", data.raw["rocket-silo"]["rocket-silo"])
--[[
furnaces
]]
centify("crafting_speed", data.raw["furnace"]["stone-furnace"])
centify("crafting_speed", data.raw["furnace"]["steel-furnace"])
centify("crafting_speed", data.raw["furnace"]["electric-furnace"])

--[[
belts: probably not
]]
-- centify("speed", data.raw["transport-belt"]["transport-belt"])
-- centify("speed", data.raw["transport-belt"]["fast-transport-belt"])
-- centify("speed", data.raw["transport-belt"]["express-transport-belt"])

--[[
miners: probably not
]]
-- centify("?", data.raw["mining-drill"]["burner-mining-drill"])
-- centify("?", data.raw["mining-drill"]["electric-mining-drill"])
-- centify("?", data.raw["offshore-pump"]["offshore-pump"])
-- centify("?", data.raw["oil-pump"]["oil-pump"]) -- unsure on name here
