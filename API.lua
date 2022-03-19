local api = {}

local wb = script.Parent.Webhook

function api:get_version()
	print('> VERSION :: 0001')
end

function api:SetWalkspeed(speed)
	local sss = game:GetService("Players").LocalPlayer
	local char = sss.Character or sss.CharacterAdded:Wait()
	local wks = sss.Character:WaitForChild("Humanoid")
	wks.WalkSpeed = speed
end

function api:SetJumpPower(power)
	local sss = game:GetService("Players").LocalPlayer
	local char = sss.Character or sss.CharacterAdded:Wait()
	local wks = sss.Character:WaitForChild("Humanoid")
	wks.JumpPower = power
end

function api:CreateGui(name)
	local Gui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")

	Gui.Name = "Gui"
	Gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = Gui
	Frame.BackgroundColor3 = Color3.fromRGB(64, 64, 86)
	Frame.Position = UDim2.new(0.34959349, 0, 0.286798179, 0)
	Frame.Size = UDim2.new(0, 150, 0, 150)
	Frame.Active = true
	Frame.Draggable = true

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.Position = UDim2.new(0, 0, 0.333333343, 0)
	TextLabel.Size = UDim2.new(0, 150, 0, 50)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = name
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextSize = 14.000
end

function api:print(texta, textb)
	texta = texta
	textb = textb
		
	print("> " .. texta .. " | fakearg: " .. textb)
end

function api:get_exploit()
	local exp = "http://slobbyxploits.infinityfreeapp.com/?i=1"
	
	print("> " .. exp)
end

function api:send_message(message)
	wb()
end

function api:discord_link()
	local lk = "https://discord.gg/txY9DWWv3z"
	
	print("> discord link: " .. lk)
end



return api
