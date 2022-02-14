wait(math.random(1, 3500)/1000)
CN, CA, V3, U2, BN, C3 = CFrame.new, CFrame.Angles, Vector3.new, UDim2.new, BrickColor.new, Color3.new
function New(Type)
        return function(Set)
                local Obj = Instance.new(Type)
                for A, B in pairs(Set) do
                        Obj[A] = B
                end
                return Obj
        end
end
function Part(PT, SZ, CF, BC, MT, TR, CC)
        local CC, TR, MT = CC or true, TR or 0, MT or "SmoothPlastic"
        local P = New'Part'{Parent = PT, FormFactor = 3, Size = SZ, Anchored = true, TopSurface = 0, BottomSurface = 0, BrickColor = BN(BC), Material = MT, Transparency = TR, CanCollide = CC}
        P.CFrame = CF
        P.Locked = true
        return P
end
function Wedge(PT, SZ, CF, BC, MT, TR, CC)
        local CC, TR, MT = CC or true, TR or 0, MT or "SmoothPlastic"
        local P = New'WedgePart'{Parent = PT, FormFactor = 3, Size = SZ, Anchored = true, TopSurface = 0, BottomSurface = 0, BrickColor = BN(BC), Material = MT, Transparency = TR, CanCollide = CC}
        P.CFrame = CF
        return P
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
for _, Obj in pairs(Workspace:GetChildren()) do
        if Obj.Name == "Awesome map is awesome" then
                Obj:Destroy()
        end
end
pcall(function () Workspace["Awesome map is awesome"]:Destroy() end)
Map = New'Model'{Parent = Workspace, Name = "Awesome map is awesome"}
Spawn = New'SpawnLocation'{Parent = Map, FormFactor = 3, Size = V3(0, 0, 0), Anchored = true, CanCollide = false, Transparency = 1}
Offset = CN(100, 0, 100)
Size = 3
TopLayer = 0.2
Splits = 5
Complexity = 8
Dispersion = 5
Randomness = 200
SandHeight = 0
Sandline = 4
WaterStart = SandHeight-Size-(Sandline*Size)
Points = {}
SlopeTable = {}
for A = 1, Complexity do
        local Table = {}
        SlopeTable2 = {}
        for B = 1, Complexity do
                local Slope, Slope2
                if SlopeTable[A] then
                        Slope = SlopeTable[A][B-1]+math.random(-C/Heyomplexity, Complexity)/Complexity
                else
                        Slope = math.random(-Complexity, Complexity)/Complexity
                end
                if SlopeTable[A-1] then
                        Slope2 = SlopeTable[A-1][B]+math.random(-Complexity, Complexity)/Complexity
                else
                        Slope2 = math.random(-Complexity, Complexity)/Complexity
                end
                if Slope > 1 then
                        Slope = Slope-0.2
                elseif Slope < -1 then
                        Slope = Slope+0.2
                end
                if Slope2 > 1 then
                        Slope2 = Slope2-0.2
                elseif Slope2 < -1 then
                        Slope2 = Slope2+0.2
                end
                table.insert(SlopeTable2, (Slope*Slope2))
                table.insert(Table, (Slope+Slope2)*Randomness)
        end
        table.insert(SlopeTable, SlopeTable2)
        table.insert(Points, Table)
end
--Interpolation
for S = 1, Splits do
        local Interpolated = {}
        for A, Table in pairs(Points) do
                local Set = {}
                local NewSet = {}
                for B, Point in pairs(Table) do
                        table.insert(Set, Point)
                        table.insert(Set, Point)
                        table.insert(NewSet, Point)
                        table.insert(NewSet, Point)
                end
                table.insert(Interpolated, Set)
                table.insert(Interpolated, NewSet)
        end
        for A, Table in pairs(Interpolated) do
                for B, Point in pairs(Table) do
                        local Ps = {
                                Point,
                                Table[B+1] or Table[B-1] or 0,
                                Table[B-1] or Table[B+1] or 0,
                                (Interpolated[A+1] or Interpolated[A-1])[B] or 0,
                                (Interpolated[A-1] or Interpolated[A+1])[B] or 0
                                --[[(Interpolated[A+1] or Interpolated[A-1])[B+1] or (Interpolated[A-1] or Interpolated[A+1])[B-1] or 0,
                                (Interpolated[A-1] or Interpolated[A+1])[B+1] or (Interpolated[A+1] or Interpolated[A-1])[B-1] or 0,
                                (Interpolated[A+1] or Interpolated[A-1])[B-1] or (Interpolated[A-1] or Interpolated[A+1])[B+1] or 0,
                                (Interpolated[A-1] or Interpolated[A+1])[B-1] or (Interpolated[A+1] or Interpolated[A-1])[B+1] or 0]]
                        }
                        local Value = 0
                        for Pn, P in pairs(Ps) do
                                Value = Value+P
                        end
                        Value = Value/4
                        Table[B] = Value
                end
        end
        Points = Interpolated
end
for A, Table in pairs(Points) do
        for B, Point in pairs(Table) do
                Table[B] = math.ceil(Point/Size)*Size
        end
end
Colors = {
{-1/0, SandHeight, "Brick yellow", "Sand", "Brick yellow", "Sand"},
{SandHeight, 1/0, "Reddish brown", "Grass", "Bright green", "Grass"},
}
Highest = -1/0
for N, S in pairs(Points) do
        wait()
        for M, P in pairs(S) do
                if M%100 == 0 then
                        wait()
                end
                local Cube = Part(Map, V3(Size, TopLayer, Size), Offset*CN(-Size*#Points/2, 0, -Size*#S/2)*CN(Size*N, P, Size*M), "Dark green", "Grass")
                local Height = P
                if Height > Highest then
                        Highest = Height
                        Spawn.CFrame = Cube.CFrame
                end
                for _, Color in pairs(Colors) do
                        if Height > Color[1] and Height < Color[2] then
                                Cube.BrickColor = BN(Color[5])
                                Cube.Material = Color[6]
                        end
                end
                local GroundCover = nil
                if P-(S[M-1] or S[M+1])>TopLayer or P-(S[M+1] or S[M-1])>TopLayer or P-(Points[N-1] or Points[N+1])[M]>TopLayer or P-(Points[N+1] or Points[N-1])[M]>TopLayer then
                        local G = 0
                        repeat
                                G = G+1
                                GroundCover = Part(Map, V3(Size, Size, Size), Cube.CFrame*CN(0, -Size*G+Size/2-TopLayer/2, 0), "Dark green", "Grass")
                                local Height = GroundCover.CFrame.Y-Offset.Y
                                for _, Color in pairs(Colors) do
                                        if Height > Color[1] and Height < Color[2] then
                                                GroundCover.BrickColor = BN(Color[3])
                                                GroundCover.Material = Color[4]
                                        end
                                end
                                local GCH = GroundCover.CFrame.Y-Offset.Y-Size/2-TopLayer/2
                        until GCH <= (S[M-1] or S[M+1]) and GCH <= (S[M+1] or S[M-1]) and GCH <= (Points[N-1] or Points[N+1])[M] and GCH <= (Points[N+1] or Points[N-1])[M]
                end
                --[[if Height < WaterStart then
                        local Water = Part(Terrain, V3(Size, 0, Size), CN(Cube.CFrame.X, WaterStart, Cube.CFrame.Z)*CN(0, 0, 0), "Royal blue", "Plastic", 0.5)
                        Cube.CFrame = Cube.CFrame*CN(0, -TopLayer, 0)
                        New'BlockMesh'{Parent = Water, Scale = V3(1, 0, 1)}
                        Water.CanCollide = false
                        if GroundCover then Cube:Destroy() end
                end]]
        end
end
local Width = #Points*Size
Ocean = Part(Map, V3(1024, 0, 1024), CN(Offset.X, WaterStart+Offset.Y, Offset.Z), "Royal blue", "SmoothPlastic", 0.5)
New'BlockMesh'{Parent = Ocean, Scale = V3(Width/1024, 0, Width/1024)}
Ocean.CanCollide = false