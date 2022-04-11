local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Winnable Hub | Untitled Hood | Give Money", 5013109572)
 
 
local page = venyx:addPage("Give Money", 5012544693)
local farm = page:addSection("You Need to Have Revolver")
local page = venyx:addPage("Teleport", 5012544693)
local tp = page:addSection("Ez Teleport")
local page = venyx:addPage("Auto Drop", 5012544693)
local drop = page:addSection("Ez Drop")
local page = venyx:addPage("Misc", 5012544693)
local misc = page:addSection("Other")
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

mons = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(mons,v.Name)
end

misc:addButton("Discord", function()
    setclipboard("https://discord.gg/t97DRzvVgN")
end)

misc:addButton("Toxic Music 18+", function()

local args = {
    [1] = "Boombox",
    [2] = "6963097644"
}

game:GetService("ReplicatedStorage"):FindFirstChild(".gg/untitledhood"):FireServer(unpack(args))
    
end)

drop:addToggle("Auto Drop 100K","" , function(abcd)
    _G.AutoDrop = abcd
end)

drop:addButton("Fake Food Store [Secert]", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-582.724976, 9.02821827, -732.723633, -0.371271759, 2.42228992e-09, 0.928524256, 4.95081887e-09, 1, -6.29160335e-10, -0.928524256, 4.36336611e-09, -0.371271759)
end)

drop:addButton("Delete Part At Secert Store", function()
    game:GetService("Workspace").MAP.Map.SHOP.Part:Destroy()
end)

tp:addButton("Lettuce ผักตัวเล็ก", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-336.881897, 46.3207207, -1321.52344, -0.0857519582, 3.7355246e-08, 0.996316493, 5.38830278e-08, 1, -3.28556951e-08, -0.996316493, 5.08671079e-08, -0.0857519582)
end)

tp:addButton("Mid Map กลางแมพ", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-155.271851, 21.0830898, -901.660828, 0.65961647, -7.47884528e-08, -0.751602352, 1.44217225e-08, 1, -8.68486509e-08, 0.751602352, 4.64474006e-08, 0.65961647)
end)

tp:addButton("Helicopter For AFK", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120.76371, 128.117004, -1280.0918, -0.772315145, 2.55131916e-08, 0.635239542, 9.35894118e-09, 1, -2.87846369e-08, -0.635239542, -1.62856431e-08, -0.772315145)
end)

tp:addButton("High Armor เกราะใหญ่", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(240.015671, 27.6787167, -1047.90271, -0.760237992, -7.32069623e-08, 0.649644613, -2.50909178e-08, 1, 8.33253964e-08, -0.649644613, 4.7046953e-08, -0.760237992)
end)

tp:addButton("Food Store ร้านอาหาร", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-491.758972, 9.04687405, -1151.94543, -0.254918456, -5.60639428e-08, -0.966962576, 3.29896608e-08, 1, -6.6676435e-08, 0.966962576, -4.88968226e-08, -0.254918456)
end)

tp:addButton("Double Barrel Buy ลุกซองคู่", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-555.402039, 40.1311607, -1721.48181, 1, 0, 0, 0, 1, 0, 0, 0, 1)    
end)

tp:addButton("Revolver Buy ลูกโม่", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-313.566406, 19.6537323, -1178.69446, -0.999712467, 0, 0.0239957981, 0, 1, 0, -0.0239957981, 0, -0.999712467)
end)

farm:addButton("Set Money 1M", function()
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
        MaxAmmo = {Value = 1000000} 
    }
)
end)

farm:addButton("Set Money 100K", function()
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
        MaxAmmo = {Value = 100000} 
    }
)
end)

farm:addButton("Set Money Inf", function()
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
        MaxAmmo = {Value = 100000000000000000} 
    }
)
end)

farm:addButton("Set Money 0", function()
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

farm:addButton("Set Money -999t", function()
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

farm:addButton("Teleport To Players", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0)
end)

farm:addToggle("ESP", "", function(ab)
_G.ESP = ab
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

spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.ESP then
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
end
end)
end)
end)

spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if  _G.AutoDrop then

local args = {
    [1] = "DropMoney",
    [2] = "100000"
}

game:GetService("ReplicatedStorage"):FindFirstChild(".gg/untitledhood"):FireServer(unpack(args))
        
end
end)

end)

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

