--Laser Map 1
Map = Map
MapName = "Awesome Laser-Tag Map!"
GameModes = {"FFA", "CTF", "TDM"}
V3, CN, CA, BN, C3, UD, RND = Vector3.new, CFrame.new, CFrame.Angles, BrickColor.new, Color3.new, UDim2.new, math.random
OS = CN(200, 0, 200)
Players = Game:GetService("Players")
function Chatted(Message, Recipient, Speaker)
        local LM = Message:lower()
        if LM:sub(1, 10):match("up") then
                Speaker.Character:MoveTo(OS.p+Vector3.new(0, 10, 0))
        elseif LM:sub(1, 10):match("speed") then
                Speaker.Character.Humanoid.WalkSpeed = 100
        elseif LM:sub(1, 10):match("slow") then
                Speaker.Character.Humanoid.WalkSpeed = 16
        end
end
for _, Player in pairs(Players:GetChildren()) do
        Player.Chatted:connect(function (Message, Recipient) Chatted(Message, Recipient, Player) end)
end
Players.ChildAdded:connect(function (Player)
        Player.Chatted:connect(function (Message, Recipient) Chatted(Message, Recipient, Player) end)
end)
Teams = {
{"Toothpaste", "Turquoise Trollers"}, 
{"Really red", "Red Ragers"}, 
{"Lime green", "Green Geese"}, 
{"Royal purple", "Purple Pandas"}
}
function Make(Type)
        return function(Set)
                local Object = Instance.new(Type)
                for A, B in pairs(Set) do
                        if type(B) ~= "function" then
                                Object[A] = B
                        else
                                Object[A]:connect(B)
                        end
                end
                return Object
        end
end
function Mod(Parent, Name)
        return Make'Model'{Parent = Parent, Name = Name}
end
function Party(Parent, Size, CFrame, Color, Material, Transparency, Anchored)
        local Anchored, Transparency, Material, Color, CFrame, Size = Anchored or true, Transparency or 0, Material or "Granite", Color or BN("Really black"), CFrame or OS, Size or V3(1, 1, 1)
        local Partyer = Make'Part'{Parent = Parent, FormFactor = 3, Size = Size, BrickColor = Color, Material = Material, Transparency = Transparency, Anchored = Anchored, TopSurface = 0, BottomSurface = 0}
        Partyer.CFrame = CFrame
        return Partyer
end
function Smash(Parent, MeshType, Scale, MeshId, TextureId)
        local TextureId, MeshId, Scale, MeshType = TextureId or "", MeshId or "", Scale or V3(1, 1, 1), MeshType or "Wedge"
        local SmashMesh = Make'SpecialMesh'{Parent = Parent, MeshType = MeshType, Scale = Scale, MeshId = MeshId, TextureId = TextureId}
        return SmashMesh
end
function Silly(Parent, Scale)
        local Scale = Scale or V3(1, 1, 1)
        local SillyMesh = Make'CylinderMesh'{Parent = Parent, Scale = Scale}
        return SillyMesh
end
function SillyBox(Parent, Color, Transparency)
        local Transparency, Color = Transparency or 0, Color or BN("Institutional white")
        local Box = Make'SelectionBox'{Parent = Parent, Adornee = Parent, Color = Color, Transparency = Transparency}
        return Box
end
function SpamLocation(Parent, Size, CFrame, Color, Material, Transparency, Anchored)
        local Anchored, Transparency, Material, Color, CFrame, Size = Anchored or true, Transparency or 0, Material or "Plastic", Color or BN("Really black"), CFrame or OS, Size or V3(1, 1, 1)
        local Spammer = Make'SpawnLocation'{Parent = Parent, FormFactor = 3, Size = Size, BrickColor = Color, Material = Material, Transparency = Transparency, Anchored = Anchored, TopSurface = 0, BottomSurface = 0}
        Spammer.CFrame = CFrame
        return Spammer
end
--More functions
function BoxTriangle(Parent, Size, Position, Color, Material, Color2)
        local ML = {-1, 1}
        local Boxes, RNDM, MULT = Mod(Parent, "Boxes"), RND(math.ceil(Size.Y)*0.5+2, math.ceil(Size.Y)-2), ML[RND(1, 2)]
        local B = Party(Boxes, Size, Position * CN(RNDM*MULT, Size.Y*0.5, 0) * CA(0, math.rad(RND(-360, 360)), 0), Color, Material)
        local B2 = Party(Boxes, Size, Position * CN(-RNDM*MULT, Size.Y*0.5, 0) * CA(0, math.rad(RND(-360, 360)), 0), Color, Material)
        local B3 = Party(Boxes, Size, Position * CN(0, Size.Y*1.5, 0) * CA(0, math.rad(RND(-360, 360)), 0), Color, Material)
        if Color2 then
                SillyBox(B, Color2)
                SillyBox(B2, Color2)
                SillyBox(B3, Color2)
        end
        return B, B2, B3
end
ParentTo = Workspace
for _, Object in pairs(ParentTo:GetChildren()) do
        if Object.Name == MapName then
                Object:ClearAllChildren()
                Object:Destroy()
        end
end
Map = Mod(ParentTo, MapName)
--Borders
Floor = Party(Map, V3(1000, 10, 1000))
Ceiling = Party(Map, V3(1000, 10, 1000), OS*CN(0, 500, 0))
RightWall = Party(Map, V3(10, 500, 1000), OS*CN(500, 250, 0))
LeftWall = Party(Map, V3(10, 500, 1000), OS*CN(-500, 250, 0))
FrontWall = Party(Map, V3(1000, 500, 10), OS*CN(0, 250, 500))
BackWall = Party(Map, V3(1000, 500, 10), OS*CN(0, 250, -500))
--Middle steps
for S = 0, 9 do
        local Step = Party(Map, V3(200-S*4, 1, 200-S*4), OS*CA(0, math.rad(45), 0)*CN(0, 5.5+S, 0))
end
--Sides
for D = 1, 4 do
        wait(0.1)
        local TeamColor = BN(Teams[D][1])
        --Divides
        local Divide = Party(Map, V3(10, 50, 250), OS*CA(0, math.rad(D*90), 0)*CN(0, 25, 225))
        local DivideSmooth = Party(Map, V3(10, 50, 10), OS*CA(0, math.rad(D*90), 0)*CN(0, 25, 100)) Silly(DivideSmooth)
        --Hills
        local HillTop = Party(Map, V3(450, 10, 150), OS*CA(0, math.rad(D*90+45), 0)*CN(0, 45, 300))
        local HillTop2 = Party(Map, V3(150, 10, 150), OS*CA(0, math.rad(D*90+45), 0)*CN(300, 45, 300))
        local HillSide = Party(Map, V3(180, 80, 10), OS*CA(0, math.rad(D*90+45), 0)*CN(130, 46, 229)*CA(math.rad(45), 0, 0)*CN(0, -40, 0))
        local HillSide2 = Party(Map, V3(180, 80, 10), OS*CA(0, math.rad(D*90+45), 0)*CN(-130, 46, 229)*CA(math.rad(45), 0, 0)*CN(0, -40, 0))
        local HillSideBarrier = Party(Map, V3(400, 79, 9), OS*CA(0, math.rad(D*90+45), 0)*CN(0, 46, 229)*CA(math.rad(45), 0, 0)*CN(0, -40, 0), TeamColor, "Plastic", 0.75) HillSideBarrier.CanCollide = false
        --Barriers
        for Bar = 0, 10 do
                local Barrier = Party(Map, V3(30, 10, 3), OS*CA(0, math.rad(D*90+45), 0)*CN(250-Bar*50, 55, 300)--[[*CA(0, math.rad(RND(-10, 10)), 0)]]*CA(math.rad(-10), 0, 0)) SillyBox(Barrier, TeamColor)
                local Barrier2 = Party(Map, V3(32, 4, 5), Barrier.CFrame * CN(0, -5, 0)) SillyBox(Barrier2, TeamColor)
        end
        for Bar = 0, 8 do
                local Barrier = Party(Map, V3(30, 10, 3), OS*CA(0, math.rad(D*90+45), 0)*CN(200-Bar*50, 55, 250)--[[*CA(0, math.rad(RND(-10, 10)), 0)]]*CA(math.rad(-10), 0, 0)) SillyBox(Barrier, TeamColor)
                local Barrier2 = Party(Map, V3(32, 4, 5), Barrier.CFrame * CN(0, -5, 0)) SillyBox(Barrier2, TeamColor)
        end
        for Bar = 0, 2 do
                local Barrier = Party(Map, V3(30, 10, 3), OS*CA(0, math.rad(D*90+45), 0)*CN(50-Bar*50, 10, 125)--[[*CA(0, math.rad(RND(-10, 10)), 0)]]*CA(math.rad(-10), 0, 0)) SillyBox(Barrier, TeamColor)
                local Barrier2 = Party(Map, V3(32, 4, 5), Barrier.CFrame*CN(0, -5, 0)) SillyBox(Barrier2, TeamColor)
        end
        --Middle tower
        local EntranceTop = Party(Map, V3(150, 10, 10), OS*CA(0, math.rad(D*90+45), 0)*CN(0, 45, 75))
        local EntranceTop2 = Party(Map, V3(150, 10, 10), OS*CA(0, math.rad(D*90+45), 0)*CN(0, 135, 75))
        local EntranceTop3 = Party(Map, V3(25, 25, 10), OS*CA(0, math.rad(D*90+45), 0)*CN(65, 125, 75))
        for A = 0, 18 do
                local Arch = Party(Map, V3(10, 15, 10), OS*CA(0, math.rad(D*90+45), 0)*CN(0, 57.5, 75)*CA(0, 0, math.rad(A*10))*CN(75, 0, 0))
        end
        local EntranceCorner = Party(Map, V3(10, 500, 10), OS*CA(0, math.rad(D*90+45), 0)*CN(75, 250, 75))
        --Fields
        local BarrierField = Party(Map, V3(150, 500, 1), OS*CA(0, math.rad(D*90+45), 0)*CN(0, 250, 75), TeamColor, "Plastic", 0.75) BarrierField.CanCollide = false
        local BarrierRightField = Party(Map, V3(1, 500, 390), OS*CA(0, math.rad(D*90), 0)*CN(-0.5, 250, 300), TeamColor, "Plastic", 0.75) BarrierRightField.CanCollide = false
        local BarrierLeftField = Party(Map, V3(1, 500, 390), OS*CA(0, math.rad(D*90+90), 0)*CN(0.5, 250, 300), TeamColor, "Plastic", 0.75) BarrierLeftField.CanCollide = false
        --Towers
        local TowerHeight = 5
        for Tower = 0, 2 do
        local TowerBase = Party(Map, V3(50, 1, 50), OS*CA(0, math.rad(D*90+45), 0)*CN(150-Tower*150, 50.5, 400)) SillyBox(TowerBase, TeamColor)
        for S = 1, 4 do
                local TowerSupport = Party(Map, V3(5, TowerHeight*40, 5), TowerBase.CFrame*CA(0, math.rad(S*90), 0)*CN(22.5, 100, 22.5)) SillyBox(TowerSupport, TeamColor)
                local TowerSupport2 = Party(Map, V3(8, 5, 8), TowerSupport.CFrame*CN(0, -98, 0)*CA(0, math.rad(45), 0)) SillyBox(TowerSupport2, TeamColor)
                --local TopRail = Party(Map, V3(51, 5, 1), TowerBase.CFrame*CA(0, math.rad(S*90), 0)*CN(0, 202.5, 25)) SillyBox(TopRail, TeamColor)
        end
        if Tower > 0 then
                local TopBridge = Party(Map, V3(100, 1, 10), TowerBase.CFrame*CN(75, TowerHeight*40, 0)) SillyBox(TopBridge, TeamColor)
        end
        for SC = 1, 5 do
                wait(0.1)
                for S = 0, 19 do
                        local Step = Party(Map, V3(5, 1, 5), TowerBase.CFrame*CN(10, SC*40-39.5+S, 20.5-S*2)) SillyBox(Step, TeamColor)
                end
                local Plat = Party(Map, V3(32.5, 1, 50), TowerBase.CFrame*CN(-8.75, SC*40-20, 0)) SillyBox(Plat, TeamColor)
                local Plat2 = Party(Map, V3(12.5, 1, 50), TowerBase.CFrame*CN(18.75, SC*40-20, 0)) SillyBox(Plat2, TeamColor)
                local Plat3 = Party(Map, V3(5, 1, 5), TowerBase.CFrame*CN(10, SC*40-20, -22.5)) SillyBox(Plat3, TeamColor)
                local Plat4 = Party(Map, V3(5, 1, 10), TowerBase.CFrame*CN(10, SC*40-20, 20)) SillyBox(Plat4, TeamColor)
                for S = 0, 19 do
                        local Step = Party(Map, V3(5, 1, 5), TowerBase.CFrame*CN(-10, SC*40-19.5+S, -20.5+S*2)) SillyBox(Step, TeamColor)
                end
                local Plat = Party(Map, V3(32.5, 1, 50), TowerBase.CFrame*CN(8.75, SC*40+0.5, 0)) SillyBox(Plat, TeamColor)
                local Plat2 = Party(Map, V3(12.5, 1, 50), TowerBase.CFrame*CN(-18.75, SC*40+0.5, 0)) SillyBox(Plat2, TeamColor)
                local Plat3 = Party(Map, V3(5, 1, 5), TowerBase.CFrame*CN(-10, SC*40+0.5, 22.5)) SillyBox(Plat3, TeamColor)
                local Plat4 = Party(Map, V3(5, 1, 10), TowerBase.CFrame*CN(-10, SC*40+0.5, -20)) SillyBox(Plat4, TeamColor)
        end
        end
        --Decor
        BoxTriangle(Map, V3(10, 10, 10), OS*CA(0, math.rad(D*90), 0)*CN(0, 15, 70)*CA(0, math.rad(RND(-180, 180)), 0), BN("Really black"), "Plastic", TeamColor)
        BoxTriangle(Map, V3(10, 10, 10), OS*CA(0, math.rad(D*90), 0)*CN(30, 5, 180)*CA(0, math.rad(RND(-180, 180)), 0), BN("Really black"), "Plastic", TeamColor)
        BoxTriangle(Map, V3(10, 10, 10), OS*CA(0, math.rad(D*90+90), 0)*CN(-30, 5, 180)*CA(0, math.rad(RND(-180, 180)), 0), BN("Really black"), "Plastic", TeamColor)
        BoxTriangle(Map, V3(10, 10, 10), OS*CA(0, math.rad(D*90), 0)*CN(130, 5, 280)*CA(0, math.rad(RND(-180, 180)), 0), BN("Really black"), "Plastic", TeamColor)
        BoxTriangle(Map, V3(10, 10, 10), OS*CA(0, math.rad(D*90+90), 0)*CN(-130, 5, 280)*CA(0, math.rad(RND(-180, 180)), 0), BN("Really black"), "Plastic", TeamColor)
end