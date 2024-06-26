util.require_natives(1651208000)

local notify_id = 0
local freeze = true
local function cleanupNotify()
	if notify_id ~= 0 then
		HUD.THEFEED_REMOVE_ITEM(notify_id)
	end
end
local function showColour(value)
	cleanupNotify()
	HUD._THEFEED_SET_NEXT_POST_BACKGROUND_COLOR(value)
	if freeze then
		HUD.THEFEED_FREEZE_NEXT_POST()
	end
	util.BEGIN_TEXT_COMMAND_THEFEED_POST("This is what " .. value .. " looks like")
	notify_id = HUD.END_TEXT_COMMAND_THEFEED_POST_TICKER(false, true)
end

menu.slider(menu.my_root(), "Notification Colour Slider", {"notifyslider"}, "", 0, 1000, 0, 1, showColour)

menu.click_slider(menu.my_root(), "Notification Colour Click Slider", {"notifyclickslider"}, "", 0, 1000, 0, 1, showColour)

menu.toggle(menu.my_root(), "Freeze Notification", {}, "", function(on)
	freeze = on
end, true)

util.on_stop(cleanupNotify)
util.create_tick_handler(function()
	return true
end)
