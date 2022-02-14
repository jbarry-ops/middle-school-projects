--[[
To-do:
Two-jointed legs and arms
Zelda-style animations
Awesome camera mechanics
Mountable and rideable steed
Bow and arrow
]]
CN, CA, V3, U2, BN, C3 = CFrame.new, CFrame.Angles, Vector3.new, UDim2.new, BrickColor.new, Color3.new
Player = Game:GetService("Players").LocalPlayer
Character, Mouse, PlayerGui, Camera = Player.Character, Player:GetMouse(), Player:WaitForChild("PlayerGui"), Workspace.CurrentCamera
UIS = Game:GetService("UserInputService")
Camera:ClearAllChildren()
Head, Torso, RightArm, LeftArm, RightLeg, LeftLeg, RootPart = Character.Head, Character.Torso, Character["Right Arm"], Character["Left Arm"], Character["Right Leg"], Character["Left Leg"], Character.HumanoidRootPart
Neck, RightShoulder, LeftShoulder, RightHip, LeftHip, RootJoint, Humanoid = Torso.Neck, Torso["Right Shoulder"], Torso["Left Shoulder"], Torso["Right Hip"], Torso["Left Hip"], RootPart.RootJoint, Character.Humanoid
pcall(function () Character.Animate.Disabled = true end)
pcall(function () Character.Sound.Disabled = true end)
pcall(function () Torso.roblox:Destroy() end)
pcall(function() Humanoid.Animator:Destroy() end)
for _, Obj in pairs(Character:GetChildren()) do
	if Obj:IsA("Shirt") or Obj:IsA("Pants") or Obj:IsA("Hat") or Obj:IsA("ShirtGraphic") or Obj:IsA("BodyColors") or Obj:IsA("Accoutrement") then
		Obj:Destroy()
	end
end
wait()
for _, S in pairs(Head:GetChildren()) do
	if S:IsA("Sound") then
		S:Destroy()
	end
end
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
	return New'Part'{Parent = PT, FormFactor = 3, Size = SZ, TopSurface = 0, BottomSurface = 0, BrickColor = BN(BC), Material = MT, Transparency = TR, CanCollide = CC, Locked = true}
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
function QuaternionFromCFrame(cf)
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
function QuaternionToCFrame(px, py, pz, x, y, z, w)
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
function QuaternionSlerp(a, b, t)
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
function Tween(A, B, D)
	return A+(B-A)*D
end
 
SkinColor = "Brick yellow"
PrimaryColor = "Really black"
EyeColor = "Deep blue"
 
RootJoint.C0 = CN(0, 3, 0)
RootJoint.C1 = CN()
Neck.C1 = CA(0, math.rad(180), 0)
Neck.C0 = CN(0, 1.5, 0)
 
Block(Torso, V3(0.9, 1, 1))
Torso.BrickColor = BN(PrimaryColor)
Torso.Material = "SmoothPlastic"
 
Head:ClearAllChildren()
Block(Head, V3(0.55, 1.1, 1.1))
Head.BrickColor = BN(SkinColor)
Head.Material = "SmoothPlastic"
 
RightEye = Part(Character, V3(1, 1, 1), "Really black")
Cylinder(RightEye, V3(0.4, 0.1, 0.4))
Motor(Head, Head, RightEye, CN(-0.25, 0.3, 0.505)*CA(math.rad(90), 0, 0))
 
RightEye2 = Part(Character, V3(1, 1, 1), "Institutional white")
Cylinder(RightEye2, V3(0.35, 0.1, 0.35))
Motor(RightEye, RightEye, RightEye2, CN(0, 0.005, 0))
 
RightEye3 = Part(Character, V3(1, 1, 1), EyeColor)
Cylinder(RightEye3, V3(0.3, 0.1, 0.3))
Motor(RightEye2, RightEye2, RightEye3, CN(0, 0.005, 0))
 
RightEye4 = Part(Character, V3(1, 1, 1), "Institutional white")
Cylinder(RightEye4, V3(0.1, 0.1, 0.1))
Motor(RightEye3, RightEye3, RightEye4, CN(0.05, 0.005, 0.05))
 
RightEye5 = Part(Character, V3(1, 1, 1), "Institutional white")
Cylinder(RightEye5, V3(0.05, 0.1, 0.05))
Motor(RightEye3, RightEye3, RightEye5, CN(-0.025, 0.005, -0.025))
 
LeftEye = Part(Character, V3(1, 1, 1), "Really black")
Cylinder(LeftEye, V3(0.4, 0.1, 0.4))
Motor(Head, Head, LeftEye, CN(0.25, 0.3, 0.505)*CA(math.rad(90), 0, 0))
 
LeftEye2 = Part(Character, V3(1, 1, 1), "Institutional white")
Cylinder(LeftEye2, V3(0.35, 0.1, 0.35))
Motor(LeftEye, LeftEye, LeftEye2, CN(0, 0.005, 0))
 
LeftEye3 = Part(Character, V3(1, 1, 1), EyeColor)
Cylinder(LeftEye3, V3(0.3, 0.1, 0.3))
Motor(LeftEye2, LeftEye2, LeftEye3, CN(0, 0.005, 0))
 
LeftEye4 = Part(Character, V3(1, 1, 1), "Institutional white")
Cylinder(LeftEye4, V3(0.1, 0.1, 0.1))
Motor(LeftEye3, LeftEye3, LeftEye4, CN(0.05, 0.005, 0.05))
 
LeftEye5 = Part(Character, V3(1, 1, 1), "Institutional white")
Cylinder(LeftEye5, V3(0.05, 0.1, 0.05))
Motor(LeftEye3, LeftEye3, LeftEye5, CN(-0.025, 0.005, -0.025))
 
Mouth = Part(Character, V3(1, 1, 1), "Really black")
Block(Mouth, V3(0.4, 0.05, 0.1))
Motor(Head, Head, Mouth, CN(0, -0.3, 0.505))
 
--Hood
 
HoodBack = Part(Character, V3(1, 1, 1), PrimaryColor)
Block(HoodBack, V3(1.1, 1.1, 0.1))
Motor(Head, Head, HoodBack, CN(0, 0, -0.6))
 
HoodTop = Part(Character, V3(1, 1, 1), PrimaryColor)
Block(HoodTop, V3(1.3, 0.1, 1.3))
Motor(Head, Head, HoodTop, CN(0, 0.6, 0))
 
HoodTop2 = Part(Character, V3(1, 1, 1), PrimaryColor)
Mesh(HoodTop2, "Wedge", V3(1.3, 0.3, 1.3))
Motor(HoodTop, HoodTop, HoodTop2, CN(0, 0.2, 0))
 
HoodBottom = Part(Character, V3(1, 1, 1), PrimaryColor)
Block(HoodBottom, V3(1.3, 0.1, 1.3))
Motor(Head, Head, HoodBottom, CN(0, -0.6, 0))
 
HoodRight = Part(Character, V3(1, 1, 1), PrimaryColor)
Block(HoodRight, V3(0.1, 1.1, 1.3))
Motor(Head, Head, HoodRight, CN(0.6, 0, 0))
 
HoodLeft = Part(Character, V3(1, 1, 1), PrimaryColor)
Block(HoodLeft, V3(0.1, 1.1, 1.3))
Motor(Head, Head, HoodLeft, CN(-0.6, 0, 0))
 
HoodMask = Part(Character, V3(1, 1, 1), PrimaryColor)
Block(HoodMask, V3(1.1, 0.6, 0.1))
Motor(Head, Head, HoodMask, CN(0, -0.25, 0.6))
 
--[[HoodMask2 = Part(Character, V3(1, 1, 1), PrimaryColor)
Block(HoodMask2, V3(1.2, 0.7, 1.2))
Motor(Head, Head, HoodMask2, CN(0, 0.3, 0.5025-0.55))]]
 
--
 
RightArm:Destroy()
LeftArm:Destroy()
RightLeg:Destroy()
LeftLeg:Destroy()
 
RightShoulder:Destroy()
LeftShoulder:Destroy()
RightHip:Destroy()
LeftHip:Destroy()
 
RightArm = Part(Character, V3(0.8, 1.4, 0.8), PrimaryColor)
RightShoulder = Motor(Torso, Torso, RightArm, CN(1.3, 0.75, 0)*CN(0, -0.5, 0))
RightForearm = Part(Character, V3(0.6, 1.2, 0.6), SkinColor)
RightElbow = Motor(RightArm, RightArm, RightForearm, CN(0, -0.6, 0)*CN(0, -0.6, 0))
 
LeftArm = Part(Character, V3(0.8, 1.4, 0.8), PrimaryColor)
LeftShoulder = Motor(Torso, Torso, LeftArm, CN(-1.3, 0.75, 0)*CN(0, -0.5, 0))
LeftForearm = Part(Character, V3(0.6, 1.2, 0.6), SkinColor)
LeftElbow = Motor(LeftArm, LeftArm, LeftForearm, CN(0, -0.6, 0)*CN(0, -0.6, 0))
 
RightLeg = Part(Character, V3(0.9, 1.4, 0.9), PrimaryColor)
RightHip = Motor(Torso, Torso, RightLeg, CN(0.45, -1, 0)*CN(0, -0.7, 0))
RightShin = Part(Character, V3(0.8, 1.6, 0.8), PrimaryColor)
RightKnee = Motor(RightLeg, RightLeg, RightShin, CN(0, -0.7, 0)*CN(0, -0.8, 0))
 
LeftLeg = Part(Character, V3(0.9, 1.4, 0.9), PrimaryColor)
LeftHip = Motor(Torso, Torso, LeftLeg, CN(-0.45, -1, 0)*CN(0, -0.7, 0))
LeftShin = Part(Character, V3(0.8, 1.6, 0.8), PrimaryColor)
LeftKnee = Motor(LeftLeg, LeftLeg, LeftShin, CN(0, -0.7, 0)*CN(0, -0.8, 0))
 
Camera.CameraType = "Scriptable"
COX = 0
COY = 0
 
SprintSpeed = 20
WalkSpeed = 20
Humanoid.WalkSpeed = WalkSpeed
JumpingEnabled = true
JumpingWait = 2
Enabled = true
Moving = false
Jumping = false
Falling = false
Sprinting = false
RightClick = false
function UpdateSpeed()
	if Sprinting then
		Humanoid.WalkSpeed = SprintSpeed
	else
		Humanoid.WalkSpeed = WalkSpeed
	end
end
Humanoid.Running:connect(function(Speed)
	if Speed > 1 then
		Moving = true
	else
		Moving = false
	end
end)
Humanoid.FreeFalling:connect(function(IsFalling)
	Falling = IsFalling
end)
Humanoid.Jumping:connect(function(IsJumping)
	Jumping = IsJumping
	if IsJumping then
		JumpingEnabled = false
		wait(JumpingWait)
		JumpingEnabled = true
	end
end)
Humanoid.Changed:connect(function(Property)
	if not JumpingEnabled then
		Humanoid.Jump = false
	end
end)
Mouse.KeyDown:connect(function(Key)
	if not Enabled then return end
	if string.byte(Key) == 48 then --SHIFT
	elseif string.byte(Key) == 50 then --CTRL
	elseif string.byte(Key) == 52 then --ALT
	elseif string.byte(Key) == 32 then --SPACE
	end
	UpdateSpeed()
end)
Mouse.KeyUp:connect(function(Key)
	if string.byte(Key) == 48 then --SHIFT
	elseif string.byte(Key) == 50 then --CTRL
	elseif string.byte(Key) == 52 then --ALT
	elseif string.byte(Key) == 32 then --SPACE
	end
	UpdateSpeed()
end)
Mouse.Button2Down:connect(function()
	RightClick = true
	UIS.MouseBehavior = "LockCurrentPosition"
end)
Mouse.Button2Up:connect(function()
	RightClick = false
	UIS.MouseBehavior = "Default"
end)
UIS.InputBegan:connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.Keyboard and not UIS:GetFocusedTextBox() then
		if Input.KeyCode == Enum.KeyCode.LeftControl then
			if Sitting then
				Sitting = false
			else
				Sitting = true
			end
		end
	end
end)
UIS.InputChanged:connect(function(Input)
	if Input.UserInputType.Name == "MouseMovement" and RightClick then
		--if COX-Input.Delta.Y > -180 then
			COX = Tween(COX, COX-math.rad(Input.Delta.Y), 0.25)
		--end
		COY = Tween(COY, COY-math.rad(Input.Delta.X), 0.25)
		if COX > math.rad(75) then COX = math.rad(75) end
		if COX < math.rad(-75) then COX = math.rad(-75) end
	end
end)
UIS.InputEnded:connect(function(Input)
end)
RJ, NK, RS, LS, RE, LE, RH, LH, RK, LK = RootJoint.C0, Neck.C0, RightShoulder.C0, LeftShoulder.C0, RightElbow.C0, LeftElbow.C0, RightHip.C0, LeftHip.C0, RightKnee.C0, LeftKnee.C0
Game:GetService("RunService").Stepped:connect(function(Time)
	if not Jumping and not Falling and not Sitting then
		if Moving then
			if Sprinting then
				--Sprinting
			else
				--Walking
				RJ = Lerp(RJ, CN(0, 2.75+math.abs(math.sin(Time*10))*0.25, 0)*CA(math.rad(-0), 0, math.rad(math.sin(Time*10))*-3), 0.25)
				NK = Lerp(NK, CN(0, 1, 0)*CN(0, 0.5, 0), 0.25)
				RS = Lerp(RS, CN(1.3, 0.75, 0)*CA(math.rad(math.sin(Time*10)*-30), 0, math.rad(3))*CN(0, -0.5, 0), 0.25)
				LS = Lerp(LS, CN(-1.3, 0.75, 0)*CA(math.rad(math.sin(Time*10)*30), 0, math.rad(-3))*CN(0, -0.5, 0), 0.25)
				RE = Lerp(RE, CN(0, -0.6, 0)*CA(math.rad(30-math.sin(Time*10)*60), 0, 0)*CN(0, -0.6, 0), 0.25)
				LE = Lerp(LE, CN(0, -0.6, 0)*CA(math.rad(30+math.sin(Time*10)*60), 0, 0)*CN(0, -0.6, 0), 0.25)
				RH = Lerp(RH, CN(0.45, -1, 0)*CA(math.rad(math.sin(Time*10)*30), 0, math.rad(3))*CN(0, -0.7, 0), 0.25)
				LH = Lerp(LH, CN(-0.45, -1, 0)*CA(math.rad(math.sin(Time*10)*-30), 0, math.rad(-3))*CN(0, -0.7, 0), 0.25)
				RK = Lerp(RK, CN(0, -0.7, 0)*CA(math.rad(-30+math.sin(Time*10)*60), 0, 0)*CN(0, -0.8, 0), 0.25)
				LK = Lerp(LK, CN(0, -0.7, 0)*CA(math.rad(-30-math.sin(Time*10)*60), 0, 0)*CN(0, -0.8, 0), 0.25)
			end
		else
			--Idle
			RJ = Lerp(RJ, CN(0, 3, 0)*CA(0, math.rad(math.sin(Time)*5), 0), 0.25)
			NK = Lerp(NK, CN(0, 1, 0)*CA(0, math.rad(math.sin(Time)*5), 0)*CN(0, 0.5, 0), 0.25)
			RS = Lerp(RS, CN(1.3, 0.75, 0)*CA(math.rad(math.sin(Time)*5), 0, math.rad(3))*CN(0, -0.5, 0), 0.25)
			LS = Lerp(LS, CN(-1.3, 0.75, 0)*CA(math.rad(math.sin(Time)*-5), 0, math.rad(-3))*CN(0, -0.5, 0), 0.25)
			RE = Lerp(RE, CN(0, -0.6, 0)*CA(math.rad(10+math.sin(Time)*10), 0, 0)*CN(0, -0.6, 0), 0.25)
			LE = Lerp(LE, CN(0, -0.6, 0)*CA(math.rad(10+math.sin(Time)*-10), 0, 0)*CN(0, -0.6, 0), 0.25)
			RH = Lerp(RH, CN(0.45, -1, 0)*CA(0, math.rad(math.sin(Time)*-5), math.rad(3))*CN(0, -0.7, 0), 0.25)
			LH = Lerp(LH, CN(-0.45, -1, 0)*CA(0, math.rad(math.sin(Time)*-5), math.rad(-3))*CN(0, -0.7, 0), 0.25)
			RK = Lerp(RK, CN(0, -0.7, 0)*CA(0, 0, 0)*CN(0, -0.8, 0), 0.25)
			LK = Lerp(LK, CN(0, -0.7, 0)*CA(0, 0, 0)*CN(0, -0.8, 0), 0.25)
		end
	else
		--Jumping/Falling/Sitting
		if Sitting then
			RJ = Lerp(RJ, CN(0, 0, 0)*CA(math.rad(45), 0, 0), 0.25)
			NK = Lerp(NK, CN(0, 1, 0)*CA(math.rad(-45), 0, 0)*CN(0, 0.5, 0), 0.25)
			RS = Lerp(RS, CN(1.3, 0.75, 0)*CA(0, 0, 0)*CN(0, -0.5, 0), 0.25)
			LS = Lerp(LS, CN(-1.3, 0.75, 0)*CA(0, 0, 0)*CN(0, -0.5, 0), 0.25)
			RE = Lerp(RE, CN(0, -0.6, 0)*CA(0, 0, 0)*CN(0, -0.6, 0), 0.25)
			LE = Lerp(LE, CN(0, -0.6, 0)*CA(0, 0, 0)*CN(0, -0.6, 0), 0.25)
			RH = Lerp(RH, CN(0.45, -1, 0)*CA(math.rad(150), 0, 0)*CN(0, -0.7, 0), 0.25)
			LH = Lerp(LH, CN(-0.45, -1, 0)*CA(math.rad(150), 0, 0)*CN(0, -0.7, 0), 0.25)
			RK = Lerp(RK, CN(0, -0.7, 0)*CA(math.rad(-120), 0, 0)*CN(0, -0.8, 0), 0.25)
			LK = Lerp(LK, CN(0, -0.7, 0)*CA(math.rad(-120), 0, 0)*CN(0, -0.8, 0), 0.25)
		end
	end
	RootJoint.C0 = RJ
	Neck.C0 = NK
	RightShoulder.C0 = RS
	LeftShoulder.C0 = LS
	RightElbow.C0 = RE
	LeftElbow.C0 = LE
	RightHip.C0 = RH
	LeftHip.C0 = LH
	RightKnee.C0 = RK
	LeftKnee.C0 = LK
	Camera:Interpolate(CN(Head.Position)*CA(0, COY, 0)*CA(COX, 0, 0)*CN(0, 0, 10), CN(Head.Position), 0.03)
end)