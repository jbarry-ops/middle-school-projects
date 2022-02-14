--[[
    The Neon Bomber Game:
        You run around, and drop neon bombs(spheres stuck in the ground)
        They go splode, and neon stuff happens!
    
    theres 3 upgrades that can drop from destroyed blocks: 
        -Speed
        -Bomb power
        -Bomb quantity
]]


--[[
    Map key:
		W = Map wall
		S = Player spawn
		C = Always clear
		D = Always destructible
        0 = Clear or destructible
        1 = Indestructible wall
]]

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
function setEnvironmentGlobalized(f, t)
	setfenv(f, setmetatable(t or getfenv(f), {__index = function(t, i) return getfenv()[i] end}))
end
function set(instance)
    return function(properties)
        for k, v in pairs(properties) do
            if type(k) == "string" then
				local propertyName = k:gsub(k, {pt = "Parent", sz = "Size", cf = "CFrame", bc = "BrickColor", tr = "Transparency", sc = "Scale", an = "Anchored",
					ts = "TopSurface", bs = "BottomSurface", rs = "RightSurface", ls = "LeftSurface", fs = "FrontSurface", bks = "BackSurface", cl = "Color", mt = "Material",
					nm = "Name", bgc = "BackgroundColor3", bgt = "BackgroundTransparency", bsp = "BorderSizePixel", bc3 = "BorderColor3", ps = "Position", cc = "CanCollide"})
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
function cloneTable(table)
	local clonedTable = {}
	for i, v in pairs(table) do
		clonedTable[i] = v
	end
	return clonedTable
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

testMap = [[
	S 0 D ? ? ? ? ? ? ? ? ? ? ? ? ? D 0 S
	0 1 D 1 0 1 D 1 D 1 D 1 D 1 0 1 D 1 0
	D D D ? ? ? ? ? ? ? ? ? ? ? ? ? D D D
	? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ?
	? 0 ? ? D ? ? ? ? ? ? ? ? ? D ? ? 0 ?
	? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ?
	? D ? ? ? ? D ? ? ? ? ? D ? ? ? ? D ?
	? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ?
	? D ? ? ? ? ? ? D D D ? ? ? ? ? ? D ?
	? 1 ? 1 ? 1 ? 1 D 0 D 1 ? 1 ? 1 ? 1 ?
	? D ? ? ? ? ? ? D D D ? ? ? ? ? ? D ?
	? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ?
	? D ? ? ? ? D ? ? ? ? ? D ? ? ? ? D ?
	? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ?
	? 0 ? ? D ? ? ? ? ? ? ? ? ? D ? ? 0 ?
	? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ? 1 ?
	D D D ? ? ? ? ? ? ? ? ? ? ? ? ? D D D
	0 1 D 1 0 1 D 1 D 1 D 1 D 1 0 1 D 1 0
	S 0 D ? ? ? ? ? ? ? ? ? ? ? ? ? D 0 S
]]
testMapMatrix = stringToMatrix(testMap)

offset = CN(100, -14, 100)
cellSize = 10

map = {}
floors = {}
function makeMap(mapMatrix, autoWall)
	floors = {}
	if autoWall then
		local newMap = cloneTable(mapMatrix)
		local wallRow = {"W", "W"}
		for _, row in pairs(newMap) do
			table.insert(wallRow, "W")
			table.insert(row, 1, "W")
			table.insert(row, "W")
		end
		table.insert(newMap, 1, wallRow)
		table.insert(newMap, cloneTable(wallRow))
		map = newMap
	end
	local mapModel = new'Model'{pt = Workspace, nm = "Neon-bomberman Map", {{map,
	function(x, row)
		for z, element in pairs(row) do
			if z%7 == 0 then wait() end
			local floor = new'Part'{pt = thisInstance, nm = "Floor", sz = V3(1, 1, 1)*cellSize, cf = offset*CN(V3(x-#map/2, -0.5, z-#map/2)*cellSize), bc = BN("Dark stone grey"), mt = "Concrete"}
			table.insert(floors, {x, z, floor})
			local newCellPart
			if element == "W" then
				newCellPart = new'Part'{pt = thisInstance, nm = "Wall", sz = V3(1, 1, 1)*cellSize, cf = floor.CFrame*CN(0, cellSize, 0), bc = BN("Black"), mt = "Slate"}
			elseif element == "S" then --Player spawn
				local spawnThing = new'Part'{pt = thisInstance, nm = "Spawn", sz = V3(1, 1, 1)*cellSize, cf = floor.CFrame*CN(0, cellSize, 0), bc = BN("Lime green"), tr = 0.7, cc = false}
			elseif element == "D" then --Always destructible
				newCellPart = new'Part'{pt = thisInstance, nm = "Destructible", sz = V3(1, 1, 1)*cellSize, cf = floor.CFrame*CN(0, cellSize, 0), bc = BN("Brown"), mt = "Wood"}
			elseif element == "1" then --Indestructible
				newCellPart = new'Part'{pt = thisInstance, nm = "Indestructible", sz = V3(1, 1, 1)*cellSize, cf = floor.CFrame*CN(0, cellSize, 0), bc = BN("Medium stone grey"), mt = "DiamondPlate"}
			elseif element == "?" then --Clear or indestructible
				row[z] = "0"
				if math.random(1, 6) ~= 6 then
					newCellPart = new'Part'{pt = thisInstance, nm = "Destructible", sz = V3(1, 1, 1)*cellSize, cf = floor.CFrame*CN(0, cellSize, 0), bc = BN("Brown"), mt = "Wood"}
				end
			end
			if newCellPart then
				row[z] = newCellPart
			end
		end
	end}}}
	return mapModel
end
function worldToCell(position)
	local relative = CN(position)*offset:inverse()*CN(V3(#map/2, 0.5, #map/2)*cellSize)
	return {round(relative.X/cellSize), round(relative.Z/cellSize)}
end
function cellToWorld(cell)
	return offset*CN(V3(cell[1]-#map/2, -0.5, cell[2]-#map/2)*cellSize)
end
function getEmptyCells()
	local empties = {}
	for x, row in pairs(map) do
		for z, element in pairs(row) do
			if element == "0" then
				table.insert(empties, {x, z})
			end
		end
	end
	return empties
end
function getSpawns()
	local spawns = {}
	for x, row in pairs(map) do
		for z, element in pairs(row) do
			if element == "S" then
				table.insert(spawns, {x, z})
			end
		end
	end
	return spawns
end
function explode(cell, distance)
	local x, z = cell[1], cell[2]
	if map[x][z] ~= "0" and map[x][z] ~= "S" then
		if map[x][z].Name == "Wall" then return end
	end
	local test = new'Model'{pt = Workspace, nm = "test thing"}
	Debris:AddItem(test, 2)
	local origin = new'Part'{pt = test, nm = "thing start", sz = V3(1, 1, 1)*cellSize, cf = cellToWorld({x, z})*CN(0, cellSize, 0), bc = BN("Royal purple"), tr = 0.3, cc = false, mt = "Neon"}
	local hitRight, hitLeft, hitForward, hitBack
	for d = 1, distance do
		wait()
		if not hitRight and map[x][z+d] then
			local element = map[x][z+d]
			if element ~= "0" and element ~= "S" then
				hitRight = {x, z+d}
				if element.Name ~= "Wall" and element.Name ~= "Indestructible" then
					new'Part'{pt = test, nm = "thing", sz = V3(1, 1, 1)*cellSize, cf = cellToWorld({x, z+d})*CN(0, cellSize, 0), bc = BN("Really red"), tr = 0.5, cc = false, mt = "Neon"}
				end
			else
				new'Part'{pt = test, nm = "thing", sz = V3(1, 1, 1)*cellSize, cf = cellToWorld({x, z+d})*CN(0, cellSize, 0), bc = BN("Really red"), tr = 0.5, cc = false, mt = "Neon"}
			end
		end
		if not hitLeft and map[x][z-d] then
			local element = map[x][z-d]
			if element ~= "0" and element ~= "S" then
				hitLeft = {x, z-d}
				if element.Name ~= "Wall" and element.Name ~= "Indestructible" then
					new'Part'{pt = test, nm = "thing", sz = V3(1, 1, 1)*cellSize, cf = cellToWorld({x, z-d})*CN(0, cellSize, 0), bc = BN("Really red"), tr = 0.5, cc = false, mt = "Neon"}
				end
			else
				new'Part'{pt = test, nm = "thing", sz = V3(1, 1, 1)*cellSize, cf = cellToWorld({x, z-d})*CN(0, cellSize, 0), bc = BN("Really red"), tr = 0.5, cc = false, mt = "Neon"}
			end
		end
		if not hitForward and map[x+d] then
			local element = map[x+d][z]
			if element ~= "0" and element ~= "S" then
				hitForward = {x+d, z}
				if element.Name ~= "Wall" and element.Name ~= "Indestructible" then
					new'Part'{pt = test, nm = "thing", sz = V3(1, 1, 1)*cellSize, cf = cellToWorld({x+d, z})*CN(0, cellSize, 0), bc = BN("Really red"), tr = 0.5, cc = false, mt = "Neon"}
				end
			else
				new'Part'{pt = test, nm = "thing", sz = V3(1, 1, 1)*cellSize, cf = cellToWorld({x+d, z})*CN(0, cellSize, 0), bc = BN("Really red"), tr = 0.5, cc = false, mt = "Neon"}
			end
		end
		if not hitBack and map[x-d] then
			local element = map[x-d][z]
			if element ~= "0" and element ~= "S" then
				hitBack = {x-d, z}
				if element.Name ~= "Wall" and element.Name ~= "Indestructible" then
					new'Part'{pt = test, nm = "thing", sz = V3(1, 1, 1)*cellSize, cf = cellToWorld({x-d, z})*CN(0, cellSize, 0), bc = BN("Really red"), tr = 0.5, cc = false, mt = "Neon"}
				end
			else
				new'Part'{pt = test, nm = "thing", sz = V3(1, 1, 1)*cellSize, cf = cellToWorld({x-d, z})*CN(0, cellSize, 0), bc = BN("Really red"), tr = 0.5, cc = false, mt = "Neon"}
			end
		end
	end
	if hitRight then
		local hitPart = map[hitRight[1]][hitRight[2]]
		if hitPart.Name == "Destructible" then
			hitPart:Destroy()
			map[hitRight[1]][hitRight[2]] = "0"
		end
	end
	if hitLeft then
		local hitPart = map[hitLeft[1]][hitLeft[2]]
		if hitPart.Name == "Destructible" then
			hitPart:Destroy()
			map[hitLeft[1]][hitLeft[2]] = "0"
		end
	end
	if hitForward then
		local hitPart = map[hitForward[1]][hitForward[2]]
		if hitPart.Name == "Destructible" then
			hitPart:Destroy()
			map[hitForward[1]][hitForward[2]] = "0"
		end
	end
	if hitBack then
		local hitPart = map[hitBack[1]][hitBack[2]]
		if hitPart.Name == "Destructible" then
			hitPart:Destroy()
			map[hitBack[1]][hitBack[2]] = "0"
		end
	end
end

toDestroy = {}
for _, thing in pairs(Workspace:GetChildren()) do
	if thing.Name == "Neon-bomberman Map" then
		table.insert(toDestroy, thing)
	end
end

--Make the map!
mapModel = makeMap(testMapMatrix, true)

for _, thing in pairs(toDestroy) do
	thing:Destroy()
end

localPlayer = Game:GetService("Players").LocalPlayer
mouse = localPlayer:GetMouse()
mouse.Button1Down:connect(function()
	explode(worldToCell(mouse.Hit.p), 5)
end)