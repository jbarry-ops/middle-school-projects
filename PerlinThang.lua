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

--cool things
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
		newInstance.Anchored = true
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
terrainOffset = CN(0, -100, 0)
terrainName = "Terrain Thang"
terrainExtents = {100, 100}
seaLevel = 0
shoreWidth = 3
noises = {1024, 512, 256, 128, 64, 32, 16}
flattenTop = 5
flattenBottom = -5
topFlattenMult = 1
bottomFlattenMult = 1
blockSize = 5 --or chunk size, depending on how you think about it
isRoundedLikeMinecraft = false
isMadeOfTrianglesLikeAwesome = true
treeDispersion = 12
treeLeafColors = {"Bright green", "Earth green", "Dark green"}
treeBarkColors = {"Brown", "Reddish brown"}

--now some cool terrain stuff!
for _, Obj in pairs(Workspace:GetChildren()) do
	if Obj.Name == terrainName then
		Obj:Destroy()
	end
end

designatedSpot = (terrainOffset*CN(-terrainExtents[1]/2*blockSize, blockSize, -terrainExtents[2]/2*blockSize)).p

for _, player in pairs(Game:GetService("Players"):GetChildren()) do
	player.Chatted:connect(function(msg)
		if msg == "up" then
			player.Character:MoveTo(designatedSpot)
		end
	end)
end

function newTree(parent, cframe)
	local tree = new'Model'{Parent = parent, Name = "Tree"}
	local trunk = nil
	local barkColor = treeBarkColors[math.random(1, #treeBarkColors)]
	local leafColor = treeLeafColors[math.random(1, #treeLeafColors)]
	for t = 0, math.random(3, 8) do
		trunk = newPart(tree, V3(5, 5, 5), cframe*CN(0, 2.5+t*5, 0), barkColor, "Wood")
	end
	for l = 0, 2 do
		for e = -(3-l), 3-l do
			for a = -(3-l), 3-l do
				local leaf = newPart(tree, V3(5, 5, 5), trunk.CFrame*CN(e*5, 2.5+l*5, a*5), leafColor, "Grass")
			end
		end
	end
end

terrain = new'Model'{Parent = Workspace, Name = terrainName}

seed = tonumber(tostring(tick()):reverse())
seedI, seedF = math.modf(seed)
math.randomseed(seed)
print(seed)

heightTab = {}

--water
--water = newPart(terrain, V3(blockSize*terrainExtents[1], 0, blockSize*terrainExtents[2]), terrainOffset*CN(0, seaLevel*blockSize, 0), "Dove blue", "SmoothPlastic", 0.5)
--water.CanCollide = false

message = new'Hint'{Parent = terrain}

firstOnX = 0
trees = {}
for x = 1, terrainExtents[1] do
	--seed = seed+math.noise(x, seed+x, seed-x)
	local newTab = {}
	local averageHeight = firstOnX
	local desiredHeight = firstOnX
	for z = 1, terrainExtents[2] do
		if terrain.Parent ~= Workspace then break end
		local theTotal = ((x-1)*terrainExtents[1]+z)
		if theTotal%25 == 0 then wait() end
		message.Text = "Generating terrain: "..theTotal.."/"..terrainExtents[1]*terrainExtents[2]
		local adj = (newTab[z-1] or averageHeight)
		local adj2 = ((heightTab[x-1] or newTab)[z] or averageHeight)
		local corner = ((heightTab[x-1] or newTab)[z-1] or (heightTab[x-1] or newTab)[z] or (heightTab[x-1] or newTab)[z+1] or averageHeight)
		local corner2 = ((heightTab[x-1] or newTab)[z+1] or (heightTab[x-1] or newTab)[z] or (heightTab[x-1] or newTab)[z-1] or averageHeight)
		local newHeight = (averageHeight+adj+adj2+corner+corner2)/5
		local nValues = {}
		local nSum = 0
		local nSum2 = 0
		for n = 1, #noises do
			local noiseValue = math.noise(x/noises[n]*blockSize, seed+n*blockSize, z/noises[n]*blockSize)*blockSize
			newHeight = newHeight+noiseValue
			table.insert(nValues, noiseValue)
			nSum = nSum+noiseValue
			nSum2 = nSum2+math.abs(noiseValue)
		end
		--flatten and stuff
		table.sort(nValues)
		if newHeight+terrainOffset.Y > terrainOffset.Y+flattenTop*blockSize then
			for _, n in pairs(nValues) do
				if n > 0 and n < nSum/#nValues then
					newHeight = newHeight-n+n*topFlattenMult
				else
					newHeight = newHeight+n*topFlattenMult
				end
			end
		elseif newHeight+terrainOffset.Y < terrainOffset.Y+flattenBottom*blockSize then
			for _, n in pairs(nValues) do
				if n < 0 and n > nSum/#nValues then
					newHeight = newHeight-n+n*bottomFlattenMult
				end
			end
		end
		local chosenHeight = newHeight
		if isRoundedLikeMinecraft then
			chosenHeight = math.ceil(chosenHeight/blockSize)*blockSize
		end
		if not isMadeOfTrianglesLikeAwesome then
			local mainTerrain = newPart(terrain, V3(blockSize, blockSize, blockSize), terrainOffset*CN((x-terrainExtents[1]/2)*blockSize, chosenHeight, (z-terrainExtents[2]/2)*blockSize), "Bright green", "Grass")
			designatedSpot = mainTerrain.Position
			local mainHeight = mainTerrain.CFrame.Y-terrainOffset.Y
			if mainHeight <= (seaLevel+shoreWidth)*blockSize then
				mainTerrain.BrickColor = BN("Brick yellow")
				mainTerrain.Material = "Sand"
			else
				local canPlant = true
				for _, tree in pairs(trees) do
					if math.abs(x-tree[1]) < treeDispersion and math.abs(z-tree[2]) < treeDispersion then
						canPlant = false
					end
				end
				if math.abs(nSum) > blockSize then
					canPlant = false
				end
				if canPlant then
					newTree(terrain, mainTerrain.CFrame*CN(0, blockSize/2, 0))
					table.insert(trees, {x, z})
				end
			end
			--Now fill in cracks
			local diff = math.max(newHeight-adj, newHeight-adj2, newHeight-corner, newHeight-corner2, nSum2)
			if isRoundedLikeMinecraft then
				diff = math.ceil(diff/blockSize)*blockSize
			end
			if diff > blockSize/2 then
				for f = 1, math.floor(diff/blockSize) do
					local fillTerrain = newPart(mainTerrain, V3(blockSize, blockSize, blockSize), mainTerrain.CFrame*CN(0, -blockSize*f, 0), "Brown", "Slate")
					local fillHeight = fillTerrain.CFrame.Y-terrainOffset.Y
					if fillHeight <= (seaLevel+shoreWidth)*blockSize then
						fillTerrain.BrickColor = BN("Brick yellow")
						fillTerrain.Material = "Sand"
					end
				end
			end
			if z == 1 then
				firstOnX = newHeight
			end
			if z%10 == 0 then
				desiredHeight = newHeight
			end
			averageHeight = (averageHeight+desiredHeight)/2
		end
		table.insert(newTab, newHeight)
	end
	table.insert(heightTab, newTab)
end
if isMadeOfTrianglesLikeAwesome then
	for x, tab in pairs(heightTab) do
		for z, point in pairs(tab) do
			if ((x-1)*terrainExtents[1]+z)%50 == 0 then wait() wait(0.1) end
			if tab[z+1] and heightTab[x+1] then
				local pos = terrainOffset*CN((x-terrainExtents[1]/2)*blockSize, 0, (z-terrainExtents[2]/2)*blockSize)
				local TM = triangleConnect(terrain, {pos*CN(0, point, 0), pos*CN(0, tab[z+1], blockSize), pos*CN(blockSize, heightTab[x+1][z], 0)}, 0, "Bright green", "Grass")
				local T1, T2 = TM:GetChildren()[1], TM:GetChildren()[2]
				if T1.CFrame.Y-terrainOffset.Y <= (seaLevel+shoreWidth)*blockSize then
					T1.BrickColor = BN("Brick yellow")
					T1.Material = "Sand"
				end
				if T2.CFrame.Y-terrainOffset.Y <= (seaLevel+shoreWidth)*blockSize then
					T2.BrickColor = BN("Brick yellow")
					T2.Material = "Sand"
				end
				--if T1.CFrame.Y <
				if heightTab[x+1][z+1] then
					local TM2 = triangleConnect(terrain, {pos*CN(0, tab[z+1], blockSize), pos*CN(blockSize, heightTab[x+1][z], 0), pos*CN(blockSize, heightTab[x+1][z+1], blockSize)}, 0, "Bright green", "Grass")
					local T3, T4 = TM2:GetChildren()[1], TM2:GetChildren()[2]
					if T3.CFrame.Y-terrainOffset.Y <= (seaLevel+shoreWidth)*blockSize then
						T3.BrickColor = BN("Brick yellow")
						T3.Material = "Sand"
					end
					if T4.CFrame.Y-terrainOffset.Y <= (seaLevel+shoreWidth)*blockSize then
						T4.BrickColor = BN("Brick yellow")
						T4.Material = "Sand"
					end
				end
			end
		end
	end
end
if message then
	message:Destroy()
end