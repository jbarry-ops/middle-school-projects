------------------------
------------------------
--ACTUAL CUSTOM GRAVITY!
------------------------
------------------------

-----------------------------------------
--ENVIRONMENT, FUNCTIONS, AND AWESOMENESS
-----------------------------------------

for _, s in pairs({"Players", "Debris", "UserInputService", "RunService", "Lighting"}) do
	getfenv(0)[s] = Game:GetService(s)
end
V3, CN, C3, BN, U2 = Vector3.new, CFrame.new, Color3.new, BrickColor.new, UDim2.new
function CA(x, y, z, inRadians)
	if inRadians then
		return CFrame.Angles(x or 0, y or 0, z or 0)
	else
		return CFrame.Angles(math.rad(x or 0), math.rad(y or 0), math.rad(z or 0))
	end
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
function stringToMatrix(string)
	local matrix = {}
	for line in string:gmatch("[^\n]+") do
		local row = {}
		for element in line:gmatch("[^%s]+") do
			table.insert(row, element)
		end
		table.insert(matrix, row)
	end
	return matrix
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
	return function(things)
		for class, func in pairs(things) do
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
	end
end
function rayCast(origin, direction, ignore)
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

----------
--SETTINGS
----------

--Camera
zoomLevel = 1
zoomInLimit = 1
zoomOutLimit = 2
zoomSensitivity = 0.2
characterOffsetDesired = CN(3, 0, -4)
characterOffset = CN(3, 0, -4)
switchSpeed = 0.2
cameraRotation = {45, 45}
cameraRotationLowerLimit = -75
cameraRotationUpperLimit = 75
cameraRotationSensitivity = 0.1
--Character
spawningSpot = CN(20, 20, 20)
mainSize = V3(1, 1, 1)
skinColor = "Nougat"
primaryColor = "Dark stone grey"
secondaryColor = "Medium stone grey"
--Movement
walkSpeed = 16
movement = {0, 0, 0}
--Gravity
objectsOfAttraction = {}
primaryAttraction = nil
gravityModifier = V3()

--------------
--ACTUAL STUFF
--------------

player = Players.LocalPlayer
camera = Workspace.CurrentCamera
playerGui = player:WaitForChild("PlayerGui")
mouse = player:GetMouse()
--player.Character = nil
camera:ClearAllChildren()
camera.CameraType = "Scriptable"
UserInputService.MouseBehavior = "LockCenter"

-----------
--CHARACTER
-----------

character = new'Model'{pt = camera, nm = player.Name}
main = new'Part'{pt = character, sz = mainSize, cf = spawningSpot}
face = new'Decal'{pt = main, Texture = "rbxassetid://23285119", Face = "Front"}
gyro = new'BodyGyro'{pt = main, maxTorque = V3(1/0, 1/0, 1/0), P = 10000, cframe = CN()}
velocity = new'BodyVelocity'{pt = main, MaxForce = V3(1/0, 1/0, 1/0), Velocity = V3()}

--Consider..
--Interpolating the gravity force when changing major attraction forces.. It might look cooler

function updateMovement()
	if math.abs(movement[1])+math.abs(movement[3]) > 0 then
		local lCP = V3(camera.CoordinateFrame.X, main.CFrame.Y, camera.CoordinateFrame.Z)
		velocity.Velocity = gravityModifier+((CN(lCP, main.Position)*CN(movement[1], 0, movement[3])).p-lCP).unit*walkSpeed
	else
		velocity.Velocity = gravityModifier
	end
end

------------
--CAMERA! :P
------------

function updateStepped()
	camera:Interpolate(main.CFrame*CA(0, 0, 0)*CA(-45, 0, 0)*CN(0, 0, 10), main.CFrame, 0.1)
	local part, pos = rayCast(main.Position, ((main.CFrame*CN(0, -1, 0)).p-main.Position).unit*100, {character})
	if part and part:GetMass() > 777 then --changeable
		if primaryAttraction then
			if part:GetMass()/(part.Position-main.Position).magnitude > primaryAttraction:GetMass()/(primaryAttraction.Position-main.Position).magnitude then
				primaryAttraction = part
			end
		else
			primaryAttraction = part
		end
	end
	if primaryAttraction then
		gravityModifier = (primaryAttraction.Position-main.Position).unit*196.2*main:GetMass()
	else
		gravityModifier = V3(0, -196.2, 0)
	end
	updateMovement()
end

---------
--INPUTS!
---------

UserInputService.InputBegan:connect(function(inputObject)
	local inputType, keyCode = inputObject.UserInputType.Name, inputObject.KeyCode.Name
	if inputType == "Keyboard" then
		if not UserInputService:GetFocusedTextBox() then
			if keyCode == "Q" or keyCode == "E" then
				characterOffsetDesired = CN(-characterOffsetDesired.X, characterOffsetDesired.Y, characterOffsetDesired.Z)
			elseif keyCode == "W" then
				movement[3] = movement[3]-1
			elseif keyCode == "A" then
				movement[1] = movement[1]-1
			elseif keyCode == "S" then
				movement[3] = movement[3]+1
			elseif keyCode == "D" then
				movement[1] = movement[1]+1
			end
			updateMovement()
		end
	end
end)
UserInputService.InputChanged:connect(function(inputObject)
	local inputType, keyCode = inputObject.UserInputType.Name, inputObject.KeyCode.Name
	if inputType == "MouseMovement" then
		cameraRotation[1] = cameraRotation[1]+inputObject.Delta.Y*cameraRotationSensitivity
		cameraRotation[2] = cameraRotation[2]-inputObject.Delta.X*cameraRotationSensitivity
		if cameraRotation[1] < cameraRotationLowerLimit then cameraRotation[1] = cameraRotationLowerLimit end
		if cameraRotation[1] > cameraRotationUpperLimit then cameraRotation[1] = cameraRotationUpperLimit end
	elseif inputType == "MouseWheel" then
		zoomLevel = zoomLevel-inputObject.Position.Z*zoomSensitivity
		if zoomLevel < zoomInLimit then zoomLevel = zoomInLimit end
		if zoomLevel > zoomOutLimit then zoomLevel = zoomOutLimit end
	end
end)
UserInputService.InputEnded:connect(function(inputObject)
	local inputType, keyCode = inputObject.UserInputType.Name, inputObject.KeyCode.Name
	if inputType == "Keyboard" then
		if keyCode == "W" then
			movement[3] = movement[3]+1
		elseif keyCode == "A" then
			movement[1] = movement[1]+1
		elseif keyCode == "S" then
			movement[3] = movement[3]-1
		elseif keyCode == "D" then
			movement[1] = movement[1]-1
		end
		updateMovement()
	end
end)

RunService.Stepped:connect(updateStepped)

---------------------
--COMMENTED OUT STUFF
---------------------

--[[function updateStepped()
	characterOffset = slerp(characterOffset, characterOffsetDesired, switchSpeed)
	local cameraPosition = (CN(head.Position)*CA(0, cameraRotation[2], 0)*CA(cameraRotation[1], 0, 0)*CN(characterOffset.p*zoomLevel)).p
	local point = (CN(head.Position)*CA(0, cameraRotation[2], 0)*CA(cameraRotation[1], 0, 0)*CN(0, 0, 10)).p
	--bodyGyro.cframe = CN(rootPart.Position, V3(point.X, rootPart.Position.Y, point.Z))
	neck.C1 = (CN((torso.CFrame*CN(0, 1, 0)).p, point)*CN(0, 0.5, 0)):toObjectSpace(torso.CFrame)
	local part, position = rayCast(head.Position, (cameraPosition-head.Position).unit*characterOffset.p.magnitude*zoomLevel, {character})
	if not part then
		camera.CoordinateFrame = CN(cameraPosition, point)
	else
		camera.CoordinateFrame = CN(position, point)*CN(0, 0, 0.2)
	end
	if characterOffset.X <= 0 then
		local pointing = CN((torso.CFrame*CN(1, 0.5, 0)).p, point):toObjectSpace(torso.CFrame)
		local aX, aY, aZ = pointing:toEulerAnglesXYZ()
		if math.deg(aY+aZ) < 75 and math.deg(aY+aZ) > -75 then
			rightShoulder.C1 = (CN((torso.CFrame*CN(1, 0.5, 0)).p, point)*CA(90, 0, 0)*CN(0, -0.5, 0)):toObjectSpace(torso.CFrame)
			local armDistance = ((torso.CFrame*CN(-1, 0.5, 0)).p-(rightArm.CFrame*CN(0, -1, 0)).p).magnitude
			if armDistance >= 1.5 then
				leftShoulder.C1 = (CN((torso.CFrame*CN(-1, 0.5, 0)).p, (rightArm.CFrame*CN(0, -1, 0)).p)*CA(90, 0, 0)*CN(0, -0.5, 0)):toObjectSpace(torso.CFrame)
			else
				leftShoulder.C1 = (CN((torso.CFrame*CN(-1, 0.5, 0)).p, (rightArm.CFrame*CN(0, -1, 0)).p)*CA(90, 0, 0)*CN(0, 1-armDistance, 0)):toObjectSpace(torso.CFrame)
			end
		end
	else
		local pointing = CN((torso.CFrame*CN(-1, 0.5, 0)).p, point):toObjectSpace(torso.CFrame)
		local aX, aY, aZ = pointing:toEulerAnglesXYZ()
		if math.deg(aY+aZ) < 75 and math.deg(aY+aZ) > -75 then
			leftShoulder.C1 = (CN((torso.CFrame*CN(-1, 0.5, 0)).p, point)*CA(90, 0, 0)*CN(0, -1, 0)):toObjectSpace(torso.CFrame)
			local armDistance = ((torso.CFrame*CN(1, 0.5, 0)).p-(leftArm.CFrame*CN(0, -1, 0)).p).magnitude
			if armDistance >= 1.5 then
				rightShoulder.C1 = (CN((torso.CFrame*CN(1, 0.5, 0)).p, (leftArm.CFrame*CN(0, -1, 0)).p)*CA(90, 0, 0)*CN(0, -0.5, 0)):toObjectSpace(torso.CFrame)
			else
				rightShoulder.C1 = (CN((torso.CFrame*CN(1, 0.5, 0)).p, (leftArm.CFrame*CN(0, -1, 0)).p)*CA(90, 0, 0)*CN(0, 1-armDistance, 0)):toObjectSpace(torso.CFrame)
			end
		end
	end
end]]