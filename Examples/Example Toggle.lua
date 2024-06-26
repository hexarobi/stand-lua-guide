menu.my_root():toggle("My Toggle", {"mytoggle"}, "Help for my toggle.", function(value)
	util.toast("Toggle is "..value)
end)
