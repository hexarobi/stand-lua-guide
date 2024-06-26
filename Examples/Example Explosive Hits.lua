util.require_natives(1651208000)

local explosion_type const = 2 -- EXPLOSION_STICKYBOMB - https://wiki.rage.mp/index.php?title=Explosions

local coords_ptr = v3.new()
util.on_stop(function()
	memory.free(coords_ptr)
end)
util.create_tick_handler(function()
	local player_ped = PLAYER.PLAYER_PED_ID()
	if WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(player_ped, coords_ptr) then
		local x, y, z = v3.get(coords_ptr)
		FIRE.ADD_OWNED_EXPLOSION(player_ped, x, y, z, explosion_type, 1, true, false, 0)
	end
	return true
end)
