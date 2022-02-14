CN, CA, V3, U2, BN, C3 = CFrame.new, CFrame.Angles, Vector3.new, UDim2.new, BrickColor.new, Color3.new
Player = Game:GetService("Players").LocalPlayer
Character, Mouse, PlayerGui = Player.Character, Player:GetMouse(), Player:WaitForChild("PlayerGui")
Head, Torso, RightArm, LeftArm, RightLeg, LeftLeg, RootPart = Character.Head, Character.Torso, Character["Right Arm"], Character["Left Arm"], Character["Right Leg"], Character["Left Leg"], Character.HumanoidRootPart
Neck, RightShoulder, LeftShoulder, RightHip, LeftHip, RootJoint, Humanoid = Torso.Neck, Torso["Right Shoulder"], Torso["Left Shoulder"], Torso["Right Hip"], Torso["Left Hip"], RootPart.RootJoint, Character.Humanoid
pcall(function () Character.Animate:Destroy() end)
pcall(function () Character.Sound:Destroy() end)
pcall(function () Humanoid.Animator:Destroy() end)
for _, S in pairs(Head:GetChildren()) do
        if S:IsA("Sound") then
                S:Destroy()
        end
end
--Set up welds for animation        
Neck.C0 = CN(0, 0.5, 0)*CA(math.rad(-90), 0, math.rad(180))
Neck.C1 = CN(0, -1, 0)*CA(math.rad(-90), 0, math.rad(180))
RightShoulder.C0 = CN(1, 0.5, 0)*CA(0, math.rad(90), 0)
RightShoulder.C1 = CN(-0.5, 0.5, 0)*CA(0, math.rad(90), 0)
LeftShoulder.C0 = CN(-1, 0.5, 0)*CA(0, math.rad(-90), 0)
LeftShoulder.C1 = CN(0.5, 0.5, 0)*CA(0, math.rad(-90), 0)
RightHip.C0 = CN(0, -1, 0)*CA(0, math.rad(90), 0)
RightHip.C1 = CN(0.5, 1, 0)*CA(0, math.rad(90), 0)
LeftHip.C0 = CN(-0, -1, 0)*CA(0, math.rad(-90), 0)
LeftHip.C1 = CN(-0.5, 1, 0)*CA(0, math.rad(-90), 0)
RootJoint.C0 = CN()
RootJoint.C1 = CN()
--Functions and stuff
function Raycast(Origin, Direction, IgnoreList)
        local NewRay = Ray.new(Origin, Direction)
        return Workspace:FindPartOnRayWithIgnoreList(NewRay, IgnoreList)
end
function New(Type)
        return function(Set)
                local Obj = Instance.new(Type)
                for A, B in pairs(Set) do
                        Obj[A] = B
                end
                return Obj
        end
end
function Part(PT, SZ, BC, MT, TR, CC)
        local CC, TR, MT = CC or false, TR or 0, MT or "SmoothPlastic"
        return New'Part'{Parent = PT, FormFactor = 3, Size = SZ, TopSurface = 0, BottomSurface = 0, BrickColor = BN(BC), Material = MT, Transparency = TR, CanCollide = CC}
end
function Wedge(PT, SZ, BC, MT, TR, CC)
        local CC, TR, MT = CC or false, TR or 0, MT or "SmoothPlastic"
        return New'WedgePart'{Parent = PT, FormFactor = 3, Size = SZ, TopSurface = 0, BottomSurface = 0, BrickColor = BN(BC), Material = MT, Transparency = TR, CanCollide = CC}
end
function Motor(PT, P0, P1, C0, C1)
        local C1, C0 = C1 or CN(), C0 or CN()
        return New'Motor6D'{Parent = PT, Part0 = P0, Part1 = P1, C0 = C0, C1 = C1}
end
function Mesh(PT, MT, SC, MI, TI)
        local TI, MI, SC, MT = TI or "", MI or "", SC or V3(1, 1, 1), MT or "Wedge"
        return New'SpecialMesh'{Parent = PT, MeshType = MT, Scale = SC, MeshId = MI, TextureId = TI}
end
function Cylinder(PT, SC)
        local SC = SC or V3(1, 1, 1)
        return New'CylinderMesh'{Parent = PT, Scale = SC}
end
function Block(PT, SC)
        local SC = SC or V3(1, 1, 1)
        return New'BlockMesh'{Parent = PT, Scale = SC}
end
function FindNearestPerson(Part, Ignore)
        local Distance = 1/0
        local Closest = nil
        for _, Obj in pairs(Workspace:GetChildren()) do
                if Obj:IsA("Model") and Obj:FindFirstChild("Humanoid") and Obj:FindFirstChild("Head") then
                        local Closest2 = Obj:FindFirstChild("Head")
                        local Distance2 = (Closest2.Position-Part.Position).magnitude
                        local Space = Torso.CFrame:toObjectSpace(Closest2.CFrame)
                        if Distance2 < Distance and not Closest2:IsDescendantOf(Ignore) and Space.Z < -1 and Space.X/Space.Z <= 2 and Space.X/Space.Z >= -2 and Space.Y/Space.Z <= 1 and Space.Y/Space.Z >= -1 then
                                Distance = Distance2
                                Closest = Closest2
                        end
                end
        end
        return Closest, Distance
end
do -- *Credit to Stravant and AntiBoomz0r: Modification of QuaternionSlerp*
        local function QuaternionFromCFrame(cf)
                local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
                local trace = m00+m11+m22 
                if trace > 0 then 
                        local s = math.sqrt(1+trace) 
                        local recip = 0.5/s 
                        return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
                else 
                        local i = 0 
                        if m11 > m00 then 
                                i = 1 
                        end 
                        if m22 > (i == 0 and m00 or m11) then 
                                i = 2 
                        end 
                        if i == 0 then 
                                local s = math.sqrt(m00-m11-m22+1) 
                                local recip = 0.5/s 
                                return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
                        elseif i == 1 then 
                                local s = math.sqrt(m11-m22-m00+1) 
                                local recip = 0.5/s 
                                return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
                        elseif i == 2 then 
                                local s = math.sqrt(m22-m00-m11+1) 
                                local recip = 0.5/s 
                                return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
                        end 
                end 
        end
        local function QuaternionToCFrame(px, py, pz, x, y, z, w)
                local xs, ys, zs = x+x, y+y, z+z
                local wx, wy, wz = w*xs, w*ys, w*zs
                local xx = x*xs
                local xy = x*ys
                local xz = x*zs
                local yy = y*ys
                local yz = y*zs
                local zz = z*zs
                return CFrame.new(px, py, pz, 1-(yy+zz), xy-wz, xz+wy, xy+wz, 1-(xx+zz), yz-wx, xz-wy, yz+wx, 1-(xx+yy))
        end
        local function QuaternionSlerp(a, b, t)
                local cosTheta = a[1]*b[1]+a[2]*b[2]+a[3]*b[3]+a[4]*b[4]
                local startInterp, finishInterp;
                if cosTheta >= 0.0001 then
                        if (1-cosTheta) > 0.0001 then
                                local theta = math.acos(cosTheta)
                                local invSinTheta = 1/math.sin(theta)
                                startInterp = math.sin((1-t)*theta)*invSinTheta
                                finishInterp = math.sin(t*theta)*invSinTheta
                        else
                                startInterp = 1-t
                                finishInterp = t
                        end
                else
                        if (1+cosTheta) > 0.0001 then
                                local theta = math.acos(-cosTheta)
                                local invSinTheta = 1/math.sin(theta)
                                startInterp = math.sin((t-1)*theta)*invSinTheta
                                finishInterp = math.sin(t*theta)*invSinTheta
                        else
                                startInterp = t-1
                                finishInterp = t
                        end
                end
                return a[1]*startInterp+b[1]*finishInterp, a[2]*startInterp+b[2]*finishInterp, a[3]*startInterp+b[3]*finishInterp, a[4]*startInterp+b[4]*finishInterp
        end
        function Lerp(a, b, t)
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)}
                local ax, ay, az = a.x, a.y, a.z
                local bx, by, bz = b.x, b.y, b.z
                local _t = 1-t
                return QuaternionToCFrame(_t*ax+t*bx, _t*ay+t*by, _t*az+t*bz, QuaternionSlerp(qa, qb, t))
        end
end
function GetSurface(part, position) -- *Thanks to DoogleFox: Surface Detection*
        if part:IsA("Terrain") then
                local cellPos = part:WorldToCellPreferSolid(position)
                local worldPos = part:CellCenterToWorld(cellPos.x, cellPos.y, cellPos.z)
                local obj = position - worldPos
                local size = Vector3.new(4, 4, 4)/2
                for i,v in pairs(Enum.NormalId:GetEnumItems()) do
                        local vec = Vector3.FromNormalId(v)
                        local vz = obj/(size*vec)
                        if (math.abs(vz.X-1) < 0.001 or math.abs(vz.Y-1) < 0.001 or math.abs(vz.Z-1) < 0.001) then
                                return vec,vec
                        end
                end
        elseif part:IsA("BasePart") then
                local obj = part.CFrame:pointToObjectSpace(position)
                local siz = part.Size/2
                for i,v in pairs(Enum.NormalId:GetEnumItems()) do
                        local vec = Vector3.FromNormalId(v)
                        local wvec = part.CFrame:vectorToWorldSpace(vec)
                        local vz = obj/(siz*vec)
                        if (math.abs(vz.X-1) < 0.001 or math.abs(vz.Y-1) < 0.001 or math.abs(vz.Z-1) < 0.001) then
                                return wvec,vec
                        end
                end
                if part.className == "WedgePart" then
                        local pos = (part.CFrame * CFrame.new(0,part.Size.y/2,part.Size.z/2)).p
                        local apos = (part.CFrame * CFrame.Angles(-math.atan2(part.CFrame:pointToObjectSpace(pos).y,part.CFrame:pointToObjectSpace(pos).z),0,0) * CFrame.new(0,1,0)).p
                        local wvec,vec = (apos - part.Position).unit, part.CFrame:pointToObjectSpace(apos)
                        return wvec,vec
                elseif part.className == "Part" and (part.Shape == Enum.PartType.Ball or part.Shape == Enum.PartType.Cylinder) then
                        return (position - part.Position).unit, part.CFrame:vectorToObjectSpace((position - part.Position).unit)
                end
        end
end
--Variables and things
SprintSpeed = 25 --25
WalkSpeed = 17 --17
Humanoid.WalkSpeed = WalkSpeed
--Booleans
Enabled = true
Moving = false
Jumping = false
Falling = false
Sprinting = false
--Everything else
function UpdateSpeed()
        if Sprinting then Humanoid.WalkSpeed = SprintSpeed else Humanoid.WalkSpeed = WalkSpeed end
        if Sitting then Humanoid.WalkSpeed = 0 end
        if Climbing then Humanoid.WalkSpeed = 0 end
end
function KeyDown(Key)
        if not Enabled then return end
        if string.byte(Key) == 48 then --SHIFT
                Sprinting = true
        elseif string.byte(Key) == 50 then --CTRL
        elseif string.byte(Key) == 52 then --ALT
        elseif string.byte(Key) == 32 then --SPACE
        end
        UpdateSpeed()
end
function KeyUp(Key)
        if string.byte(Key) == 48 then
                Sprinting = false
        elseif string.byte(Key) == 50 then
        elseif string.byte(Key) == 52 then
        elseif string.byte(Key) == 32 then
        end
        UpdateSpeed()
end
Mouse.KeyDown:connect(KeyDown)
Mouse.KeyUp:connect(KeyUp)
Humanoid.Running:connect(function (Speed)
        if Speed > 1 then Moving = true else Moving = false end
end)
Humanoid.FreeFalling:connect(function (IsFalling)
        Falling = IsFalling
end)
Humanoid.Changed:connect(function ()
        Humanoid.Jump = false
end)
--Run this all the time
NK, RS, LS, RH, LH = Neck.C1, RightShoulder.C1, LeftShoulder.C1, RightHip.C1, LeftHip.C1
Game:GetService("RunService").Stepped:connect(function (Time)
        if Moving and not Jumping and not Falling then
                --Moving
                if Sprinting then
                        --Sprinting
                        RJ = Lerp(RootJoint.C0, CN(0, -0.5+math.abs(math.sin(Time*10))*0.5, 0)*CA(math.rad(-15), 0, 0), 0.25)
                        NK = Lerp(Neck.C1, CN(0, -1, 0)*CA(math.rad(-90), 0, math.rad(180))*CA(math.rad(-30+math.abs(math.sin(Time))*15), 0, 0), 0.5)
                        RS = Lerp(RightShoulder.C1, CN(-0.5, 0.5, 0)*CA(0, math.rad(90), 0)*CA(math.rad(10), 0, math.rad(-30+math.sin(Time*15)*-75)), 0.25)
                        LS = Lerp(LeftShoulder.C1, CN(0.5, 0.5, 0)*CA(0, math.rad(-90), 0)*CA(math.rad(10), 0, math.rad(30+math.sin(Time*15)*-75)), 0.25)
                        RH = Lerp(RightHip.C1, CN(-0.5, 1, 0)*CA(0, math.rad(90), 0)*CA(math.rad(3), 0, math.rad(math.sin(Time*15)*60)), 0.25)
                        LH = Lerp(LeftHip.C1, CN(0.5, 1, 0)*CA(0, math.rad(-90), 0)*CA(math.rad(3), 0, math.rad(math.sin(Time*15)*60)), 0.25)
                else
                        --Walking
                        RJ = Lerp(RootJoint.C0, CN(0, -0.3+math.abs(math.sin(Time*10))*0.3, 0)*CA(math.rad(-15), 0, 0), 0.25)
                        NK = Lerp(Neck.C1, CN(0, -1, 0)*CA(math.rad(-90), 0, math.rad(180))*CA(math.rad(15+math.abs(math.sin(Time))*-10), 0, math.rad(math.sin(Time)*15)), 0.25)
                        RS = Lerp(RightShoulder.C1, CN(-0.5, 0.5, 0)*CA(0, math.rad(90), 0)*CA(math.rad(15), 0, math.rad(15+math.abs(math.sin(Time))*15)), 0.25)
                        LS = Lerp(LeftShoulder.C1, CN(0.5, 0.5, 0)*CA(0, math.rad(-90), 0)*CA(math.rad(15), 0, math.rad(-15+math.abs(math.sin(Time))*-15)), 0.25)
                        RH = Lerp(RightHip.C1, CN(-0.5, 1, 0)*CA(0, math.rad(90), 0)*CA(math.rad(3), 0, math.rad(math.sin(Time*10)*40)), 0.25)
                        LH = Lerp(LeftHip.C1, CN(0.5, 1, 0)*CA(0, math.rad(-90), 0)*CA(math.rad(3), 0, math.rad(math.sin(Time*10)*40)), 0.25)
                end
        else
                if Sitting then
                        --Sitting
                else
                        --Idle
                        RJ = Lerp(RootJoint.C0, CN(0, math.abs(math.sin(Time))*-0.1, 0)*CA(math.rad(math.abs(math.sin(Time))*-5), 0, 0), 0.25)
                        NK = Lerp(Neck.C1, CN(0, -1, 0)*CA(math.rad(-90), 0, math.rad(180))*CA(math.rad(math.abs(math.sin(Time))*5), 0, 0), 0.25)
                        RS = Lerp(RightShoulder.C1, CN(-0.5, 0.5, 0)*CA(0, math.rad(90), 0)*CA(math.rad(math.abs(math.sin(Time))*5), 0, math.rad(math.abs(math.sin(Time))*5)), 0.25)
                        LS = Lerp(LeftShoulder.C1, CN(0.5, 0.5, 0)*CA(0, math.rad(-90), 0)*CA(math.rad(math.abs(math.sin(Time))*5), 0, math.rad(-math.abs(math.sin(Time))*5)), 0.25)
                        RH = Lerp(RightHip.C1, CN(-0.5, 1, 0)*CA(0, math.rad(90), 0)*CA(math.rad(math.abs(math.sin(Time))*5), 0, math.rad(math.abs(math.sin(Time))*-5)), 0.25)
                        LH = Lerp(LeftHip.C1, CN(0.5, 1, 0)*CA(0, math.rad(-90), 0)*CA(math.rad(math.abs(math.sin(Time))*5), 0, math.rad(math.abs(math.sin(Time))*5)), 0.25)
                end
        end
        local Close, Distance = FindNearestPerson(Head, Character)
        if Close and Distance < 25 and Enabled and not Moving and not Sitting and not Jumping and not Falling then
                local CF = CN((Torso.CFrame*CN(0, 1.5, 0)).p, Close.Position):toObjectSpace(Torso.CFrame*CN(0, 0.5, 0))
                NK = Lerp(Neck.C1, CF*CA(math.rad(-90), 0, math.rad(180)), 0.25)
        end
        Neck.C1 = NK
        RightShoulder.C1 = RS
        LeftShoulder.C1 = LS
        RightHip.C1 = RH
        LeftHip.C1 = LH
        RootJoint.C0 = RJ
end)
pcall(function () Workspace.ParkourPlace:Destroy() end)
Offset = CN(0, 0, 0)
Place = New'Model'{Parent = Workspace, Name = "ParkourPlace"}
Grass = Part(Place, V3(300, 1, 300), "Dark green", "Grass", 0, true)
Grass.Anchored = true
Grass.CFrame = Offset
 
Floor = Part(Place, V3(200, 1, 200), "Brown", "Wood", 0, true)
Floor.Anchored = true
Floor.CFrame = Offset*CN(0, 0.25, 0)
 
for Side = 0, 3 do
        Wall = Wedge(Place, V3(25, 25, 25), "Brown", "Wood", 0, true)
        Wall.Anchored = true
        Wall.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(0, 12.5, 30)*CA(0, 0, math.rad(90))
        
        Wall2 = Part(Place, V3(25, 25, 25), "Brown", "Wood", 0, true)
        Wall2.Anchored = true
        Wall2.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(0, 12.5, 55)
        
        Wall3 = Part(Place, V3(100, 25, 25), "Brown", "Wood", 0, true)
        Wall3.Anchored = true
        Wall3.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(0, 12.5, 80)
        
        Wall4 = Wedge(Place, V3(25, 25, 25), "Brown", "Wood", 0, true)
        Wall4.Anchored = true
        Wall4.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(-62.5, 12.5, 80)*CA(0, 0, math.rad(90))
        
        Wall5 = Wedge(Place, V3(25, 25, 25), "Brown", "Wood", 0, true)
        Wall5.Anchored = true
        Wall5.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(62.5, 12.5, 80)*CA(0, 0, math.rad(-90))
        
        local P = Offset*CA(0, math.rad(90*(Side+1)), 0)*CN(-62.5, 12.5, 80)
        local D = P.p-Wall5.Position
        
        Wall6 = Part(Place, V3(24.75, 2, math.sqrt(1250)+25), "Brown", "Wood", 0, true)
        Wall6.Anchored = true
        Wall6.CFrame = CN(Wall5.Position)*CN(D*0.5+V3(0, 11.5, 0))*CA(0, math.rad(90*Side+45), 0)*CN(0, 0, 12.5)
        
        Wall7 = Part(Place, V3(55, 2, 30), "Brown", "Wood", 0, true)
        Wall7.Anchored = true
        Wall7.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(40, 24, 27.5)
        
        Wall8 = Part(Place, V3(1, 24, 30), "Brown", "Wood", 0, true)
        Wall8.Anchored = true
        Wall8.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(13, 12, 27.5)
                
        Ceiling = Part(Place, V3(100, 2, 25), "Brown", "Wood", 0, true)
        Ceiling.Anchored = true
        Ceiling.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(0, 50, 80)
        
        Ceiling2 = Wedge(Place, V3(2, 25, 25), "Brown", "Wood", 0, true)
        Ceiling2.Anchored = true
        Ceiling2.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(-62.5, 50, 80)*CA(0, 0, math.rad(90))
        
        Ceiling3 = Wedge(Place, V3(2, 25, 25), "Brown", "Wood", 0, true)
        Ceiling3.Anchored = true
        Ceiling3.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(62.5, 50, 80)*CA(0, 0, math.rad(-90))
        
        Ceiling4 = Part(Place, V3(24.75, 2, math.sqrt(1250)), "Brown", "Wood", 0, true)
        Ceiling4.Anchored = true
        Ceiling4.CFrame = CN(Wall5.Position)*CN(D*0.5+V3(0, 37.5, 0))*CA(0, math.rad(90*Side+45), 0)
        
        Wall9 = Part(Place, V3(150, 24, 1), "Brown", "Wood", 0, true)
        Wall9.Anchored = true
        Wall9.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(0, 37, 92)
        
        local EL = 25/math.sqrt(2)
        
        Balcony = Wedge(Place, V3(2, EL, EL), "Brown", "Wood", 0, true)
        Balcony.Anchored = true
        Balcony.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(-75-EL/2, 24, 92.5+EL/2)*CA(0, 0, math.rad(90))
        
        Balcony2 = Wedge(Place, V3(2, EL, EL), "Brown", "Wood", 0, true)
        Balcony2.Anchored = true
        Balcony2.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(75+EL/2, 24, 92.5+EL/2)*CA(0, 0, math.rad(-90))
        
        Balcony3 = Part(Place, V3(150, 2, EL), "Brown", "Wood", 0, true)
        Balcony3.Anchored = true
        Balcony3.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(0, 24, 92.5+EL/2)
        
        Balcony4 = Part(Place, V3(24.75, 4, 1), "Brown", "Wood", 0, true)
        Balcony4.Anchored = true
        Balcony4.CFrame = Wall6.CFrame*CN(0, 3, (math.sqrt(1250)+25)/2-0.5)
        
        Balcony5 = Part(Place, V3(150+EL*2, 4, 1), "Brown", "Wood", 0, true)
        Balcony5.Anchored = true
        Balcony5.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(0, 27, 92+EL)
        
        Ramp = Wedge(Place, V3(25, 25, 25), "Brown", "Wood", 0, true)
        Ramp.Anchored = true
        Ramp.CFrame = Offset*CA(0, math.rad(90*Side), 0)*CN(25, 12.5, 55)*CA(0, math.rad(-90), 0)
end
for _, Player in pairs(Game:GetService("Players"):GetChildren()) do
        Player.Chatted:connect(function (Message)
                if Message == "up" then
                        Player.Character:MoveTo(Offset.p)
                end
        end)
end