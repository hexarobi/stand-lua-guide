util.toast("3...")
util.yield(1000)
util.toast("2...")
util.yield(1000)
util.toast("1...")
util.create_thread(function()
	util.yield(1000)
	util.toast("Boom!!1")
end)
