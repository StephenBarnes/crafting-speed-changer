-- defines.events.on_pre_player_crafted_item

function divset(a, b, c)
    a[b] = a[b] / c
end

script.on_event(defines.events.on_player_created, function(ev)
  log("player created")
  local force = game.players[ev.player_index].force

  force["manual_crafting_speed_modifier"] = ((force["manual_crafting_speed_modifier"] + 1) / settings.startup["crafting-speed-changer-handcrafting"].value) - 1
  -- https://lua-api.factorio.com/latest/LuaForce.html#LuaForce.manual_crafting_speed_modifier

  divset(force, "laboratory_speed_modifier", settings.startup["crafting-speed-changer-lab"].value)
end)
