util.require_natives(1651208000)

util.create_tick_handler(function()
	local veh = entities.get_user_vehicle_as_handle() -- current vehicle, last driven vehicle, or 0
	if veh then
		GRAPHICS.REMOVE_DECALS_FROM_VEHICLE(veh)
	end
	return true
end)
