function divset(a, b, c)
    a[b] = a[b] / c
end

for k,v in pairs(data.raw["assembling-machine"]) do
  log("Adjusting crafting time: "..k)
  divset(v, "crafting_speed", settings.startup["crafting-speed-changer-assembler"].value)
end

for k,v in pairs(data.raw["furnace"]) do
  log("Adjusting crafting time: "..k)
  divset(v, "crafting_speed", settings.startup["crafting-speed-changer-furnace"].value)
end

--[[
TODO belts?
]]
-- centify("speed", data.raw["transport-belt"]["transport-belt"])
-- centify("speed", data.raw["transport-belt"]["fast-transport-belt"])
-- centify("speed", data.raw["transport-belt"]["express-transport-belt"])

--[[
TODO miners?
]]
-- centify("?", data.raw["mining-drill"]["burner-mining-drill"])
-- centify("?", data.raw["mining-drill"]["electric-mining-drill"])
-- centify("?", data.raw["offshore-pump"]["offshore-pump"])
-- centify("?", data.raw["oil-pump"]["oil-pump"]) -- unsure on name here
