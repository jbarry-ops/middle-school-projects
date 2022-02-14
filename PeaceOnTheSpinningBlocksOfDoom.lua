Lighting, Debris = Game:GetService("Lighting"), Game:GetService("Debris")
 
Exempt = {"12packkid", "Pkamara", "DuckWick", "Relatively", "Reinitialized", "MasonDiablo", "mugex", "nandym", "x1op"}
 
if not _G.Levels then
        _G.Levels = {}
end
_G.Weapons = {
        ["1"] = 125013769, --Linked sword
        ["2"] = 83704165, --Ice dagger
        ["3"] = 77443704, --Windforce
        ["4"] = 81154592, --Firebrand
        ["5"] = 16895215, --Darkheart
        ["6"] = 16641274, --Illumina
        ["7"] = 108149175, --Dual darkhearts
        ["8"] = 68603324, --Venomshank
        ["9"] = 101191388, --Dual illuminas
        ["10"] = 53623322, --Sorcus' sword of judgement
        ["11"] = 158069180 --Dual venomshanks
}
 
Width = 7
Height = -100
Size = 14
Border = 0.5
Dispersion = Size+Border
 
Lighting:ClearAllChildren()
Sky = Instance.new("Sky", Lighting)
Sky.SkyboxBk = "rbxassetid://1012890"
Sky.SkyboxDn = "rbxassetid://1012891"
Sky.SkyboxFt = "rbxassetid://1012887"
Sky.SkyboxLf = "rbxassetid://1012889"
Sky.SkyboxRt = "rbxassetid://1012888"
Sky.SkyboxUp = "rbxassetid://1014449"
Lighting.Ambient = Color3.new(1, 1, 1) --0.2, 0.6, 0.8
Lighting.OutdoorAmbient = Color3.new(0.5, 0.5, 0.5)
--Lighting.FogStart = 0
--Lighting.FogEnd = 250
--Lighting.FogColor = Color3.new(0.4, 0.4, 0.6)
Lighting.GlobalShadows = true
Lighting.TimeOfDay = 14 --20
 
for _, Obj in pairs(Workspace:GetChildren()) do
        if Obj.Name == "Awesome game!" then
                Obj:Destroy()
        end
end
 
Map = Instance.new("Model", Workspace)
Map.Name = "Awesome game!"
Platforms = Instance.new("Model", Map)
Platforms.Name = "Platforms"
Part = Instance.new("Part")
Part.FormFactor = 3
Part.Material = "SmoothPlastic"
Part.TopSurface = 0
Part.BottomSurface = 0
 
Lava = Part:Clone()
Lava.Size = Vector3.new(Width*Dispersion+100, 1, Width*Dispersion+100)
Lava.Anchored = true
Lava.CFrame = CFrame.new(0, Height-Size*2, 0)
Lava.BrickColor = BrickColor.new("Really black")
Lava.Material = "SmoothPlastic"
Lava.Parent = Map
Lava.Touched:connect(function(Hit) if Hit:IsA("BasePart") and Hit.Parent:FindFirstChild("Humanoid") then Hit:BreakJoints() end end)
 
for L = 1, 5 do
        local Lava2 = Lava:Clone()
        Lava2.Size = Lava.Size+Vector3.new(L*0.5, L*0.5, L*0.5)
        Lava2.CFrame = Lava.CFrame
        Lava2.Transparency = L*0.15
        Lava2.CanCollide = false
        Lava2.Parent = Map
end
 
PlatformsTable = {}
for P = 0, Width-1 do
        local PlatformsRow = {}
        for P2 = 0, Width-1 do
                local PlatformCFrame = CFrame.new(-Width/2*Dispersion+P*Dispersion+Size/2, Height, -Width/2*Dispersion+P2*Dispersion+Size/2)
                local Platform = Part:Clone()
                Platform.Name = "Platform"
                Platform.Size = Vector3.new(Size, 1, Size)
                Platform.CFrame = PlatformCFrame
                Platform.BrickColor = BrickColor.Random()
                Platform.Material = "Slate"
                local BodyPosition = Instance.new("BodyPosition", Platform)
                local Power = Platform:GetMass()*1000
                BodyPosition.maxForce = Vector3.new(1/0, 1/0, 1/0)
                BodyPosition.position = PlatformCFrame.p
                wait()
                local BodyGyro = Instance.new("BodyGyro", Platform)
                BodyGyro.maxTorque = Vector3.new(1/0, 1/0, 1/0)
                
                local Platform2 = Part:Clone()
                Platform2.Name = "GhostPlatform"
                Platform2.Size = Platform.Size+Vector3.new(0.5, 0.5, 0.5)
                Platform2.CFrame = Platform.CFrame
                Platform2.BrickColor = BrickColor.new("Really black")
                Platform2.CanCollide = false
                Platform2.Transparency = 0.6
                Platform2.Material = "Ice"
                local Weld = Instance.new("Weld", Platform)
                Weld.Part0 = Platform
                Weld.Part1 = Platform2
                Weld.C0 = CFrame.new()
                Platform2.Parent = Platform
                
                local SpikeBottom = Part:Clone()
                SpikeBottom.Name = "Spike"
                SpikeBottom.Size = Vector3.new(2, 5, 2)
                SpikeBottom.CFrame = Platform.CFrame
                SpikeBottom.BrickColor = BrickColor.new("Institutional white")
                SpikeBottom.CanCollide = false
                local Mesh = Instance.new("SpecialMesh", SpikeBottom)
                Mesh.MeshType = "FileMesh"
                Mesh.Scale = Vector3.new(2, 6, 2)
                Mesh.MeshId = "rbxassetid://1033714"
                local Weld = Instance.new("Weld", Platform)
                Weld.Part0 = Platform
                Weld.Part1 = SpikeBottom
                Weld.C0 = CFrame.new(0, -2.5, 0)*CFrame.Angles(math.rad(180), 0, 0)
                SpikeBottom.Parent = Platform
                SpikeBottom.Touched:connect(function(Hit) if Hit:IsA("BasePart") and Hit.Parent:FindFirstChild("Humanoid") then Hit:BreakJoints() end end)
                
                Platform.Parent = Platforms
                table.insert(PlatformsRow, Platform)
                wait()
        end
        table.insert(PlatformsTable, PlatformsRow)
end
 
Start = Instance.new("Message", Workspace)
Start.Text = "Peace on the spinning blocks of doom with one hit kill weapons, spikes and lava has been initiated! Have fun!"
Debris:AddItem(Start, 9)
wait(3)
for T = 5, 1, -1 do
        Start.Text = "Starting in "..T..".."
        wait(1)
end
Start.Text = "Go!"
 
Workspace:WaitForChild("Base").Transparency = 0.75
 
Alive = {}
for _, Player in pairs(Game:GetService("Players"):GetChildren()) do
        local NotGoing = false
        for _, Name in pairs(Exempt) do
                if Player.Name == Name then
                        NotGoing = true
                end
        end
        if not NotGoing then
        Player:LoadCharacter()
        table.insert(Alive, Player)
        local Backpack = Player:WaitForChild("Backpack")
        if not _G.Levels[Player.Name] then _G.Levels[Player.Name] = "1" end
        local PlayerLevel = _G.Levels[Player.Name]
        Weapon = Game:GetService("InsertService"):LoadAsset(_G.Weapons[PlayerLevel]):GetChildren()[1]
        Weapon.Parent = Backpack
        wait()
        Player.Character:MoveTo(Platforms:GetChildren()[math.random(1, #Platforms:GetChildren())].Position)
        wait()
        local CharacterRemoving = nil
        local Died = nil
        local function Die()
                if not Map or not Map.Parent then return end
                CharacterRemoving:disconnect()
                Died:disconnect()
                for _, Thing in pairs(Alive) do
                        if Thing == Player then table.remove(Alive, _) end
                end
                if #Alive == 1 then
                        local Winner = Alive[1]
                        local Message = Instance.new("Message", Workspace)
                        local Weps = Winner:WaitForChild("Backpack"):GetChildren()
                        if #Weps > 0 then
                                Message.Text = Winner.Name.." won (using "..Weps[1].Name..")! *High fives*"
                        else
                                Message.Text = Winner.Name.." won! *High fives*"
                        end
                        Debris:AddItem(Message, 5)
                        Alive = {}
                        wait(3)
                        Winner:LoadCharacter()
                        if tonumber(_G.Levels[Winner.Name]) < #_G.Weapons then
                                _G.Levels[Winner.Name] = tostring(tonumber(_G.Levels[Winner.Name])+1)
                        end
                        Map:Destroy()
                        Workspace:WaitForChild("Base").Transparency = 0
                end
        end
        CharacterRemoving = Player.CharacterRemoving:connect(Die)
        Died = Player.Character:WaitForChild("Humanoid").Died:connect(Die)
        end
end
 
wait(1)
 
Wave = 0
while Map.Parent do
        Wave = Wave+math.pi/2
        local NewColor = BrickColor.Random()
        for P, PlatformRow in pairs(PlatformsTable) do
                for P2, Platform in pairs(PlatformRow) do
                        if not Map.Parent then return end
                        Platform.BrickColor = BrickColor.Random()
                        local Gyro, Pos = Platform:WaitForChild("BodyGyro"), Platform:WaitForChild("BodyPosition")
                        Gyro.P = Gyro.P*-1
                        Pos.position = Vector3.new(Pos.position.X, Height+math.sin((P*P2)+Wave)*5, Pos.position.Z)
                        local Ghost = Platform:WaitForChild("GhostPlatform")
                        Ghost.BrickColor = NewColor
                        wait(0.1)
                end
        end
        wait(1)
end