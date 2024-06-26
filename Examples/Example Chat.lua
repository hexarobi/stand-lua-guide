chat.on_message(function(packet_sender, message_sender, message_text, is_team_chat)
	local divider = " [ALL] "
	if is_team_chat then
		divider = " [TEAM] "
	end
	util.toast(players.get_name(packet_sender) .. divider .. message_text)
end)

chat.send_message(
	"Hello, world!",
	true, -- in team chat
	true, -- add to local history
	true  -- networked
)

util.create_tick_handler(function()
	if chat.get_draft() == "HW!" then
		chat.remove_from_draft(3)
		chat.add_to_draft("Hello, world!")
	end
	return true
end)
