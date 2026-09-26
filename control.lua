local enable_show_entity_info = function(event)
  local player = game.players[event.player_index]
  -- LuaPlayer properties are writable at runtime; luacheck only sees a field of
  -- the read-only global `game`.
  player.game_view_settings.show_entity_info = true -- luacheck: ignore 122
end

script.on_event(defines.events.on_player_created, enable_show_entity_info)
script.on_event(defines.events.on_cutscene_cancelled, enable_show_entity_info)
