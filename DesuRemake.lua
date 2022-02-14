--[[
        Desu
]]
 
CN, V3, U2, BN, C3 = CFrame.new, Vector3.new, UDim2.new, BrickColor.new, Color3.new
function CA(X, Y, Z)
        return CFrame.Angles(math.rad(X), math.rad(Y or 0), math.rad(Z or 0))
end
function New(InstanceType)
        local NewInstance = Instance.new(InstanceType)
        if NewInstance:IsA("BasePart") then
                pcall(function() NewInstance.FormFactor = 3 end)
                NewInstance.Size = V3(1, 1, 1)
                NewInstance.Material = "SmoothPlastic"
                NewInstance.TopSurface = 0
                NewInstance.BottomSurface = 0
                NewInstance.Locked = true
        end
        return function(Properties)
                for Property, Value in pairs(Properties) do
                        NewInstance[Property] = Value
                end
                if Properties.CFrame then NewInstance.CFrame = Properties.CFrame end
                return NewInstance
        end
end
function Part(Parent, Size, CFrame, BrickColor, Material)
        return New'Part'{Parent = Parent, Size = Size or V3(1, 1, 1), CFrame = CFrame or CN(), BrickColor = BN(BrickColor or "Black"), Material = Material or "SmoothPlastic"}
end
function Mesh(Parent, Scale, MeshType, MeshId, TextureId)
        return New'SpecialMesh'{Parent = Parent, Scale = Scale or V3(1, 1, 1), MeshType = MeshType or "Sphere", MeshId = MeshId or "", TextureId = TextureId or ""}
end
 
Players = Game:GetService("Players")
RunService = Game:GetService("RunService")
 
User = "ask4kingbily"
Player = Players:WaitForChild(User)
repeat wait() until Player.Character
Character = Player.Character
CharacterHead = Character:WaitForChild("Head")
 
Desu = Instance.new("Model", Workspace)
Head = Part(Desu, V3(2, 2, 2), CharacterHead.CFrame*CN(math.random(-1, 1)*4, 4, math.random(-1, 1)*4), "Bright blue") Head.Name = "Head" Head.Shape = "Ball"
Face = New'Decal'{Parent = Head, Face = "Front", Texture = "rbxassetid://19821051"} Face.Name = "face"
BodyPosition = New'BodyPosition'{Parent = Head, maxForce = V3(1/0, 1/0, 1/0), position = (CharacterHead.CFrame*CN(4, 0, 0)).p}
BodyGyro = New'BodyGyro'{Parent = Head, maxTorque = V3(1/0, 1/0, 1/0), D = 100, cframe = CN(Head.Position, CharacterHead.Position)}
 
NewDesu = Desu:Clone()
Desu.AncestryChanged:connect(function()
        local NewDesu = NewDesu:Clone()
        NewDesu.Parent = Workspace
        Head = NewDesu.Head
        Face = Head.face
        BodyPosition = Head.BodyPosition
        BodyGyro = Head.BodyGyro
end)
 
RunService.Stepped:connect(function(Time)
        BodyPosition.position = (CharacterHead.CFrame*CN(4, 0, 0)).p
        BodyGyro.cframe = CN(Head.Position, CharacterHead.Position)
end)