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
