--[[
    Super cool weapon framework..
    Stuff it needs:
        -1st person zoom
        -3rd person camera
        -Easily customizable:
            -Weaponry
            -Handling
            -Animations (keyframed?)
            -Upgrades
]]

--Functions and stuff
V3, CF, C3, BN, U2 = Vector3.new, CFrame.new, Color3.new, BrickColor.new, UDim2.new
mr = math.random
function CA(X, Y, Z, InRadians)
    if InRadians then
        return CFrame.Angles(X or 0, Y or 0, Z or 0)
    else
        return CFrame.Angles(math.rad(X or 0), math.rad(Y or 0), math.rad(Z or 0))
    end
end

debris = game:service("Debris")

--cool functions
function set(instance)
    return function(properties)
        for k, v in pairs(properties) do
            if type(k) == "string" then 
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
--newObject functions
function newPart(parent, size, cframe, brickColor, material, transparency)
	return new'Part'{Parent = parent, Size = size, CFrame = cframe, BrickColor = BN(brickColor or "Black"), Material = material or "SmoothPlastic", Transparency = transparency or 0}
end
function newWedge(parent, size, cframe, brickColor, material, transparency)
	return new'WedgePart'{Parent = parent, Size = size, CFrame = cframe, BrickColor = BN(brickColor or "Black"), Material = material or "SmoothPlastic", Transparency = transparency or 0}
end
function newMesh(parent, meshType, scale, meshId, textureId)
	return new'SpecialMesh'{Parent = parent, MeshType = meshType or "Sphere", Scale = scale or V3(1, 1, 1), MeshId = meshId or "", TextureId = textureId or ""}
end
function newCylinder(parent, scale)
	return new'CylinderMesh'{Parent = parent, Scale = scale or V3(1, 1, 1)}
end
function newBlock(parent, scale)
	return new'BlockMesh'{Parent = parent, Scale = scale or V3(1, 1, 1)}
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
--*Credits go to stravant and AntiBoomz0r for the quaternion/slerp stuff
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
--*Credits go to DoogleFox for the surface detection thing
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
--[[function animate(motor, keyframes, )

end]]

--Meshes
diamond = "rbxassetid://9756362"
ring = "rbxassetid://3270017"

user = game:getService("Players").localPlayer
character = user.Character --Probably hasn't loaded, since Players.AutoLoadCharacter = false?
camera = workspace.CurrentCamera
playerGui = user:waitForChild("PlayerGui")

--clear all old weapon stuff (if there is any)
for _, obj in pairs(camera:getChildren()) do
    if obj.Name == "Weapon stuff" then
        obj:Destroy()
    end
end

weapons = {"sniper", "pistol", "machine gun"}

function equip(weapon)

end

--weapon selection (testing gui)
for _, obj in pairs(playerGui:getChildren()) do
    if obj.Name == "ChooseWep" then
        obj:Destroy()
    end
end
screen = new'ScreenGui'{Parent = playerGui, Name = "ChooseWep"}
frame = set(newFrame(screen, U2(0, 250, 0, 320), U2(1, -300, 0.5, -150), C3(1, 0, 1), 0.7)){Draggable = true, newBorder(nil, 2, C3(), 0)}

for _, weapon in pairs(weapons) do
	local isMouseInside = false
    local WepSelectButton = set(newTextButton(frame, U2(1, 0, 0, 40), U2(0, 0, 0, -40+_*45), C3(), 0, weapon:upper(), C3(1, 1, 1))){
		FontSize = "Size24",
		{
			MouseButton1Down = function()
				if isMouseInside then
					thisInstance.BackgroundColor3 = C3(0, 1, 0)
					thisInstance.TextColor3 = C3(1, 1, 1)
				end
			end,
			MouseButton1Up = function()
				if isMouseInside then
					equip(weapon)
					thisInstance.BackgroundColor3 = C3()
					thisInstance.TextColor3 = C3(1, 1, 1)
					thisInstance:TweenPosition(U2(0, 0, 0, -40+_*45), "Out", "Quad", 0.1, true)
				end
			end,
			MouseEnter = function()
				isMouseInside = true
				thisInstance.BackgroundColor3 = C3(1, 1, 1)
				thisInstance.TextColor3 = C3()
				thisInstance:TweenPosition(U2(0, 5, 0, -40+_*45), "Out", "Quad", 0.1, true)
			end,
			MouseLeave = function()
				isMouseInside = false
				thisInstance.BackgroundColor3 = C3()
				thisInstance.TextColor3 = C3(1, 1, 1)
				thisInstance:TweenPosition(U2(0, 0, 0, -40+_*45), "Out", "Quad", 0.1, true)
			end
		},
		newBorder(nil, 2, C3(), 0)
	}
end