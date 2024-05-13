local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

ocal Window = OrionLib:MakeWindow({Name = "AnDepZai Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "AnDepZai"})


  --//tab
local Tab = Window:MakeTab({
	Name = "Main Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
  --//Tab Main Farm
Tab:AddToggle({
	Name = "Auto Tap (Click)",
	Default = false,
	Callback = function(Value)
	_G.autotap = Value
	autotap()	
	end    
})
function autotap()    
    while _G.autotap == true do
        game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
        wait(0.000000000000000000000000000000000000000000000000000000001)
    end
end
