--Normal stuff
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

--My own special font!
characters = {
	["A"] = [[
		1 1 1 1 1 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 1 1 1 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		1 1 1 0 0 1 1 0
	]],
	["B"] = [[
		1 1 1 1 1 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 1 1 1 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		1 1 1 1 1 1 1 0
	]],
	["C"] = [[
		1 1 1 1 1 1 1 0
		0 1 1 0 0 0 1 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 0 0
		0 1 1 0 0 0 1 0
		0 0 1 1 1 1 1 0
	]],
	["D"] = [[
		1 1 1 1 1 1 0 0
		0 1 0 0 0 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 1 1 0
		1 1 1 1 1 1 0 0
	]],
	["E"] = [[
		1 1 1 1 1 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 0 0
		0 1 1 1 1 1 0 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 1 0
		1 1 1 1 1 1 1 0
	]],
	["F"] = [[
		1 1 1 1 1 1 1 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 1 0 0
		0 1 1 1 1 1 0 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 0 0
		1 1 1 0 0 0 0 0
	]],
	["G"] = [[
		1 1 1 1 1 1 1 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 0 0
		0 1 0 1 0 0 0 0
		0 1 0 1 1 1 1 0
		0 1 0 1 0 0 1 0
		0 1 0 0 0 0 1 0
		1 1 1 1 1 1 1 0
	]],
	["H"] = [[
		1 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 1 1 1 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		1 1 0 0 0 0 1 0
	]],
	["I"] = [[
		1 1 1 1 1 1 1 0
		1 0 0 1 0 0 1 0
		0 0 0 1 0 0 0 0
		0 0 0 1 0 0 0 0
		0 0 0 1 0 0 0 0
		0 0 0 1 0 0 0 0
		1 0 0 1 0 0 1 0
		1 1 1 1 1 1 1 0
	]],
	["J"] = [[
		1 1 1 1 1 1 1 0
		1 0 0 0 1 0 1 0
		0 0 0 0 1 0 0 0
		0 0 0 0 1 0 0 0
		1 1 0 0 1 0 0 0
		0 1 0 0 1 0 0 0
		0 1 0 0 1 0 0 0
		0 1 1 1 1 0 0 0
	]],
	["K"] = [[
		1 1 0 0 0 0 1 0
		0 1 0 0 0 1 0 0
		0 1 0 0 1 0 0 0
		0 1 0 1 0 0 0 0
		0 1 1 1 0 0 0 0
		0 1 0 0 1 0 0 0
		0 1 0 0 0 1 0 0
		1 1 0 0 0 0 1 0
	]],
	["L"] = [[
		1 1 0 0 0 0 0 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 0 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		1 1 1 1 1 1 1 0
	]],
	["M"] = [[
		1 1 0 0 0 0 1 0
		0 1 1 0 0 1 1 0
		0 1 0 1 1 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		1 1 0 0 0 0 1 0
	]],
	["N"] = [[
		1 1 0 0 0 0 1 0
		0 1 1 0 0 0 1 0
		0 1 0 1 0 0 1 0
		0 1 0 0 1 0 1 0
		0 1 0 0 1 0 1 0
		0 1 0 0 1 0 1 0
		0 1 0 0 0 1 1 0
		1 1 0 0 0 0 1 0
	]],
	["O"] = [[
		0 0 1 1 1 1 0 0
		0 1 1 0 0 1 1 0
		0 1 0 0 0 0 1 0
		1 1 0 0 0 0 1 1
		1 1 0 0 0 0 1 1
		0 1 0 0 0 0 1 0
		0 1 1 0 0 1 1 0
		0 0 1 1 1 1 0 0
	]],
	["P"] = [[
		1 1 1 1 1 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 1 1 0
		0 1 1 1 1 1 0 0
		0 1 0 0 0 0 0 0
		0 1 0 1 0 0 0 0
		0 1 1 1 0 0 0 0
	]],
	["Q"] = [[
		1 1 1 1 1 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 1 0 1 0
		0 1 0 0 0 1 1 0
		0 1 1 1 1 1 1 0
	]],
	["R"] = [[
		0 1 1 1 1 1 0 0
		0 1 0 0 0 1 1 0
		0 1 0 0 0 1 0 0
		0 1 1 1 1 1 0 0
		0 1 0 0 1 0 0 0
		0 1 0 0 1 1 0 0
		0 1 0 0 0 1 1 0
		0 1 1 1 0 0 1 0
	]],
	["S"] = [[
		0 1 1 1 1 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 0 0
		0 1 1 1 1 1 1 0
		0 0 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 1 1 1 1 1 0
	]],
	["T"] = [[
		0 1 1 1 1 1 1 0
		0 1 0 1 1 0 1 0
		0 1 0 1 1 0 1 0
		0 0 0 1 1 0 0 0
		0 0 1 1 1 1 0 0
		0 0 0 1 1 0 0 0
		0 0 0 1 1 0 0 0
		0 1 1 1 1 1 1 0
	]],
	["U"] = [[
		1 1 1 0 0 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 1 1 1 1 1 0
	]],
	["V"] = [[
		1 1 1 0 0 1 1 0
		0 1 0 0 0 0 1 0
		0 1 1 0 0 1 1 0
		0 1 0 0 0 0 1 0
		0 1 1 0 0 1 1 0
		0 0 1 0 0 1 0 0
		0 0 0 1 1 0 0 0
		0 0 1 1 1 1 0 0
	]],
	["W"] = [[
		1 1 0 0 0 1 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 0 0 0 1 0
		0 1 0 1 1 0 1 0
		0 1 1 0 0 1 1 0
	]],
	["X"] = [[
		1 1 0 0 0 1 1 0
		0 1 0 0 0 0 1 0
		0 0 1 0 0 1 0 0
		0 0 0 1 1 0 0 0
		0 0 0 1 1 0 0 0
		0 0 1 0 0 1 0 0
		0 1 0 0 0 0 1 0
		1 1 0 0 0 0 1 0
	]],
	["Y"] = [[
		1 1 1 0 0 1 1 0
		0 1 0 0 0 0 1 0
		0 1 1 0 0 1 1 0
		0 0 1 1 1 1 0 0
		0 0 0 1 1 0 0 0
		0 0 0 1 1 0 0 0
		0 0 0 1 1 0 0 0
		0 1 1 1 1 1 1 0
	]],
	["Z"] = [[
		1 1 1 1 1 1 1 0
		1 0 0 0 0 0 1 0
		0 0 0 0 0 1 0 0
		0 0 0 0 1 0 0 0
		0 0 0 1 0 0 0 0
		0 0 1 0 0 0 0 0
		0 1 0 0 0 0 1 0
		1 1 1 1 1 1 1 0
	]],
	[" "] = [[
		0 0 0 0 0 0 0 0
		0 0 0 0 0 0 0 0
		0 0 0 0 0 0 0 0
		0 0 0 0 0 0 0 0
		0 0 0 0 0 0 0 0
		0 0 0 0 0 0 0 0
		0 0 0 0 0 0 0 0
		0 0 0 0 0 0 0 0
	]]
}

function makeText(text, offset, pixelSize)
	thisText = new'Model'{pt = Workspace, nm = "My text!"}
	for c = 1, text:len() do
		local characterArray = stringToMatrix(characters[text:sub(c, c)])
		for r, row in pairs(characterArray) do
			for e, element in pairs(row) do
				if element ~= "0" then
					new'Part'{pt = thisText, sz = V3(1, 1, 1)*pixelSize, cf = offset*CN(V3(-text:len()*4+c*8+e, 0, r)*pixelSize)}
				end
			end
		end
	end
end

theTexts = {"Z", "EA", "BFE", "SOOP", "POMDE", "LEFRJQ", "XRVUYBM", "TXPQREFZ", "ZYXWVUTSO", "ZYXWVUTSOL", "ABCDEFGHIJK"}

for _, obj in pairs(Workspace:GetChildren()) do
	if obj.Name == "My text!" then
		obj:Destroy()
	end
end

for t, txt in pairs(theTexts) do
	makeText(txt, CN(0, 1, t*(48-t)), 6-t*0.5)
end








