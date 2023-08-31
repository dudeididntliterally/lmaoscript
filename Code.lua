repeat wait() until game:IsLoaded()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ragdoll Engine (VC)", HidePremium = true, IntroText = "Get Rekt", SaveConfig = false, ConfigFolder = "lmaooo"})
local Home = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local HomeSection = Home:AddSection({
	Name = "Main"
})
local Players = Window:MakeTab({
	Name = "Players",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local PlayersSection = Players:AddSection({
	Name = "Players"
})
local Extra = Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local ExtraSection = Extra:AddSection({
	Name = "Extra"
})
wait()
repeat wait() until game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
if game.Players.LocalPlayer.Character ~= nil then
game.Players.LocalPlayer.Character:WaitForChild("Local Ragdoll").Enabled = true
end
wait()
local cmdp = game:GetService("Players")
local cmdlp = cmdp.LocalPlayer
local player = cmdlp

function findplr(args, tbl)
	if tbl == nil then
		local tbl = cmdp:GetPlayers()
		if args == "me" then
			return cmdlp
		elseif args == "random" then 
			return tbl[math.random(1,#tbl)]
		elseif args == "new" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.AccountAge < 30 and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "old" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.AccountAge > 30 and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "bacon" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Character:FindFirstChild("Pal Hair") or v.Character:FindFirstChild("Kate Hair") and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "friend" then
			local vAges = {}
			for _,v in pairs(tbl) do
				if v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "notfriend" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if not v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "ally" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Team == cmdlp.Team and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "enemy" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Team ~= cmdlp.Team then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "near" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v ~= cmdlp then
					local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
					if math < 30 then
						vAges[#vAges+1] = v
					end
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "far" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v ~= cmdlp then
					local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
					if math > 30 then
						vAges[#vAges+1] = v
					end
				end
			end
			return vAges[math.random(1,#vAges)]
		else 
			for _,v in pairs(tbl) do
				if v.Name:lower():find(args:lower()) or v.DisplayName:lower():find(args:lower()) then
					return v
				end
			end
		end
	else
		for _, plr in pairs(tbl) do
			if plr.UserName:lower():find(args:lower()) or plr.DisplayName:lower():find(args:lower()) then
				return plr
			end
		end
	end
end
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
wait()
Players:AddToggle({
Name = "Anti Ragdoll",
Default = false,
Callback = function(oo)
if oo then
repeat wait() until game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Local Ragdoll") and game.Players.LocalPlayer.Character:FindFirstChild("RagdollClient") and game.Players.LocalPlayer.Character:FindFirstChild("State Handler")
if game.Players.LocalPlayer.Character ~= nil then
game.Players.LocalPlayer.Character["Local Ragdoll"].Disabled = true
end
else
game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled = true
end
end})

Extra:AddButton({
Name = "Adonis FE",
Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/MQ3wc7Zq", true))()
end})

Home:AddToggle({
Name = "Spam Mines",
Default = false,
Callback = function(mines)
if mines then
getgenv().Mines = true
while getgenv().Mines == true do
wait()
for _,v in pairs(workspace.Minefield.Mines:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 1)
end
end
end
else
getgenv().Mines = false
end
end})

Players:AddTextbox({
Name = "Make player Invisible",
Default = "Enter Username",
TextDisappear = true,
Callback = function(targ)
local Potion = game:FindFirstChild("OddPotion", true)

if game.Players[targ].Character:WaitForChild('Humanoid').RigType == Enum.HumanoidRigType.R6 then
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Head"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Torso"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("HumanoidRootPart"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Left Leg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Right Leg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Left Arm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Right Arm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
end

if game.Players[targ].Character:WaitForChild('Humanoid').RigType == Enum.HumanoidRigType.R15 then
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Head"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftFoot"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightFoot"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftHand"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightHand"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftLowerArm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightLowerArm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LowerTorso"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("UpperTorso"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightUpperLeg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftUpperArm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightUpperArm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftUpperLeg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("HumanoidRootPart"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftLowerLeg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightLowerLeg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("UpperTorso"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
end
end})

Players:AddTextbox({
Name = "Make Player Visible",
Default = "Enter Username",
TextDisappear = true,
Callback = function(targ)
local Potion = game:FindFirstChild("OddPotion", true)

if game.Players[targ].Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R6 then
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Head"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Torso"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("HumanoidRootPart"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Left Leg"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Right Leg"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Left Arm"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Right Arm"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
end

if game.Players[targ].Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Head"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftFoot"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightFoot"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftHand"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightHand"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftLowerArm"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightLowerArm"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LowerTorso"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("UpperTorso"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightUpperLeg"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftUpperArm"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightUpperArm"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftUpperLeg"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("HumanoidRootPart"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftLowerLeg"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightLowerLeg"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("UpperTorso"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
end
end})

Players:AddTextbox({
Name = "Loop Invisible Player",
Default = "Enter username",
TextDisappear = true,
Callback = function(targ)
getgenv().Invis = true
while getgenv().Invis == true do
wait()
local Potion = game:FindFirstChild("OddPotion", true)
repeat wait() until game.Players[targ].Character
if game.Players[targ].Character ~= nil then
if game.Players[targ].Character:WaitForChild('Humanoid').RigType == Enum.HumanoidRigType.R6 then
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Head"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Torso"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("HumanoidRootPart"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Left Leg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Right Leg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Left Arm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Right Arm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
end

if game.Players[targ].Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Head"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftFoot"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightFoot"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftHand"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightHand"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftLowerArm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightLowerArm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LowerTorso"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("UpperTorso"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightUpperLeg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftUpperArm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightUpperArm"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftUpperLeg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("HumanoidRootPart"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("LeftLowerLeg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("RightLowerLeg"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
wait()
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("UpperTorso"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
end
end
end
game.Players.PlayerRemoving:Connect(function(player)
if player.Name == targ then
print("Player Was Removed Or Left- , Sent Notification as well.")
wait()
getgenv().Invis = false
wait()
getgenv().Invis = false
wait()
getgenv().Invis = false
wait()
getgenv().Invis = false
wait()
getgenv().Invis = false
end
end)
end})

Players:AddButton({
Name = "Stop Making Player Invisible",
Callback = function()
getgenv().Invis = false
wait()
getgenv().Invis = false
wait()
getgenv().Invis = false
wait()
getgenv().Invis = false
wait()
getgenv().Invis = false
wait()
getgenv().Invis = false
end})

Extra:AddTextbox({
Name = "Headless Player",
Default = "Enter username",
TextDisappear = true,
Callback = function(plrr)
local Potion = game:FindFirstChild("OddPotion", true)
local targ = plrr
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Head"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
end})

Extra:AddTextbox({
Name = "Un-Headless Player",
Default = "Enter username",
TextDisappear = true,
Callback = function(plrr)
local Potion = game:FindFirstChild("OddPotion", true)
local targ = plrr
local args = {
    [1] = game:GetService("Players"):WaitForChild(targ).Character:FindFirstChild("Head"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
end})

Extra:AddButton({
Name = "Headless all players",
Callback = function()
local Potion = game:FindFirstChild("OddPotion", true)
for i, v in pairs(game.Players:GetPlayers()) do
local args = {
    [1] = v.Character:FindFirstChild("Head"),
    [2] = 1
}

Potion.TransEvent:FireServer(unpack(args))
end
end})

Extra:AddButton({
Name = "Un-Headless all players",
Callback = function()
local Potion = game:FindFirstChild("OddPotion", true)
for i, v in pairs(game.Players:GetPlayers()) do
local args = {
    [1] = v.Character:FindFirstChild("Head"),
    [2] = 0
}

Potion.TransEvent:FireServer(unpack(args))
end
end})

Home:AddToggle({
Name = "Seizure Floor/Terrain",
Default = false,
Callback = function(flick)
if flick then
getgenv().Flick = true
while getgenv().Flick == true do
wait()
local Potion = game:FindFirstChild("OddPotion", true)
for i, v in pairs(game.Workspace:GetDescendants()) do
if v.Name == "Baseplate" and v:IsA("Part") then
    Potion.TransEvent:FireServer(v, 1)
	wait()
	Potion.TransEvent:FireServer(v, 0)
end
end
end
else
getgenv().Flick = false
wait()
local Potion = game:FindFirstChild("OddPotion", true)
Potion.TransEvent:FireServer(v, 0)
wait()
Potion.TransEvent:FireServer(v, 0)
end
end})

Home:AddButton({
Name = "Invisible Tool",
Callback = function()
local Player = game.Players.LocalPlayer
local Tool = Instance.new("Tool")

local Mouse = Player:GetMouse()

Tool.Name = "Invisible"
Tool.Parent = Player.Backpack
Tool.RequiresHandle = false

Tool.Activated:Connect(function()
   if Mouse.Target then
       local Potion = game.Players:FindFirstChild("OddPotion", true) or workspace:FindFirstChild("OddPotion", true)
       if Potion then
           if Mouse.Target.Transparency and Mouse.Target.Transparency < 1 then
               Potion.TransEvent:FireServer(Mouse.Target, 1)
           elseif Mouse.Target.Transparency and Mouse.Target.Transparency > 0 then
               Potion.TransEvent:FireServer(Mouse.Target, 0)
           end
       end
   end
end)
end})

Home:AddButton({
Name = "Make Parts Clear",
Callback = function()
local Potion = game:FindFirstChild("OddPotion", true)
for i,v in pairs(game.Workspace:GetDescendants()) do
	if v:IsA("Part") or v:IsA("MeshPart") then
    Potion.TransEvent:FireServer(v, 0.77)
end
end
end})

Home:AddButton({
Name = "Get Swords",
Callback = function()
for i = 1, 10 do
fireclickdetector(game:GetService("Workspace").renamedHandle.ClickDetector)
end
end})

Home:AddButton({
Name = "Invisible Map",
Callback = function()
local Potion = game:FindFirstChild("OddPotion", true)
for i,v in pairs(game.Workspace:GetDescendants()) do
    Potion.TransEvent:FireServer(v, 1)
end
end})

Home:AddButton({
Name = "Non-Invisible Map",
Callback = function()
local Potion = game:FindFirstChild("OddPotion", true)
for i,v in pairs(game.Workspace:GetDescendants()) do
    Potion.TransEvent:FireServer(v, 0)
end
end})

Home:AddButton({
Name = "Click Fire Alarm",
Callback = function()
for i = 1, 5000 do
fireclickdetector(game:GetService("Workspace").FireAlarm.ClickDetector)
end
end})
