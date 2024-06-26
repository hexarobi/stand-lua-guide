local addr = memory.scan("4C 8D 05 ? ? ? ? 48 8D 15 ? ? ? ? 48 8B C8 E8 ? ? ? ? 48 8D 15 ? ? ? ? 48 8D 4C 24 20 E8")
if addr == 0 then
	util.toast("pattern scan failed")
else
	util.toast(memory.read_string(memory.rip(addr + 3)))
end
