--Awesomest Map Ever.
V3, CN, CA, BN, C3, U2 = Vector3.new, CFrame.new, CFrame.Angles, BrickColor.new, Color3.new, UDim2.new
function Part(PT, SZ, CF, BC, MT, TR)
        local Thing = Instance.new("Part", PT)
        Thing.FormFactor = 3
        Thing.Size = SZ
        Thing.Anchored = true
        Thing.BrickColor = BN(BC or "Really black")
        Thing.Material = MT or "SmoothPlastic"
        Thing.Transparency = TR or 0
        Thing.TopSurface = 0
        Thing.BottomSurface = 0
        Thing.CFrame = CF
        return Thing
end
function Wedge(PT, SZ, CF, BC, MT, TR)
        local Thing = Instance.new("WedgePart", PT)
        Thing.FormFactor = 3
        Thing.Size = SZ
        Thing.Anchored = true
        Thing.BrickColor = BN(BC or "Really black")
        Thing.Material = MT or "SmoothPlastic"
        Thing.Transparency = TR or 0
        Thing.TopSurface = 0
        Thing.BottomSurface = 0
        Thing.CFrame = CF
        return Thing
end
function Block(PT, SC)
        local Thing = Instance.new("BlockMesh", PT)
        Thing.Scale = SC or V3(1, 1, 1)
        return Thing
end
function Cylinder(PT, SC)
        local Thing = Instance.new("CylinderMesh", PT)
        Thing.Scale = SC or V3(1, 1, 1)
        return Thing
end
function Mesh(PT, MT, SC, MI, TI)
        local Thing = Instance.new("SpecialMesh", PT)
        Thing.MeshType = MT or "Wedge"
        Thing.Scale = SC or V3(1, 1, 1)
        Thing.MeshId = MI or ""
        Thing.TextureId = TI or ""
        return Thing
end
function Circle(PT, CF, DM, SG, WD, HT, VR, BC, MT, TR)
        local Model = Instance.new("Model", PT)
        Model.Name = "Circle"
        for A = 0, SG-1 do
                local Circumference = math.pi*(DM+WD*2)
                Circumference = math.ceil(Circumference*100)/100
                local CP = Part(Model, V3(Circumference/SG, HT, WD), CF*CA(0, math.rad(360/SG*A), 0)*CN(0, 0, DM/2+WD/2), BC, MT, TR)
                if VR then
                        CP.CFrame = CP.CFrame*CN(0, math.sin(A)*0.01, 0)
                end
        end
        return Model
end
function Texture(PT, FC, TX, SU, SV, TR)
        local Thing = Instance.new("Texture", PT)
        Thing.Face = FC
        Thing.Texture = TX
        Thing.StudsPerTileU = SU
        Thing.StudsPerTileV = SV
        Thing.Transparency = TR
        return Thing
end
function TextureFaces(PT, FCS, TX, SU, SV, TR)
        for _, Face in pairs(FCS) do
                Texture(PT, Face, TX, SU, SV, TR)
        end
end
function Decal(PT, FC, TX, TR)
        local Thing = Instance.new("Decal", PT)
        Thing.Face = FC
        Thing.Texture = TX
        Thing.Transparency = TR
        return Thing
end
function DecalFaces(PT, FCS, TX, TR)
        for _, Face in pairs(FCS) do
                Decal(PT, Face, TX, TR)
        end
end
function GetTriangleValues(Points) 
        local G, V = 0
        for S = 1, 3 do
                local L = (Points[1+(S+1)%3]-Points[1+S%3]).magnitude
                G, V = L > G and L or G, L > G and {Points[1+(S-1)%3], Points[1+(S)%3], Points[1+(S+1)%3]} or V
        end
        local D = V[2]+(V[3]-V[2]).unit*((V[3]-V[2]).unit:Dot(V[1]-V[2]))
        local C, B = (D-V[1]).unit, (V[2]-V[3]).unit
        local A = B:Cross(C)
        S1 = V3(0, (V[2]-D).magnitude, (V[1]-D).magnitude)/1--0.2
        S2 = V3(0, (V[3]-D).magnitude, (V[1]-D).magnitude)/1--0.2
        C1 = CN(0,0,0,A.X,B.X,C.X,A.Y,B.Y,C.Y,A.Z,B.Z,C.Z)+(V[1]+V[2])/2
        C2 = CN(0,0,0,-A.X,-B.X,C.X,-A.Y,-B.Y,C.Y,-A.Z,-B.Z,C.Z)+(V[1]+V[3])/2
        return C1, C2, S1, S2
end
function Arrow(PT, CF)
        local Arrow = Instance.new("Model", PT)
        Arrow.Name = "Arrow"
        local ArrowShaft = Part(Arrow, V3(1, 4, 1), CF, "Medium stone grey")
        Cylinder(ArrowShaft, V3(0.3, 1, 0.3))
        local RightFeather = Part(Arrow, V3(1, 1, 1), ArrowShaft.CFrame*CN(0.35, -1.5, 0)*CA(0, math.rad(-90), 0), "Medium stone grey")
        Mesh(RightFeather, "Wedge", V3(0.1, 1, 0.4))
        local LeftFeather = Part(Arrow, V3(1, 1, 1), ArrowShaft.CFrame*CN(-0.35, -1.5, 0)*CA(0, math.rad(90), 0), "Medium stone grey")
        Mesh(LeftFeather, "Wedge", V3(0.1, 1, 0.4))
        local ArrowTip = Part(Arrow, V3(1, 1, 1), ArrowShaft.CFrame*CN(0, 2, 0), "Medium stone grey")
        Mesh(ArrowTip, "FileMesh", V3(0.3, 1, 0.3), "rbxassetid://1033714")
        return Arrow
end
function Crate(PT, SZ, CF, BN, MT, TOP, SIDES)
        local Thing = Part(PT, SZ, CF, BN, MT)
        if TOP then
                DecalFaces(Thing, {"Front", "Back"}, TOP)
                if not SIDES then
                        DecalFaces(Thing, {"Right", "Left", "Top", "Bottom"}, TOP)
                end
        end
        if SIDES then
                DecalFaces(Thing, {"Right", "Left", "Top", "Bottom"}, SIDES)
        end
        return Thing
end
function CrateTriangle(PT, SZ, CF, BN, MT, TOP, SIDES)
        local Triangle = Instance.new("Model", PT)
        Triangle.Name = "Crate Triangle"
        local Av = (SZ.X+SZ.Z)/2
        Crate(Triangle, SZ, CF*CN(Av/2, 0, 0)*CA(0, math.rad(math.random(-15, 15)), 0), BN, MT, TOP, SIDES)
        Crate(Triangle, SZ, CF*CN(-Av/2, 0, 0)*CA(0, math.rad(math.random(-15, 15)), 0), BN, MT, TOP, SIDES)
        Crate(Triangle, SZ, CF*CN(0, SZ.Y, 0)*CA(0, math.rad(90+math.random(-15, 15)), 0), BN, MT, TOP, SIDES)
end
function CoverWall(PT, CF, SZ, RD, AN, HT, WD, BC, MT)
        local WallOfCover = Instance.new("Model", PT)
        WallOfCover.Name = "Cover Wall"
        for H = 0, HT-1 do
                for C = -WD/2+H, WD/2-H do
                        Part(WallOfCover, SZ, CF*CA(0, math.rad(C*AN/WD), 0)*CN(0, H*SZ.Y, RD)*CA(math.rad(math.random(-15, 15)), math.rad(math.random(-15, 15)), 0), BC, MT)
                end
        end
        return WallOfCover
end
function Fountain(CF)
        --Fountain
        Circle(Map, CF*CN(0, 3, 0), 50, 30, 1, 5, false, "Medium stone grey", "Concrete")
        Circle(Map, CF*CN(0, 1, 0), 0, 30, 25, 1, true, "Medium stone grey", "Concrete")
        local Water1 = Part(Map, V3(50.75, 1, 50.75), CF*CN(0, 4, 0), "Dove blue", "SmoothPlastic", 0.2)
        Water1.CanCollide = false
        Cylinder(Water1)
        
        Circle(Map, CF*CN(0, 12, 0), 30, 30, 1, 4, false, "Medium stone grey", "Concrete")
        Circle(Map, CF*CN(0, 5.75, 0), 0, 30, 10, 8.5, false, "Medium stone grey", "Concrete")
        Circle(Map, CF*CN(0, 10.5, 0), 0, 30, 15, 1, true, "Medium stone grey", "Concrete")
        local Water2 = Part(Map, V3(30.75, 1, 30.75), CF*CN(0, 12.5, 0), "Dove blue", "SmoothPlastic", 0.2)
        Water2.CanCollide = false
        Cylinder(Water2)
        
        Circle(Map, CF*CN(0, 18, 0), 15, 30, 1, 3, false, "Medium stone grey", "Concrete")
        Circle(Map, CF*CN(0, 13.75, 0), 0, 30, 5, 5.5, false, "Medium stone grey", "Concrete")
        Circle(Map, CF*CN(0, 17, 0), 0, 30, 7.5, 1, true, "Medium stone grey", "Concrete")
        local Water3 = Part(Map, V3(15.75, 1, 15.75), CF*CN(0, 18.25, 0), "Dove blue", "SmoothPlastic", 0.2)
        Water3.CanCollide = false
        Cylinder(Water3)
        
        local StatueBase = Part(Map, V3(10, 3, 10), CF*CN(0, 19, 0), "Medium stone grey", "Concrete")
        Cylinder(StatueBase)
        local StatueBase2 = Part(Map, V3(8, 3, 8), CF*CN(0, 22, 0), "Medium stone grey", "Concrete")
        Cylinder(StatueBase2)
        local StatueBase3 = Part(Map, V3(9, 1, 9), CF*CN(0, 24, 0), "Medium stone grey", "Concrete")
        Cylinder(StatueBase3)
        local StatueBase4 = Part(Map, V3(7, 1, 7), CF*CN(0, 25, 0), "Medium stone grey", "Concrete")
        Cylinder(StatueBase4)
        
        local StatueRightLeg = Part(Map, V3(2, 4, 2), CF*CN(1, 25.5, 0)*CA(math.rad(15), 0, 0)*CN(0, 2, 0), "Medium stone grey")
        local StatueTorso = Part(Map, V3(4, 4, 2), StatueRightLeg.CFrame*CN(0, 2, 0)*CA(math.rad(60), 0, 0)*CN(-1, 2, 0), "Medium stone grey")
        local StatueLeftLeg = Part(Map, V3(2, 4, 2), StatueTorso.CFrame*CN(-1, -2, 0)*CA(math.rad(30), 0, 0)*CN(0, -2, 0), "Medium stone grey")
        local StatueRightArm = Part(Map, V3(2, 4, 2), StatueTorso.CFrame*CN(3, 1, 0)*CA(math.rad(-30), 0, math.rad(30))*CN(0, -1, 0.25), "Medium stone grey")
        local StatueLeftArm = Part(Map, V3(2, 4, 2), StatueTorso.CFrame*CN(-3, 1, 0)*CA(math.rad(-60), 0, math.rad(-30))*CN(0, -1, 0.25), "Medium stone grey")
        local StatueHead = Part(Map, V3(2.5, 2.5, 2.5), StatueTorso.CFrame*CN(0, 2, 0)*CA(math.rad(15), 0, 0)*CN(0, 1, 0), "Medium stone grey")
        Mesh(StatueHead, "Head")
        
        --Arrow(Map, CF*CN(0, 33, 5)*CA(math.rad(95), math.rad(30), math.rad(-8)))
        --Arrow(Map, CF*CN(-2, 27, 0)*CA(math.rad(90), math.rad(-60), math.rad(7)))
        --Arrow(Map, CF*CN(2.75, 27.5, 2)*CA(math.rad(112), math.rad(-30), math.rad(8)))
        
        --Jet Mesh: 88775328
        --Jet Texture: 88775716
        
        local Jet = Part(Map, V3(10, 5, 20), CF*CN(3, 37, 0)*CA(math.rad(-15), math.rad(150), 0), "Black")
        local JetMesh = Mesh(Jet, "FileMesh", V3(10, 10, 10), "rbxassetid://88775328"--[[, "rbxassetid://88775716"]])
end
function Stryker(PT, CF, BC, MT, BK)
        local Stryker = Instance.new("Model", PT)
        Stryker.Name = "M1126 Stryker"
        local StrykerBase = Part(Stryker, V3(10, 1, 30), CF, BC, MT)
        local StrykerBack1 = Part(Stryker, V3(2, 5, 30), StrykerBase.CFrame*CN(4.8, 0, 0)*CA(0, 0, math.rad(-45))*CN(-0.5, 1.5, 0), BC, MT)
        local StrykerBack2 = Part(Stryker, V3(2, 5, 30), StrykerBase.CFrame*CN(-4.8, 0, 0)*CA(0, 0, math.rad(45))*CN(0.5, 1.5, 0), BC, MT)
        local StrykerBack3 = Part(Stryker, V3(2, 5, 30), StrykerBack1.CFrame*CN(0, 1.75, 0)*CA(0, 0, math.rad(45))*CN(0, 2.5, 0), BC, MT)
        local StrykerBack4 = Part(Stryker, V3(2, 5, 30), StrykerBack2.CFrame*CN(0, 1.75, 0)*CA(0, 0, math.rad(-45))*CN(0, 2.5, 0), BC, MT)
        local StrykerTop = Part(Stryker, V3(15.5, 1, 30), StrykerBase.CFrame*CN(0, 7.5, 0), BC, MT)
        
        local StrykerBack6 = Part(Stryker, V3(3, 6.5, 1), StrykerBase.CFrame*CN(-4.5, 3.75, -14.5), BC, MT)
        local StrykerBack7 = Part(Stryker, V3(3, 6.5, 1), StrykerBase.CFrame*CN(4.5, 3.75, -14.5), BC, MT)
        
        local StrykerFront1 = Part(Stryker, V3(15, 6, 4), StrykerBase.CFrame*CN(0, 5, 17), BC, MT)
        local StrykerFront2 = Part(Stryker, V3(15, 4, 6), StrykerFront1.CFrame*CN(0, -1, 5), BC, MT)
        local StrykerFront2B = Wedge(Stryker, V3(15, 2, 6), StrykerFront2.CFrame*CN(0, 3, 0)*CA(0, math.rad(180), 0), BC, MT)
        local StrykerFront2C = Wedge(Stryker, V3(15, 4, 4), StrykerFront2.CFrame*CN(0, 0, 5)*CA(0, math.rad(180), 0), BC, MT)
        local StrykerFront3 = Part(Stryker, V3(15, 1.5, 4), StrykerFront1.CFrame*CN(0, -3.75, 10), BC, MT)
        local StrykerFront4 = Wedge(Stryker, V3(15, 4, 4), StrykerFront3.CFrame*CN(0, -2.75, 0)*CA(math.rad(180), 0, 0), BC, MT)
        local StrykerFront4B = Wedge(Stryker, V3(15, 5.5, 4), StrykerFront4.CFrame*CN(0, -0.75, 4)*CA(0, math.rad(180), 0), BC, MT)
        local StrykerFront5 = Part(Stryker, V3(15.1, 1, 4), StrykerFront2.CFrame, "Really black")
        StrykerFront5.Name = "Window"
        
        local StrykerFront6 = Part(Stryker, V3(4, 4, 4), StrykerFront2.CFrame*CN(4, 1.5, 0), BC, MT)
        local StrykerFront6B = Part(Stryker, V3(4, 1, 4), StrykerFront6.CFrame*CN(0, 2.1, 0), "Really black")
        StrykerFront6B.Name = "Window"
        Cylinder(StrykerFront6B)
        local StrykerFront6C = Part(Stryker, V3(4.25, 0.2, 4.25), StrykerFront6.CFrame*CN(0, 2.6, 0), BC, MT)
        Cylinder(StrykerFront6C)
        
        local StrykerFront7 = Part(Stryker, V3(7, 2, 4), StrykerFront6.CFrame*CN(0.5, 2, -5.5), BC, MT)
        local StrykerMountBottom = Part(Stryker, V3(5, 0.5, 5), StrykerTop.CFrame*CN(-4, 0.5, 7.5), "Dark stone grey", "DiamondPlate")
        local StrykerTopDoor = Part(Stryker, V3(5, 0.5, 5), StrykerTop.CFrame*CN(4, 0.5, 7.5), "Dark stone grey", "DiamondPlate")
        Cylinder(StrykerTopDoor)
        local StrykerTopDoorB = Part(Stryker, V3(4, 0.5, 4), StrykerTopDoor.CFrame*CN(0, 0.01, 0), "Really black")
        StrykerTopDoorB.Name = "Window"
        Cylinder(StrykerTopDoorB)
        
        local StrykerTopDoor2 = Part(Stryker, V3(5, 0.5, 5), StrykerTop.CFrame*CN(-4, 0.5, -6.5), "Dark stone grey", "DiamondPlate")
        Cylinder(StrykerTopDoor2)
        local StrykerTopDoor2B = Part(Stryker, V3(4, 0.5, 4), StrykerTopDoor2.CFrame*CN(0, 0.01, 0), "Really black")
        StrykerTopDoor2B.Name = "Window"
        Cylinder(StrykerTopDoor2B)
        
        local Antenna1 = Instance.new("Model", Stryker)
        Antenna1.Name = "Antenna"
        local Antenna1A = Part(Antenna1, V3(1, 0.5, 1), StrykerTop.CFrame*CN(6.75, 0.45, -14), "Dark stone grey", "DiamondPlate")
        Cylinder(Antenna1A)
        local Antenna1B = Part(Antenna1, V3(0.4, 4, 0.4), Antenna1A.CFrame*CN(0, 1.75, 0), "Really black")
        Cylinder(Antenna1B)
        local Antenna1C = Part(Antenna1, V3(0.1, 5, 0.1), Antenna1B.CFrame*CN(0, 4.5, 0), "Really black")
        Cylinder(Antenna1C)
        
        local Antenna2 = Instance.new("Model", Stryker)
        Antenna2.Name = "Antenna"
        local Antenna2A = Part(Antenna2, V3(1, 0.5, 1), StrykerTop.CFrame*CN(-6.75, 0.45, -14), "Dark stone grey", "DiamondPlate")
        Cylinder(Antenna2A)
        local Antenna2B = Part(Antenna2, V3(0.4, 4, 0.4), Antenna2A.CFrame*CN(0, 1.75, 0), "Really black")
        Cylinder(Antenna2B)
        local Antenna2C = Part(Antenna2, V3(0.1, 5, 0.1), Antenna2B.CFrame*CN(0, 4.5, 0), "Really black")
        Cylinder(Antenna2C)
        
        local Antenna3 = Instance.new("Model", Stryker)
        Antenna3.Name = "Antenna"
        local Antenna3A = Part(Antenna3, V3(1, 0.5, 1), StrykerTop.CFrame*CN(6.75, 0.45, 0), "Dark stone grey", "DiamondPlate")
        Cylinder(Antenna3A)
        local Antenna3B = Part(Antenna3, V3(0.4, 4, 0.4), Antenna3A.CFrame*CN(0, 1.75, 0), "Really black")
        Cylinder(Antenna3B)
        local Antenna3C = Part(Antenna3, V3(0.1, 5, 0.1), Antenna3B.CFrame*CN(0, 4.5, 0), "Really black")
        Cylinder(Antenna3C)
        
        local StrykerBase2 = Part(Stryker, V3(10, 2, 30), StrykerBase.CFrame*CN(0, -1.5, 0), BC, MT)
        local StrykerBase3 = Part(Stryker, V3(10, 4.5, 10), StrykerBase.CFrame*CN(0, -0.25, 20), BC, MT)
        
        for A = 0, 3 do
                local StrykerBackDecor1 = Part(Stryker, V3(1, 5, 0.5), StrykerBack1.CFrame*CN(0.6, 0.1, -10+A*7), BC, MT)
                local StrykerBackDecor2 = Part(Stryker, V3(1, 5, 0.5), StrykerBack2.CFrame*CN(-0.6, 0.1, -10+A*7), BC, MT)
                local StrykerBackDecor3 = Part(Stryker, V3(1, 5.5, 0.5), StrykerBack3.CFrame*CN(0.6, 0.2, -10+A*7), BC, MT)
                local StrykerBackDecor4 = Part(Stryker, V3(1, 5.5, 0.5), StrykerBack4.CFrame*CN(-0.6, 0.2, -10+A*7), BC, MT)
                local StrykerTopDecor = Part(Stryker, V3(14.1, 1, 0.5), StrykerTop.CFrame*CN(0, 0.1, -10+A*7), BC, MT)
                local WheelConnect = Part(Stryker, V3(1.5, 16, 1.5), StrykerBase2.CFrame*CN(0, -1, -5+A*7)*CA(0, 0, math.rad(90)), "Dark stone grey", "Concrete")
                Cylinder(WheelConnect)
                if A > 1 then
                        WheelConnect.CFrame = WheelConnect.CFrame*CN(0, 0, 3.5)
                end
                local RightWheel = Part(Stryker, V3(6, 1.5, 6), WheelConnect.CFrame*CN(0, 7.2, 0), "Really black", "Slate")
                Cylinder(RightWheel)
                local LeftWheel = Part(Stryker, V3(6, 1.5, 6), WheelConnect.CFrame*CN(0, -7.2, 0), "Really black", "Slate")
                Cylinder(LeftWheel)
        end
        local BackDoor = Part(Stryker, V3(8, 8, 1), StrykerBase.CFrame*CN(0, 3, -14.6), "Dark stone grey", "DiamondPlate")
        local BackRight = Part(Stryker, V3(3, 5, 5), StrykerBase.CFrame*CN(6, 0, -12.9), BC, MT)
        local BackLeft = Part(Stryker, V3(3, 5, 5), StrykerBase.CFrame*CN(-6, 0, -12.9), BC, MT)
        if BK then
                for A, Obj in pairs(Stryker:GetChildren()) do
                        if Obj:IsA("Part") then
                                Obj.CFrame = Obj.CFrame*CN(0, -Obj.Size.Y/2, 0)*CA(0, math.rad(math.random(-15, 15)), 0)*CN(0, Obj.Size.Y/2, 0)
                                local PrtMass = Obj:GetMass()
                                local PrtAv = (Obj.Size.X+Obj.Size.Y+Obj.Size.Z)
                                local Rand = math.random(3, 7)*2-1
                                if A%Rand == 0 then
                                        local NewPrt = Part(Map, V3(1, 1, 1), CN(Obj.Position))
                                        NewPrt.Transparency = 1
                                        local Fiah = Instance.new("Fire", NewPrt)
                                        Fiah.Size = PrtAv
                                        Fiah.Heat = 10
                                        local Smokey = Instance.new("Smoke", NewPrt)
                                        Smokey.Size = PrtMass/PrtAv
                                        Smokey.RiseVelocity = 7
                                        local Rnds = math.random(0, 30)/100
                                        Smokey.Color = Color3.new(Rnds, Rnds, Rnds)
                                end
                                local Rand = math.random(3, 7)*2-1
                                if A%Rand == 0 and Obj.Name ~= "Window" then
                                        Obj.Anchored = false
                                        Obj:BreakJoints()
                                        Obj.Velocity = V3(0, -PrtMass, 0)
                                end
                        elseif Obj:IsA("Model") then
                                if Obj.Name == "Antenna" then
                                        Obj:Destroy()
                                end
                        end
                end
                wait(3)
                for A, Obj in pairs(Stryker:GetChildren()) do
                        if Obj:IsA("Part") then
                                Obj.Anchored = true
                        end
                end
        end
        return Stryker
end
function Hangar(PT, CF, SZ, HT, BC, MT)
        local Hangar = Instance.new("Model", PT)
        Hangar.Name = "Hangar"
        local Length = SZ*1.25
        local HangarBase = Part(Hangar, V3(SZ, 1, Length), CF, BC, MT)
        local HangarRight = Part(Hangar, V3(1, HT, Length), CF*CN(-SZ/2+0.5, HT/2+.5, 0), BC, MT)
        local HangarLeft = Part(Hangar, V3(1, HT, Length), CF*CN(SZ/2-0.5, HT/2+0.5, 0), BC, MT)
        local HangarCeiling = Part(Hangar, V3(SZ, 1, Length), CF*CN(0, HT+1, 0), BC, MT)
        local HangarCeiling2 = Part(Hangar, V3(SZ/2, HT/2, Length), CF*CN(0, HT*1.25+1.5, 0), BC, MT)
        local HangarRight2 = Wedge(Hangar, V3(Length, HT+2, SZ/4), CF*CN(-SZ/2-SZ/8, HT/2+0.5, 0)*CA(0, math.rad(90), 0), BC, MT)
        local HangarRight3 = Wedge(Hangar, V3(Length, HT/2, SZ/4), CF*CN(-SZ/2+SZ/8, HT*1.25+1.5, 0)*CA(0, math.rad(90), 0), BC, MT)
        local HangarLeft2 = Wedge(Hangar, V3(Length, HT+2, SZ/4), CF*CN(SZ/2+SZ/8, HT/2+0.5, 0)*CA(0, math.rad(-90), 0), BC, MT)
        local HangarLeft3 = Wedge(Hangar, V3(Length, HT/2, SZ/4), CF*CN(SZ/2-SZ/8, HT*1.25+1.5, 0)*CA(0, math.rad(-90), 0), BC, MT)
        local EntranceSideRight = Part(Hangar, V3(10, HT, 1), CF*CN(-SZ/2+6, HT/2+0.5, Length/2-0.5), BC, MT)
        local EntranceSideRight2 = Part(Hangar, V3(10, HT, 1), CF*CN(-SZ/2+6, HT/2+0.5, -Length/2+0.5), BC, MT)
        local EntranceSideLeft = Part(Hangar, V3(10, HT, 1), CF*CN(SZ/2-6, HT/2+0.5, Length/2-0.5), BC, MT)
        local EntranceSideLeft2 = Part(Hangar, V3(10, HT, 1), CF*CN(SZ/2-6, HT/2+0.5, -Length/2+0.5), BC, MT)
end
 
for _, Obj in pairs(Workspace:GetChildren()) do
        if Obj.Name == "Awesome Map" then
                Obj:Destroy()
        end
end
 
Offset = CN(100, 0.25, 100)
GrassColor = "Grime"
Map = Instance.new("Model", Workspace)
Map.Name = "Awesome Map"
Baseplate = Part(Map, V3(1000, 1, 1000), Offset, "Dark stone grey", "Concrete")
for A = 0, 3 do
        local Wall = Part(Map, V3(1000, 51, 1), Offset*CA(0, math.rad(90*A), 0)*CN(0, 25, 500.5), "Dark stone grey", "Slate")
        local WallCorner = Part(Map, V3(1, 51, 1), Wall.CFrame*CN(500.5, 0, 0), "Dark stone grey", "Slate")
        local Ramp = Wedge(Map, V3(100, 50, 100), Offset*CA(0, math.rad(90*A), 0)*CN(0, 25.5, 450), "Dark stone grey", "Slate")
        local StadiumFloor = Part(Map, V3(1000, 1, 250), Wall.CFrame*CN(0, 25, 125.5), "Medium stone grey", "Concrete")
        
        --Grass Patches
        local Grass = Part(Map, V3(400, 1, 200), Offset*CA(0, math.rad(90*A), 0)*CN(0, 0.1, 400), GrassColor, "Grass")
        local Grass2 = Wedge(Map, V3(1, 200, 200), Grass.CFrame*CN(300, 0, 0)*CA(0, 0, math.rad(-90)), GrassColor, "Grass")
        local Grass3 = Wedge(Map, V3(1, 200, 200), Grass.CFrame*CN(-300, 0, 0)*CA(0, 0, math.rad(90)), GrassColor, "Grass")
        
        local SideWalk = Part(Map, V3(400, 1.1, 10), Grass.CFrame*CN(0, 0, -95.1), "Medium stone grey", "Concrete")
        local Length = math.sqrt(200^2*2)
        local SideWalk2 = Part(Map, V3(Length, 1.1, 10), Grass2.CFrame*CA(math.rad(45), 0, math.rad(90))*CN(0, 0, 5), "Medium stone grey", "Concrete")
        local SideWalk3 = Part(Map, V3(Length, 1.1, 10), Grass3.CFrame*CA(math.rad(45), 0, math.rad(90))*CN(0, 0, 5), "Medium stone grey", "Concrete")
end
Fountain(Offset)
FountainGrass = Part(Map, V3(100, 1, 100), Offset*CN(0, 0.1, 0), GrassColor, "Grass")
Cylinder(FountainGrass)
FountainPath = Part(Map, V3(120, 1, 120), Offset*CN(0, 0.05, 0), "Medium stone grey", "Concrete")
Cylinder(FountainPath)
 
Crate(Map, V3(5, 5, 5), Offset*CN(50, 3, 50))
CoverWall(Map, Offset*CN(0, 2, -100), V3(8, 4, 4), 15, 180, 2, 10, "Medium stone grey", "Slate")
 
CoverWall(Map, Offset*CN(-150, 1.5, -100)*CA(0, math.rad(15), 0), V3(6, 3, 3), 15, 210, 3, 20, "Medium stone grey", "Slate")
CoverWall(Map, Offset*CN(150, 1.5, -100)*CA(0, math.rad(-15), 0), V3(6, 3, 3), 15, 210, 3, 20, "Medium stone grey", "Slate")
 
CrateTriangle(Map, V3(4, 4, 8), Offset*CN(25, 2.5, -100)*CA(0, math.rad(math.random(-45, 45)), 0), "Brown", "Wood")
CrateTriangle(Map, V3(4, 4, 8), Offset*CN(27, 2.5, -112)*CA(0, math.rad(90+math.random(-45, 45)), 0), "Brown", "Wood")
 
CrateTriangle(Map, V3(4, 4, 8), Offset*CN(-25, 2.5, -100)*CA(0, math.rad(math.random(-45, 45)), 0), "Brown", "Wood")
CrateTriangle(Map, V3(4, 4, 8), Offset*CN(-37.5, 2.5, -100)*CA(0, math.rad(90+math.random(-45, 45)), 0), "Brown", "Wood")
 
MilitaryColors = {"Black", "Earth green", "Brick yellow", "Really black", "Dark stone grey", "Institutional white"}
 
CrateTriangle(Map, V3(8, 8, 20), Offset*CN(50, 4.5, -50)*CA(0, math.rad(math.random(-90, 90)), 0), "Medium stone grey", "SmoothPlastic", "rbxassetid://110093179", "rbxassetid://110093185")
 
Hangar(Map, Offset*CN(0, 0.5, 200), 100, 30, "Dark stone grey", "Concrete")

Stryker(Map, Offset*CN(0, 6, -250), "Dark stone grey", "DiamondPlate", false)