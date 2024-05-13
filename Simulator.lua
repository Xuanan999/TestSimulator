local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

ocal Window = OrionLib:MakeWindow({Name = "AnDepZai Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "AnDepZai"})

local Tab = Window:MakeTab({
	Name = "Main Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
  --//Tab Main Farm
Tab:AddToggle({
	Name = "Auto Bully",
	Default = false,
	Callback = function(Value)
	_G.AuToBulon = Value
	end    
})

while _G.AuToBulon and task.wait() do
local args = {
    [1] = "Bully",
    [2] = workspace:WaitForChild("GameObjects"):WaitForChild("ArmWrestling"):WaitForChild("1"):WaitForChild("NPC"):WaitForChild("Bully"):WaitForChild("Table"),
    [3] = "1"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ArmWrestleService"):WaitForChild("RE"):WaitForChild("onEnterNPCTable"):FireServer(unpack(args))

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ArmWrestleService"):WaitForChild("RE"):WaitForChild("onClickRequest"):FireServer()
end
