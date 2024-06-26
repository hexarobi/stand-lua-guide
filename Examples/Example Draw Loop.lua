util.require_natives(1651208000)

util.create_tick_handler(function()
	HUD.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("STRING")
	HUD.SET_TEXT_COLOUR(255, 0, 255, 255)
	HUD.ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME("Hello, world!")
	HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0, 0, 0)
	return true
end)
