--War Blox Weapons
--Luorpolis

local V3 = Vector3.new
local CN = CFrame.new
local C3 = Color3.new
local BN = BrickColor.new
local U2 = UDim2.new
local CA = function(x, y, z, inRadians)
	if inRadians then
		return CFrame.Angles(x or 0, y or 0, z or 0)
	else
		return CFrame.Angles(math.rad(x or 0), math.rad(y or 0), math.rad(z or 0))
	end
end

for n, s in pairs({"Players", "Debris", "UserInputService", "RunService", "Lighting"}) do
	getfenv(1)[s] = Game:GetService(s)
end

function truncateName(name)
	return name:sub(1, 1):lower()..name:sub(2):gsub(" ", "")
end
function setEnvironmentGlobalized(f, t)
	setfenv(f, setmetatable(t or getfenv(f), {__index = function(t, i) return getfenv(1)[i] end}))
	return f
end
function set(instance)
	return function(properties)
		if type(instance) == "table" then
			local instances = {}
			for _, toSet in pairs(instance) do
				table.insert(instances, set(toSet)(properties))
			end
			return instances
		elseif type(instance) == "userdata" then
			for k, v in pairs(properties) do
				if type(k) == "string" then
					local propertyName = k:gsub(k, {
						pt = "Parent", sz = "Size", cf = "CFrame", bc = "BrickColor", tr = "Transparency", sc = "Scale", an = "Anchored",
						ts = "TopSurface", bs = "BottomSurface", rs = "RightSurface", ls = "LeftSurface", fs = "FrontSurface", bks = "BackSurface", cl = "Color", mt = "Material",
						nm = "Name", bgc = "BackgroundColor3", bgt = "BackgroundTransparency", bsp = "BorderSizePixel", bc3 = "BorderColor3", ps = "Position", cc = "CanCollide",
						p0 = "Part0", p1 = "Part1"
					})
					instance[propertyName] = v
				elseif type(k) == "number" then
					if type(v) == "userdata" then
						v.Parent = instance
					elseif type(v) == "table" then
						for event, connection in pairs(v) do
							if type(event) == "string" then
								if type(connection) == "function" then
									instance[event]:connect(setEnvironmentGlobalized(connection, {this = instance}))
								end
							elseif type(event) == "number" then
								if type(connection) == "table" then
									if type(connection[1]) == "table" then
										local toDo = connection[2]
										setEnvironmentGlobalized(toDo, {this = instance})
										for i, v in pairs(connection[1]) do
											toDo(i, v)
										end
									else
										local step, toDo = 1, connection[3]
										if type(toDo) == "number" then
											step = connection[3]
											toDo = connection[4]
										end
										setEnvironmentGlobalized(toDo, {this = instance})
										for i = connection[1], connection[2], step do
											toDo(i)
										end
									end
								end
							end
						end
					elseif type(v) == "string" then
						getfenv(0)[v] = instance
					elseif type(v) == "function" then
						setEnvironmentGlobalized(v, {this = instance})()
					end
				end
				if properties.CFrame then instance.CFrame = properties.CFrame end
			end
			return instance
		end
	end
end
function new(instanceType)
	local newInstance = Instance.new(instanceType)
	if newInstance:IsA("BasePart") then
		pcall(function() newInstance.FormFactor = 3 end)
		set(newInstance){sz = V3(1, 1, 1), mt = "SmoothPlastic", ts = 0, bs = 0, Locked = true, an = false}
	elseif newInstance:IsA("GuiObject") then
		set(newInstance){sz = U2(1, 0, 1, 0), bsp = 0, bgc = C3()}
		if newInstance:IsA("TextBox") or newInstance:IsA("TextLabel") or newInstance:IsA("TextButton") then
			set(newInstance){Text = "", TextColor3 = C3(1, 1, 1), bgt = 1}
		end
		if newInstance:IsA("GuiButton") then
			newInstance.AutoButtonColor = false
		end
	end
	return function(properties)
		return set(newInstance)(properties)
	end
end
function destroy(...)
	set({...}){function() this:Destroy() end}
end
function round(n)
	local int, f = math.modf(n)
	if f > 0.5 then
		return math.ceil(n)
	else
		return math.floor(n)
	end
end
function clone(object)
	local clonedObject
	if type(object) == "table" then
		local clonedTable = {}
		for i, v in pairs(object) do
			clonedTable[i] = v
		end
		clonedObject = clonedTable
	else
		clonedObject = object:Clone()
	end
	return clonedObject
end
function recurse(object)
	local descendants = {}
	local function addDescendants(object)
		for _, descendant in pairs(object:GetChildren()) do
			table.insert(descendants, descendant)
			addDescendants(descendant)
		end
	end
	addDescendants(object)
	return descendants
end
function getEnvironment(parent, exceptions)
	local stuff = recurse(parent)
	for _, thing in pairs(stuff) do
		local name = exceptions and exceptions[thing.Name] or truncateName(thing.Name)
		if not getfenv(0)[name] then
			getfenv(0)[name] = thing
		end
	end
	return function(classes)
		for class, func in pairs(classes) do
			if type(class) == "string" then
				for _, thing in pairs(stuff) do
					if thing:IsA(class) then
						func(thing)
					end
				end	
			else
				if type(func) == "table" then
					for _, className in pairs(func[1]) do
						for _, thing in pairs(stuff) do
							if thing:IsA(className) then
								func[2](thing)
							end
						end
					end
				end
			end
		end
		return function(names)
			for name, func in pairs(names) do
				if type(name) == "string" then
					for _, thing in pairs(stuff) do
						if thing.Name == name then
							func(thing)
						end
					end	
				else
					if type(func) == "table" then
						for _, name in pairs(func[1]) do
							for _, thing in pairs(stuff) do
								if thing:IsA(name) then
									func[2](thing)
								end
							end
						end
					end
				end
			end
		end
	end
end
local function rayCast(origin, direction, ignore)
	local ray, part, position = Ray.new(origin, direction), nil, nil
	if type(ignore) == "table" then
		part, position = Workspace:FindPartOnRayWithIgnoreList(ray, ignore)
	else
		part, position = Workspace:FindPartOnRay(ray, ignore)
	end
	return part, position
end
--stravant and AntiBoomz0r
function quaternionFromCFrame(cf)
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
function quaternionToCFrame(px, py, pz, x, y, z, w)
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
function quaternionSlerp(a, b, t)
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
function slerp(a, b, t)
	local qa = {quaternionFromCFrame(a)}
	local qb = {quaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return quaternionToCFrame(_t*ax+t*bx, _t*ay+t*by, _t*az+t*bz, quaternionSlerp(qa, qb, t))
end
function getSurface(part, position) --DoogleFox
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

function lerp(a, b, d)
	return a+(b-a)*d
end

player = Game:GetService("Players").LocalPlayer
character = player.Character
mouse = player:GetMouse()
camera = Workspace.CurrentCamera

getEnvironment(character, {HumanoidRootPart = rootPart}){Animator = destroy, CharacterAppearance = destroy, Hat = destroy, Accoutrement = destroy}{}
wait()

humanoid.HipHeight = 0

--[[
	
	---------------
	WEAPONS TO MAKE
	---------------
	
	SNIPER
	
]]

defaultPartCFrame = CN()
defaultPartCollision = false
lastPart = nil

function part(parent, size, brickColor, transparency, material)
	local newPart = new'Part'{pt = parent, sz = size or V3(1, 1, 1), bc = BN(brickColor or "Black"), tr = transparency or 0, mt = material or "SmoothPlastic", cf = defaultPartCFrame, cc = defaultPartCollision}
	lastPart = newPart
	if properties then
		newPart.CustomPhysicalProperties = properties
	end
	return newPart
end
function weld(parent, part0, part1, c0, c1)
	return new'Motor6D'{pt = parent, p0 = part0, p1 = part1, C0 = c0, C1 = c1, nm = "weld"}
end
function block(parent, scale)
	return new'BlockMesh'{pt = parent, sc = scale or V3(1, 1, 1), nm = "mesh"}
end
function cylinder(parent, scale)
	return new'CylinderMesh'{pt = parent, sc = scale or V3(1, 1, 1), nm = "mesh"}
end
function mesh(parent, scale, meshType)
	return new'SpecialMesh'{pt = parent, sc = scale or V3(1, 1, 1), MeshType = meshType or "Wedge", nm = "mesh"}
end



primaryColor = "Bright orange"
skinColor = "White"

rootJoint.C0 = CN(0, 3, 0)
rootJoint.C1 = CN()
neck.C1 = CA(0, 180, 0)
neck.C0 = CN(0, 1.5, 0)

block(torso, V3(0.9, 1, 1))
torso.BrickColor = BN(primaryColor)
torso.Material = "SmoothPlastic"

head:ClearAllChildren()
block(head, V3(0.55, 1.1, 1.1))
head.BrickColor = BN(skinColor)
head.Material = "SmoothPlastic"

destroy(rightArm, leftArm, rightLeg, leftLeg, rightShoulder, leftShoulder, rightHip, leftHip)

defaultPartCFrame = torso.CFrame
defaultPartCollision = true

rightArm = part(character, V3(0.8, 1.4, 0.8), primaryColor)
rightShoulder = weld(torso, torso, rightArm, CN(1.3, 0.75, 0)*CN(0, -0.5, 0))
rightForearm = part(character, V3(0.6, 1.2, 0.6), skinColor)
rightElbow = weld(rightArm, rightArm, rightForearm, CN(0, -0.6, 0)*CN(0, -0.6, 0))

leftArm = part(character, V3(0.8, 1.4, 0.8), primaryColor)
leftShoulder = weld(torso, torso, leftArm, CN(-1.3, 0.75, 0)*CN(0, -0.5, 0))
leftForearm = part(character, V3(0.6, 1.2, 0.6), skinColor)
leftElbow = weld(leftArm, leftArm, leftForearm, CN(0, -0.6, 0)*CN(0, -0.6, 0))

rightLeg = part(character, V3(0.9, 1.4, 0.9), primaryColor)
rightHip = weld(torso, torso, rightLeg, CN(0.45, -1, 0)*CN(0, -0.7, 0))
rightShin = part(character, V3(0.8, 1.6, 0.8), primaryColor)
rightKnee = weld(rightLeg, rightLeg, rightShin, CN(0, -0.7, 0)*CN(0, -0.8, 0))

leftLeg = part(character, V3(0.9, 1.4, 0.9), primaryColor)
leftHip = weld(torso, torso, leftLeg, CN(-0.45, -1, 0)*CN(0, -0.7, 0))
leftShin = part(character, V3(0.8, 1.6, 0.8), primaryColor)
leftKnee = weld(leftLeg, leftLeg, leftShin, CN(0, -0.7, 0)*CN(0, -0.8, 0))


--THE SNIPER

defaultPartCFrame = head.CFrame*CN(0, 5, 0)
defaultPartCollision = false

color1 = "Medium stone grey"
color2 = "Dark stone grey"

for _, obj in pairs(character:GetChildren()) do
	if obj.Name == "sniper" then
		obj:Destroy()
	end
end

local sniper = new'Model'{pt = character, nm = "sniper"}

--[[anchorPart = part(sniper, V3(1, 1, 1), color1, 1, "SmoothPlastic")
	anchorPart.Anchored = true
	anchorPart.CFrame = CN(0, 5, 0)]]

barrel = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
	cylinder(lastPart, V3(0.4, 7, 0.4))
	weld(lastPart, torso, lastPart, CN(0, 0, 0.6)*CA(0, 90, 0)*CA(-130, 0, 0), CN())
	
barrelTop = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
	cylinder(lastPart, V3(0.5, 1, 0.5))
	weld(lastPart, barrel, lastPart, CN(0, 4, 0), CN())
	
barrelHole = part(sniper, V3(1, 1, 1), "Really black", 0, "SmoothPlastic")
	cylinder(lastPart, V3(0.4, 1, 0.4))
	weld(lastPart, barrelTop, lastPart, CN(0, 0.01, 0), CN())
	
	
barrelUnderneath = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
	mesh(lastPart, V3(0.4, 3, 1.2))
	weld(lastPart, barrel, lastPart, CN(0, -2, -0.5), CN())
	
barrelUnderneathTop = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
	block(lastPart, V3(0.45, 3, 0.4))
	weld(lastPart, barrel, lastPart, CN(0, -0.5, -0.2), CN())
	
bipodTop = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
	block(lastPart, V3(0.5, 0.5, 1))
	weld(lastPart, barrel, lastPart, CN(0, 1, -0.2), CN())


for s = -1, 1, 2 do
	
	bipodLeg = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
		block(lastPart, V3(0.2, 0.2, 1.5))
		weld(lastPart, barrel, lastPart, CN(0, 1, -0.7)*CA(0, s*30, 0)*CN(0, 0, -0.75), CN())
	
	--sight crosshair
	crossHair = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
		block(lastPart, V3(0.4, 0.01, 0.01))
		weld(lastPart, bipodTop, lastPart, CN(0, 0, 0.8)*CA(0, s*45+45, 0), CN())
		
	--scope
	
	scopeLeg = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
		block(lastPart, V3(0.2, 0.2, 0.4))
		weld(lastPart, barrel, lastPart, CN(0, -1.5+s*0.75, 0.2), CN())
end

handle = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
	block(lastPart, V3(0.4, 0.4, 1))
	weld(lastPart, barrelUnderneathTop, lastPart, CN(0, -0.75, -0.7), CN())
	
handle2 = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
	block(lastPart, V3(0.4, 0.4, 1))
	weld(lastPart, barrelUnderneathTop, lastPart, CN(0, 0.25, -0.7), CN())
	
--sight

sightConnect = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
	block(lastPart, V3(0.2, 0.1, 0.2))
	weld(lastPart, bipodTop, lastPart, CN(0, 0, 0.5), CN())

for s = -3, 4 do
	sightOutside = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
		block(lastPart, V3(0.2, 0.05, 0.1))
		weld(lastPart, bipodTop, lastPart, CN(0, 0, 0.8)*CA(0, s*45, 0)*CN(0, 0, 0.2), CN())
		
	scope = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
		block(lastPart, V3(0.2, 2, 0.1))
		weld(lastPart, barrel, lastPart, CN(0, -1.5, 0.6)*CA(0, s*45, 0)*CN(0, 0, 0.2), CN())
end

--[[



rightShoulder = weld(torso, torso, rightArm, CN(1.3, 0.75, 0)*CN(0, -0.5, 0))
rightElbow = weld(rightArm, rightArm, rightForearm, CN(0, -0.6, 0)*CN(0, -0.6, 0))

leftShoulder = weld(torso, torso, leftArm, CN(-1.3, 0.75, 0)*CN(0, -0.5, 0))
leftElbow = weld(leftArm, leftArm, leftForearm, CN(0, -0.6, 0)*CN(0, -0.6, 0))

rightHip = weld(torso, torso, rightLeg, CN(0.45, -1, 0)*CN(0, -0.7, 0))
rightKnee = weld(rightLeg, rightLeg, rightShin, CN(0, -0.7, 0)*CN(0, -0.8, 0))

leftHip = weld(torso, torso, leftLeg, CN(-0.45, -1, 0)*CN(0, -0.7, 0))
leftKnee = weld(leftLeg, leftLeg, leftShin, CN(0, -0.7, 0)*CN(0, -0.8, 0))



barrel = part(sniper, V3(1, 1, 1), color1, 0, "SmoothPlastic")
	cylinder(lastPart, V3(0.4, 7, 0.4))
	weld(lastPart, torso, lastPart, CN(0, 0, 0.6)*CA(0, -90, 0)*CA(130, 0, 0), CN())

]]

barrelWeld = barrel.weld


animations = {}

function addAnimation(name, animation)
	if not animations[name] then
		print(name)
		animations[name] = animation
	end
end

running = false
sprinting = false
prone = false

jumping = false
falling = false

pose = 0

--[[
	poses:
		0 = no gun out
		1 = switching
		2 = gun out
]]

humanoid.Running:connect(function(speed)
	if speed > 1 then
		running = true
	else
		running = false
	end
end)
humanoid.FreeFalling:connect(function(isFalling)
	falling = isFalling
end)
--[[humanoid.Jumping:connect(function(isJumping)
	jumping = isJumping
	if isJumping then
		JumpingEnabled = false
		wait(JumpingWait)
		JumpingEnabled = true
	end
end)
humanoid.Changed:connect(function(Property)
	if not jumpingEnabled then
		Humanoid.Jump = false
	end
end)]]

function gunOut()
	pose = 2
end

function sniperGrab()
	print("*SNIPER_REWELDING*")
	local newC0 = rightForearm.CFrame:toObjectSpace(barrel.CFrame)
	barrel.weld.Part0 = rightForearm
	barrel.weld.C0 = newC0
	addAnimation("SNIPER_READYING", {
		rightShoulder = {CN(1.3, 0.75, 0)*CA(30, 15, 0)*CN(0, -0.5, 0), 0.05},
		rightElbow = {CN(0, -0.6, 0)*CA(60, 15, 0)*CN(0, -0.6, 0), 0.05},
		barrelWeld = {CA(180, 0, 0)*CN(0, 0.3, 0)*CA(0, 0, 75)*CN(0, 1.25, 0.9), 0.05},
		leftShoulder = {CN(-1.3, 0.75, 0)*CA(15, 0, 15)*CN(0, -0.5, 0), 0.05},
		leftElbow = {CN(0, -0.6, 0)*CA(55, 0, 0)*CN(0, -0.6, 0), 0.05, gunOut}
	})
end

mouse.KeyDown:connect(function(key)
	if key=="q" then
		pose = 1
		addAnimation("SNIPER_REACHING", {
			rightShoulder = {CN(1.3, 0.75, 0)*CA(-15, -45, 0)*CN(0, -0.5, 0), 0.05},
			rightElbow = {CN(0, -0.6, 0)*CA(-110, 0, 0)*CN(0, -0.6, 0), 0.05, sniperGrab}
		})
	end
end)

--camera.CameraType = "Scriptable"
COX = 0
COY = 0

rightClicked = false

mouse.Button2Down:connect(function()
	rightClicked = true
	UserInputService.MouseBehavior = "LockCurrentPosition"
end)

mouse.Button2Up:connect(function()
	rightClicked = false
	UserInputService.MouseBehavior = "Default"
end)

UserInputService.InputChanged:connect(function(input)
	if input.UserInputType.Name == "MouseMovement" and rightClicked then
		--if COX-Input.Delta.Y > -180 then
			COX = lerp(COX, COX-input.Delta.Y, 0.25)
		--end
		COY = lerp(COY, COY-input.Delta.X, 0.25)
		if COX > 75 then COX = 75 end
		if COX < -75 then COX = -75 end
	end
end)

t = 0

RunService.Stepped:connect(function()
	t = t+1
	for name, animation in pairs(animations) do
		for weld, movement in pairs(animation) do
			local theWeld = getfenv(1)[weld]
			local towards = slerp(theWeld.C0, movement[1], movement[2])
			if (movement[1].p-theWeld.C0.p).magnitude<0.01 then
				theWeld.C0 = movement[1]
				animation[weld] = nil
				if movement[3] then
					movement[3]()
				end
			else
				theWeld.C0 = towards
			end
		end
	end
	if #animations < 1 then
		if running then
			--running
			if sprinting then
				--sprinting
				if pose == 0 then
					--sprinting without a weapon
				elseif pose == 1 then
					--sprinting while transitioning
				elseif pose == 2 then
					--sprinting with a weapon
				end
			else
				--not sprinting
				if pose == 0 then
					--running without a weapon
				elseif pose == 1 then
					--running while transitioning
				elseif pose == 2 then
					--running with a weapon
					
					rightShoulder.C0 = CN(1.3, 0.75, 0)*CA(30+math.sin(t/5)*5, 15, 0)*CN(0, -0.5, 0)
					rightElbow.C0 = CN(0, -0.6, 0)*CA(60, 15, 0)*CN(0, -0.6, 0)

					leftShoulder.C0 = CN(-1.3, 0.75, 0)*CA(15+math.sin(t/5)*5, 0, 15)*CN(0, -0.5, 0)
					leftElbow.C0 = CN(0, -0.6, 0)*CA(55, 0, 0)*CN(0, -0.6, 0)

					rightHip.C0 = CN(0.45, -1, 0)*CA(math.sin(t/5)*20, 0, 0)*CN(0, -0.7, 0)
					rightKnee.C0 = CN(0, -0.7, 0)*CA(math.abs(math.sin(t/5))*-30, 0, 0)*CN(0, -0.8, 0)

					leftHip.C0 = CN(-0.45, -1, 0)*CA(math.sin(t/5)*-20, 0, 0)*CN(0, -0.7, 0)
					leftKnee.C0 = CN(0, -0.7, 0)*CA(math.abs(math.sin(t/5))*-30, 0, 0)*CN(0, -0.8, 0)
				end
			end
		else
			--not running
			if pose == 0 then
				--idle without a weapon
			elseif pose == 1 then
				--idle while transitioning
			elseif pose == 2 then
				--idle with a weapon
			end
		end
	end
end)

RunService.RenderStepped:connect(function()
	--camera:Interpolate(CN(head.Position)*CA(0, COY, 0)*CA(COX, 0, 0)*CN(0, 0, 10), CN(head.Position), 0.03)
end)


