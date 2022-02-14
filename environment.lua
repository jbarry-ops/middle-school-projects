--[[
	Really sweet environment stuff!
	Things to make:
		
]]

--Add services to environment
for _, s in pairs({"Players", "Debris", "UserInputService", "RunService", "Lighting"}) do
	getfenv(0)[s] = Game:GetService(s)
end

--FUNCTIONS AND STUFF
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
function set(instance)
    return function(properties)
        for k, v in pairs(properties) do
            if type(k) == "string" then
				--local propertyName = k:gsub(k, {pt = "Parent", sz = "Size", cf = "CFrame", bc = "BrickColor", tr = "Transparency", sc = "Scale", an = "Anchored",
					--ts = "TopSurface", bs = "BottomSurface", rs = "RightSurface", ls = "LeftSurface", fs = "FrontSurface", bks = "BackSurface", cl = "Color", mt = "Material",
					--nm = "Name"})
                instance[k] = v
            elseif type(k) == "number" then
                if type(v) == "userdata" then
                    v.Parent = instance
                elseif type(v) == "table" then
                    for event, connection in pairs(v) do
						local cenv = {thisInstance = instance}
						for n, t in pairs(getfenv()) do
							cenv[n] = t
						end
						setfenv(connection, cenv)
                        instance[event]:connect(connection)
                    end
                end
            end
            if properties.CFrame then instance.CFrame = properties.CFrame end
        end
		return instance
    end
end
function new(instanceType)
	local newInstance = Instance.new(instanceType)
	if newInstance:IsA("BasePart") then
		pcall(function() newInstance.FormFactor = 3 end)
		newInstance.Size = V3(1, 1, 1)
		--newInstance.Anchored = true
		newInstance.Material = "SmoothPlastic"
		newInstance.TopSurface = 0
		newInstance.BottomSurface = 0
		newInstance.Locked = true
	elseif newInstance:IsA("GuiObject") then
		newInstance.Size = U2(1, 0, 1, 0)
		newInstance.BorderSizePixel = 0
		newInstance.BackgroundColor3 = C3()
		if newInstance:IsA("TextBox") or newInstance:IsA("TextLabel") or newInstance:IsA("TextButton") then
			newInstance.Text = ""
            newInstance.TextColor3 = C3(1, 1, 1)
            newInstance.BackgroundTransparency = 1
        end
		if newInstance:IsA("GuiButton") then
			newInstance.AutoButtonColor = false
		end
    end
    return function(properties)
		return set(newInstance)(properties)
    end
end
function rayCast(origin, direction, ignoreList)
	local ray = Ray.new(origin, direction)
	local part, position = Workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
	return part, position
end
function recurse(object) --recursion that returns a single table of descendants
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
--newObject functions
function newMesh(parent, meshType, scale, meshId, textureId)
	return new'SpecialMesh'{Parent = parent, MeshType = meshType or "Sphere", Scale = scale or V3(1, 1, 1), MeshId = meshId or "", TextureId = textureId or ""}
end
function newCylinder(parent, scale)
	return new'CylinderMesh'{Parent = parent, Scale = scale or V3(1, 1, 1)}
end
function newBlock(parent, scale)
	return new'BlockMesh'{Parent = parent, Scale = scale or V3(1, 1, 1)}
end
function newPart(parent, size, cframe, brickColor, material, transparency)
	print("Hi?")
	return part = new'Part'{Parent = parent, Size = size, CFrame = cframe, BrickColor = BN(brickColor or "Black"), Material = material or "SmoothPlastic", Transparency = transparency or 0}
	--if size.X < 0.2 or size.Y < 0.2 or size.Z < 0.2 then newBlock(part) end
	--print("YES!")
	--return part
end
function newWedge(parent, size, cframe, brickColor, material, transparency)
	local wedge = new'WedgePart'{Parent = parent, Size = size, CFrame = cframe, BrickColor = BN(brickColor or "Black"), Material = material or "SmoothPlastic", Transparency = transparency or 0}
	if size.X < 0.2 or size.Y < 0.2 or size.Z < 0.2 then newMesh(wedge, "Wedge") end
	return wedge
end
function newMotor(parent, part0, part1, C0, C1)
    return new'Motor6D'{Parent = parent, Part0 = part0, Part1 = part1, C0 = C0 or CN(), C1 = C1 or CN()}
end
--newGuiObject functions
function newFrame(parent, size, position, color, transparency)
   return new'Frame'{Parent = parent, Size = size, Position = position or U2(), BackgroundColor3 = color or C3(), Transparency = transparency or 0} 
end
function newTextLabel(parent, size, position, color, transparency, text, textcolor)
   return new'TextLabel'{Parent = parent, Size = size, Position = position or U2(), BackgroundColor3 = color or C3(), Transparency = transparency or 0, Text = text or "", TextColor3 = textcolor or C3(1, 1, 1)} 
end
function newTextButton(parent, size, position, color, transparency, text, textcolor)
   return new'TextButton'{Parent = parent, Size = size, Position = position or U2(), BackgroundColor3 = color or C3(), Transparency = transparency or 0, Text = text or "", TextColor3 = textcolor or C3(1, 1, 1)} 
end
function newImageLabel(parent, size, position, color, transparency, image)
    return new'ImageLabel'{Parent = parent, Size = size, Position = position or U2(), BackgroundColor3 = color or C3(), Transparency = transparency or 0, Image = image or ""}
end
function newImageButton(parent, size, position, color, transparency, image)
    return new'ImageButton'{Parent = parent, Size = size, Position = position or U2(), BackgroundColor3 = color or C3(), Transparency = transparency or 0, Image = image or ""}
end
function newBorder(parent, borderSize, color, transparency)
	return set(newFrame(parent, U2(1, 0, 1, 0), U2(), C3(), 1)){
		set(newFrame(nil, U2(0, borderSize, 1, borderSize), U2(0, -borderSize/2, 0, -borderSize/2), color, transparency)){Name = "left"},
		set(newFrame(nil, U2(0, borderSize, 1, borderSize), U2(1, -borderSize/2, 0, -borderSize/2), color, transparency)){Name = "right"},
		set(newFrame(nil, U2(1, borderSize, 0, borderSize), U2(0, -borderSize/2, 0, -borderSize/2), color, transparency)){Name = "top"},
		set(newFrame(nil, U2(1, borderSize, 0, borderSize), U2(0, -borderSize/2, 1, -borderSize/2), color, transparency)){Name = "bottom"}
	}
end
-- *Credits go to stravant and AntiBoomz0r*
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
-- *Credits go to DoogleFox*
function getSurface(part, position)
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

--Add player environment
localPlayer, camera = Players.LocalPlayer, Workspace.CurrentCamera
playerGui, mouse, character = localPlayer:WaitForChild("PlayerGui"), localPlayer:GetMouse(), localPlayer.Character

--Get character environment
exceptions = {HumanoidRootPart = "rootPart"}
for _, thing in pairs(recurse(character)) do
	local name = exceptions[thing.Name] or truncateName(thing.Name)
	if not getfenv(0)[name] then
		getfenv(0)[name] = thing
	end
	if thing:IsA("JointInstance") then
		thing.C0 = CN()
		thing.C1 = CN()
	elseif thing:IsA("CharacterAppearance") or thing:IsA("Script") or thing:IsA("Animator") then
		thing:Destroy()
	end
end
wait() --This is required for BodyColors.. :o

--SETTINGS
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

skinColor = "Nougat"
primaryColor = "Dark stone grey"
secondaryColor = "Medium stone grey"

--REAL STUFFS

--Set up character appearance :P
rootJoint.C0 = CN(0, 3, 0)
rootJoint.C1 = CN()

neck.C0 = CN(0, 1, 0)
neck.C1 = CN(0, -0.5, 0)

newBlock(torso, V3(0.9, 1, 1))
torso.BrickColor = BN(primaryColor)
torso.Material = "SmoothPlastic"

newBlock(head, V3(0.55, 1.1, 1.1))
head.BrickColor = BN(skinColor)
head.Material = "SmoothPlastic"

--Destroy the stuff
rightArm:Destroy()
leftArm:Destroy()
rightLeg:Destroy()
leftLeg:Destroy()

rightShoulder:Destroy()
leftShoulder:Destroy()
rightHip:Destroy()
leftHip:Destroy()

wait()

--Recreate the stuff, better
rightArm = newPart(character, V3(0.8, 1.4, 0.8), primaryColor)
print("THERE")
rightShoulder = newMotor(torso, torso, rightArm, CN(1.3, 0.75, 0)*CN(0, -0.5, 0))
rightForearm = newPart(character, V3(0.6, 1.2, 0.6), skinColor)
rightElbow = newMotor(rightArm, rightArm, rightForearm, CN(0, -0.6, 0)*CN(0, -0.6, 0))
 
leftArm = newPart(character, V3(0.8, 1.4, 0.8), primaryColor)
leftShoulder = newMotor(torso, torso, leftArm, CN(-1.3, 0.75, 0)*CN(0, -0.5, 0))
leftForearm = newPart(character, V3(0.6, 1.2, 0.6), skinColor)
leftElbow = newMotor(leftArm, leftArm, leftForearm, CN(0, -0.6, 0)*CN(0, -0.6, 0))
 
rightLeg = newPart(character, V3(0.9, 1.4, 0.9), primaryColor)
rightHip = newMotor(torso, torso, rightLeg, CN(0.45, -1, 0)*CN(0, -0.7, 0))
rightShin = newPart(character, V3(0.8, 1.6, 0.8), primaryColor)
rightKnee = newMotor(rightLeg, rightLeg, rightShin, CN(0, -0.7, 0)*CN(0, -0.8, 0))
 
leftLeg = newPart(character, V3(0.9, 1.4, 0.9), primaryColor)
leftHip = newMotor(torso, torso, leftLeg, CN(-0.45, -1, 0)*CN(0, -0.7, 0))
leftShin = newPart(character, V3(0.8, 1.6, 0.8), primaryColor)
leftKnee = newMotor(leftLeg, leftLeg, leftShin, CN(0, -0.7, 0)*CN(0, -0.8, 0))

--Set up welds for animation
--[[neck.C0 = CN()
neck.C1 = CN(0, -1.5, 0)
rightHip.C1 = CN(0, 1, 0)
leftHip.C1 = CN(0, 1, 0)]]

--bodyGyro = new'BodyGyro'{Parent = rootPart, maxTorque = V3(1/0, 1/0, 1/0), P = 10000}

--CAMERA! :P
--camera.CameraType = "Scriptable"
--[[function updateCamera()
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
end

--ANIMATION!
characterSpeed = 0
function updateAnimation()
	if characterSpeed > 2 then
		rightHip.C0 = slerp(rightHip.C0, CN(0.5, -1, 0)*CA(math.sin(tick()*10)*30, 0, 0), 0.2)
		leftHip.C0 = slerp(leftHip.C0, CN(-0.5, -1, 0)*CA(math.sin(tick()*10)*-30, 0, 0), 0.2)
	else
		rightHip.C0 = slerp(rightHip.C0, CN(0.5, -1, 0), 0.2)
		leftHip.C0 = slerp(leftHip.C0, CN(-0.5, -1, 0), 0.2)
	end
end

humanoid.Running:connect(function(speed)
	characterSpeed = speed
end)

UserInputService.MouseBehavior = "LockCenter"
UserInputService.InputBegan:connect(function(inputObject)
	if inputObject.UserInputType == Enum.UserInputType.Keyboard then
		if not UserInputService:GetFocusedTextBox() then
			if inputObject.KeyCode == Enum.KeyCode.Q or inputObject.KeyCode == Enum.KeyCode.E then
				characterOffsetDesired = CN(-characterOffsetDesired.X, characterOffsetDesired.Y, characterOffsetDesired.Z)
			end
		end
	end
end)
UserInputService.InputChanged:connect(function(inputObject)
	if inputObject.UserInputType == Enum.UserInputType.MouseMovement then
		cameraRotation[1] = cameraRotation[1]+inputObject.Delta.Y*cameraRotationSensitivity
		cameraRotation[2] = cameraRotation[2]-inputObject.Delta.X*cameraRotationSensitivity
		if cameraRotation[1] < cameraRotationLowerLimit then cameraRotation[1] = cameraRotationLowerLimit end
		if cameraRotation[1] > cameraRotationUpperLimit then cameraRotation[1] = cameraRotationUpperLimit end
	elseif inputObject.UserInputType == Enum.UserInputType.MouseWheel then
		zoomLevel = zoomLevel-inputObject.Position.Z*zoomSensitivity
		if zoomLevel < zoomInLimit then zoomLevel = zoomInLimit end
		if zoomLevel > zoomOutLimit then zoomLevel = zoomOutLimit end
	end
end)]]
--RunService.RenderStepped:connect(updateCamera)
--RunService.Stepped:connect(updateAnimation)