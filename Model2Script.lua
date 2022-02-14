--Model to script converter:
--ScriptValue = Instance.new("StringValue", script)
ToConvert = Workspace:WaitForChild("ModelNameHere")--You might want to change this.
DesignatedKey = math.random(1337, 13377)
UniqueVariables = {}
Converted = [[
CN, V3, U2, BN = CFrame.new, Vector3.new, UDim2.new, BrickColor.new
CA = function(X, Y, Z)
        return CFrame.Angles(math.rad(X), math.rad(Y), math.rad(Z))
end
function New(InstanceType, Parent)
        local NewInstance = Instance.new(InstanceType, Parent)
        if NewInstance:IsA("BasePart") then
                pcall(function() NewInstance.FormFactor = 3 end)
                NewInstance.Material = "SmoothPlastic"
                NewInstance.TopSurface = 0
                NewInstance.BottomSurface = 0
                NewInstance.Anchored = true
        end
        return function(Properties)
                for Property, Value in pairs(Properties) do
                        NewInstance[Property] = Value
                end
                if Properties.CFrame then NewInstance.CFrame = Properties.CFrame end
                return NewInstance
        end
end
 
]]
Classes = {
        ["Model"] = {1, {"Name"}, "Model"},
        ["Part"] = {1, {"Name", "Size", "CFrame", "BrickColor", "Material", "Transparency", "CanCollide", "Shape"}, "Part"},
        ["WedgePart"] = {1, {"Name", "Size", "CFrame", "BrickColor", "Material", "Transparency", "CanCollide"}, "WPart"},
        ["TrussPart"] = {1, {"Name", "Size", "CFrame", "BrickColor", "Material", "Transparency", "CanCollide", "Style"}, "TPart"},
        ["SpawnLocation"] = {1, {"Name", "Size", "CFrame", "BrickColor", "Material", "Transparency", "CanCollide"}, "TPart"},
        ["CylinderMesh"] = {1, {"Scale"}, "CMesh"},
        ["BlockMesh"] = {1, {"Scale"}, "BMesh"},
        ["SpecialMesh"] = {1, {"MeshType", "Scale", "MeshId", "TextureId"}, "SMesh"},
        ["PointLight"] = {1, {"Color", "Range", "Brightness"}, "PLight"},
        ["Decal"] = {1, {"Texture", "Face", "Transparency", "Specular", "Shiny"}, "Decal"},
        ["Texture"] = {1, {"Texture", "Face", "StudsPerTileU", "StudsPerTileV", "Transparency", "Specular", "Shiny"}, "Tex"},
        ["Weld"] = {1, {"Part0", "Part1", "C0", "C1"}, "Weld"},
        ["ScreenGui"] = {1, {"Name"}, "SG"},
        ["Frame"] = {1, {"Name", "Size", "Position"}, "Frame"},
        ["Button"] = {1, {"Name", "Size", "Position"}, "Button"}
        ["TextLabel"] = {1, {"Name", "Size", "Position", "Text"}, "TextLabel"},
        ["TextButton"] = {1, {"Name", "Size", "Position", "Text"}, "TextButton"},
        ["ImageLabel"] = {1, {"Name", "Size", "Position", "Image"}, "ImageLabel"},
        ["ImageButton"] = {1, {"Name", "Size", "Position", "Image"}, "ImageButton"},
        ["TextBox"] = {1, {"Name", "Size", "Position", "Text"}, "TextBox"}
}
function Recurse(Object)
        if Object.Name == tostring(DesignatedKey) then return end
        if not Classes[Object.ClassName] then print("Sorry, can't compile this ("..Object.Name..", "..Object.ClassName.." in "..Object.Parent:GetFullName()..")!") return end
        local VariableValue = Instance.new("StringValue", Object)
        VariableValue.Name = DesignatedKey
        VariableValue.Value = Classes[Object.ClassName][3]..Classes[Object.ClassName][1]
        Classes[Object.ClassName][1] = Classes[Object.ClassName][1]+1
        if not UniqueVariables[Object.Name] and Object.Name:match("%w+") == Object.Name and Object.Name:sub(1, 1):match("%a+") then
                VariableValue.Value = Object.Name
                UniqueVariables[Object.Name] = true
                Classes[Object.ClassName][1] = Classes[Object.ClassName][1]-1
        end
        Converted = Converted..VariableValue.Value.." = New'"..Object.ClassName.."'{Parent = "
        local ObjectParent = nil
        if Object.Parent:FindFirstChild(DesignatedKey) then
                ObjectParent = Object.Parent[DesignatedKey].Value
        else
                ObjectParent = Object.Parent:GetFullName()
        end
        Converted = Converted..ObjectParent
        for _, Property in pairs(Classes[Object.ClassName][2]) do
                if Object[Property] ~= Instance.new(Object.ClassName)[Property] then
                        Converted = Converted..", "..Property.." = "
                        local PropertyValue = Object[Property]
                        local PropertyType = type(PropertyValue)
                        if PropertyType == "number" then
                                PropertyValue = math.ceil(Object[Property]*1000)/1000
                        elseif PropertyType == "string" then
                                PropertyValue = [["]]..Object[Property]..[["]]
                        elseif PropertyType == "boolean" then
                        elseif PropertyType == "userdata" then
                                if pcall(function() return Object[Property].Value end) and not pcall(function() return Object[Property].Parent end) then --EnumItem
                                        PropertyValue = Object[Property].Value
                                elseif pcall(function() return Object[Property].Color end) and not pcall(function() return Object[Property].Parent end) then --BrickColor
                                        PropertyValue = [[BN("]]..Object[Property].Name..[[")]]
                                elseif pcall(function() return Object[Property].lookVector end) and not pcall(function() return Object[Property].Parent end) then --CFrame
                                        local PositionX, PositionY, PositionZ = math.ceil(Object[Property].X*2000)/2000, math.ceil(Object[Property].Y*2000)/2000, math.ceil(Object[Property].Z*2000)/2000
                                        local AngleX, AngleY, AngleZ = Object[Property]:toEulerAnglesXYZ()
                                        AngleX, AngleY, AngleZ = math.ceil(math.deg(AngleX)*2000)/2000, math.ceil(math.deg(AngleY)*2000)/2000, math.ceil(math.deg(AngleZ)*2000)/2000
                                        PropertyValue = "CN("..PositionX..", "..PositionY..", "..PositionZ..")"
                                        if AngleX ~= 0 or AngleY ~= 0 or AngleZ ~= 0 then
                                                PropertyValue = PropertyValue.."*CA("..AngleX..", "..AngleY..", "..AngleZ..")"
                                        end
                                elseif pcall(function() return Object[Property].unit end) and not pcall(function() return Object[Property].Parent end) then --Vector3
                                        local PositionX, PositionY, PositionZ = math.ceil(Object[Property].X*2000)/2000, math.ceil(Object[Property].Y*2000)/2000, math.ceil(Object[Property].Z*2000)/2000
                                        PropertyValue = "V3("..PositionX..", "..PositionY..", "..PositionZ..")"
                                elseif pcall(function () return Object[Property]+UDim2.new() end) then --UDim2
                                        local PositionXScale, PositionXOffset, PositionYScale, PositionYOffset = Object[Property].X.Scale, Object[Property].X.Offset, Object[Property].Y.Scale, Object[Property].Y.Offset
                                        PropertyValue = "U2("..PositionXScale..", "..PositionXOffset..", "..PositionYScale..", "..PositionYOffset..")"
                                elseif pcall(function() return Object[Property].Parent end) then --Instance
                                        if Object[Property]:FindFirstChild(DesignatedKey) then
                                                PropertyValue = Object[Property][DesignatedKey].Value
                                        else
                                                PropertyValue = Object[Property]:GetFullName()
                                        end
                                end
                        end
                        Converted = Converted..tostring(PropertyValue)
                end
        end
        Converted = Converted..[[}
        ]]
        local Welds = {}
        local function Convert()
                for _, Obj in pairs(Object:GetChildren()) do
                        if not Obj:IsA("JointInstance") then
                                Recurse(Obj)
                        end
                end
                for _, Obj in pairs(Object:GetChildren()) do
                        if Obj:IsA("JointInstance") then
                                table.insert(Welds, Obj)
                        end
                end
                for _, Weld in pairs(Welds) do
                        Recurse(Weld)
                end
        end
        Convert()
        wait()
end
function Clean(Object)
        if Object:FindFirstChild(DesignatedKey) then Object[DesignatedKey]:Destroy() end
        local function Clear()
                for _, Obj in pairs(Object:GetChildren()) do
                        Clean(Obj)
                end
        end
        Clear()
        wait()
end
Recurse(ToConvert)
Converted = Converted..[[
]]..ToConvert[DesignatedKey].Value..":MakeJoints()"
Instance.new("Script", Workspace).Source = Converted
Clean(ToConvert, DesignatedKey)