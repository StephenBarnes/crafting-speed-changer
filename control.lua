-- defines.events.on_pre_player_crafted_item

function slow_modifier(factor)
  -- 1/factor=1+x
  -- https://lua-api.factorio.com/latest/LuaForce.html#LuaForce.manual_crafting_speed_modifier
  return -1 + 1/factor
end

script.on_event(defines.events.on_player_created, function(ev)
  log("player created")
  local force = game.players[ev.player_index].force
  force.manual_crafting_speed_modifier = slow_modifier(100)
  force.laboratory_speed_modifier = slow_modifier(100)
end)
