----------------
--DECLARATIONS--
----------------
Admins = {"ask4kingbily", "AntiBoomz0r", "Camerono3", "DoogleFox", "trainerconanon"}
Name = "District 72"
Map = Map
Offset = CFrame.new(0, 2.5, 0)
Debris = Game:GetService("Debris")
RunService = Game:GetService("RunService")
Lighting = Game:GetService("Lighting")
Players = Game:GetService("Players")
ContentProvider = Game:GetService("ContentProvider")
function Chatted(Message, Recipient, Speaker)
	local LM = Message:lower()
	if LM:sub(1, 2):match'up' then
		Speaker.Character:MoveTo(Offset.p+Vector3.new(0, 10, 0))
	elseif LM:sub(1, 5):match'speed' then
		Speaker.Character.Humanoid.WalkSpeed = 100
	end
end
for _, Player in pairs(Players:GetChildren()) do
	Player.Chatted:connect(function (Message, Recipient) Chatted(Message, Recipient, Player) end)
end
Players.ChildAdded:connect(function (Obj)
	if Obj:IsA("Player") then
		Obj.Chatted:connect(function (Message, Recipient) Chatted(Message, Recipient, Player) end)
	end
end)
Create = LoadLibrary("RbxUtility").Create
------------
--LIGHTING--
------------
Lighting.Ambient = Color3.new(0.2, 0.6, 0.8)
Lighting.FogColor = Color3.new(0.4, 0.6, 0.8)
--Lighting.FogEnd = 500
-------------
--FUNCTIONS--
-------------
function CV(PT, CO)
	if not PT:IsA("BasePart") then return end
	PT.TopSurface = CO
	PT.BottomSurface = CO
	PT.RightSurface = CO
	PT.LeftSurface = CO
	PT.FrontSurface = CO
	PT.BackSurface = CO
end
function MD(PT, NM)
	local NM, PT = NM or "Model", PT or Workspace
	return Create'Model'{Parent = PT, Name = NM}
end
function PR(PT, SZ, CF, BC, MT, TR, AN, CC, CO)
	local CO, CC, AN, TR, MT = CO or 0, CC or true, AN or true, TR or 0, MT or "Plastic"
	local P = Create'Part'{Parent = PT, FormFactor = 3, Size = SZ, BrickColor = BrickColor.new(BC), Material = MT, Transparency = TR, Anchored = AN, CanCollide = CC}
	CV(P, CO)
	P.CFrame = CF
	return P
end
function SM(PT, SC, MT, MI, TI)
	local TI, MI, MT, SC = TI or "", MI or "", MT or "Wedge", SC or Vector3.new(1, 1, 1)
	return Create'SpecialMesh'{Parent = PT, MeshType = MT, Scale = SC, MeshId = MI, TextureId = TI}
end
function BM(PT, SC)
	local SC = SC or Vector3.new(1, 1, 1)
	return Create'BlockMesh'{Parent = PT, Scale = SC}
end
function CM(PT, SC)
	local SC = SC or Vector3.new(1, 1, 1)
	return Create'CylinderMesh'{Parent = PT, Scale = SC}
end
function MT(PT, P0, P1, C0, C1, MV)
	local MV, C1, C0 = MV or 0.1, C1 or CFrame.new(), C0 or CFrame.new()
	return Create'Motor6D'{Parent = PT, Part0 = P0, Part1 = P1, C0 = C0, C1 = C1, MaxVelocity = MV}
end
function PL(PT, RN, CL, BR)
	local BR, CL, RN = BR or math.huge, CL or Color3.new(1, 1, 1), RN or 10
	return Create'PointLight'{Parent = PT, Range = RN, Color = CL, Brightness = BR}
end
-------------
--Variables--
-------------
ColorScheme = {
"Dark stone grey",
"Grime",
"Reddish brown",
"Dove blue",
{{"Dove blue", "Turquoise", "Light stone grey", "Lilac"},{"Flame yellowish orange", "Flame reddish orange", "Fire yellow", "Light stone grey"}},
"Earth green"
}
-------
--MAP--
-------
for _, Obj in pairs(Workspace:GetChildren()) do
	if Obj.Name == Name then
		Obj:ClearAllChildren()
		Map = Obj
	end
end
if not Map then Map = MD(Workspace, Name) end
---------------
--MIDDLE AREA--
---------------
MiddleBP = PR(Map, Vector3.new(100, 1, 100), Offset, ColorScheme[1], "Slate")
MiddleCorner1 = PR(Map, Vector3.new(20, 150, 20), Offset * CFrame.new(50, 75, 50), ColorScheme[1], "Slate")
MiddleCorner1A = PR(Map, Vector3.new(22, 5, 22), MiddleCorner1.CFrame * CFrame.new(0, -72.5, 0), ColorScheme[1], "Slate")
MiddleCorner2 = PR(Map, Vector3.new(20, 150, 20), Offset * CFrame.new(-50, 75, 50), ColorScheme[1], "Slate")
MiddleCorner2A = PR(Map, Vector3.new(22, 5, 22), MiddleCorner2.CFrame * CFrame.new(0, -72.5, 0), ColorScheme[1], "Slate")
MiddleCorner3 = PR(Map, Vector3.new(20, 150, 20), Offset * CFrame.new(50, 75, -50), ColorScheme[1], "Slate")
MiddleCorner3A = PR(Map, Vector3.new(22, 5, 22), MiddleCorner3.CFrame * CFrame.new(0, -72.5, 0), ColorScheme[1], "Slate")
MiddleCorner4 = PR(Map, Vector3.new(20, 150, 20), Offset * CFrame.new(-50, 75, -50), ColorScheme[1], "Slate")
MiddleCorner4A = PR(Map, Vector3.new(22, 5, 22), MiddleCorner4.CFrame * CFrame.new(0, -72.5, 0), ColorScheme[1], "Slate")
--Center
Center = MD(Map, "Center")
CenterSide1 = PR(Center, Vector3.new(2, 5, 24), Offset * CFrame.new(11, 3, 0), ColorScheme[1], "Slate")
CenterSide2 = PR(Center, Vector3.new(2, 5, 24), Offset * CFrame.new(-11, 3, 0), ColorScheme[1], "Slate")
CenterSide3 = PR(Center, Vector3.new(20, 5, 2), Offset * CFrame.new(0, 3, 11), ColorScheme[1], "Slate")
CenterSide4 = PR(Center, Vector3.new(20, 5, 2), Offset * CFrame.new(0, 3, -11), ColorScheme[1], "Slate")
CenterSide1A = PR(Center, Vector3.new(2.5, 4.5, 23.5), Offset * CFrame.new(11, 3, 0), ColorScheme[1], "Slate")
CenterSide2A = PR(Center, Vector3.new(2.5, 4.5, 23.5), Offset * CFrame.new(-11, 3, 0), ColorScheme[1], "Slate")
CenterSide3A = PR(Center, Vector3.new(23.5, 4.5, 2.5), Offset * CFrame.new(0, 3, 11), ColorScheme[1], "Slate")
CenterSide4A = PR(Center, Vector3.new(23.5, 4.5, 2.5), Offset * CFrame.new(0, 3, -11), ColorScheme[1], "Slate")
CenterSide1B = PR(Center, Vector3.new(3, 3, 3), Offset * CFrame.new(11, 3, 0) * CFrame.Angles(math.rad(45), 0, 0), ColorScheme[1], "Slate")
CenterSide1C = PR(Center, Vector3.new(3.25, 2.25, 2.25), CenterSide1B.CFrame, ColorScheme[5][1][3], "Slate")
CenterSide2B = PR(Center, Vector3.new(3, 3, 3), Offset * CFrame.new(-11, 3, 0) * CFrame.Angles(math.rad(-45), 0, 0), ColorScheme[1], "Slate")
CenterSide2C = PR(Center, Vector3.new(3.25, 2.25, 2.25), CenterSide2B.CFrame, ColorScheme[5][1][3], "Slate")
CenterSide3B = PR(Center, Vector3.new(3, 3, 3), Offset * CFrame.new(0, 3, 11) * CFrame.Angles(0, 0, math.rad(45)), ColorScheme[1], "Slate")
CenterSide3C = PR(Center, Vector3.new(2.25, 2.25, 3.25), CenterSide3B.CFrame, ColorScheme[5][1][3], "Slate")
CenterSide4B = PR(Center, Vector3.new(3, 3, 3), Offset * CFrame.new(0, 3, -11) * CFrame.Angles(0, 0, math.rad(-45)), ColorScheme[1], "Slate")
CenterSide4C = PR(Center, Vector3.new(2.25, 2.25, 3.25), CenterSide4B.CFrame, ColorScheme[5][1][3], "Slate")
CenterGrass = PR(Center, Vector3.new(20, 1, 20), Offset * CFrame.new(0, 4.7, 0), ColorScheme[2], "Grass")
CenterCorner1 = PR(Center, Vector3.new(3, 6, 3), Offset * CFrame.new(11, 3, 11) * CFrame.Angles(0, math.rad(45), 0), ColorScheme[1], "Slate")
CenterCorner2 = PR(Center, Vector3.new(3, 6, 3), Offset * CFrame.new(-11, 3, 11) * CFrame.Angles(0, math.rad(45), 0), ColorScheme[1], "Slate")
CenterCorner3 = PR(Center, Vector3.new(3, 6, 3), Offset * CFrame.new(11, 3, -11) * CFrame.Angles(0, math.rad(45), 0), ColorScheme[1], "Slate")
CenterCorner4 = PR(Center, Vector3.new(3, 6, 3), Offset * CFrame.new(-11, 3, -11) * CFrame.Angles(0, math.rad(45), 0), ColorScheme[1], "Slate")

wait(0.1)

for Num = 1, 10 do
	local Size1 = math.random(4, 10)
	local RandomPart1 = PR(Map, Vector3.new(Size1, 1, Size1), Offset * CFrame.new(math.random(-50, 50), 0.1+(Num*0.02), math.random(-50, 50)) * CFrame.Angles(0, math.rad(math.random(-180, 180)), 0), ColorScheme[3], "Slate")
	local RandomPart1A = PR(Map, Vector3.new(Size1-1, 1, Size1-1), RandomPart1.CFrame * CFrame.new(0, 0.1, 0), ColorScheme[5][1][math.random(1, #ColorScheme[5][1])], "Grass")
end

for Num = 0, 3 do
	local AroundTop = PR(Map, Vector3.new(120, 1, 80), Offset * CFrame.Angles(0, math.rad(90) * Num, 0) * CFrame.new(0, 10, 112.5), ColorScheme[1], "Slate")
	local AroundTop2 = PR(Map, Vector3.new(92.5, 10, 92.5), Offset * CFrame.Angles(0, math.rad(90) * Num, 0) * CFrame.new(106.25, 5.5, 106.25), ColorScheme[1], "Slate")
	local AroundTopC = PR(Map, Vector3.new(20, 150, 20), AroundTop2.CFrame * CFrame.new(0, 69.5, 0), ColorScheme[1], "Slate")
	local AroundTopC2 = PR(Map, Vector3.new(22, 5, 22), AroundTopC.CFrame * CFrame.new(0, -62.5, 0), ColorScheme[1], "Slate")
	local AroundTopC3 = PR(Map, Vector3.new(22, 5, 22), AroundTopC.CFrame * CFrame.new(0, 10, 0), ColorScheme[1], "Slate")
	--local AroundWall1 = PR(Map, Vector3.new(20, 80, 92.5), Offset * CFrame.Angles(0, math.rad(90) * Num, 0) * CFrame.new(50, 40.5, 106.25), ColorScheme[1], "Slate")
	for Num2 = 1, 10 do
		local AroundStep = PR(Map, Vector3.new(120, 1, 5), Offset * CFrame.Angles(0, math.rad(90) * Num, 0) * CFrame.new(0, Num2, 50+(Num2*2)), ColorScheme[1], "Slate")
	end
end

EndWall1 = PR(Map, Vector3.new(112.5, 80, 20), Offset * CFrame.new(116.25, 40.5, 162.5), ColorScheme[1], "Slate")
EndWall1B = PR(Map, Vector3.new(20, 80, 123), Offset * CFrame.new(70, 40.5, 234), ColorScheme[1], "Slate")
EndWall2 = PR(Map, Vector3.new(112.5, 80, 20), Offset * CFrame.new(-116.25, 40.5, 162.5), ColorScheme[1], "Slate")
EndWall2B = PR(Map, Vector3.new(20, 80, 123), Offset * CFrame.new(-70, 40.5, 234), ColorScheme[1], "Slate")

EndWall3 = PR(Map, Vector3.new(905, 80, 20), Offset * CFrame.new(0, 40.5, -162.5), ColorScheme[1], "Slate")
EndWall3A = PR(Map, Vector3.new(305, 80, 20), Offset * CFrame.new(300, 40.5, 162.5), ColorScheme[1], "Slate")
EndWall3B = PR(Map, Vector3.new(305, 80, 20), Offset * CFrame.new(-300, 40.5, 162.5), ColorScheme[1], "Slate")
EndWall3C = PR(Map, Vector3.new(20, 80, 305), Offset * CFrame.new(-442.5, 40.5, 0), ColorScheme[1], "Slate")
EndWall3D = PR(Map, Vector3.new(20, 80, 305), Offset * CFrame.new(442.5, 40.5, 0), ColorScheme[1], "Slate")
EndWall4 = PR(Map, Vector3.new(905, 220, 20), Offset * CFrame.new(0, 110.5, -182.5), ColorScheme[3], "Slate")
EndWall5 = PR(Map, Vector3.new(905, 140, 22), Offset * CFrame.new(0, 150.5, -161.5), ColorScheme[3], "Slate")
EndWall6 = PR(Map, Vector3.new(345, 140, 20), Offset * CFrame.new(0, 150.5, 442.5), ColorScheme[3], "Slate")

EndWall7 = PR(Map, Vector3.new(20, 140, 219), Offset * CFrame.new(182.5, 150.5, 343), ColorScheme[3], "Slate")
EndWall8 = PR(Map, Vector3.new(20, 140, 219), Offset * CFrame.new(-182.5, 150.5, 343), ColorScheme[3], "Slate")

EndWall9 = PR(Map, Vector3.new(1, 100, 61), Offset * CFrame.new(173, 170.5, 203), ColorScheme[3], "Slate")
EndWall10 = PR(Map, Vector3.new(1, 100, 61), Offset * CFrame.new(-173, 170.5, 203), ColorScheme[3], "Slate")

EndWall11 = PR(Map, Vector3.new(200, 140, 20), Offset * CFrame.new(345, 150.5, 162.5), ColorScheme[3], "Slate")
EndWall12 = PR(Map, Vector3.new(200, 140, 20), Offset * CFrame.new(-345, 150.5, 162.5), ColorScheme[3], "Slate")

EndWall13 = PR(Map, Vector3.new(20, 140, 305), Offset * CFrame.new(450, 150.5, 0), ColorScheme[3], "Slate")
EndWall14 = PR(Map, Vector3.new(20, 140, 305), Offset * CFrame.new(-450, 150.5, 0), ColorScheme[3], "Slate")

StaircasePatchA1 = PR(Map, Vector3.new(100, 150, 1), Offset * CFrame.new(205, 150, 100), ColorScheme[3], "Slate")
StaircasePatchA2 = PR(Map, Vector3.new(100, 1, 75), StaircasePatchA1.CFrame * CFrame.new(0, -75, 37.5), ColorScheme[3], "Slate")
StaircasePatchA2 = PR(Map, Vector3.new(1, 150, 75), StaircasePatchA1.CFrame * CFrame.new(50, 0, 37.5), ColorScheme[3], "Slate")

StaircasePatchB1 = PR(Map, Vector3.new(100, 150, 1), Offset * CFrame.new(-205, 150, 100), ColorScheme[3], "Slate")
StaircasePatchB2 = PR(Map, Vector3.new(100, 1, 75), StaircasePatchB1.CFrame * CFrame.new(0, -75, 37.5), ColorScheme[3], "Slate")
StaircasePatchB2 = PR(Map, Vector3.new(1, 150, 75), StaircasePatchB1.CFrame * CFrame.new(-50, 0, 37.5), ColorScheme[3], "Slate")

wait(0.1)

for Num = 1, 70 do
	local Step = PR(Map, Vector3.new(120, 1, 5), Offset * CFrame.new(0, 10+Num, 153+(Num*2)), ColorScheme[1], "Slate")
end

Plat1 = PR(Map, Vector3.new(160, 10, 157), Offset * CFrame.new(0, 75.5, 374), ColorScheme[1], "Slate")
Plat2 = PR(Map, Vector3.new(92.5, 10, 280), Offset * CFrame.new(126.25, 75.5, 312.5), ColorScheme[1], "Slate")
Plat3 = PR(Map, Vector3.new(92.5, 10, 280), Offset * CFrame.new(-126.25, 75.5, 312.5), ColorScheme[1], "Slate")

Plat4 = PR(Map, Vector3.new(92.5, 10, 305), Offset * CFrame.new(126.25, 75.5, 0), ColorScheme[1], "Slate")
Plat5 = PR(Map, Vector3.new(92.5, 10, 305), Offset * CFrame.new(-126.25, 75.5, 0), ColorScheme[1], "Slate")
Plat6 = PR(Map, Vector3.new(160, 10, 91.5), Offset * CFrame.new(0, 75.5, -106.75), ColorScheme[1], "Slate")
Plat7 = PR(Map, Vector3.new(160, 10, 91.5), Offset * CFrame.new(0, 75.5, 106.75), ColorScheme[1], "Slate")
Plat8 = PR(Map, Vector3.new(19, 10, 122), Offset * CFrame.new(-70.5, 75.5, 0), ColorScheme[1], "Slate")
Plat9 = PR(Map, Vector3.new(19, 10, 122), Offset * CFrame.new(70.5, 75.5, 0), ColorScheme[1], "Slate")

--WallA1 = PR(Map, Vector3.new(20, 70, 305), Offset * CFrame.new(162.5, 35.5, 0), ColorScheme[1], "Slate")
--WallA2 = PR(Map, Vector3.new(20, 70, 305), Offset * CFrame.new(-162.5, 35.5, 0), ColorScheme[1], "Slate")

WallA1 = PR(Map, Vector3.new(20, 70, 140), Offset * CFrame.new(162.5, 35.5, 82.5), ColorScheme[1], "Slate")
WallA2 = PR(Map, Vector3.new(20, 70, 140), Offset * CFrame.new(162.5, 35.5, -82.5), ColorScheme[1], "Slate")
FloorA3 = PR(Map, Vector3.new(300, 10, 305), Offset * CFrame.new(302.5, 5.5, 0), ColorScheme[1], "Slate")

WallB1 = PR(Map, Vector3.new(20, 70, 140), Offset * CFrame.new(-162.5, 35.5, 82.5), ColorScheme[1], "Slate")
WallB2 = PR(Map, Vector3.new(20, 70, 140), Offset * CFrame.new(-162.5, 35.5, -82.5), ColorScheme[1], "Slate")
FloorB3 = PR(Map, Vector3.new(300, 10, 305), Offset * CFrame.new(-302.5, 5.5, 0), ColorScheme[1], "Slate")

---------------
--THIRD FLOOR--
---------------
Floor3A1 = PR(Map, Vector3.new(345, 10, 305), Offset * CFrame.new(0, 147.5, 0), ColorScheme[1], "Slate")
WallC1 = PR(Map, Vector3.new(20, 62, 180), Offset * CFrame.new(-162.5, 111.5, 102.5), ColorScheme[1], "Slate")
WallC2 = PR(Map, Vector3.new(20, 62, 140), Offset * CFrame.new(-162.5, 111.5, -82.5), ColorScheme[1], "Slate")

WallD1 = PR(Map, Vector3.new(20, 62, 180), Offset * CFrame.new(162.5, 111.5, 102.5), ColorScheme[1], "Slate")
WallD2 = PR(Map, Vector3.new(20, 62, 140), Offset * CFrame.new(162.5, 111.5, -82.5), ColorScheme[1], "Slate")

WallE1 = PR(Map, Vector3.new(345, 72, 20), Offset * CFrame.new(0, 178.5, 162.5), ColorScheme[1], "Slate")

WallF1 = PR(Map, Vector3.new(20, 62, 100), Offset * CFrame.new(-162.5, 183.5, 62.5), ColorScheme[1], "Slate")
WallF2 = PR(Map, Vector3.new(20, 62, 140), Offset * CFrame.new(-162.5, 183.5, -82.5), ColorScheme[1], "Slate")

WallG1 = PR(Map, Vector3.new(20, 62, 100), Offset * CFrame.new(162.5, 183.5, 62.5), ColorScheme[1], "Slate")
WallG2 = PR(Map, Vector3.new(20, 62, 140), Offset * CFrame.new(162.5, 183.5, -82.5), ColorScheme[1], "Slate")

WallH1 = PR(Map, Vector3.new(20, 20, 50), Offset * CFrame.new(162.5, 200, 130), ColorScheme[1], "Slate")
WallH2 = PR(Map, Vector3.new(20, 20, 50), Offset * CFrame.new(-162.5, 200, 130), ColorScheme[1], "Slate")

for Num = 0, 72 do
local Step2 = PR(Map, Vector3.new(20, 1, 40), Offset * CFrame.new(-182.5, 80, 172.5) * CFrame.Angles(0, -math.rad(180/72) * Num, 0) * CFrame.new(0, Num, 40), ColorScheme[1], "Slate")
local Step2Wall = PR(Map, Vector3.new(20, 40, 1), Step2.CFrame * CFrame.new(0, 20, 20.5), ColorScheme[1], "Slate")
local Step2Wall2 = PR(Map, Vector3.new(20, 40, 1), Step2.CFrame * CFrame.new(0, 20, -20.5), ColorScheme[1], "Slate")
local Step2Ceil = PR(Map, Vector3.new(20, 1, 40), Step2.CFrame * CFrame.new(0, 40, 0), ColorScheme[1], "Slate")
end

for Num = 0, 72 do
local Step2 = PR(Map, Vector3.new(20, 1, 40), Offset * CFrame.new(182.5, 80, 172.5) * CFrame.Angles(0, math.rad(180/72) * Num, 0) * CFrame.new(0, Num, 40), ColorScheme[1], "Slate")
local Step2Wall = PR(Map, Vector3.new(20, 40, 1), Step2.CFrame * CFrame.new(0, 20, 20.5), ColorScheme[1], "Slate")
local Step2Wall2 = PR(Map, Vector3.new(20, 40, 1), Step2.CFrame * CFrame.new(0, 20, -20.5), ColorScheme[1], "Slate")
local Step2Ceil = PR(Map, Vector3.new(20, 1, 40), Step2.CFrame * CFrame.new(0, 40, 0), ColorScheme[1], "Slate")
end

wait(0.1)

-------------
--TOWER ONE--
-------------
for Num1 = 0, 5 do
	for Num = 0, 3 do
		local TowerWallA1 = PR(Map, Vector3.new(101, 36, 1), Offset * CFrame.new(300, 0, 0) * CFrame.Angles(0, math.rad(90) * Num, 0) * CFrame.new(0, 27.5+(Num1*36), 50), ColorScheme[1], "Slate")
		if Num == 3 and Num1 ~= 1 and Num1 ~= 3 and Num1 ~= 5 then
			TowerWallA1.Size = Vector3.new(42, 40, 1)
			TowerWallA1.CFrame = Offset * CFrame.new(300, 0, 0) * CFrame.Angles(0, math.rad(90) * Num, 0) * CFrame.new(-29, 27.5+(Num1*36), 50)
			local TowerWallA2 = PR(Map, Vector3.new(42, 36, 1), Offset * CFrame.new(300, 0, 0) * CFrame.Angles(0, math.rad(90) * Num, 0) * CFrame.new(29, 27.5+(Num1*36), 50), ColorScheme[1], "Slate")
			local TowerBridgeA1 = PR(Map, Vector3.new(16, 1, 77.5), TowerWallA2.CFrame * CFrame.new(-29, -18, 38.75), ColorScheme[1], "Slate")
			local TowerLevelA1 = PR(Map, Vector3.new(100, 1, 50), TowerBridgeA1.CFrame * CFrame.new(0, 0, -63.5), ColorScheme[1], "Slate")
			local TowerLevelB1 = PR(Map, Vector3.new(50, 2, 50), TowerBridgeA1.CFrame * CFrame.new(0, -0.25, 63.4), ColorScheme[1], "Slate")
			if Num1 ~= 3 then
				for Num2 = 0, 72 do
					TowerStep = PR(Map, Vector3.new(10, 1, 20), TowerLevelA1.CFrame * CFrame.new(0, Num2+0.5, -20) * CFrame.Angles(0, math.rad(-90) + math.rad(180/72)*Num2, 0) * CFrame.new(0, 0, -40), ColorScheme[1], "Slate")
					TowerRail = PR(Map, Vector3.new(2, 10, 1), TowerStep.CFrame * CFrame.new(4, 5, 10.5), ColorScheme[1], "Slate")
					TowerRail2 = PR(Map, Vector3.new(5, 10, 1), TowerStep.CFrame * CFrame.new(0, 5, -10.5), ColorScheme[1], "Slate")
				end
			end
		end
	end
end

TowerTopPlat = PR(Map, Vector3.new(39.75, 1, 100), Offset * CFrame.new(269.875, 225.5, 0), ColorScheme[1], "Slate")

local GrassA1 = PR(Map, Vector3.new(101, 1, 400), Offset * CFrame.new(300, 225, 250.5), ColorScheme[2], "Grass")
local GrassA2 = PR(Map, Vector3.new(101, 1, 100), Offset * CFrame.new(300, 225, -100.5), ColorScheme[2], "Grass")
local GrassA3 = PR(Map, Vector3.new(100, 1, 601), Offset * CFrame.new(400.5, 225, 150), ColorScheme[2], "Grass")
local GrassA4 = PR(Map, Vector3.new(250, 1, 601), Offset * CFrame.new(124.5, 225, 150), ColorScheme[2], "Grass")

local GrassB1 = PR(Map, Vector3.new(101, 10, 400), GrassA1.CFrame * CFrame.new(0, -5.5, 0), ColorScheme[3], "Slate")
local GrassB2 = PR(Map, Vector3.new(101, 10, 100), GrassA2.CFrame * CFrame.new(0, -5.5, 0), ColorScheme[3], "Slate")
local GrassB3 = PR(Map, Vector3.new(100, 10, 601), GrassA3.CFrame * CFrame.new(0, -5.5, 0), ColorScheme[3], "Slate")
local GrassB4 = PR(Map, Vector3.new(250, 10, 601), GrassA4.CFrame * CFrame.new(0, -5.5, 0), ColorScheme[3], "Slate")

-------------
--TOWER TWO--
-------------
for Num1 = 0, 5 do
	for Num = 0, 3 do
		local TowerWallA1 = PR(Map, Vector3.new(101, 36, 1), Offset * CFrame.new(-300, 0, 0) * CFrame.Angles(0, math.rad(-90) * Num, 0) * CFrame.new(0, 27.5+(Num1*36), 50), ColorScheme[1], "Slate")
		if Num == 3 and Num1 ~= 1 and Num1 ~= 3 and Num1 ~= 5 then
			TowerWallA1.Size = Vector3.new(42, 40, 1)
			TowerWallA1.CFrame = Offset * CFrame.new(-300, 0, 0) * CFrame.Angles(0, math.rad(-90) * Num, 0) * CFrame.new(29, 27.5+(Num1*36), 50)
			local TowerWallA2 = PR(Map, Vector3.new(42, 36, 1), Offset * CFrame.new(-300, 0, 0) * CFrame.Angles(0, math.rad(-90) * Num, 0) * CFrame.new(-29, 27.5+(Num1*36), 50), ColorScheme[1], "Slate")
			local TowerBridgeA1 = PR(Map, Vector3.new(16, 1, 77.5), TowerWallA2.CFrame * CFrame.new(29, -18, 38.75), ColorScheme[1], "Slate")
			local TowerLevelA1 = PR(Map, Vector3.new(100, 1, 50), TowerBridgeA1.CFrame * CFrame.new(0, 0, -63.5), ColorScheme[1], "Slate")
			local TowerLevelB1 = PR(Map, Vector3.new(50, 2, 50), TowerBridgeA1.CFrame * CFrame.new(0, -0.25, 63.4), ColorScheme[1], "Slate")
			if Num1 ~= 3 then
				for Num2 = 0, 72 do
					TowerStep = PR(Map, Vector3.new(10, 1, 20), TowerLevelA1.CFrame * CFrame.new(0, Num2, -20) * CFrame.Angles(0, math.rad(90) - math.rad(180/72)*Num2, 0) * CFrame.new(0, 0, -40), ColorScheme[1], "Slate")
					TowerRail = PR(Map, Vector3.new(2, 10, 1), TowerStep.CFrame * CFrame.new(-4, 5, 10.5), ColorScheme[1], "Slate")
					TowerRail2 = PR(Map, Vector3.new(5, 10, 1), TowerStep.CFrame * CFrame.new(0, 5, -10.5), ColorScheme[1], "Slate")
				end
			end
		end
	end
end

TowerTopPlat = PR(Map, Vector3.new(39.75, 1, 100), Offset * CFrame.new(-269.875, 225.5, 0), ColorScheme[1], "Slate")

local GrassA1 = PR(Map, Vector3.new(101, 1, 400), Offset * CFrame.new(-300, 225, 250.5), ColorScheme[2], "Grass")
local GrassA2 = PR(Map, Vector3.new(101, 1, 100), Offset * CFrame.new(-300, 225, -100.5), ColorScheme[2], "Grass")
local GrassA3 = PR(Map, Vector3.new(100, 1, 601), Offset * CFrame.new(-400.5, 225, 150), ColorScheme[2], "Grass")
local GrassA4 = PR(Map, Vector3.new(250, 1, 601), Offset * CFrame.new(-124.5, 225, 150), ColorScheme[2], "Grass")

local GrassB1 = PR(Map, Vector3.new(101, 10, 400), GrassA1.CFrame * CFrame.new(0, -5.5, 0), ColorScheme[3], "Slate")
local GrassB2 = PR(Map, Vector3.new(101, 10, 100), GrassA2.CFrame * CFrame.new(0, -5.5, 0), ColorScheme[3], "Slate")
local GrassB3 = PR(Map, Vector3.new(100, 10, 601), GrassA3.CFrame * CFrame.new(0, -5.5, 0), ColorScheme[3], "Slate")
local GrassB4 = PR(Map, Vector3.new(250, 10, 601), GrassA4.CFrame * CFrame.new(0, -5.5, 0), ColorScheme[3], "Slate")

wait(1)

--Tree Generator [Version: 2]
Type = ColorScheme[5][1]
Current = 1
Limit = 8
Split = 2
Height = 10
Number = 5
OS = Offset * CFrame.new(0, 5+Height/2, 0)
Width = 1
RD = 30
Tree = MD(Center, "Tree")
Trunk = PR(Tree, Vector3.new(Width, Height, Width), OS, ColorScheme[3], "Slate")

for J = 1, Number-1 do
local NB = PR(Tree, Vector3.new(Width, Height, Width), Trunk.CFrame * CFrame.Angles(0, math.rad(J * 90/Number), 0), ColorScheme[3], "Slate")
end

Old = Trunk
T1 = {}
T2 = {}
function Branch(T)
Wait(0.1)
if Current <= Limit then
T1 = T
T2 = {}
for Branches = 1, #T1 do
local B = T1[Branches]
local C = B.CFrame * CFrame.new(0, B.Size.Y/2, 0)
local SZ = Vector3.new(B.Size.X * 0.9, B.Size.Y * 0.95, B.Size.Z * 0.9)
Old = B
if Current == Limit then
local LS = math.random(4, 7)
local L = PR(Tree, Vector3.new(LS, LS, LS), C * CFrame.Angles(math.rad(math.random(-RD, RD)), math.rad(math.random(-RD, RD)), math.rad(math.random(-RD, RD))), Type[math.random(1, #Type)], "Grass")
else
for BN = 1, Split do
local B2 = PR(Tree, SZ, C * CFrame.Angles(math.rad(math.random(-RD, RD)), math.rad(math.random(-RD, RD)), math.rad(math.random(-RD, RD))) * CFrame.new(0, SZ.Y/2, 0), ColorScheme[3], "Slate")
table.insert(T2, B2)

for J = 1, Number-1 do
local NB = PR(Tree, SZ, B2.CFrame * CFrame.Angles(0, math.rad(J * 90/Number), 0), ColorScheme[3], "Slate")
end

end
end
end
Current = Current + 1
Branch(T2)
Wait(0.1)
end
end
Branch({Trunk})

Assets = {"8610025", "2027611", "1015394"}
ContentProvider:Preload("http://www.roblox.com/asset/?id="..Assets[3])
Moozik = Instance.new("Sound", Workspace)
Moozik.SoundId = "http://www.roblox.com/asset/?id="..Assets[3]
Moozik.Pitch = 1
Moozik.Volume = 1
Moozik.Looped = true
wait(5)
Moozik:Play()

while true do
wait(1)
local RS = math.random(10, 20)/10
local Leaf = PR(Tree, Vector3.new(RS, RS, RS), Offset * CFrame.new(math.random(-25, 25), 40, math.random(-25, 25)), Type[math.random(1, #Type)], "Plastic", 0.25)
Leaf.CanCollide = false
PL(Leaf, 20, Leaf.Color)
Debris:AddItem(Leaf, 15)
local N = 0
local Thing = RunService.Stepped:connect(function () 
		N = N + 0.1
		Leaf.CFrame = Leaf.CFrame * CFrame.Angles(math.rad(1), math.rad(-2), math.rad(1)) + Vector3.new(math.cos(N)*0.1, -0.1, math.sin(N)*0.1)
		Leaf.Transparency = Leaf.Transparency + 0.002
end)
Leaf.AncestryChanged:connect(function () Thing:disconnect() end)
end