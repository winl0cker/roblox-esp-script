local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "vk.com/offsethook", HidePremium = false, SaveConfig = true, ConfigFolder = "Cfg"})
local Tab = Window:MakeTab({
	Name = "Main",
	PremiumOnly = false
})
OrionLib:MakeNotification({
	Name = "Welcome!",
	Content = "Script was made by @offsethook",
	Image = "rbxassetid://4483345998",
	Time = 10
})
Tab:AddButton({
	Name = "Boxes",
	Callback = function()
      		Esp:

while wait(0.5) do
          for i, favChar in ipairs(workspace:GetDescendants()) do
               if favChar:FindFirstChild("Humanoid") then
                    if not favChar:FindFirstChild("Boxes") then
                    if favChar ~= game.Players.LocalPlayer.Character then

local ObjC = Instance.new("BoxHandleAdornment", favChar)

ObjC.Adornee = favChar
ObjC.ZIndex = 0
ObjC.Size = Vector3.new(4, 5, 1)
ObjC.Transparency = 0.65
ObjC.Color3 = Color3.fromRGB(255,48,48)
ObjC.AlwaysOnTop = true
ObjC.name = "Boxes"
end
end
end
  	end    
})

Tab:AddButton({
	Name = "Chams",
	Callback = function()
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

Tab:AddToggle({
	Name = "Idk",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})
Tab:AddColorpicker({
	Name = "Colorpicker",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		print(Value)
	end	  
})

Tab:AddLabel("Join our telegram channel: t.me/sinisterdynasty")

OrionLib:Init()
