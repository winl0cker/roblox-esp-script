local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "ESP Tutorial", HidePremium = false, SaveConfig = true, ConfigFolder = "Cfg"})

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = MainTab:AddSection({
	Name = "Lobby"
})

MainTab:AddTextbox({
	Name = "Hello!",
	Default = "You are downloaded my script! Subscribe to TG: @sinisterdynasty",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})

local Section = MainTab:AddSection({
	Name = "Function"
})

MainTab:AddToggle({
	Name = "Chams",
	Default = false,
	Callback = function(Value)
		local function ApplyESP(v) 
  local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
   if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then 
       v.Character.Humanoid.NameDisplayDistance = 9e9 
       v.Character.Humanoid.NameOcclusion = "NoOcclusion" 
       v.Character.Humanoid.HealthDisplayDistance = 9e9 
       v.Character.Humanoid.HealthDisplayType = "AlwaysOn" 
       v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed 
   end 
end 
for i,v in pairs(game.Players:GetPlayers()) do 
   ApplyESP(v) 
   v.CharacterAdded:Connect(function() 
       task.wait(0.33) 
       ApplyESP(v) 
   end) 
end 
 
game.Players.PlayerAdded:Connect(function(v) 
   ApplyESP(v) 
   v.CharacterAdded:Connect(function() 
       task.wait(0.33) 
       ApplyESP(v) 
   end) 
end)
	end    
})

MainTab:AddToggle({
	Name = "Bigger Speed",
	Default = false,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

OrionLib:Init()
