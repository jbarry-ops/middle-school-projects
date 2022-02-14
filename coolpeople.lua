CN, CA, V3, U2, BN, C3 = CFrame.new, CFrame.Angles, Vector3.new, UDim2.new, BrickColor.new, Color3.new
Services = setmetatable({}, {__index = function(Self, Request) return Game:getService(Request) or nil end})
function RProxy(Request) return Services.HttpService:GetAsync("http://rbxproxy.blakemealey.ca/api/"..Request, true) end
function GetIdByUsername(Username)
	return Services.Players:GetUserIdFromNameAsync(Username)
end
function GetAssets(UserId)
	local Raw = RProxy("Asset/AvatarAccoutrements.ashx?userId="..UserId)
	local Assets = {}
	for Asset in Raw:gmatch("[^;]+") do
		table.insert(Assets, Asset)
	end
	return Assets
end
function ParseAssets(Assets)
	local Parsed = {}
	for A = 2, #Assets do
		local Id = tonumber(Assets[A]:match("%d+"))
		local Asset = Services.InsertService:LoadAsset(Id)
		if Asset:IsA("Model") and not Asset:GetChildren()[1] then
			repeat Id = Id-1 until Services.InsertService:LoadAsset(Id)[1]
		end
		table.insert(Parsed, Id)
	end
	return Parsed
end
function New(Type)
	return function(Set)
		local Object = Instance.new(Type)
		for A, B in pairs(Set) do
			pcall(function () Object[A] = B end)
		end
		return Object
	end
end
function Part(PT, SZ, BC, MT)
	local MT, BC, SZ = MT or "SmoothPlastic", BC or "Black", SZ or V3(1, 1, 1)
	local Part = New'Part'{Parent = PT, FormFactor = 3, Size = SZ, TopSurface = 0, BottomSurface = 0, BrickColor = BN(BC), Material = MT}
	return Part
end
function Motor(PT, P0, P1, C0, C1)
	local C1, C0 = C1 or CN(), C0 or CN()
	return New'Motor6D'{Parent = PT, Part0 = P0, Part1 = P1, C0 = C0, C1 = C1}
end
function Mesh(PT, MT, SC, MI, TI)
	local TI, MI, SC, MT = TI or "", MI or "", SC or V3(1, 1, 1), MT or "Brick"
	return New'SpecialMesh'{Parent = PT, MeshType = MT, Scale = SC, MeshId = MI, TextureId = TI}
end
function FindNearestPerson(Part, Ignore)
	local Distance = 1/0
	local Closest = nil
	for _, Obj in pairs(Workspace:GetChildren()) do
		if Obj:IsA("Model") and Obj:FindFirstChild("Humanoid") and Obj:FindFirstChild("Head") then
			local Closest2 = Obj:FindFirstChild("Head")
			local Distance2 = (Closest2.Position-Part.Position).magnitude
			if Distance2 < Distance and not Closest2:IsDescendantOf(Ignore) then
				Distance = Distance2
				Closest = Closest2
			end
		end
	end
	return Closest, Distance
end
function MakeZombie(Position, BodyColor, Configuration, Name)
	local Zombie = New'Model'{Parent = Workspace, Name = Name}
	local Torso = Part(Zombie, V3(2, 2, 1))
	Torso.Name = "Torso"
	local Head = Part(Zombie, V3(1.25, 1.25, 1.25))
	Head.Name = "Head"
	Mesh(Head, "Head")
	local Neck = Motor(Torso, Torso, Head, CN(0, 0.5, 0), CN(0, -1, 0))
	Neck.Name = "Neck"
	Head.Transparency = 0
	--[[local Head2 = Part(Zombie, V3(1.25, 1.25, 1.25))
	Mesh(Head2, "Head")
	local Neck2 = Motor(Torso, Head, Head2, CN(), CN())]]
	local RightArm = Part(Zombie, V3(1, 2, 1))
	RightArm.Name = "Right Arm"
	local RightShoulder = Motor(Torso, Torso, RightArm, CN(0, -0.5, 0), CN(-1.5, -0.5, 0))
	RightShoulder.Name = "Right Shoulder"
	local LeftArm = Part(Zombie, V3(1, 2, 1))
	LeftArm.Name = "Left Arm"
	local LeftShoulder = Motor(Torso, Torso, LeftArm, CN(0, -0.5, 0), CN(1.5, -0.5, 0))
	LeftShoulder.Name = "Left Shoulder"
	local RightLeg = Part(Zombie, V3(1, 2, 1))
	RightLeg.Name = "Right Leg"
	local RightHip = Motor(Torso, Torso, RightLeg, CN(0, -1, 0), CN(-0.5, 1, 0))
	RightHip.Name = "Right Hip"
	local LeftLeg = Part(Zombie, V3(1, 2, 1))
	LeftLeg.Name = "Left Leg"
	local LeftHip = Motor(Torso, Torso, LeftLeg, CN(0, -1, 0), CN(0.5, 1, 0))
	LeftHip.Name = "Left Hip"
	local Humanoid = New'Humanoid'{Parent = Zombie, Health = 100, WalkSpeed = 18}
	
	local Face = false
	for _, Id in pairs(Configuration) do
		local Asset = Services.InsertService:LoadAsset(Id)
		local AssetType = Asset:GetChildren()[1].ClassName
		if AssetType == "Shirt" then
			Asset:GetChildren()[1].Parent = Zombie
		elseif AssetType == "Pants" then
			Asset:GetChildren()[1].Parent = Zombie
		elseif AssetType == "ShirtGraphic" then
			Asset:GetChildren()[1].Parent = Zombie
		elseif AssetType == "Hat" then
			Asset:GetChildren()[1].Parent = Zombie
		elseif AssetType == "CharacterMesh" then
			Asset:GetChildren()[1].Parent = Zombie
		elseif AssetType == "Decal" then
			Face = true
			Asset:GetChildren()[1].Parent = Head
		end
	end
	if not Face then New'Decal'{Parent = Head, Texture = "rbxassetid://180150859"} end
	Torso.CFrame = CN(Position)
	wait()
	for _, Obj in pairs(Zombie:GetChildren()) do
		if Obj:IsA("Part") then
			Obj.BrickColor = BN(BodyColor)
			Obj.Anchored = true
		--[[elseif Obj:IsA("Hat") then
			Obj.Handle.Anchored = true]]
		end
	end
	
	wait()
	Zombie:MoveTo(Position)
	return Zombie
end
Zombies = {
"RobloxMasterDX", "xXxMoNkEyMaNxXx", "Frostftw", "Scriptis", "sircfenner", "madiik", "ArticunoX", "VolcanoINC", "toadjesse", "Dr4gOnh4ck3rz2", "RightLegRed", "Fenrier", "linerider64", "TheNewScripter", "oxcool1", "Peekoh", "Festbawi", "Ericwho",
"DoogleFox", "xSoulStealerx", "ask4kingbily", "kert109", "wulfbug9", "SpleenYanks", "AntiBoomz0r", "bigbadbob234", "frenchyjr", "frost209", "upquark", "illblade10", "DarkShadow6", "LuaModelMaker", "NetworkServer", "TigerBloodd", "RenderSettings",
"Camerono3", "acb227", "TheOneTheOwnly", "bob371", "isi301", "TeamDman", "Abscissa", "Reinitialized", "scriptomania", "nate890", "LuisPambid", "jarredbcv", "YNARUTO977", "Ocula", "MikeAnIkes", "malachi11", "ephraim1090", "FlamedSkull",
"Crush47", "Thunderx10", "Thisit", "kirkyturky12", "DarkMystrik", "cedarboy777", "amazingamazer", "iYoshiFox", "grar21", "kayden963", "mixcasterx", "niels22", "zanfran", "nairod7", "PurpleKiwi", "TheMaleScripter", "ghostbusters1",
"stravant", "masterepico", "booz22", "ExternalRecursion", "modFrost", "dogwarrior24", "Vaeb", "anaIyze", "ace28545", "OMGshadeslayer", "Pkamara", "camie123456789", "Network", "NetworkLabs", "flipflop8421", "InternalRecursion", "Lex007", "Yorick",
"billiland", "Scriptec", "DarkNinjaRoblox", "Anaminus", "HEAT507", "ImUrNoob", "TheEndOfDays", "Dr4gOnh4ck3r2", "Davillion", "NonSpeaker", "nairod7", "tusKOr661", "ParticIe", "Despairus", "AskForKingBilly", "1woof1", "brt5586", "drumdude280", "rahim22",
"Totti", "sharkmouth", "evenalmighty98", "Sly64", "manofthebase44", "josh50535", "demonreaper", "koopa13", "Diitto", "whupdup", "XEL8o9", "1waffle1", "noliCAIKs", "Archaic0", "ALERIFICALNEUMORAITI", "TheDarkRevenant", "toshir0z", "MountainSnow",
"stephen77", "IndoctrinatingGhost", "xXxXxdragonxXxXx", "DragonWarlord101", "ThePC8110", "DrWindow", "dangerspookycanyon", "KaraAoi", "KaraMura", "izzatnasruna", "Scriptaxor", "Scriptax", "Nineza", "Zewl", "Evangon", "mugex", "damanofrunescape",
"UttermostExedra", "mew903", "tyridge77", "lordsheen", "TheSlyVixen", "RobroxMasterDX", "Maelstronomer", "littleAU999", "Blockeus", "TigreBlood", "tellqueenboring", "eCuriousity"
}
--[[Zombies = {
"", "", 



}]]
local SquareRoot = math.ceil(math.sqrt(#Zombies))
for A = 1, SquareRoot do
	for B = 1, SquareRoot do
		wait()
		local Sum = (A-1)*SquareRoot+B
		if Zombies[Sum] then
			local Id = GetIdByUsername(Zombies[Sum])
			MakeZombie(V3(B*5, 3, A*5), "White", ParseAssets(GetAssets(Id)), Zombies[Sum])
		end
	end
end