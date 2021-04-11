function centify(prop,tab)
  tab[prop]=tab[prop]/100
end

for k,v in pairs(data.raw["assembling-machine"]) do
  log("centifying "..k)
  centify("crafting_speed", v)
end
for k,v in pairs(data.raw["furnace"]) do
  log("centifying "..k)
  centify("crafting_speed", v)
end

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
