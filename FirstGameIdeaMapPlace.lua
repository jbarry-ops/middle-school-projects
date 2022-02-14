--Place of Epicosity
--«øéMµ¦¬ìaâ§ÖdÞ¦e_á¯¿ÿb¦±ëy°ñ_£ªºß½a¤s¦Üøkê¼ò4ü«ÆkÅ?iÉÑ×nëåg¢¯b°»éiÄºßlá§µy¬

wait(3)

Map = nil

Debris = Game:GetService("Debris")
RunService = Game:GetService("RunService")
Lighting = Game:GetService("Lighting")

Lighting.TimeOfDay = 18
Lighting.Brightness = math.huge
Lighting.Ambient = Color3.new(0.4, 0.6, 0.8)
Lighting.FogEnd = 150
Lighting.FogColor = Color3.new(0.8, 0.6, 0.8)

Offset = CFrame.new(0, 1, 0)

function Model(PT, NM)
local M = Instance.new("Model", PT)
M.Name = NM
return M
end
function Part(PT, SZ, CF, BC, MT, TR)
local TR, MT = TR or 0, MT or "Plastic"
local P = Instance.new("Part", PT)
P.FormFactor = "Custom"
P.Size = SZ
P.Anchored = true
P.CFrame = CF
P.BrickColor = BC
P.Material = MT
P.Transparency = TR
P.TopSurface = 0
P.BottomSurface = 0
return P
end
function Mesh(PT, MT, SC, MI, TI)
local TI, MI, SC = TI or "", MI or "", SC or Vector3.new(1, 1, 1)
local M = Instance.new("SpecialMesh", PT)
M.MeshType = MT
M.Scale = SC
M.MeshId = MI
M.TextureId = TI
return M
end
function CMesh(PT, SC)
local SC = SC or Vector3.new(1, 1, 1)
local M = Instance.new("CylinderMesh", PT)
M.Scale = SC
return M
end
function Triangle(A,B,C,Color)
local Base1 = (C-A)*((B-A):Dot(C-A)/((C-A).magnitude)^2)
local Base2 = ((C-A) - Base1)
local Height = (B-A) - Base1
local Pos1 = (A + (B-A)/2)
local Pos2 = (C + (B-C)/2)
local Normal1 = Base1:Cross(Height).unit
local Normal2 = Base2:Cross(Height).unit
local Cf1 = CFrame.new(0,0,0,Normal1.x,-Base1.unit.x,-Height.unit.x, Normal1.y,-Base1.unit.y,-Height.unit.y,Normal1.z, -Base1.unit.z,-Height.unit.z) + Pos1
local Cf2 =  CFrame.new(0,0,0,Normal2.x,-Base2.unit.x,-Height.unit.x, Normal2.y,-Base2.unit.y,-Height.unit.y,Normal2.z, -Base2.unit.z,-Height.unit.z) * CFrame.Angles(0,0,math.pi)+ Pos2
local M = Instance.new("Model")
local P1 = Instance.new("WedgePart", M)
P1.FormFactor = "Custom"
P1.Size = Vector3.new(1,math.floor(Base1.magnitude),math.floor(Height.magnitude))
P1.Anchored = true
P1.TopSurface = 0
P1.BottomSurface = 0
P1.BrickColor = Color
P1.CFrame = Cf1 + (Cf1 - Cf1.p) * Vector3.new(.5,0,0)
local M1 = Instance.new("SpecialMesh", P1)
M1.MeshType = "Wedge"
M1.Scale = Vector3.new(1, Base1.magnitude, Height.magnitude)/P1.Size
local P2 = Instance.new("WedgePart", M)
P2.FormFactor = "Custom"
P2.Size = Vector3.new(1,math.floor(Base2.magnitude),math.floor(Height.magnitude))
P2.Anchored = true
P2.TopSurface = 0
P2.BottomSurface = 0
P2.BrickColor = Color
P2.CFrame = Cf2 +(Cf2 - Cf2.p) * Vector3.new(-.5,0,0)
local M2 = Instance.new("SpecialMesh", P2)
M2.MeshType = "Wedge"
M2.Scale = Vector3.new(1, Base2.magnitude, Height.magnitude)/P2.Size
return M
end
for _, Obj in pairs(Workspace:GetChildren()) do
if Obj.Name == "Map" then
Obj:ClearAllChildren()
Map = Obj
end
end
if not Map then
Map = Model(Workspace, "Map")
end

Base = Part(Map, Vector3.new(1500, 1, 1500), Offset, BrickColor.new("Earth green"), "Grass")
PColor = "Black"
Torso = Part(Map, Vector3.new(2, 2, 1), Offset * CFrame.new(0, 2, 1.6) * CFrame.Angles(math.rad(-30), 0, 0), BrickColor.new(PColor), "Slate")
Head = Part(Map, Vector3.new(2, 1, 1), Torso.CFrame * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(30), math.rad(-45), 0) * CFrame.new(0, 0.5, 0), BrickColor.new(PColor), "Slate")
Mesh(Head, "Head", Vector3.new(1.25, 1.25, 1.25))
RightLeg = Part(Map, Vector3.new(1, 2, 1), Torso.CFrame * CFrame.new(-0.5, -1.25, 0) * CFrame.Angles(math.rad(-60), 0, math.rad(-15)) * CFrame.new(0, -1, 0), BrickColor.new(PColor), "Slate")
LeftLeg = Part(Map, Vector3.new(1, 2, 1), Torso.CFrame * CFrame.new(0.5, -1.25, 0) * CFrame.Angles(math.rad(-60), 0, math.rad(15)) * CFrame.new(0, -1, 0), BrickColor.new(PColor), "Slate")
RightArm = Part(Map, Vector3.new(1, 2, 1), Torso.CFrame * CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(-60), 0, math.rad(-45)) * CFrame.new(0, -1, 0), BrickColor.new(PColor), "Slate")
LeftArm = Part(Map, Vector3.new(1, 2, 1), Torso.CFrame * CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-30)) * CFrame.new(0, -1, 0), BrickColor.new(PColor), "Slate")
B1 = Part(Map, Vector3.new(1, 1, 1), RightArm.CFrame * CFrame.new(0.5, -0.85, 0.675) * CFrame.Angles(0, 0, math.rad(-60)), BrickColor.new("Dove blue"))
Mesh(B1, "FileMesh", Vector3.new(0.4, 0.4, 0.4), "http://www.roblox.com/asset/?id=51226819")
G1 = Part(Map, Vector3.new(5, 5, 5), Offset * CFrame.new(-1.5, 0, 1.75) * CFrame.Angles(math.rad(-90), math.rad(-25), 0), BrickColor.new("Earth green"), "Grass")
G1.CanCollide = false
Mesh(G1, "FileMesh", Vector3.new(2, 2, 6), "http://www.roblox.com/asset/?id=1080954")
G2 = Part(Map, Vector3.new(5, 5, 5), Offset * CFrame.new(1.5, 0, 1.75) * CFrame.Angles(math.rad(-90), math.rad(25), 0), BrickColor.new("Earth green"), "Grass")
G2.CanCollide = false
Mesh(G2, "FileMesh", Vector3.new(2, 2, 6), "http://www.roblox.com/asset/?id=1080954")
Book = Part(Map, Vector3.new(1, 1, 1), LeftArm.CFrame * CFrame.new(0, -0.4, 0) * CFrame.Angles(0, 0, math.rad(-90)), BrickColor.new("Black"))
Mesh(Book, "FileMesh", Vector3.new(1.25, 1.25, 1.25), "http://www.roblox.com/asset/?id=49358400", "http://www.roblox.com/asset/?id=49358412")
Hat = Part(Map, Vector3.new(2, 2, 2), Head.CFrame * CFrame.new(0, 0.6, 0) * CFrame.Angles(0, math.rad(180), 0), BrickColor.new("Black"))
Mesh(Hat, "FileMesh", Vector3.new(1.5, 1.5, 1.5), "http://www.roblox.com/asset/?id=47251272", "http://www.roblox.com/asset/?id=71479733")

Road = Part(Map, Vector3.new(151, 1, 9), Offset * CFrame.new(0, 0.05, 15), BrickColor.new("Reddish brown"), "Slate")
Road2 = Part(Map, Vector3.new(150.8, 1, 8.8), Road.CFrame * CFrame.new(0, 0.05, 0), BrickColor.new("Brown"), "Concrete")

for A = 1, 20 do
wait(0.05)
for B = 1, 11 do
local C1 = Offset * CFrame.new(78-(A*7.5), 0, 18+(B*5)) * CFrame.Angles(math.rad(-90), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)))
local G5 = Part(Map, Vector3.new(1, 1, 1), C1, BrickColor.new("Earth green"), "Grass")
G5.CanCollide = false
Mesh(G5, "FileMesh", Vector3.new(5, 5, 15), "http://www.roblox.com/asset/?id=1080954")
end
end

for A = 1, 20 do
wait(0.05)
for B = 1, 17 do
if (A == 11 or A == 10) and (B == 1 or B == 2 or B == 3) then
else
local C1 = Offset * CFrame.new(78-(A*7.5), 0, 12-(B*5)) * CFrame.Angles(math.rad(-90), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)))
local G5 = Part(Map, Vector3.new(1, 1, 1), C1, BrickColor.new("Earth green"), "Grass")
G5.CanCollide = false
Mesh(G5, "FileMesh", Vector3.new(5, 5, 15), "http://www.roblox.com/asset/?id=1080954")
end
end
end

--[[

MULE: 1077604
One-winged Angel: 1372260
Chrono Trigger: 1280463
**Rickroll: 2027611
FFVII Battle AC: 1280473
Cursed Abbey: 1372257
Choir: 1372258
SM64 Theme: 1280470
Fire Emblem: 1372259
Final Destination: 1280414
Pokemon Theme: 1372261
Star Fox Theme: 1372262
Lol: 2303479
Halo Theme: 1034065
The Buzzer: 5982975
*Wind of Fjords: 1015394
Schala: 5985787
Womanking: 5986151
**Demonhunter: 4761522
Tink: 5985139
**Nerezza Song: 8610025

]]

Moozik = Instance.new("Sound", Map)
Moozik.SoundId = "http://www.roblox.com/asset/?id=4761522"
Moozik.Pitch = 1.5
Moozik.Volume = 1
Moozik.Looped = true

CP = Part(Map, Vector3.new(1, 1, 1), Offset * CFrame.new(math.random(-75, 75), 5, math.random(-75, 75)), BrickColor.new("Really black"), "Plastic", 1)
CP.CanCollide = false

Chirpy = Instance.new("Sound", CP)
Chirpy.SoundId = "http://www.roblox.com/asset/?id=24784722"
Chirpy.Volume = 0.75

Moozik:Play()
Chirpy:Play()
wait(0.1)
Moozik:Stop()
Chirpy:Stop()
wait(0.1)
Moozik:Play()
wait(0.1)
Moozik:Stop()
wait(0.1)
Moozik:Play()

BCs = {"Dusty rose", "Brick yellow", "Medium red", "Sand red", "Nougat", "Light stone grey", "Medium stone grey", "Dark stone grey", "Medium green"}

for A = 1, 4 do
wait(0.05)
for B = 1, 126 do
local Color = BrickColor.new(BCs[math.random(1, #BCs)])
local Brick = Part(Map, Vector3.new(1, 1, 2), Road.CFrame * CFrame.new(76 - (B * 1.2), 0.2 + math.random(-100, 100)/1000, 5.5 - (A * 2.2)) * CFrame.Angles(0, math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5))), Color, "Concrete")
local Brick2 = Part(Map, Vector3.new(1.1, 0.75, 2.1), Brick.CFrame * CFrame.new(0, 0.1, 0), BrickColor.new("Black"), "Concrete")
--local Brick3 = Part(Map, Vector3.new(0.9, 1, 1.9), Brick.CFrame * CFrame.new(0, 0.1, 0), Color, "Concrete")
end
end

--[[MESH STUFF

Grass: http://www.roblox.com/asset/?id=1080954

Rock: http://www.roblox.com/asset/?id=1290033
Rock [Texture]: http://www.roblox.com/asset/?id=1290030

Bird: http://www.roblox.com/asset/?id=51226819

Music Note: http://www.roblox.com/asset/?id=1088207
Music Note [Texture]: http://www.roblox.com/asset?id=1088099

Book: http://www.roblox.com/asset/?id=49358400
Book [Texture]: http://www.roblox.com/asset/?id=49358412

Fez: http://www.roblox.com/asset/?id=96675441
Fez [Texture]: http://www.roblox.com/asset/?id=96675514

Adventure Cap 1: http://www.roblox.com/asset/?id=47251272
Adventure Cap 1 [Texture]: http://www.roblox.com/asset/?id=71479733

Bowtie: http://www.roblox.com/asset/?id=16593970
TARDIS Blue: http://www.roblox.com/asset/?id=28538413

]]

--Chirp: http://www.roblox.com/asset/?id=24784722

--Tree Generator [Version: 2] Made by Ask4kingbily
Current = 1
Limit = 8
Split = 2
Color = "Reddish brown"
Height = 10
Offset2 = Offset * CFrame.new(0, Height/2, 0)
Width = 1
RD = 30
Tree = Model(Map, "Tree")
Trunk = Part(Tree, Vector3.new(Width, Height, Width), Offset2, BrickColor.new(Color), "Slate")
Old = Trunk
T1 = {}
T2 = {}
function Branch(T)
Wait(0.01)
if Current <= Limit then
T1 = T
T2 = {}
for Branches = 1, #T1 do
local B = T1[Branches]
local C = B.CFrame * CFrame.new(0, B.Size.Y/2, 0)
local SZ = Vector3.new(B.Size.X * 0.9, B.Size.Y * 0.9, B.Size.Z * 0.9)
Old = B
if Current == Limit then
local LS = math.random(5, 7)
local L = Part(Tree, Vector3.new(LS, LS, LS), C * CFrame.Angles(math.rad(math.random(-RD, RD)), math.rad(math.random(-RD, RD)), math.rad(math.random(-RD, RD))) * CFrame.new(0, SZ.Y/2, 0), BrickColor.new("Earth green"), "Grass")
else
for BN = 1, Split do
local B2 = Part(Tree, SZ, C * CFrame.Angles(math.rad(math.random(-RD, RD)), math.rad(math.random(-RD, RD)), math.rad(math.random(-RD, RD))) * CFrame.new(0, SZ.Y/2, 0), BrickColor.new(Color), "Slate")
table.insert(T2, B2)
end
end
end
Current = Current + 1
Branch(T2)
Wait(0.01)
end
end
Branch({Trunk})

--[[Creek
AVR = math.random(-15, 15)
SVR = 10
STR = Offset * CFrame.new(75, 0.6, -50)
SG = 25
PT = {STR, STR * CFrame.new(0, 0, SVR)}
for RS = 0, SG do
wait(0.01)
local DST = 180/SG
local PC = PT[#PT-1] * CFrame.Angles(0, math.rad(AVR), 0) * CFrame.new(-DST, 0, 0)
--Make a point from the last point in table, using YVR and ZVR.
local Point = Part(Map, Vector3.new(0.5, 0.5, 0.5), PC, BrickColor.new("Black"))
Point.Transparency = 1
local Point2 = Part(Map, Vector3.new(0.5, 0.5, 0.5), PC * CFrame.new(0, 0, SVR), BrickColor.new("Black"))
Point2.Transparency = 1
AVR = math.random(-15, 15)
local PCR = PC:toEulerAnglesXYZ()
if PCR >= 45 then
AVR = 15
elseif PCR <= -45 then
AVR = -15
end
if PC.p.Z <= -70 then
AVR = 15
elseif PC.p.Z >= -40 then
AVR = -15
end
SVR = SVR + math.random(-1, 1)
if SVR < 4 then
SVR = 4
end
table.insert(PT, Point.CFrame)
table.insert(PT, Point2.CFrame)
end

for i = 2, #PT-2, 2 do
local T = Triangle( PT[i].p,PT[i-1].p,PT[i+1].p, BrickColor.new("Dove blue"))
T.Parent = Map
T:GetChildren()[1].Material = "Ice"
T:GetChildren()[2].Material = "Ice"
local T2 = Triangle(PT[i+1].p, PT[i+2].p, PT[i].p, BrickColor.new("Dove blue"))
T2.Parent = Map
T2:GetChildren()[1].Material = "Ice"
T2:GetChildren()[2].Material = "Ice"
local S1 = Part(Map, Vector3.new(2, 2, (PT[i-1].p-PT[i+1].p).magnitude), CFrame.new((PT[i-1].p+PT[i+1].p)/2,PT[i+1].p)*CFrame.new(0,-1,0)*CFrame.Angles(0,0,math.pi/4), BrickColor.new("Brick yellow"), "Slate")
local S2 = Part(Map, Vector3.new(2, 2, (PT[i].p-PT[i+2].p).magnitude), CFrame.new((PT[i].p+PT[i+2].p)/2,PT[i+2].p)*CFrame.new(0,-1,0)*CFrame.Angles(0,0,math.pi/4), BrickColor.new("Brick yellow"), "Slate")
end]]

for A = 0, 20 do
--local Boundary = Part(Map, Vector3.new(15, 15, 15), Offset * CFrame.new(75-(A*7.5), B*7.5, 75+(math.sin(A+B)*7.5)) * CFrame.Angles(math.rad(45), 0, 0), BrickColor.new("Black"), "Slate")
wait(0.05)
for B = 0, 10 do
local Boundary = Part(Map, Vector3.new(15, 15, 15), Offset * CFrame.new(75-(A*7.5), B*7.5, 75+(math.sin(A+B)*7.5)) * CFrame.Angles(0, math.cos(A+B), 0) * CFrame.Angles(math.rad(45), 0, 0), BrickColor.new("Black"), "Slate")
local Boundary2 = Part(Map, Vector3.new(15, 15, 15), Offset * CFrame.new(75-(A*7.5), B*7.5, -75+(math.sin(A+B)*7.5)) * CFrame.Angles(0, math.cos(A+B), 0) * CFrame.Angles(math.rad(45), 0, 0), BrickColor.new("Black"), "Slate")
local Boundary3 = Part(Map, Vector3.new(15, 15, 15), Offset * CFrame.Angles(0, math.rad(90), 0) * CFrame.new(75-(A*7.5), B*7.5, 75+(math.sin(A+B)*7.5)) * CFrame.Angles(0, math.cos(A+B), 0) * CFrame.Angles(math.rad(45), 0, 0), BrickColor.new("Black"), "Slate")
local Boundary4 = Part(Map, Vector3.new(15, 15, 15), Offset * CFrame.Angles(0, math.rad(90), 0) * CFrame.new(75-(A*7.5), B*7.5, -75+(math.sin(A+B)*7.5)) * CFrame.Angles(0, math.cos(A+B), 0) * CFrame.Angles(math.rad(45), 0, 0), BrickColor.new("Black"), "Slate")
if math.abs(A-12)<3 and B < 4 then
	Boundary3:Destroy()
	Boundary4:Destroy()
end
end
end

while true do
wait(0.25)
CP.CFrame = Offset * CFrame.new(math.random(-75, 75), 5, math.random(-75, 75))
Chirpy.Pitch = math.random(75, 125)/100
Chirpy:Play()
end