--[[
Neon Bomberman: Main Module
]]

--Some cool stuffs

getmetatable(_G.a).


--Now give everything to the other scripts :P

getGlobal = Workspace.GetGlobal
setGlobal = Workspace.SetGlobal

_G = setmetatable({}, {
	__index = function(i)
		return getGlobal:InvokeServer(i)
	end,
	__newindex = function(i, v)
		setGlobal:InvokeServer(i, v)
	end
})

function truncateName(name)
	return name:sub(1, 1):lower()..name:sub(2):gsub(" ", "")
end
for n, s in pairs({"Players", "Debris", "UserInputService", "RunService", "Lighting"}) do
	getfenv(1)[s] = Game:GetService(s)
end
V3, CN, C3, BN, U2 = Vector3.new, CFrame.new, Color3.new, BrickColor.new, UDim2.new
function CA(x, y, z, inRadians)
	if inRadians then
		return CFrame.Angles(x or 0, y or 0, z or 0)
	else
		return CFrame.Angles(math.rad(x or 0), math.rad(y or 0), math.rad(z or 0))
	end
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
function rayCast(origin, direction, ignoreList)
	local ray = Ray.new(origin, direction)
	local part, position = Workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
	return part, position
end
--Thanks stravant and AntiBoomz0r
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
--Thanks DoogleFox*
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
--Now some cool map functions
directions = {{0, 1}, {0, -1}, {1, 0}, {-1, 0}}
function worldToCell(position)
	local relative = CN(position)*_G.offset:inverse()*CN(V3(#_G.map/2, 0.5, #_G.map/2)*_G.cellSize)
	return {round(relative.X/_G.cellSize), round(relative.Z/_G.cellSize)}
end
function cellToWorld(cell)
	return _G.offset*CN(V3(cell[1]-#_G.map/2, -0.5, cell[2]-#_G.map/2)*_G.cellSize)
end
function getEmptyCells() --Also stores the empty cells table in _G.emptyCells
	local empties = {}
	for x, row in pairs(_G.map) do
		for z, element in pairs(row) do
			if element == "0" then
				table.insert(empties, {x, z})
			end
		end
	end
	_G.emptyCells = empties
	return empties
end
function getSpawns() --Also stores the spawns table in _G.spawns
	local spawns = {}
	for x, row in pairs(_G.map) do
		for z, element in pairs(row) do
			if element == "S" then
				table.insert(spawns, {x, z})
			end
		end
	end
	_G.spawns = spawns
	return spawns
end
function getPlayersInCell(cell)
	local those = {}
	for _, player in pairs(_G.players) do
		local playerPosition = worldToCell(player.Character.Torso.Position)
		if playerPosition[1] == cell[1] and playerPosition[2] == cell[2] then
			table.insert(those, player)
		end
	end
	return those
end
function makeMap(mapMatrix, offset, cellSize, autoWall)
	_G.offset = offset
	_G.cellSize = cellSize
	_G.map = mapMatrix
	if autoWall then
		local newMap = clone(mapMatrix)
		local wallRow = {"W", "W"}
		for _, row in pairs(newMap) do
			table.insert(wallRow, "W")
			table.insert(row, 1, "W")
			table.insert(row, "W")
		end
		table.insert(newMap, 1, wallRow)
		table.insert(newMap, clone(wallRow)) --WIERD ROBLOX GLITCH/ERROR!?
		_G.map = newMap
	end
	getSpawns()
	for s, obj in pairs(Workspace:GetChildren()) do
		if obj.Name == "Neon Bomberman Map" then
			obj:Destroy()
		end
	end
	local mapModel = new'Model'{pt = Workspace, nm = "Neon Bomberman Map",
		{{_G.map,
		function(x, row)
			for z, element in pairs(row) do
				if z%7 == 0 then wait() end
				local floor = new'Part'{pt = this, nm = "Floor", sz = V3(1, 1, 1)*cellSize, cf = offset*CN(V3(x-#_G.map/2, -0.5, z-#_G.map/2)*cellSize), bc = BN("Dark stone grey"), mt = "Concrete"}
				local newCellPart
				if element == "W" then
					newCellPart = new'Part'{pt = this, nm = "Wall", sz = V3(1, 1, 1)*cellSize, cf = floor.CFrame*CN(0, cellSize, 0), bc = BN("Black"), mt = "Slate"}
				elseif element == "S" then --Player spawn
					--local spawnThing = new'Part'{pt = this, nm = "Spawn", sz = V3(1, 1, 1)*cellSize, cf = floor.CFrame*CN(0, cellSize, 0), bc = BN("Lime green"), tr = 0.7, cc = false}
				elseif element == "D" then --Always destructible
					newCellPart = new'Part'{pt = this, nm = "Destructible", sz = V3(1, 1, 1)*cellSize, cf = floor.CFrame*CN(0, cellSize, 0), bc = BN("Brown"), mt = "Wood"}
				elseif element == "1" then --Indestructible
					newCellPart = new'Part'{pt = this, nm = "Indestructible", sz = V3(1, 1, 1)*cellSize, cf = floor.CFrame*CN(0, cellSize, 0), bc = BN("Medium stone grey"), mt = "DiamondPlate"}
				elseif element == "?" then --Clear or indestructible
					row[z] = "0"
					if math.random(1, 3) ~= 3 then
						newCellPart = new'Part'{pt = this, nm = "Destructible", sz = V3(1, 1, 1)*cellSize, cf = floor.CFrame*CN(0, cellSize, 0), bc = BN("Brown"), mt = "Wood"}
					end
				elseif element == "B" then
					newCellPart = new'Part'{pt = this, nm = "Bomb Block", sz = V3(1, 1, 1)*cellSize, cf = floor.CFrame*CN(0, cellSize, 0), bc = BN("Black"), mt = "Wood"}
				end
				if newCellPart then
					row[z] = newCellPart
				end
			end
		end},
		{1, 4, function(y)
			local outside = new'Part'{pt = this, nm = "Outside Floor", sz = V3(cellSize*#_G.map, 1, 1000), cf = offset*CN(V3(0, 1, #_G.map/2)*cellSize)*CN(0, 0, 500), bc = BN("Pastel brown"), mt = "Sand"}
		end}},
		new'Part'{nm = "Ceiling", sz = V3(0, 1, 0)+V3(1, 0, 1)*#_G.map*cellSize, cf = offset*CN(0, cellSize+0.5, 0), tr = 1}
	}
	_G.mapObject = mapModel
	return mapModel
end
function spawnPlayers()
	_G.players = {}
	for p, player in pairs(Players:GetChildren()) do
		if not player.Character then
			player:LoadCharacter()
		end
		local character = player.Character
		local humanoid = character:WaitForChild("Humanoid")
		local chosenSpawn = math.random(1, #_G.spawns)
		character:MoveTo(cellToWorld(_G.spawns[chosenSpawn]).p)
		table.remove(_G.spawns, chosenSpawn)
		table.insert(_G.players, player)
		humanoid.Died:connect(function() table.remove(_G.players, p) end)
		player.AncestryChanged:connect(function() table.remove(_G.players, p) end)
	end
end
function explode(cell, explosionRadius, explosionType)
	local explosionType = explosionType or "Normal"
	local x, z = cell[1], cell[2]
	local lastHit = {}
	local explosion = new'Model'{pt = Workspace, nm = "Explosion"}
	Debris:AddItem(explosion, 1)
	local origin = new'Part'{pt = explosion, sz = V3(1, 1, 1)*_G.cellSize, cf = cellToWorld(cell)*CN(0, _G.cellSize, 0), bc = BN("Royal purple"), mt = "Neon", cc = false}
	if explosionType == "Big Boom" then
		for r = 1, explosionRadius do
			for d, direction in pairs(directions) do
				if not lastHit[d] or lastHit[d] == "S" or lastHit[d] == "0" or lastHit[d].Name == "Destructible" then
					local element = _G.map[x+direction[1]*r] and _G.map[x+direction[1]*r][z+direction[2]*r]
					if element then
						if element == "S" or element == "0" then
							--damage the peeps!
							for _, guy in pairs(getPlayersInCell({x+direction[1]*r, z+direction[2]*r})) do
								guy.Character.Humanoid:TakeDamage(30)
							end
						elseif element.Name == "Destructible" then
							element:Destroy()
							_G.map[x+direction[1]*r][z+direction[2]*r] = "0"
						elseif element.Name == "Bomb" then
							_G.map[x+direction[1]*r][z+direction[2]*r] = "0"
							element.WentOff.Value = true
							element.Parent = nil
							explode({x+direction[1]*r, z+direction[2]*r}, element.ExplosionRadius.Value, "Normal")
						elseif element.Name == "Bomb Block" then
							_G.map[x+direction[1]*r][z+direction[2]*r] = "0"
							element:Destroy()
							explode({x+direction[1]*r, z+direction[2]*r}, #_G.map, "Big Boom")
						end
						if element == "S" or element == "0" or element.Name == "Destructible" then
							local splodey = set(clone(origin)){pt = explosion, cf = cellToWorld({x+direction[1]*r, z+direction[2]*r})*CN(0, _G.cellSize, 0)}
						end
						lastHit[d] = element
					end
				end
			end
		end
	elseif explosionType == "Normal" then
		for r = 1, explosionRadius do
			for d, direction in pairs(directions) do
				if not lastHit[d] or lastHit[d] == "S" or lastHit[d] == "0" then --lastHit[d] ~= "Indestructible" and lastHit[d] ~= "Wall" then
					local element = _G.map[x+direction[1]*r] and _G.map[x+direction[1]*r][z+direction[2]*r]
					if element then
						if element == "S" or element == "0" then
							--damage the peeps!
							for _, guy in pairs(getPlayersInCell({x+direction[1]*r, z+direction[2]*r})) do
								guy.Character.Humanoid:TakeDamage(30)
							end
						elseif element.Name == "Destructible" then
							element:Destroy()
							_G.map[x+direction[1]*r][z+direction[2]*r] = "0"
						elseif element.Name == "Bomb" then
							_G.map[x+direction[1]*r][z+direction[2]*r] = "0"
							element.WentOff.Value = true
							element.Parent = nil
							explode({x+direction[1]*r, z+direction[2]*r}, element.ExplosionRadius.Value, "Normal")
						elseif element.Name == "Bomb Block" then
							element:Destroy()
							_G.map[x+direction[1]*r][z+direction[2]*r] = "0"
							explode({x+direction[1]*r, z+direction[2]*r}, #_G.map, "Big Boom")
						end
						if element == "S" or element == "0" or element.Name == "Destructible" then
							local splodey = set(clone(origin)){pt = explosion, cf = cellToWorld({x+direction[1]*r, z+direction[2]*r})*CN(0, _G.cellSize, 0)}
						end
						lastHit[d] = element
					end
				end
			end
		end
	end
end
function dropBomb(cell, explosionRadius, detonationTimer, initiator)
	local x, z = cell[1], cell[2]
	if _G.map[x][z] ~= "0" and _G.map[x][z] ~= "S" then
		if _G.map[x][z].Name == "Bomb" or _G.map[x][z].Name == "Wall" or _G.map[x][z].Name == "Indestructible" then
			return
		end
	end
	local bomb = new'Part'{pt = _G.mapObject, nm = "Bomb", sz = V3(1, 1, 1)*_G.cellSize, cf = cellToWorld(cell)*CN(0, _G.cellSize, 0), tr = 1, cc = false,
		new'NumberValue'{nm = "ExplosionRadius", Value = explosionRadius},
		new'NumberValue'{nm = "DetonationTimer", Value = detonationTimer},
		new'BoolValue'{nm = "WentOff", Value = false},
		{TouchEnded = function(part)
			if part == initiator or part:IsDescendantOf(initiator) then
				set(this){cc = true}
			end
		end}
	}
	local bombPart = new'Part'{pt = bomb, nm = "BombSphere", sz = V3(1, 1, 1)*_G.cellSize/2, cf = cellToWorld(cell)*CN(0, _G.cellSize, 0), bc = BN("Really black"), mt = "Neon", cc = false, an = false, Shape = "Ball"}
	new'Motor6D'{pt = bombPart, p0 = bomb, p1 = bombPart}
	_G.map[x][z] = bomb
	spawn(function()
		repeat
			wait(0.1)
			bomb.DetonationTimer.Value = bomb.DetonationTimer.Value-0.1
		until bomb.WentOff.Value or bomb.DetonationTimer.Value <= 0
		if not bomb.WentOff.Value then
			_G.map[x][z] = "0"
			bomb.Parent = nil
			explode(cell, bomb.ExplosionRadius.Value, "Normal")
		else
			bomb:Destroy()
		end
	end)
end

function clearGameMessages()
	for _, obj in pairs(Workspace:GetChildren()) do
		if obj.Name == "Game Message" then
			obj:Destroy()
		end
	end
end
function displayGameMessage(message, lifeSpan)
	clearGameMessages()
	local newMessage = new'Message'{pt = Workspace, nm = "Game Message", Text = message}
	if lifeSpan then
		Debris:AddItem(newMessage, lifeSpan)
	end
end

return function()
	for i, v in pairs(getfenv(1)) do
		getfenv(2)[i] = v
	end
end