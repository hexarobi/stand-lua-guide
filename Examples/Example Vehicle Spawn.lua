util.require_natives(1651208000)

local function spawn_vehicle(model_name)
	local hash = util.joaat(model_name)
	if STREAMING.IS_MODEL_A_VEHICLE(hash) then
		STREAMING.REQUEST_MODEL(hash)
		while not STREAMING.HAS_MODEL_LOADED(hash) do
			util.yield()
		end
		local veh = entities.create_vehicle(hash, ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true), CAM.GET_FINAL_RENDERED_CAM_ROT(2).z)
		STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)
	else
		util.toast(model_name .. " is not a valid vehicle model name :/")
	end
end
menu.action(menu.my_root(), "Spawn Ruffian", {"exampleruffian"}, "gives you a ruffian", function()
	spawn_vehicle("ruffian")
end)
local oppressor_list = menu.list(menu.my_root(), "Oppressor")
menu.action(oppressor_list, "Spawn Oppressor", {"exampleoppressor"}, "", function()
	spawn_vehicle("oppressor")
end)
menu.action(oppressor_list, "Spawn Oppressor Mk II", {}, "gives you a broomstick", function()
	spawn_vehicle("oppressor2")
end)
menu.action(menu.my_root(), "Model Name Spawn", {"luaspawn"}, "", function(click_type)
	menu.show_command_box_click_based(click_type, "luaspawn ")
end, function(arg)
	spawn_vehicle(arg)
end, "luaspawn [model]")

util.create_tick_handler(function()
	return true
end)
