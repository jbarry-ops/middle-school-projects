--[[
------------------------------------------
TERRAIN IMPLEMENTATION OF MATH.NOISE:
------------------------------------------
]]
--the usual stuff
V3, CN, C3, BN, U2 = Vector3.new, CFrame.new, Color3.new, BrickColor.new, UDim2.new
MR = math.random
function CA(x, y, z, inRadians)
    if inRadians then
        return CFrame.Angles(x or 0, y or 0, z or 0)
    else
        return CFrame.Angles(math.rad(x or 0), math.rad(y or 0), math.rad(z or 0))
    end
end
function round(n)
	local int, fr = math.modf(n)
	if fr >= 0.5 then
		return math.ceil(n)
	else
		return math.floor(n)
	end
end
function setEnvironmentGlobalized(f, t)
	setfenv(f, setmetatable(t or getfenv(f), {__index = function(t, i) return getfenv()[i] end}))
end
function set(instance)
    return function(properties)
        for k, v in pairs(properties) do
            if type(k) == "string" then
				local propertyName = k:gsub(k, {pt = "Parent", sz = "Size", cf = "CFrame", bc = "BrickColor", tr = "Transparency", sc = "Scale", an = "Anchored",
					ts = "TopSurface", bs = "BottomSurface", rs = "RightSurface", ls = "LeftSurface", fs = "FrontSurface", bks = "BackSurface", cl = "Color", mt = "Material",
					nm = "Name", bgc = "BackgroundColor3", bgt = "BackgroundTransparency", bsp = "BorderSizePixel", bc3 = "BorderColor3", ps = "Position"})
                instance[propertyName] = v
            elseif type(k) == "number" then
                if type(v) == "userdata" then
                    v.Parent = instance
				elseif type(v) == "table" then
					for event, connection in pairs(v) do
						if type(event) == "string" then
							if type(connection) == "function" then
								setEnvironmentGlobalized(connection, {thisInstance = instance})
								instance[event]:connect(connection)
							end
						elseif type(event) == "number" then
							if type(connection) == "table" then
								if type(connection[1]) == "table" then
									local toDo = connection[2]
									setEnvironmentGlobalized(toDo, {thisInstance = instance})
									for i, v in pairs(connection[1]) do
										toDo(i, v)
									end
								else
									local step, toDo = 1, connection[3]
									if type(toDo) == "number" then
										step = connection[3]
										toDo = connection[4]
									end
									setEnvironmentGlobalized(toDo, {thisInstance = instance})
									for i = connection[1], connection[2], step do
										toDo(i)
									end
								end
							end
						end
					end
				elseif type(v) == "string" then
					getfenv(0)[v] = instance
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
		set(newInstance){sz = V3(1, 1, 1), mt = "SmoothPlastic", ts = 0, bs = 0, Locked = true, an = true}
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

--newObject functions
function newPart(parent, size, cframe, brickColor, material, transparency)
	return new'Part'{Parent = parent, Size = size, CFrame = cframe, BrickColor = BN(brickColor or "Black"), Material = material or "SmoothPlastic", Transparency = transparency or 0}
end
function newWedge(parent, size, cframe, brickColor, material, transparency)
	return new'WedgePart'{Parent = parent, Size = size, CFrame = cframe, BrickColor = BN(brickColor or "Black"), Material = material or "SmoothPlastic", Transparency = transparency or 0}
end
function newMesh(parent, meshType, scale, meshId, textureId)
	return new'SpecialMesh'{Parent = parent, MeshType = meshType or "Wedge", Scale = scale or V3(1, 1, 1), MeshId = meshId or "", TextureId = textureId or ""}
end
function newCylinder(parent, scale)
	return new'CylinderMesh'{Parent = parent, Scale = scale or V3(1, 1, 1)}
end
function newBlock(parent, scale)
	return new'BlockMesh'{Parent = parent, Scale = scale or V3(1, 1, 1)}
end

--other cool functions
function getTriangleValues(points, width) --THANKS DOOGLE
	local width = width or 0
	for _, point in pairs(points) do
		if pcall(function() return point.p end) then points[_] = point.p end
	end
	local G, V = 0
	for S = 1, 3 do
		local L = (points[1+(S+1)%3]-points[1+S%3]).magnitude
		G, V = L > G and L or G, L > G and {points[1+(S-1)%3], points[1+(S)%3], points[1+(S+1)%3]} or V
	end
	local D = V[2]+(V[3]-V[2]).unit*((V[3]-V[2]).unit:Dot(V[1]-V[2]))
	local C, B = (D-V[1]).unit, (V[2]-V[3]).unit
	local A = B:Cross(C)
	S1 = V3(width, (V[2]-D).magnitude, (V[1]-D).magnitude)/1--0.2
	S2 = V3(width, (V[3]-D).magnitude, (V[1]-D).magnitude)/1--0.2
	C1 = CN(0,0,0,A.X,B.X,C.X,A.Y,B.Y,C.Y,A.Z,B.Z,C.Z)+(V[1]+V[2])/2
	C2 = CN(0,0,0,-A.X,-B.X,C.X,-A.Y,-B.Y,C.Y,-A.Z,-B.Z,C.Z)+(V[1]+V[3])/2
	return C1, C2, S1, S2
end
function triangleConnect(parent, points, width, brickColor, material, transparency) --THANKS DOOGLE
	local c1, c2, s1, s2 = getTriangleValues(points, width)
	local tm = new'Model'{Parent = parent, Name = "Triangle Fill"}
	local t1 = newWedge(tm, s1, c1, brickColor, material, transparency)
	newMesh(t1)
	local t2 = newWedge(tm, s2, c2, brickColor, material, transparency)
	newMesh(t2)
	return tm
end

terrainService = Workspace.Terrain
terrainService:Clear()

--how about a place to put variables/settings? lulz 10/5/15 by ask4kingbily
terrainName = "ALASKA"
terrainExtents = {350, 350}
terrainOffset = V3(-terrainExtents[1]/2, -20, -terrainExtents[2]/2)
seaLevel = 0
shoreWidth = 3
noises = {1024, 512, 256, 128, 64, 32}
treeDispersion = 12

--now some cool terrain stuff!
for _, Obj in pairs(Workspace:GetChildren()) do
	if Obj.Name == terrainName then
		Obj:Destroy()
	end
end

terrain = new'Model'{Parent = Workspace, Name = terrainName}

seed = tonumber(tostring(tick()):reverse())
seedI, seedF = math.modf(seed)
math.randomseed(seed)
print(seed)

heightTab = {}

message = new'Hint'{Parent = terrain}

firstOnX = 0
for x = 1, terrainExtents[1] do
	local newTab = {}
	for z = 1, terrainExtents[2] do
		if terrain.Parent ~= Workspace then break end
		local theTotal = ((x-1)*terrainExtents[1]+z)
		if theTotal%200 == 0 then wait() end
		message.Text = "Generating terrain: "..theTotal.."/"..terrainExtents[1]*terrainExtents[2]
		local adj = (newTab[z-1] or firstOnX)
		local adj2 = ((heightTab[x-1] or newTab)[z] or firstOnX)
		local corner = ((heightTab[x-1] or newTab)[z-1] or (heightTab[x-1] or newTab)[z] or (heightTab[x-1] or newTab)[z+1] or firstOnX)
		local corner2 = ((heightTab[x-1] or newTab)[z+1] or (heightTab[x-1] or newTab)[z] or (heightTab[x-1] or newTab)[z-1] or firstOnX)
		local newHeight = (adj+adj2+corner+corner2)/4
		local nSum = 0
		for _, n in pairs(noises) do
			local noiseValue = 0
			if type(n) == "table" then
				noiseValue = math.noise(x/n[1], seed+_*seedI, z/n[1])*5*n[2]
			elseif type(n) == "number" then
				noiseValue = math.noise(x/n, seed+_*seedI, z/n)*5
			end
			newHeight = newHeight+noiseValue/(theTotal/terrainExtents[1])
		end
		local chosenHeight = newHeight/5
		terrainService:FillBlock(CN(V3(terrainOffset.X+x, terrainOffset.Y+chosenHeight, terrainOffset.Z+z)*5), V3(5, 5, 5), "Grass")
		--Now fill in cracks
		local topDiff = math.min(newHeight-adj, newHeight-adj2, newHeight-corner, newHeight-corner2)
		local botDiff = math.max(newHeight-adj, newHeight-adj2, newHeight-corner, newHeight-corner2)
		if math.floor(topDiff/5) < 0 then
			for t = 1, math.abs(math.floor(topDiff/5)) do
				terrainService:FillBlock(CN(V3(terrainOffset.X+x, terrainOffset.Y+chosenHeight+t, terrainOffset.Z+z)*5), V3(5, 5, 5), "Grass")
			end
		end
		if math.ceil(botDiff/5) > 0 then
			for b = 1, math.ceil(botDiff/5)+3 do
				terrainService:FillBlock(CN(V3(terrainOffset.X+x, terrainOffset.Y+chosenHeight-b, terrainOffset.Z+z)*5), V3(5, 5, 5), "Grass")
			end
		end
		if z == 1 then
			firstOnX = newHeight
		end
		table.insert(newTab, newHeight)
	end
	table.insert(heightTab, newTab)
end
if message then
	message:Destroy()
end