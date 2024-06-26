player_menu_actions = function(player_id)
    menu.divider(menu.player_root(player_id), "My Menu")

    menu.action(menu.player_root(player_id), "My Action", {"myaction"}, "", function()
        util.toast("My action")
    end, nil, nil, COMMANDPERM_FRIENDLY)
end

players.add_command_hook(player_menu_actions)
