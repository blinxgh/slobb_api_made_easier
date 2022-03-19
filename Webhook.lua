local url = 'https://discord.com/api/webhooks/954748872922636298/K7R9p9aWdRtDWBGH5uiPhca0gIgGU8cvXtXT04prG0_OKvA3W0rURoMj6S0GZkT0SRxB'
local http = game:GetService("HttpService")

game.Players.PlayerAdded:Connect(function(plr)
	local data = {
		['embeds'] = {{
			['title'] = "**Player's Profile**",
			['description'] = "> script was just executed in game id: " .. game.GameId .. " by user: " .. plr.DisplayName,
			['url'] = "https://roblox.com/users/" .. plr.UserId .. "/profile",
			["color"] = 7888859
		}}
	}

	local finaldata = http:JSONEncode(data)
	http:PostAsync(url, finaldata)
end)
