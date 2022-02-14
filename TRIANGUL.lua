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