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
		print(Value)
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
