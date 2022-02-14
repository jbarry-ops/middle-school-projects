function changePartSize()
        LowestPartSize = LowestPartSize+math.random(-10, 10)/10
        if LowestPartSize < LowLimit then LowestPartSize = LowLimit end
        if LowestPartSize > HighLimit then LowestPartSize = HighLimit end
end
function splitPart(part, width, height, length)
        local px, py, pz = part.Size.X, part.Size.Y, part.Size.Z
        local npx, npy, npz = px/width, py/height, pz/length
        local newParts = {}
        for w = 1, width do
                for h = 1, height do
                        for l = 1, length do
                                --changePartSize()
                                local newPart = part:Clone()
                                newPart.Size = Vector3.new(npx, npy, npz)
                                newPart.CFrame = part.CFrame*CFrame.new((-px/2-npx/2)+w*npx, (-py/2-npy/2)+h*npy, (-pz/2-npz/2)+l*npz)
                                table.insert(newParts, newPart)
                        end
                end
        end
        local oldParent = part.Parent
        part:Destroy()
        for _, newPart in pairs(newParts) do
                newPart.Parent = oldParent
                newPart:MakeJoints()
        end
        return newParts
end
function fragmentPart(part, position, radius, size)
        local w, h, l = 2, 2, 2
        if part.Size.X <= size then w = 1 end
        if part.Size.Y <= size then h = 1 end
        if part.Size.Z <= size then l = 1 end
        if w == 1 and h == 1 and l == 1 then
                part.Anchored = false
                part:BreakJoints()
                part.Velocity = part.Velocity+CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p, part.Position).lookVector*size^3*3
                return
        end
        local initialSplit = splitPart(part, w, h, l)
        for _, thing in pairs(initialSplit) do
                --changePartSize()
                local averageSize = (thing.Size.X+thing.Size.Y+thing.Size.Z)/3
                if math.ceil((thing.Position-position).magnitude-averageSize) <= radius then
                        fragmentPart(thing, position, radius, size)
                end
        end
end
Radius = 5
LowestPartSize = 2
LowLimit = 2
HighLimit = 5
ReloadTime = 2
Player = Game:GetService("Players").LocalPlayer
Backpack = Player:WaitForChild("Backpack")
Character = Player.Character
Tool = Instance.new("Tool", Backpack)
Tool.Name = "Rocket Launcher"
Tool.TextureId = "rbxassetid://175685224"
Tool.ToolTip = "Use this to destroy stuffs."
Handle = Instance.new("Part", Tool)
Handle.Name = "Handle"
Handle.FormFactor = 3
Handle.Size = Vector3.new(1, 1, 1)
Handle.CanCollide = false
Mesh = Instance.new("SpecialMesh", Handle)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "rbxasset://fonts/rocketlauncher.mesh"
Mesh.TextureId = "rbxasset://textures/rocketlaunchertex.png"
Mesh.Scale = Vector3.new(1, 1, 1)
Tool.Grip = CFrame.new(1, 0, -0.5)*CFrame.Angles(0, math.rad(90), math.rad(90))
 
Enabled = true
EquippedEvent = Tool.Equipped:connect(function(Mouse)
        Mouse.Button1Down:connect(function()
                if Enabled then
                        Enabled = false
                        local Missile = Instance.new("Part", Workspace)
                        Missile.FormFactor = 3
                        Missile.Size = Vector3.new(1, 1, 2)
                        Missile.CFrame = CFrame.new((Handle.CFrame*CFrame.new(-2, 0, 0)).p, Mouse.Hit.p)*CFrame.new(0, 0, -3)
                        Missile.TopSurface = 0
                        Missile.BottomSurface = 0
                        Missile.BrickColor = BrickColor.Random()
                        Missile.CanCollide = false
                        Game:GetService("Debris"):AddItem(Missile, 7)
                        local BodyVelocity = Instance.new("BodyVelocity", Missile)
                        BodyVelocity.velocity = (CFrame.new(Missile.Position, Mouse.Hit.p)*CFrame.new(0, 0, 1)).lookVector*100
                        local BodyGyro = Instance.new("BodyGyro", Missile)
                        BodyGyro.D = 100
                        BodyGyro.cframe = CFrame.new(Missile.Position, Mouse.Hit.p)
                        Missile.Touched:connect(function(Hit)
                                local Position = Missile.Position
                                Missile:Destroy()
                                
                                --if not Hit.Parent then return end
                                for _, Obj in pairs(Hit.Parent:GetChildren()) do
                                        if Obj:IsA("Part") and Obj.Name ~= "Base" and Obj ~= Hit then
                                                local averageSize = (Obj.Size.X+Obj.Size.Y+Obj.Size.Z)/3
                                                if (Obj.Position-Position).magnitude-averageSize <= Radius then
                                                        fragmentPart(Obj, Position, Radius, LowestPartSize)
                                                end
                                        end
                                end
                                if Hit.Name ~= "Base" then
                                        fragmentPart(Hit, Position, Radius, LowestPartSize)
                                end
                                
                                local Explosion = Instance.new("Explosion", Workspace)
                                Explosion.Position = Position
                        end)
                        wait(ReloadTime)
                        Enabled = true
                end
        end)
end)
Tool.Unequipped:connect(function() EquippedEvent:disconnect() end)