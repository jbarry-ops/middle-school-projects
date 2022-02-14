function printMatrix(matrix) --Prints a matrix
	print("{")
	for _, row in pairs(matrix) do
		if _ ~= #matrix then
			print("	{"..table.concat(row, ", ").."},")
		else
			print("	{"..table.concat(row, ", ").."}")
		end
	end
	print("}")
end
function multiplyMatrix(matrix, number) --Multiplies a matrix by any number
	local newMatrix = {}
	for r = 1, #matrix do
		local newRow = {}
		for c = 1, #matrix[1] do
			table.insert(newRow, matrix[r][c]*number)
		end
		table.insert(newMatrix, newRow)
	end
	return newMatrix
end
function multiplyMatrices(matrix, matrix2) --Multiplies two matrices together
	if #matrix[1] ~= #matrix2 then assert(nil, "Can't multiply matrices (incompatible)") return end
	local newMatrix = {}
	for r = 1, #matrix do
		local newRow = {}
		for c = 1, #matrix2[1] do
			local newValue = 0
			for p = 1, #matrix2 do
				newValue = newValue+matrix[r][p]*matrix2[p][c]
			end
			table.insert(newRow, newValue)
		end
		table.insert(newMatrix, newRow)
	end
	return newMatrix
end
function transposeMatrix(matrix) --Transposes a matrix
	local newMatrix = {}
	for r = 1, #matrix[1] do
		local newRow = {}
		for c = 1, #matrix do
			table.insert(newRow, matrix[c][r])
		end
		table.insert(newMatrix, newRow)
	end
	return newMatrix
end
function getDeterminant(matrix) --Gets the determinant of any square matrix
	if #matrix ~= #matrix[1] then assert(false, "Can't get determinant of matrix (isn't square)") return end
	local det = 0
	if #matrix > 2 then
		for d = 1, #matrix do
			det = det+matrix[1][d]*getCofactor(matrix, 1, d)
		end
	else
		det = matrix[1][1]*matrix[2][2]-matrix[1][2]*matrix[2][1]
	end
	return det
end
function getCofactor(matrix, row, column) --Gets the cofactor of any element in a matrix
	local newMatrix = {}
	for r = 1, #matrix do
		if r ~= row then
			local newRow = {}
			for c = 1, #matrix[1] do
				if c ~= column then
					table.insert(newRow, matrix[r][c])
				end
			end
			table.insert(newMatrix, newRow)
		end
	end
	return getDeterminant(newMatrix)*(-1)^(column+row)
end
function getCofactorMatrix(matrix) --Gets the cofactor matrix of any square matrix
	if #matrix ~= #matrix[1] then assert(false, "Can't get cofactor matrix of matrix (isn't square)") return end
	local cofactorMatrix = {}
	for r = 1, #matrix do
		local cofactorRow = {}
		for c = 1, #matrix do
			local cofactor = getCofactor(matrix, r, c)
			table.insert(cofactorRow, cofactor)
		end
		table.insert(cofactorMatrix, cofactorRow)
	end
	return cofactorMatrix
end
function getInverse(matrix) --Gets the inverse of any square matrix
	local det, adj = getDeterminant(matrix), transposeMatrix(getCofactorMatrix(matrix))
	return multiplyMatrix(adj, 1/det)
end
function cserp(p1,p2,p3)
	local x1,x2,x3,y1,y2,y3,z1,z2,z3 = p1.x,p2.x,p3.x,p1.y,p2.y,p3.y,p1.z,p2.z,p3.z
	local M1 = {
		{x1^3,x1^2,x1,1,0,0,0,0},
		{x2^3,x2^2,x2,1,0,0,0,0},
		{0,0,0,0,x2^3,x2^2,x2,1},
		{0,0,0,0,x3^3,x3^2,x3,1},
		{3*x2^2,2*x2,1,0,-3*x2^2,-2*x2,-1,0},
		{6*x2,2,0,0,-6*x2,-2,0,0},
		{6*x1,2,0,0,0,0,0,0},
		{0,0,0,0,6*x3,2,0,0}
	}
	local M2 = {
		{y1},
		{y2},
		{y2},
		{y3},
		{0},
		{0},
		{0},
		{0}
	}
	local M3 = {
		{z1},
		{z2},
		{z2},
		{z3},
		{0},
		{0},
		{0},
		{0}
	}
	inverseM1 = getInverse(M1)
	coefficientMatrix = multiplyMatrices(inverseM1,M2)
	coefficientMatrix2 = multiplyMatrices(inverseM1,M3)
	return coefficientMatrix, coefficientMatrix2
end
function part(par,siz,cf,col,tr,mt)
	local mt, tr, col = mt or "SmoothPlastic", tr or 0, col or Color3.new()
	local pt = Instance.new("Part",par)
	pt.formFactor = "Custom"
	pt.TopSurface = 0
	pt.BottomSurface = 0
	pt.Size = siz
	pt.Anchored = 1
	pt.CFrame = cf
	pt.Color = col
	pt.Transparency = tr
	pt.Material = mt
	return pt
end
function buildTest(detail) -- The number of times it solves the polynomial
	local p1, p2, p3 = places[1], places[2], places[3]
	local origin = CFrame.new(p1, p3)*CFrame.Angles(0, math.pi/2, 0)
	p1, p2, p3 = origin:pointToObjectSpace(p1), origin:pointToObjectSpace(p2), origin:pointToObjectSpace(p3)
	coefs, coefsB = cserp(p1,p2,p3)
	dist1 = p2.x-p1.x
	dist2 = p3.x-p2.x
	placeA = origin.p
	for i = 0, dist1, dist1/detail do
		wait(0.1)
		local x = i
		local y = coefs[1][1]*x^3+coefs[2][1]*x^2+coefs[3][1]*x+coefs[4][1]   -- This is the polynomial it generates
		local z = coefsB[1][1]*x^3+coefsB[2][1]*x^2+coefsB[3][1]*x+coefsB[4][1]
		placeB = origin*Vector3.new(x,y,z)
		local prt = part(Workspace, Vector3.new(.5,.5,(placeB-placeA).magnitude),CFrame.new((placeA+placeB)/2,placeB), Color3.new(), 0.5)
		placeA = placeB
	end
	for i = dist1, dist1+dist2, dist2/detail do
		wait(0.1)
		local x = i
		local y = coefs[5][1]*x^3+coefs[6][1]*x^2+coefs[7][1]*x+coefs[8][1]
		local z = coefsB[5][1]*x^3+coefsB[6][1]*x^2+coefsB[7][1]*x+coefsB[8][1]
		placeB = origin*Vector3.new(x,y,z)
		local prt = part(Workspace, Vector3.new(.5,.5,(placeB-placeA).magnitude),CFrame.new((placeA+placeB)/2,placeB), Color3.new(), 0.5)
		placeA = placeB
	end 
end
 
places = {}
placeparts = {}
 
hb = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
hb.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function()
	if #placeparts == 3 then 
		for i,v in ipairs(placeparts) do 
			places[i] = v.Position
		end
		buildTest(10)
		places = {}
		placeparts = {}
	else
		table.insert(placeparts, part(Workspace, Vector3.new(1,1,1), CFrame.new(mouse.Hit.p), Color3.new(0, 1, 0), 0.7))
	end
	end)
	mouse.KeyDown:connect(function(key)
		if placeparts[1] then
			if key == "q" then
				placeparts[#placeparts].CFrame = placeparts[#placeparts].CFrame*CFrame.new(0,1,0)
			elseif key == "e" then
				placeparts[#placeparts].CFrame = placeparts[#placeparts].CFrame*CFrame.new(0,-1,0)
			end
		end 
	end)
end)