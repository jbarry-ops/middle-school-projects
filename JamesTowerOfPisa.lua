--[[Tower Of Pisa made by ask4kingbily]]
 
angle = 4
height = "186 feet" 
numberofsteps = 296
totalnumberofstories = 8
innerdiameter = 25
outerdiameter = 50
start = CFrame.new(0, 2, 0)--script.Parent.CFrame*CFrame.fromEulerAnglesXYZ(math.rad(angle),0,0)
 
mod = Instance.new("Model")
mod.Parent = game.Workspace
mod.Name = "Leaning Tower of Pisa"
 
function part(anc,trans,refl,siz,mshtype,mshscale,cf,col)
 
prt = Instance.new("Part")
prt.Parent = mod
prt.Name = "p"
prt.formFactor = "Symmetric"
prt.Size = siz
prt.Anchored = anc
prt.Transparency = trans
prt.Reflectance = refl
prt.Color = col
prt.Position = Vector3.new(180,108,0)
prt.CFrame = cf
 
msh = Instance.new(mshtype)
msh.Parent = prt
msh.Scale = mshscale
 
return prt
 
end
 
function pisa()
--game.Workspace.Base.CFrame = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.rad(angle),0,0)
 
part(true,0,0,Vector3.new(120,20,120),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(0,-9,0),Color3.new(0.75,0.75,0.75))
part(true,0,0,Vector3.new(120,20,120),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(0,-9,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(45),0),Color3.new(0.75,0.75,0.75))
for i = 1, 60 do
if i <56 then
part(true,0,0,Vector3.new(3,37,2),"BlockMesh",Vector3.new(1,1,1+1/24),start*CFrame.new(math.sin(math.rad(i*6))*20,19,math.cos(math.rad(i*6))*20)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*6),0),Color3.new(0.75,0.75,0.75))
part(true,0,0,Vector3.new(2,37,2),"BlockMesh",Vector3.new(1,1,1+1/24),start*CFrame.new(math.sin(math.rad(i*6))*14,19,math.cos(math.rad(i*6))*14)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*6),0),Color3.new(0.75,0.75,0.75))
else
part(true,0,0,Vector3.new(3,17,2),"BlockMesh",Vector3.new(1,1,1+1/24),start*CFrame.new(math.sin(math.rad(i*6))*20,29,math.cos(math.rad(i*6))*20)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*6),0),Color3.new(0.75,0.75,0.75))
part(true,0,0,Vector3.new(2,17,2),"BlockMesh",Vector3.new(1,1,1+1/24),start*CFrame.new(math.sin(math.rad(i*6))*14,29,math.cos(math.rad(i*6))*14)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*6),0),Color3.new(0.75,0.75,0.75))
end
end
 
door = part(true,0,0,Vector3.new(10,20,2),"BlockMesh",Vector3.new(1,1,0.5),start*CFrame.new(math.sin(math.rad(58*6))*13,10.5,math.cos(math.rad(58*6))*13)*CFrame.fromEulerAnglesXYZ(0,math.rad(58*6),0),Color3.new(0.25,0.25,0.25))
 
        doordebounce = true
 
        door.Touched:connect(function(hit)
        if hit.Parent:findFirstChild("Humanoid") ~= nil and doordebounce == true then
        doordebounce = false
        for i = 1, 40 do 
        door.CFrame = door.CFrame+Vector3.new(0,0.25,0)
        wait()
        end
        wait(2)
        for i = 1, 40 do 
        door.CFrame = door.CFrame+Vector3.new(0,-0.25,0)
        wait()
        end
        doordebounce = true
        end
        end)
 
door2 = part(true,0,0,Vector3.new(10,20,2),"BlockMesh",Vector3.new(1,1,0.5),start*CFrame.new(math.sin(math.rad(58*6))*19,10.5,math.cos(math.rad(58*6))*19)*CFrame.fromEulerAnglesXYZ(0,math.rad(58*6),0),Color3.new(0.25,0.25,0.25))
 
        doordebounce2 = true
 
        door2.Touched:connect(function(hit)
        if hit.Parent:findFirstChild("Humanoid") ~= nil and doordebounce2 == true then
        doordebounce2 = false
        for i = 1, 40 do 
        door2.CFrame = door2.CFrame+Vector3.new(0,0.25,0)
        wait()
        end
        wait(2)
        for i = 1, 40 do 
        door2.CFrame = door2.CFrame+Vector3.new(0,-0.25,0)
        wait()
        end
        doordebounce2 = true
        end
        end)
 
for i = 1, 12 do
        part(true,0,0,Vector3.new(4,37,4),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(i*30))*25,19,math.cos(math.rad(i*30))*25)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*30),0),Color3.new(0.75,0.75,0.75))
        part(true,0,0,Vector3.new(5,4,5),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(i*30))*25,36,math.cos(math.rad(i*30))*25)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*30),0),Color3.new(0.75,0.75,0.75))
        part(true,0,0,Vector3.new(5,4,5),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(i*30))*25,2,math.cos(math.rad(i*30))*25)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*30),0),Color3.new(0.75,0.75,0.75))
        
        part(true,0,0,Vector3.new(4,37,4),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad((i+0.5)*30))*45,19,math.cos(math.rad((i+0.5)*30))*45)*CFrame.fromEulerAnglesXYZ(0,math.rad((i+0.5)*30),0),Color3.new(0.75,0.75,0.75))
        part(true,0,0,Vector3.new(5,4,5),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad((i+0.5)*30))*45,36,math.cos(math.rad((i+0.5)*30))*45)*CFrame.fromEulerAnglesXYZ(0,math.rad((i+0.5)*30),0),Color3.new(0.75,0.75,0.75))
        part(true,0,0,Vector3.new(5,4,5),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad((i+0.5)*30))*45,2,math.cos(math.rad((i+0.5)*30))*45)*CFrame.fromEulerAnglesXYZ(0,math.rad((i+0.5)*30),0),Color3.new(0.75,0.75,0.75))
 
end
 
for i = 1, 37 do
        part(true,0,0,Vector3.new(4,2,5),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(i*5))*17,-0.5+i,math.cos(math.rad(i*5))*17)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0),Color3.new(0.75,0.75,0.75))
end
 
        part(true,0,0,Vector3.new(4,37,5),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(-30))*17,17,math.cos(math.rad(-30))*17)*CFrame.fromEulerAnglesXYZ(0,math.rad(-30),0),Color3.new(0.75,0.75,0.75))
 
for i = 1, 60 do
        if i>18 and i<33 then
                print("heheh...I'm a logic pwnzor.")
        else
                part(true,0,0,Vector3.new(5,2,5),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(i*6))*17,36,math.cos(math.rad(i*6))*17)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*6),0),Color3.new(0.75,0.75,0.75))
        end
end
 
for i = 1, 6 do
        part(true,0,0,Vector3.new(25,2,17),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(0,36,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*30),0),Color3.new(0.75,0.75,0.75))
end
 
for i = 1, 18 do
        part(true,0,0,Vector3.new(30,1,30),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(0,37.5,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*30),0)*CFrame.new(0,0,35),Color3.new(0.75,0.75,0.75))
end
 
for i = 2, 37 do
        part(true,0,0,Vector3.new(4,2,5),"BlockMesh",Vector3.new(1.05,1,1),start*CFrame.new(math.sin(math.rad(i*5))*23,36.5+i,math.cos(math.rad(i*5))*23)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0),Color3.new(0.5,0,0))
        part(true,0,0,Vector3.new(1,6,1),"CylinderMesh",Vector3.new(0.5,1,0.5),start*CFrame.new(math.sin(math.rad(i*5))*26.5,39+i,math.cos(math.rad(i*5))*26.5)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0),Color3.new(0.75,0.75,0.75))
        part(true,0,0,Vector3.new(2,1,1),"BlockMesh",Vector3.new(1.25,0.25,1),start*CFrame.new(math.sin(math.rad(i*5))*26.5,42+i,math.cos(math.rad(i*5))*26.5)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0)*CFrame.new(1.25,0,0),Color3.new(0.75,0.75,0.75))
 
        if i < 13 or i > 17 then
                part(true,0,0,Vector3.new(4,i,7),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(i*5))*23,37+i/2,math.cos(math.rad(i*5))*23)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0),Color3.new(0.75,0.75,0.75))
        else
                part(true,0,0,Vector3.new(4,i-10,7),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(i*5))*23,42+i/2,math.cos(math.rad(i*5))*23)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0),Color3.new(0.75,0.75,0.75))
        end
end
 
for i = 38, 68 do
        part(true,0,0,Vector3.new(4,40,7),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(i*5))*23,55.5,math.cos(math.rad(i*5))*23)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0),Color3.new(0.75,0.75,0.75))
        part(true,0,0,Vector3.new(1,6,1),"CylinderMesh",Vector3.new(0.5,1,0.5),start*CFrame.new(math.sin(math.rad(i*5))*26.5,76.1,math.cos(math.rad(i*5))*26.5)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0),Color3.new(0.75,0.75,0.75))
        part(true,0,0,Vector3.new(2,1,1),"BlockMesh",Vector3.new(1.25,0.25,1),start*CFrame.new(math.sin(math.rad(i*5))*26.5,79,math.cos(math.rad(i*5))*26.5)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0)*CFrame.new(1.25,0,0),Color3.new(0.75,0.75,0.75))
end
 
for i = 69, 91 do
        part(true,0,0,Vector3.new(4,10,7),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(i*5))*23,70.5,math.cos(math.rad(i*5))*23)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0),Color3.new(0.75,0.75,0.75))
        part(true,0,0,Vector3.new(1,6,1),"CylinderMesh",Vector3.new(0.5,1,0.5),start*CFrame.new(math.sin(math.rad(i*5))*26.5,76.1,math.cos(math.rad(i*5))*26.5)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0),Color3.new(0.75,0.75,0.75))
        part(true,0,0,Vector3.new(2,1,1),"BlockMesh",Vector3.new(1.25,0.25,1),start*CFrame.new(math.sin(math.rad(i*5))*26.5,79,math.cos(math.rad(i*5))*26.5)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0)*CFrame.new(1.25,0,0),Color3.new(0.75,0.75,0.75))
end
 
for i = 0, 60 do
        if i < 16 and i > 9 then
                part(true,0,0,Vector3.new(3,27,2),"BlockMesh",Vector3.new(1,1,1+1/24),start*CFrame.new(math.sin(math.rad(i*6))*20,61,math.cos(math.rad(i*6))*20)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*6),0),Color3.new(0.75,0.75,0.75))
        else
                part(true,0,0,Vector3.new(3,37,2),"BlockMesh",Vector3.new(1,1,1+1/24),start*CFrame.new(math.sin(math.rad(i*6))*20,56,math.cos(math.rad(i*6))*20)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*6),0),Color3.new(0.75,0.75,0.75))
        end
end
 
for i = 1, 12 do
        part(true,0,0,Vector3.new(4,37,4),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(i*30))*18,94,math.cos(math.rad(i*30))*18)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*30),0),Color3.new(0.75,0.75,0.75))
        if i ~= 12 then
                part(true,0,0,Vector3.new(7,37,1),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad((i+0.5)*30))*18,94,math.cos(math.rad((i+0.5)*30))*18)*CFrame.fromEulerAnglesXYZ(0,math.rad((i+0.5)*30),0),Color3.new(0.75,0.75,0.75))
        else
                part(true,0,0,Vector3.new(7,29,1),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad((i+0.5)*30))*18,98,math.cos(math.rad((i+0.5)*30))*18)*CFrame.fromEulerAnglesXYZ(0,math.rad((i+0.5)*30),0),Color3.new(0.75,0.75,0.75))
        end
part(true,0,0,Vector3.new(40,4,11),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(0,94-19.5,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*30),0),Color3.new(0.75,0.75,0.75))
 
end
 
--[[ v NEW STUFF v ]]
startx = start
for x = 1, 4 do
 
        for i = 1, 37 do
        part(true,0,0,Vector3.new(7,2,5),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(0,74.5+i,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0)*CFrame.new(23,0,0),Color3.new(0.75,0.75,0.75))
        part(true,0,0,Vector3.new(1,4,1),"CylinderMesh",Vector3.new(0.5,1,0.5),start*CFrame.new(0,76.5+i,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0)*CFrame.new(26.5,0,0),Color3.new(0.5,0.5,0.5))
        part(true,0,0,Vector3.new(1,1,4),"BlockMesh",Vector3.new(1,0.5,0.75),start*CFrame.new(0,78.75+i,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0)*CFrame.new(26.5,0,0)*CFrame.fromEulerAnglesXYZ(math.rad(20),0,0),Color3.new(0.5,0.5,0.5))
        end
 
        for i = 38, 109 do
                if i > 95 then
                part(true,0,0,Vector3.new(8,2,5),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(0,111.5,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0)*CFrame.new(30.5,0,0),Color3.new(0.75,0.75,0.75))
                else
                part(true,0,0,Vector3.new(15,2,5),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(0,111.5,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*5),0)*CFrame.new(27,0,0),Color3.new(0.75,0.75,0.75))
                end
        end
 
        for i = 1, 12 do
                part(true,0,0,Vector3.new(4,37,4),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad(i*30))*18,94,math.cos(math.rad(i*30))*18)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*30),0),Color3.new(0.75,0.75,0.75))
                if i ~= 12 then
                part(true,0,0,Vector3.new(7,37,1),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad((i+0.5)*30))*18,94,math.cos(math.rad((i+0.5)*30))*18)*CFrame.fromEulerAnglesXYZ(0,math.rad((i+0.5)*30),0),Color3.new(0.75,0.75,0.75))
                else
                part(true,0,0,Vector3.new(7,29,1),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(math.sin(math.rad((i+0.5)*30))*18,98,math.cos(math.rad((i+0.5)*30))*18)*CFrame.fromEulerAnglesXYZ(0,math.rad((i+0.5)*30),0),Color3.new(0.75,0.75,0.75))
                end
                part(true,0,0,Vector3.new(40,4,11),"BlockMesh",Vector3.new(1,1,1),start*CFrame.new(0,94-19.5,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*30),0),Color3.new(0.75,0.75,0.75))
        
                part(true,0,0,Vector3.new(4,37,4),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.fromEulerAnglesXYZ(0,math.rad(x*-108),0)*CFrame.new(math.sin(math.rad(i*30))*35,56,math.cos(math.rad(i*30))*35),Color3.new(0.75,0.75,0.75))
                part(true,0,0,Vector3.new(5,4,5),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.fromEulerAnglesXYZ(0,math.rad(x*-108),0)*CFrame.new(math.sin(math.rad(i*30))*35,73,math.cos(math.rad(i*30))*35),Color3.new(0.75,0.75,0.75))
                part(true,0,0,Vector3.new(5,4,5),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.fromEulerAnglesXYZ(0,math.rad(x*-108),0)*CFrame.new(math.sin(math.rad(i*30))*35,39,math.cos(math.rad(i*30))*35),Color3.new(0.75,0.75,0.75))
        
        end
 
 
start = start*CFrame.new(0,37,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(108),0)
 
end
 
for i = 1, 12 do
part(true,0,0,Vector3.new(4,37,4),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.fromEulerAnglesXYZ(0,math.rad(5*-108),0)*CFrame.new(math.sin(math.rad(i*30))*35,56,math.cos(math.rad(i*30))*35),Color3.new(0.75,0.75,0.75))
part(true,0,0,Vector3.new(5,4,5),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.fromEulerAnglesXYZ(0,math.rad(5*-108),0)*CFrame.new(math.sin(math.rad(i*30))*35,73,math.cos(math.rad(i*30))*35),Color3.new(0.75,0.75,0.75))
part(true,0,0,Vector3.new(5,4,5),"CylinderMesh",Vector3.new(1,1,1),start*CFrame.fromEulerAnglesXYZ(0,math.rad(5*-108),0)*CFrame.new(math.sin(math.rad(i*30))*35,39,math.cos(math.rad(i*30))*35),Color3.new(0.75,0.75,0.75))
end
 
start = startx
startx = start*CFrame.new(0,6*37,0)
 
for i = 1, 18 do
part(true,0,0,Vector3.new(40,1,10),"BlockMesh",Vector3.new(1,1,1),startx*CFrame.new(0,2,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(i*10),0),Color3.new(0.75,0.75,0.75))
end
 
 
 
 
 
 
 
 
 
 
 
 
end
 
 
pisa()
 
--[[
 
game.Players.ask4kingbily.Chatted:connect(function(msg)
 
if string.sub(msg) == "rem" then
mod:remove()
end
 
end)
 
 
the real tower has 20 columns per level, except the first, which has 10.
 
 
... 
 
]]