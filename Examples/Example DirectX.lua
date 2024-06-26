local rect_colour = {
	["r"] = 1.0,
	["g"] = 0.0,
	["b"] = 1.0,
	["a"] = 1.0
}

local c = menu.colour(menu.my_root(), "Rect Colour", {"dxrect"}, "", rect_colour, true, function(colour)
	rect_colour = colour
end)
menu.rainbow(c)

local heart_tex = directx.create_texture(filesystem.resources_dir() .. "Example DirectX - Heart.png")
util.create_tick_handler(function()
	directx.draw_texture(
		heart_tex,			-- id
		0.05,				-- sizeX
		0.05,				-- sizeY
		0.5,				-- centerX
		0.5,				-- centerY
		0.5,				-- posX
		0.5,				-- posY
		0.0,				-- rotation
		{					-- colour
			["r"] = 1.0,
			["g"] = 1.0,
			["b"] = 1.0,
			["a"] = 1.0
		}
	)
	directx.draw_text(
		0.0,				-- x
		0.0,				-- y
		"Hello, world!",	-- text
		ALIGN_TOP_LEFT,		-- alignment
		1.0,				-- scale
		{					-- colour
			["r"] = 1.0,
			["g"] = 0.0,
			["b"] = 1.0,
			["a"] = 1.0
		},
		false				-- force_in_bounds (optional, defaults to false)
	)
	directx.draw_rect(
		0.0,				-- x
		0.5,				-- y
		0.1,				-- width
		0.1,				-- height
		rect_colour			-- colour
	)
	directx.draw_line(
		0.1,				-- x1
		0.1,				-- y1
		0.2,				-- x2
		0.2,				-- y2
		{					-- colour
			["r"] = 1.0,
			["g"] = 0.0,
			["b"] = 1.0,
			["a"] = 1.0
		}
	)
	directx.draw_line(
		0.2,				-- x1
		0.1,				-- y1
		0.1,				-- x2
		0.2,				-- y2
		{					-- colour1
			["r"] = 1.0,
			["g"] = 0.0,
			["b"] = 1.0,
			["a"] = 1.0
		},
		{					-- colour2
			["r"] = 1.0,
			["g"] = 1.0,
			["b"] = 1.0,
			["a"] = 1.0
		}
	)
	directx.draw_triangle_client( -- using client coordinate space instead of hud coordinate space
		1.0, -- x1
		1.0, -- y1
		0.9, -- x2
		1.0, -- y2
		1.0, -- x3
		0.9, -- y3
		-- alternative way of passing a colour:
		1.0, -- r
		0.0, -- g
		1.0, -- b
		1.0  -- a
	)

	return true
end)
