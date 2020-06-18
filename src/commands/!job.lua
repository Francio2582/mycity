chatCommands.job = {
	permissions = {'admin', 'mod', 'helper'},
	event = function(player, args)
		local job = args[1]
		local target = string.nick(args[2])
		if not players[target] then target = player
		if not jobs[job] then return end
		job_invite(job, target)
	end
}