setclipboard("https://discord.gg/t97DRzvVgN")

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

Notify({
Description = "Loading...";
Title = "Winnable!Hub";
Duration = 5;
});

wait(1)

    Notify({
        Description = "Success!!";
        Title = "Winnable!Hub";
        Duration = 5;
        });
wait(.3)

Notify({
Description = "Thai Language Support";
Title = "ซัพพอร์ทภาษาไทย";
Duration = 5;
});

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Winnable Hub | Untitled Hood | Give Money", 5013109572)
 
 
local page = venyx:addPage("Main", 5012544693)
local farm = page:addSection("Main")
local page = venyx:addPage("Teleport + Buy", 5012544693)
local tp = page:addSection("Ez Teleport วาร์ป")
local tp2 = page:addSection("Ez Buy ซื้อของ")
local page = venyx:addPage("Body", 5012544693)
local dick = page:addSection("Reset After")
local page = venyx:addPage("Admin Base", 5012544693)
local admin = page:addSection("Admin Base ฐานแอดมิน")
local page = venyx:addPage("Auto Drop", 5012544693)
local drop = page:addSection("Ez Drop ดร็อปเงิน")
local page = venyx:addPage("Check", 5012544693)
local check = page:addSection("Check เช็ค")
local page = venyx:addPage("Misc", 5012544693)
local misc = page:addSection("Other สิ่งอื่นๆ")
local page = venyx:addPage("Inf Bullet", 5012544693)
local inf = page:addSection("Ez Inf Bullet กระสุนไม่จำกัด")
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

weapon = {}

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
   table.insert(weapon,v.Name)
end

buy = {}

for i,v in pairs(game:GetService("Workspace").Ignored.Shop:GetChildren()) do
   table.insert(buy,v.Name)
end

mons = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(mons,v.Name)
end

tp2:addDropdown("Select Shop", buy, function(abcdef)
    Select3 = abcdef
end)

tp2:addButton("Teleport To Shop", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop[Select3].Head.CFrame
end)


inf:addButton("Inf Bullet กระสุนไม่จำกัด", function()

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = Select2, 
        Ammo = {Value = math.huge*9e9},
        MaxAmmo = {Value = 0}
    }
)
task.wait(2)


game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = Select2,
        Ammo = game:GetService("Players").LocalPlayer.DataFolder.Currency,
        MaxAmmo = {Value = Nothing} 
    }
)
end)

inf:addDropdown("Select Gun เลือกปืน", weapon, function(abcde)
    Select2 = abcde
end)

inf:addButton("Refresh", function()
        table.clear(weapon)
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
   table.insert(weapon,v.Name)
end
end)

dick:addButton("Super Skinny", function()
local Workspace = game:GetService("Workspace")
local Players = game.Players.LocalPlayer

local Character = Players.Character

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = game:GetService("Players")[Select].DataFolder.Information.MuscleInformation,
        MaxAmmo = {Value = -999999999999999999999999999999999999999999999},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
) 
end)


dick:addButton("Skinny", function()
local Workspace = game:GetService("Workspace")
local Players = game.Players.LocalPlayer

local Character = Players.Character

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = game:GetService("Players")[Select].DataFolder.Information.MuscleInformation,
        MaxAmmo = {Value = -15000},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
) 
end)

dick:addButton("Huge", function()
local Workspace = game:GetService("Workspace")
local Players = game.Players.LocalPlayer

local Character = Players.Character

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = game:GetService("Players")[Select].DataFolder.Information.MuscleInformation,
        MaxAmmo = {Value = 999999},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
) 
end)

misc:addButton("Toxic Music 18+ เพลง 18+", function()

local args = {
    [1] = "Boombox",
    [2] = "6963097644"
}

game:GetService("ReplicatedStorage"):FindFirstChild(".gg/untitledhood"):FireServer(unpack(args))
    
end)

misc:addButton("Fake Banned แบนปลอม", function()
    game.Players.LocalPlayer:Kick("You Got Banned Form Untitled Hood!")
end)

drop:addToggle("Auto Drop 100K","" , function(abcd)
    _G.AutoDrop = abcd
end)

drop:addButton("Fake Food Store [Secert] ร้านอาหารปลอม ลับๆ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-582.724976, 9.02821827, -732.723633, -0.371271759, 2.42228992e-09, 0.928524256, 4.95081887e-09, 1, -6.29160335e-10, -0.928524256, 4.36336611e-09, -0.371271759)
end)

drop:addButton("Delete Part At Secert Store ลบสิ่งต่างๆในร้าน", function()
    game:GetService("Workspace").MAP.Map.SHOP.Part:Destroy()
end)

admin:addButton("Admin Base 1", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(193.903427, 18.0759296, -71.1124725, 0.998161435, 6.43940323e-09, -0.0606110357, -9.43242551e-09, 1, -4.90946945e-08, 0.0606110357, 4.95761405e-08, 0.998161435)
end)

admin:addButton("Admin Base 2", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(160.082489, -37.6854744, -75.8306808, 0.998694122, -4.43762316e-09, -0.0510881729, 3.84243037e-09, 1, -1.17485195e-08, 0.0510881729, 1.15368755e-08, 0.998694122)
end)

admin:addButton("Admin Base 3", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.976738, -23.8458004, -741.445618, 0.0497155339, -3.19801394e-08, -0.998763442, 7.90371217e-08, 1, -2.80854984e-08, 0.998763442, -7.75430991e-08, 0.0497155339)
end)

admin:addButton("Destroy Admin Door 2 Press", function()
game:GetService("Workspace").MAP["Carry update + Map"].Model.Union:Destroy()
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
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(237.421066, 28.3457909, -1047.0332, -0.981201887, 2.52315484e-08, 0.192984015, 2.15813376e-08, 1, -2.10167634e-08, -0.192984015, -1.64568359e-08, -0.981201887)
end)

farm:addButton("Bounty Set Inf ค่าหัวไม่จำกัด", function()

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
        Name = "[Revolver]",
        Parent = Game.Players.LocalPlayer.Backpack,
        ClassName = "Tool",
        Ammo = game:GetService("Players")[Select].leaderstats.Wanted,
        MaxAmmo = {Value = 9000000000000000000},
        GunScript = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].GunScript,
        Handle = game:GetService("Players").LocalPlayer.Backpack["[Revolver]"].Handle
    }
) 
end)

farm:addButton("Set Money 1M เงินหนึ่งล้าน", function()
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

farm:addButton("Set Money 100K เงินหนึ่งเสน", function()
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

farm:addButton("Set Money Inf เงินไม่จำกัด", function()
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
        MaxAmmo = {Value = 9000000000000000000} 
    }
)
end)

farm:addButton("Set Money 0 เงินเป็นศูนย์", function()
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

farm:addButton("Set Money -999t เงินติดลบ", function()
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

farm:addDropdown("Select Players เลือกผู้เล่น", mons, function(abc)
    Select = abc
end)

farm:addButton("Refresh", function()
        table.clear(mons)
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(mons,v.Name)
end
end)

farm:addButton("Teleport To Players วาร์ปไปหาผู้เล่น", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0)
end)
farm:addToggle("Auto Farm Players", "", function(value)
    _G.autofarm = value
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

farm:addButton("Give me Credit every 3 sec [On]", function(value)
_G.Say = true
            while wait(3) do
                if _G.Say then
    local args = {
    [1] = "Winnable Hub On Top",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
end
end)
farm:addButton("Give me Credit every 3 sec [Off]", function(value)
_G.Say = false
            while wait(3) do
                if _G.Say then
    local args = {
    [1] = "Winnable Hub On Top",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
end
end)

farm:addButton("Give Inf Cash All ให้เงินไม่จำกัดทั้งเซิฟ", function()

                for i, v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,1)
                            wait(.0)
                            local player = v.Name

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
        MaxAmmo = {Value = 9000000000000000000} 
    }
)
                    end
                end
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
        if _G.autofarm then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
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


    

check:addButton("Check Money", function()
    Notify({
        Description = "Money";
        Title = game:GetService("Players")[Select].DataFolder.Currency.Value;
        Duration = 5;
        });
end)

check:addButton("Check Muscle", function()
    Notify({
        Description = "Muscle";
        Title = game:GetService("Players")[Select].DataFolder.Information.MuscleInformation.Value;
        Duration = 5;
        });
    
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

