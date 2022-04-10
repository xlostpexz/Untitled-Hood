local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Winnable Hub | Untitled Hood | Give Money", 5013109572)
 
 
local page = venyx:addPage("Give Money", 5012544693)
local farm = page:addSection("You Need to Have Revolver")
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

mons = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(mons,v.Name)
end

farm:addButton("Double Barrel Buy ลุกซองคู่", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-555.402039, 40.1311607, -1721.48181, 1, 0, 0, 0, 1, 0, 0, 0, 1)    
end)

farm:addButton("Revolver Buy ลูกโม่", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-313.566406, 19.6537323, -1178.69446, -0.999712467, 0, 0.0239957981, 0, 1, 0, -0.0239957981, 0, -0.999712467)
end)

farm:addButton("Give Money Inf", function()
local player = Select

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]", 
        Ammo = {Value = math.huge*9e9},
        MaxAmmo = {Value = 0}
    }
)
task.wait(2)


game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Ammo = game:GetService("Players")[player].DataFolder.Currency,
        MaxAmmo = {Value = 9999999999999 * 9} 
    }
)
end)

farm:addButton("Give Money 0", function()
local player = Select

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]", 
        Ammo = {Value = math.huge*9e9},
        MaxAmmo = {Value = 0}
    }
)
task.wait(2)


game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Ammo = game:GetService("Players")[player].DataFolder.Currency,
        MaxAmmo = {Value = 0 * 9} 
    }
)
end)

farm:addButton("Give Money -999t", function()
local player = Select

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]", 
        Ammo = {Value = math.huge*9e9},
        MaxAmmo = {Value = 0}
    }
)
task.wait(2)


game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Ammo = game:GetService("Players")[player].DataFolder.Currency,
        MaxAmmo = {Value = -999999999999999 * 9} 
    }
)
end)

farm:addDropdown("Select Players", mons, function(abc)
    Select = abc
end)

farm:addButton("Refresh", function()
        table.clear(mons)
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(mons,v.Name)
end
end)

farm:addButton("ESP", function()
       for i,v in pairs(game.Players:GetChildren()) do
            if not v.Character.Head:FindFirstChild("ESP") then
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Parent = v.Character.Head
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.Name = "ESP"
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1.000
                BillboardGui.Size = UDim2.new(0, 200, 0, 20)
                BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.Size = UDim2.new(0, 100, 0, 20)
                TextLabel.Font = Enum.Font.GothamBold
                TextLabel.Text = v.Name
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextScaled = true
                TextLabel.TextSize = 3.000
                TextLabel.TextStrokeTransparency = 0.000
                TextLabel.TextWrapped = true
    end
end

end)

farm:addToggle("Spectate Players", " ", function(bool)
                                    Sp = bool
                                    local plr1 = game.Players.LocalPlayer.Character.Humanoid
                                    local plr2 = game.Players:FindFirstChild(Select)
                                    repeat wait(.1)
                                        game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
                                    until Sp == false 
                                    game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)

farm:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)

local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(60, 0, 200),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(241, 146, 255)
}
 
 
for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end
 
-- load
venyx:SelectPage(venyx.pages[1], true)

