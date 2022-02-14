CN, V3, BN = CFrame.new, Vector3.new, BrickColor.new
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
 
Model1 = New'Model'{Parent = Workspace}
        Model2 = New'Model'{Parent = Model1}
        Part1 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-27.4995, 116.2005, -217.1)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part2 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-26.4955, 116.2005, -210.1135)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part3 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-33.4965, 116.2005, -217.1)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part4 = New'Part'{Parent = Model2, Size = V3(14.2, 0.4005, 0.2005), CFrame = CN(-30.2055, 114.2005, -217.086)*CA(0.0005, 0.0005, 0.0005), BrickColor = BN("Bright red"), Material = 1056}
        Part5 = New'Part'{Parent = Model2, Size = V3(0.4005, 3.6, 0.4005), CFrame = CN(-26.478, 116.1895, -211.107)*CA(28.869, -89.796, 28.875), BrickColor = BN("Bright red"), Material = 1056}
        Part6 = New'Part'{Parent = Model2, Size = V3(9.2005, 0.4005, 0.2005), CFrame = CN(-26.386, 114.2005, -206.6085)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part7 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-35.4945, 116.2005, -217.1)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part8 = New'Part'{Parent = Model2, Size = V3(0.4005, 3.6, 0.4005), CFrame = CN(-37.4975, 116.2005, -217.0915)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part9 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-26.4945, 116.2005, -206.114)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part10 = New'Part'{Parent = Model2, Size = V3(0.4005, 3.6, 0.4005), CFrame = CN(-26.5605, 116.2005, -202.11)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part11 = New'Part'{Parent = Model2, Size = V3(12, 1, 16), CFrame = CN(-31.9315, 118.5, -209.6025)*CA(-180, 0.0005, 180.0005), BrickColor = BN("Bright red"), Material = 1056}
        Part12 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-26.517, 116.2005, -204.0925)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part13 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-37.4965, 116.2005, -212.098)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part14 = New'Part'{Parent = Model2, Size = V3(15.2, 0.4005, 0.2005), CFrame = CN(-37.5095, 114.2005, -209.627)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part15 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-34.4955, 116.2005, -202.114)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part16 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-37.4965, 116.2005, -216.097)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part17 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-37.4965, 116.2005, -206.1)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part18 = New'Part'{Parent = Model2, Size = V3(0.4005, 3.6, 0.4005), CFrame = CN(-37.4985, 116.2005, -202.1325)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part19 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-30.4955, 116.2005, -202.113)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part20 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-31.498, 116.2, -217.1)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part21 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-32.496, 116.2005, -202.114)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part22 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-28.4985, 116.2005, -202.1145)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part23 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-37.4965, 116.2005, -204.1005)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part24 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-37.4965, 116.2, -214.0975)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part25 = New'Part'{Parent = Model2, Size = V3(3, 6.1, 3), CFrame = CN(-32.124, 114.4505, -209.6965)*CA(-0, -90, 0), BrickColor = BN("Cool yellow"), Transparency = 0.2}
        Part26 = New'Part'{Parent = Model2, Size = V3(1, 5.2005, 1), CFrame = CN(-22.3775, 112.6005, -217.1395)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part27 = New'Part'{Parent = Model2, Size = V3(3, 0.4005, 3), CFrame = CN(-32.124, 117.7005, -209.6965)*CA(-0, -90, 0), BrickColor = BN("Really black"), Material = 1056}
        Part28 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-29.4995, 116.2005, -217.1)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part29 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-26.4955, 116.2005, -208.1145)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part30 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-37.4965, 116.2005, -208.1)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part31 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-36.494, 116.2005, -202.113)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part32 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.4005, 0.2005), CFrame = CN(-24.596, 114.19, -211.078)*CA(-0.006, 0.023, 0.013), BrickColor = BN("Bright red"), Material = 1056}
        Part33 = New'Part'{Parent = Model2, Size = V3(0.2005, 3.6, 0.2005), CFrame = CN(-37.497, 116.2005, -210.0985)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        WPart1 = New'WedgePart'{Parent = Model2, Size = V3(16, 6, 3.0005), CFrame = CN(-34.9305, 120.5, -209.6025)*CA(90.0005, -0.003, 90.0145), BrickColor = BN("Bright red"), Material = 1056}
        WPart2 = New'WedgePart'{Parent = Model2, Size = V3(7.0005, 3.8, 4.0005), CFrame = CN(-23.9485, 117.1005, -214.1105)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        WPart3 = New'WedgePart'{Parent = Model2, Size = V3(16, 6, 3.0005), CFrame = CN(-28.9305, 120.5, -209.6025)*CA(90.0005, -0.003, -89.9925), BrickColor = BN("Bright red"), Material = 1056}
        Part34 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-34.4855, 112, -202.115)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part35 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-33.4625, 111.9995, -217.1235)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part36 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-31.463, 111.9995, -217.1235)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part37 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-37.481, 112, -208.1045)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part38 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-37.481, 112, -210.106)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part39 = New'Part'{Parent = Model2, Size = V3(1, 5.2005, 1), CFrame = CN(-22.379, 112.6005, -211.1185)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part40 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-37.481, 112, -212.108)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part41 = New'Part'{Parent = Model2, Size = V3(10.8005, 0.4005, 0.2005), CFrame = CN(-31.927, 114.2005, -202.0475)*CA(0.0005, 0.0005, 0.0005), BrickColor = BN("Bright red"), Material = 1056}
        Part42 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-37.481, 112, -216.09)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part43 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-35.4375, 112, -217.0875)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part44 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-37.481, 112, -206.1275)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part45 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-37.481, 112, -214.0975)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part46 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-37.481, 112, -204.1295)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part47 = New'Part'{Parent = Model2, Size = V3(0.4005, 4, 0.4005), CFrame = CN(-37.466, 112, -217.0955)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part48 = New'Part'{Parent = Model2, Size = V3(1, 4, 4), CFrame = CN(-23.88, 108.0005, -211.12)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part49 = New'Part'{Parent = Model2, Size = V3(9, 4, 1), CFrame = CN(-26.3805, 108.0005, -207.1145)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part50 = New'Part'{Parent = Model2, Size = V3(16, 4, 1), CFrame = CN(-29.9235, 108, -217.1015)*CA(-180, 0.0005, 180.0005), BrickColor = BN("Bright red"), Material = 1056}
        Part51 = New'Part'{Parent = Model2, Size = V3(12, 4, 1), CFrame = CN(-31.9255, 108, -202.1045)*CA(-180, 0.0005, 180.0005), BrickColor = BN("Bright red"), Material = 1056}
        Part52 = New'Part'{Parent = Model2, Size = V3(14, 4, 1), CFrame = CN(-37.379, 108.0005, -209.6105)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part53 = New'Part'{Parent = Model2, Size = V3(1.4, 5, 1.4), CFrame = CN(-32.124, 108.5005, -209.702)*CA(-0, -90, 0), BrickColor = BN("Really black"), Material = 1056}
        Part54 = New'Part'{Parent = Model2, Size = V3(3, 0.4005, 3), CFrame = CN(-32.123, 111.2005, -209.697)*CA(-0, -90, 0), BrickColor = BN("Really black"), Material = 1056}
        Part55 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-30.485, 112, -202.115)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part56 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-26.48, 112, -204.1165)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part57 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-28.4845, 112, -202.115)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part58 = New'Part'{Parent = Model2, Size = V3(0.4005, 4, 0.4005), CFrame = CN(-26.4925, 112, -202.133)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part59 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-26.48, 112, -206.115)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part60 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-26.48, 112, -210.117)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part61 = New'Part'{Parent = Model2, Size = V3(0.4005, 4, 0.4005), CFrame = CN(-26.4665, 111.9895, -211.1295)*CA(28.869, -89.796, 28.875), BrickColor = BN("Bright red"), Material = 1056}
        Part62 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-26.48, 112, -208.1135)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part63 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-24.495, 111.989, -211.074)*CA(28.869, -89.793, 28.875), BrickColor = BN("Bright red"), Material = 1056}
        Part64 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-25.47, 111.9995, -217.1235)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part65 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-29.4645, 111.9995, -217.1235)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part66 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-27.467, 111.9995, -217.1235)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part67 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-23.474, 111.9995, -217.1235)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part68 = New'Part'{Parent = Model2, Size = V3(0.4005, 4, 0.4005), CFrame = CN(-37.456, 112, -202.1545)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part69 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-32.486, 112, -202.115)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part70 = New'Part'{Parent = Model2, Size = V3(0.2005, 4, 0.2005), CFrame = CN(-36.484, 112, -202.115)*CA(-0, -90, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part71 = New'Part'{Parent = Model2, Size = V3(0.5, 3, 1), CFrame = CN(-38.095, 107.4965, -225.172)*CA(0.0005, -0.0105, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part72 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-45.356, 107.4965, -217.9735)*CA(0.0005, -0.0105, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part73 = New'Part'{Parent = Model2, Size = V3(7, 1, 1), CFrame = CN(-41.355, 109.4965, -225.173)*CA(0.0005, -0.0105, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part74 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-41.854, 107.4965, -225.173)*CA(0.0005, -0.0105, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part75 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-45.354, 107.4965, -221.6805)*CA(0.0005, -0.0105, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part76 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-45.3545, 107.4965, -225.1735)*CA(0.0005, -0.0105, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part77 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-45.3545, 109.4965, -221.6805)*CA(0.0005, -0.0105, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part78 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-45.386, 107.4995, -209.292)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part79 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-45.385, 107.4995, -205.6045)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part80 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-45.3855, 107.4995, -201.9035)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part81 = New'Part'{Parent = Model2, Size = V3(3, 4, 8), CFrame = CN(-43.388, 107.9995, -205.6045)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Transparency = 1, CanCollide = false}
        Part82 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-45.388, 109.4995, -205.605)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part83 = New'Part'{Parent = Model2, Size = V3(0.5, 3, 1), CFrame = CN(-45.3535, 107.498, -201.364)*CA(0.0005, 90.0005, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part84 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-38.154, 107.498, -194.104)*CA(0.0005, 90.0005, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part85 = New'Part'{Parent = Model2, Size = V3(7, 1, 1), CFrame = CN(-45.3535, 109.498, -198.1055)*CA(0.0005, 90.0005, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part86 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-45.3535, 107.498, -197.6045)*CA(0.0005, 90.0005, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part87 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-41.8605, 107.498, -194.1055)*CA(0.0005, 90.0005, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part88 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-45.3535, 107.498, -194.104)*CA(0.0005, 90.0005, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part89 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-41.8605, 109.498, -194.105)*CA(0.0005, 90.0005, 0), BrickColor = BN("Bright red"), Material = 1056}
        Part90 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-45.386, 107.4995, -217.291)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part91 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-45.385, 107.4995, -213.6035)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part92 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-45.386, 107.4995, -209.903)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part93 = New'Part'{Parent = Model2, Size = V3(3, 4, 8), CFrame = CN(-43.3885, 107.9995, -213.604)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Transparency = 1, CanCollide = false}
        Part94 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-45.3885, 109.4995, -213.604)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Material = 1056}
        Part95 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-37.5765, 107.4995, -194.105)*CA(109.5745, 89.7845, -109.572), BrickColor = BN("Bright red"), Material = 1056}
        Part96 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-33.8885, 107.4995, -194.106)*CA(109.5745, 89.7845, -109.572), BrickColor = BN("Bright red"), Material = 1056}
        Part97 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-30.188, 107.4995, -194.105)*CA(109.5745, 89.7845, -109.572), BrickColor = BN("Bright red"), Material = 1056}
        Part98 = New'Part'{Parent = Model2, Size = V3(3, 4, 8), CFrame = CN(-33.889, 107.9995, -196.1025)*CA(109.5745, 89.7845, -109.572), BrickColor = BN("Bright red"), Material = 1056, Transparency = 1, CanCollide = false}
        Part99 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-33.889, 109.4995, -194.1025)*CA(109.5745, 89.7845, -109.572), BrickColor = BN("Bright red"), Material = 1056}
        Part100 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-38.9135, 91.9995, -209.5965)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part101 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-38.879, 100, -209.636)*CA(-179.9995, -0, -179.9995), BrickColor = BN("White"), Material = 800}
        Part102 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-38.9135, 95.999, -209.5965)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part103 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-30.2, 107.4995, -225.1)*CA(-68.5525, -89.7615, -68.554), BrickColor = BN("Bright red"), Material = 1056}
        Part104 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-33.888, 107.4995, -225.0985)*CA(-68.5525, -89.7615, -68.554), BrickColor = BN("Bright red"), Material = 1056}
        Part105 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-37.5885, 107.4995, -225.0995)*CA(-68.5525, -89.7615, -68.554), BrickColor = BN("Bright red"), Material = 1056}
        Part106 = New'Part'{Parent = Model2, Size = V3(3, 4, 8), CFrame = CN(-33.8875, 107.9995, -223.102)*CA(-68.5525, -89.7615, -68.554), BrickColor = BN("Bright red"), Transparency = 1, CanCollide = false}
        Part107 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-33.8875, 109.4995, -225.102)*CA(-68.5525, -89.7615, -68.554), BrickColor = BN("Bright red"), Material = 1056}
        Part108 = New'Part'{Parent = Model2, Size = V3(5.6, 0.6005, 0.4), CFrame = CN(-22.0935, 97.299, -214.6955)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part109 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.0885, 98.2985, -211.596)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part110 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.0885, 99.2985, -209.596)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part111 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 4), CFrame = CN(-23.8895, 96.799, -215.5905)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part112 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.089, 100.2985, -207.596)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part113 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.89, 97.7985, -212.594)*CA(-179.9995, -0.0005, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part114 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-25.8905, 96.299, -217.395)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part115 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.891, 98.7985, -210.5985)*CA(-179.9995, -0.0005, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part116 = New'Part'{Parent = Model2, Size = V3(5.6, 0.6005, 0.4), CFrame = CN(-22.0905, 101.299, -204.4965)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part117 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-27.8905, 95.299, -217.395)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part118 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-26.918, 95.799, -215.5895)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part119 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.891, 99.7985, -208.5995)*CA(-179.9995, -0.0005, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part120 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.891, 100.7985, -206.6005)*CA(-179.9995, -0.0005, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part121 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-32.891, 90.1985, -203.6025)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part122 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-28.9075, 94.799, -215.5895)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part123 = New'Part'{Parent = Model2, Size = V3(5.6, 0.7, 0.4005), CFrame = CN(-34.995, 90.749, -201.7955)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part124 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-29.8905, 94.299, -217.395)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part125 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 4), CFrame = CN(-23.8915, 101.799, -203.597)*CA(-179.9995, -0.0005, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part126 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 16), CFrame = CN(-35.8865, 91.3, -209.6025)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part127 = New'Part'{Parent = Model2, Size = V3(5.6, 1.1005, 0.4005), CFrame = CN(-34.992, 92.0495, -217.3945)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part128 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-31.89, 93.2995, -217.395)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part129 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-30.897, 93.7995, -215.5895)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part130 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-32.8855, 92.8, -215.591)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part131 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-29.5765, 107.4995, -194.1045)*CA(109.5755, 89.7845, -109.5735), BrickColor = BN("Bright red"), Material = 1056}
        Part132 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-25.889, 107.4995, -194.1055)*CA(109.5755, 89.7845, -109.5735), BrickColor = BN("Bright red"), Material = 1056}
        Part133 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-22.188, 107.4995, -194.1045)*CA(109.5755, 89.7845, -109.5735), BrickColor = BN("Bright red"), Material = 1056}
        Part134 = New'Part'{Parent = Model2, Size = V3(3, 4, 8), CFrame = CN(-25.8895, 107.9995, -196.102)*CA(109.5755, 89.7845, -109.5735), BrickColor = BN("Bright red"), Transparency = 1, CanCollide = false}
        Part135 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-25.8895, 109.4995, -194.102)*CA(109.5755, 89.7845, -109.5735), BrickColor = BN("Bright red"), Material = 1056}
        Part136 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.841, 91.988, -200.562)*CA(-179.5785, -89.98, -179.579), BrickColor = BN("Black"), Material = 800}
        Part137 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.8805, 99.9995, -200.5945)*CA(0.0005, -90, 0), BrickColor = BN("White"), Material = 800}
        Part138 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.841, 95.9785, -200.5595)*CA(-0.0005, -90, 0), BrickColor = BN("Black"), Material = 800}
        Part139 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-22.2005, 107.4995, -225.0995)*CA(-73.766, -89.7615, -73.7675), BrickColor = BN("Bright red"), Material = 1056}
        Part140 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-25.888, 107.4995, -225.0985)*CA(-73.766, -89.7615, -73.7675), BrickColor = BN("Bright red"), Material = 1056}
        Part141 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-29.589, 107.4995, -225.099)*CA(-73.766, -89.7615, -73.7675), BrickColor = BN("Bright red"), Material = 1056}
        Part142 = New'Part'{Parent = Model2, Size = V3(3, 4, 8), CFrame = CN(-25.8875, 107.9995, -223.1015)*CA(-73.766, -89.7615, -73.7675), BrickColor = BN("Bright red"), Transparency = 1, CanCollide = false}
        Part143 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-25.8875, 109.4995, -225.1015)*CA(-73.766, -89.7615, -73.7675), BrickColor = BN("Bright red"), Material = 1056}
        Part144 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.8835, 87.968, -218.5905)*CA(-0.0085, -90, 0), BrickColor = BN("White"), Material = 800}
        Part145 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.875, 91.968, -218.5985)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 800}
        Part146 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.8955, 99.9575, -218.6335)*CA(-0, -90, 0), BrickColor = BN("White"), Material = 800}
        Part147 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.875, 95.9675, -218.5985)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 800}
        Part148 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-20.822, 87.9885, -209.588)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("White"), Material = 800}
        Part149 = New'Part'{Parent = Model2, Size = V3(2, 8, 6), CFrame = CN(-20.836, 93.9885, -214.5865)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("Black"), Material = 800}
        Part150 = New'Part'{Parent = Model2, Size = V3(1, 5, 0.5), CFrame = CN(-20.327, 93.9885, -211.347)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("White")}
        Part151 = New'Part'{Parent = Model2, Size = V3(2, 1, 4), CFrame = CN(-20.822, 90.4885, -209.588)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("Black"), Material = 800}
        Part152 = New'Part'{Parent = Model2, Size = V3(1, 0.5, 4), CFrame = CN(-20.3225, 91.2385, -209.5915)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("White")}
        Part153 = New'Part'{Parent = Model2, Size = V3(1, 0.2005, 2.33), CFrame = CN(-20.3225, 92.6685, -209.691)*CA(-90.0035, 0.002, -179.8365), BrickColor = BN("White")}
        Part154 = New'Part'{Parent = Model2, Size = V3(1, 6, 4), CFrame = CN(-21.322, 93.9885, -209.5875)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("Pastel Blue"), Transparency = 0.5}
        Part155 = New'Part'{Parent = Model2, Size = V3(1, 0.2005, 3), CFrame = CN(-20.3225, 93.9385, -209.591)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("White")}
        Part156 = New'Part'{Parent = Model2, Size = V3(1, 0.2005, 2.4505), CFrame = CN(-20.3225, 95.2685, -209.691)*CA(-90.0035, 0.002, -179.8365), BrickColor = BN("White")}
        Part157 = New'Part'{Parent = Model2, Size = V3(2, 1, 4), CFrame = CN(-20.8215, 97.4885, -209.588)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("Black"), Material = 800}
        Part158 = New'Part'{Parent = Model2, Size = V3(1, 0.5, 4), CFrame = CN(-20.322, 96.7385, -209.592)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("White")}
        Part159 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-20.8205, 99.9885, -209.588)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("White"), Material = 800}
        Part160 = New'Part'{Parent = Model2, Size = V3(1, 5, 0.5), CFrame = CN(-20.3175, 93.9885, -207.847)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("White")}
        Part161 = New'Part'{Parent = Model2, Size = V3(2, 8, 6), CFrame = CN(-20.807, 93.9885, -204.5895)*CA(-179.9995, -0.163, -179.998), BrickColor = BN("Black"), Material = 800}
        Part162 = New'Part'{Parent = Model2, Size = V3(2, 3, 16), CFrame = CN(-38.8885, 103.4995, -209.5995)*CA(-179.9995, 0.004, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part163 = New'Part'{Parent = Model2, Size = V3(2, 3, 16), CFrame = CN(-29.8895, 103.4995, -200.599)*CA(-177.8455, -89.751, -177.8455), BrickColor = BN("Black"), Material = 800}
        Part164 = New'Part'{Parent = Model2, Size = V3(2, 3, 16), CFrame = CN(-29.888, 103.4995, -218.599)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 800}
        Part165 = New'Part'{Parent = Model2, Size = V3(2, 3, 16), CFrame = CN(-20.8885, 103.4995, -209.5985)*CA(-179.9995, 0.004, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part166 = New'Part'{Parent = Model2, Size = V3(8, 1, 32), CFrame = CN(-41.8885, 105.4995, -209.6)*CA(-179.9995, 0.004, -179.9995), BrickColor = BN("Black"), Material = 1056}
        Part167 = New'Part'{Parent = Model2, Size = V3(8, 1, 16), CFrame = CN(-29.8895, 105.4995, -197.599)*CA(-177.8455, -89.784, -177.8455), BrickColor = BN("Black"), Material = 1056}
        Part168 = New'Part'{Parent = Model2, Size = V3(12, 1, 16), CFrame = CN(-31.8885, 105.4995, -209.599)*CA(-179.9995, 0.004, -179.9995), BrickColor = BN("Black"), Material = 1056}
        Part169 = New'Part'{Parent = Model2, Size = V3(4, 1, 7), CFrame = CN(-23.888, 105.4995, -214.098)*CA(-179.9995, 0.004, -179.9995), BrickColor = BN("Black"), Material = 1056}
        Part170 = New'Part'{Parent = Model2, Size = V3(8, 1, 16), CFrame = CN(-29.888, 105.4995, -221.599)*CA(-177.8455, -89.7615, -177.8455), BrickColor = BN("Black"), Material = 1056}
        Part171 = New'Part'{Parent = Model2, Size = V3(8, 1, 32), CFrame = CN(-17.8885, 105.4995, -209.5985)*CA(-179.9995, 0.004, -179.9995), BrickColor = BN("Black"), Material = 1056}
        Part172 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-14.391, 107.4995, -201.9145)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part173 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-14.392, 107.4995, -205.602)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part174 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-14.391, 107.4995, -209.3025)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part175 = New'Part'{Parent = Model2, Size = V3(3, 4, 8), CFrame = CN(-16.3885, 107.9995, -205.6015)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Bright red"), Transparency = 1, CanCollide = false}
        Part176 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-14.3885, 109.4995, -205.6015)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part177 = New'Part'{Parent = Model2, Size = V3(0.5, 3, 1), CFrame = CN(-14.4055, 107.4995, -217.838)*CA(-178.9285, -89.7465, -178.9285), BrickColor = BN("Bright red"), Material = 1056}
        Part178 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-21.6045, 107.4995, -225.099)*CA(-178.9285, -89.7655, -178.9285), BrickColor = BN("Bright red"), Material = 1056}
        Part179 = New'Part'{Parent = Model2, Size = V3(7, 1, 1), CFrame = CN(-14.405, 109.4995, -221.0995)*CA(-178.9285, -89.7865, -178.9285), BrickColor = BN("Bright red"), Material = 1056}
        Part180 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-14.405, 107.4995, -221.598)*CA(-178.9285, -89.7865, -178.9285), BrickColor = BN("Bright red"), Material = 1056}
        Part181 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-17.8975, 107.4995, -225.0975)*CA(-178.9285, -89.7465, -178.9285), BrickColor = BN("Bright red"), Material = 1056}
        Part182 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-14.4045, 107.4995, -225.098)*CA(-178.9285, -89.7465, -178.9285), BrickColor = BN("Bright red"), Material = 1056}
        Part183 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-17.8975, 109.4995, -225.098)*CA(-178.9285, -89.7465, -178.9285), BrickColor = BN("Bright red"), Material = 1056}
        Part184 = New'Part'{Parent = Model2, Size = V3(0.5, 3, 1), CFrame = CN(-21.6675, 107.496, -194.022)*CA(-179.9995, 0.018, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part185 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-14.4055, 107.496, -201.2195)*CA(-179.9995, 0.018, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part186 = New'Part'{Parent = Model2, Size = V3(7, 1, 1), CFrame = CN(-18.407, 109.496, -194.0205)*CA(-179.9995, 0.018, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part187 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-17.908, 107.496, -194.0205)*CA(-179.9995, 0.018, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part188 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-14.4075, 107.496, -197.513)*CA(-179.9995, 0.018, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part189 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-14.4075, 107.496, -194.02)*CA(-179.9995, 0.018, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part190 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-14.407, 109.496, -197.5125)*CA(-179.9995, 0.018, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part191 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-14.3905, 107.4995, -209.915)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part192 = New'Part'{Parent = Model2, Size = V3(1, 3, 1), CFrame = CN(-14.3915, 107.4995, -213.6025)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part193 = New'Part'{Parent = Model2, Size = V3(1, 3, 0.5), CFrame = CN(-14.3905, 107.4995, -217.3035)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        Part194 = New'Part'{Parent = Model2, Size = V3(3, 4, 8), CFrame = CN(-16.388, 107.9995, -213.6025)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Bright red"), Material = 1056, Transparency = 1, CanCollide = false}
        Part195 = New'Part'{Parent = Model2, Size = V3(1, 1, 8), CFrame = CN(-14.388, 109.4995, -213.602)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Bright red"), Material = 1056}
        WPart4 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-38.883, 100.0005, -218.635)*CA(0.0005, 0.0005, 90), BrickColor = BN("Institutional white"), Material = 800}
        WPart5 = New'WedgePart'{Parent = Model2, Size = V3(8, 2, 2), CFrame = CN(-38.8825, 94.0005, -218.6355)*CA(0.0005, 0.0005, 90), BrickColor = BN("Black"), Material = 800}
        WPart6 = New'WedgePart'{Parent = Model2, Size = V3(8, 2, 2), CFrame = CN(-38.8805, 93.9995, -200.5945)*CA(90.0005, 90.0005, 0), BrickColor = BN("Black"), Material = 800}
        WPart7 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-38.8825, 88.0005, -218.6355)*CA(0.0005, 0.0005, 90), BrickColor = BN("Institutional white"), Material = 800}
        WPart8 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-38.8805, 100, -200.595)*CA(90.0005, 90.0005, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart9 = New'WedgePart'{Parent = Model2, Size = V3(3, 2, 2), CFrame = CN(-38.898, 103.4995, -200.607)*CA(90.0005, 90.0005, 0), BrickColor = BN("Black"), Material = 800}
        WPart10 = New'WedgePart'{Parent = Model2, Size = V3(3, 2, 2), CFrame = CN(-38.897, 103.4995, -218.607)*CA(0.0005, -0.0035, 90), BrickColor = BN("Black"), Material = 800}
        WPart11 = New'WedgePart'{Parent = Model2, Size = V3(3, 2, 2), CFrame = CN(-20.8985, 103.4995, -200.606)*CA(-179.9995, 0.004, -89.9995), BrickColor = BN("Black"), Material = 800}
        WPart12 = New'WedgePart'{Parent = Model2, Size = V3(3, 2, 2), CFrame = CN(-20.8975, 103.4995, -218.6055)*CA(-177.8455, -89.7865, -87.8455), BrickColor = BN("Black"), Material = 800}
        WPart13 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-20.8405, 99.998, -200.549)*CA(-179.9995, -0, -89.9995), BrickColor = BN("Institutional white"), Material = 800}
        WPart14 = New'WedgePart'{Parent = Model2, Size = V3(8, 2, 2), CFrame = CN(-20.8405, 93.998, -200.549)*CA(-179.9995, -0, -89.9995), BrickColor = BN("Black"), Material = 800}
        WPart15 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-20.875, 99.968, -218.591)*CA(-89.9995, -90, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart16 = New'WedgePart'{Parent = Model2, Size = V3(8, 2, 2), CFrame = CN(-20.875, 93.968, -218.591)*CA(-89.9995, -90, 0), BrickColor = BN("Black"), Material = 800}
        WPart17 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-20.875, 87.968, -218.591)*CA(-89.9995, -90, 0), BrickColor = BN("Institutional white"), Material = 800}
        Part196 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-38.924, 87.999, -209.606)*CA(-179.9995, -0, -179.9995), BrickColor = BN("White"), Material = 800}
        Part197 = New'Part'{Parent = Model2, Size = V3(2, 8, 6), CFrame = CN(-38.8795, 77.999, -204.598)*CA(0.0005, -0, -0), BrickColor = BN("Black"), Material = 800}
        Part198 = New'Part'{Parent = Model2, Size = V3(1, 5, 0.5), CFrame = CN(-39.379, 77.999, -207.8395)*CA(0.0005, -0, -0), BrickColor = BN("White")}
        Part199 = New'Part'{Parent = Model2, Size = V3(1, 0.2005, 2.33), CFrame = CN(-39.379, 76.679, -209.4945)*CA(-89.996, 0.0005, -0), BrickColor = BN("White")}
        Part200 = New'Part'{Parent = Model2, Size = V3(1, 6, 4), CFrame = CN(-38.379, 77.999, -209.5955)*CA(0.0005, -0, -0), BrickColor = BN("Pastel Blue"), Transparency = 0.5}
        Part201 = New'Part'{Parent = Model2, Size = V3(1, 0.2005, 3), CFrame = CN(-39.3785, 77.949, -209.5945)*CA(0.0005, -0, -0), BrickColor = BN("White")}
        Part202 = New'Part'{Parent = Model2, Size = V3(1, 0.2005, 2.4505), CFrame = CN(-39.379, 79.279, -209.4945)*CA(-89.996, 0.0005, -0), BrickColor = BN("White")}
        Part203 = New'Part'{Parent = Model2, Size = V3(2, 1, 4), CFrame = CN(-38.8795, 81.499, -209.5965)*CA(0.0005, -0, -0), BrickColor = BN("Black"), Material = 800}
        Part204 = New'Part'{Parent = Model2, Size = V3(1, 0.5, 4), CFrame = CN(-39.379, 80.749, -209.594)*CA(0.0005, -0, -0), BrickColor = BN("White")}
        Part205 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-38.8805, 83.999, -209.596)*CA(0.0005, -0, -0), BrickColor = BN("White"), Material = 800}
        Part206 = New'Part'{Parent = Model2, Size = V3(1, 5, 0.5), CFrame = CN(-39.379, 77.999, -211.3385)*CA(0.0005, -0, -0), BrickColor = BN("White")}
        Part207 = New'Part'{Parent = Model2, Size = V3(2, 8, 6), CFrame = CN(-38.88, 77.999, -214.5945)*CA(0.0005, -0, -0), BrickColor = BN("Black"), Material = 800}
        Part208 = New'Part'{Parent = Model2, Size = V3(5.6, 1, 0.4), CFrame = CN(-24.7935, 86.498, -201.797)*CA(-179.9995, -0.0005, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part209 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-26.894, 87.1985, -203.5955)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part210 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-27.894, 87.6985, -201.7955)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part211 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-28.891, 88.1985, -203.594)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part212 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-29.894, 88.6985, -201.7955)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part213 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-31.894, 89.6985, -201.7955)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part214 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-30.888, 89.1985, -203.594)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part215 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.8535, 87.998, -200.55)*CA(0.0005, -90, 0), BrickColor = BN("White"), Material = 800}
        Part216 = New'Part'{Parent = Model2, Size = V3(5.6, 0.6005, 0.4), CFrame = CN(-22.089, 81.3005, -214.6955)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part217 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.086, 82.3, -211.597)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part218 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.086, 83.3, -209.597)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part219 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 4), CFrame = CN(-23.885, 80.8005, -215.5905)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part220 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.086, 84.3, -207.5975)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part221 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.8865, 81.8005, -212.594)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part222 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-25.886, 80.3005, -217.3955)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part223 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.8885, 82.8, -210.5995)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part224 = New'Part'{Parent = Model2, Size = V3(5.6, 0.6005, 0.4), CFrame = CN(-22.088, 85.3, -204.4975)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part225 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-27.884, 79.301, -217.396)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part226 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-26.911, 79.801, -215.59)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part227 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.8885, 83.8, -208.6005)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part228 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.8885, 84.8, -206.6015)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part229 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-28.901, 78.801, -215.59)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part230 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-29.884, 78.301, -217.396)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part231 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 4), CFrame = CN(-23.889, 85.8005, -203.5985)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part232 = New'Part'{Parent = Model2, Size = V3(5.6, 1.1005, 0.4005), CFrame = CN(-34.9875, 76.051, -217.395)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part233 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-31.8835, 77.301, -217.3955)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part234 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-30.8905, 77.801, -215.59)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part235 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-32.8805, 76.801, -215.5915)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part236 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.8815, 83.9995, -200.596)*CA(0.0005, -90, 0), BrickColor = BN("White"), Material = 800}
        Part237 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.841, 79.982, -200.567)*CA(0.1565, -90, 0), BrickColor = BN("Black"), Material = 800}
        Part238 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.9215, 75.9885, -218.6135)*CA(0.5985, 89.9605, -0.597), BrickColor = BN("Black"), Material = 800}
        Part239 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.883, 83.9675, -218.611)*CA(-0.005, 90.0005, 0), BrickColor = BN("White"), Material = 800}
        Part240 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.8775, 79.9775, -218.769)*CA(-0.0195, 89.1795, 0.0185), BrickColor = BN("Black"), Material = 800}
        Part241 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-20.874, 75.9895, -209.593)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part242 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-20.821, 83.9895, -209.627)*CA(-179.9995, -0.163, -179.9975), BrickColor = BN("White"), Material = 800}
        Part243 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-20.8745, 80, -209.5945)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Black"), Material = 800}
        WPart18 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-38.8805, 87.9995, -200.5945)*CA(90.0005, 90.0005, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart19 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-38.882, 83.9795, -200.627)*CA(90.0005, 90.0005, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart20 = New'WedgePart'{Parent = Model2, Size = V3(8, 2, 2), CFrame = CN(-38.882, 77.9795, -200.626)*CA(90.0005, 90.0005, 0), BrickColor = BN("Black"), Material = 800}
        WPart21 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-38.879, 84.0005, -218.596)*CA(0.0005, 0.0005, 90), BrickColor = BN("Institutional white"), Material = 800}
        WPart22 = New'WedgePart'{Parent = Model2, Size = V3(8, 2, 2), CFrame = CN(-38.879, 78.0005, -218.596)*CA(0.0005, 0.0005, 90), BrickColor = BN("Black"), Material = 800}
        WPart23 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-20.8405, 87.998, -200.549)*CA(-179.9995, -0, -89.9995), BrickColor = BN("Institutional white"), Material = 800}
        WPart24 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-20.8855, 84.0005, -200.5945)*CA(-179.9995, -0, -89.9995), BrickColor = BN("Institutional white"), Material = 800}
        WPart25 = New'WedgePart'{Parent = Model2, Size = V3(8, 2, 2), CFrame = CN(-20.8855, 78.0005, -200.5935)*CA(-179.9995, -0, -89.9995), BrickColor = BN("Black"), Material = 800}
        WPart26 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-20.8745, 83.9995, -218.5885)*CA(-89.9995, -90, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart27 = New'WedgePart'{Parent = Model2, Size = V3(8, 2, 2), CFrame = CN(-20.8745, 77.9995, -218.5885)*CA(-89.9995, -90, 0), BrickColor = BN("Black"), Material = 800}
        Part244 = New'Part'{Parent = Model2, Size = V3(25.0005, 0.2005, 39.6005), CFrame = CN(59.4165, 37.8675, -299.881)*CA(-179.999, -75, -179.999), BrickColor = BN("Dark green")}
        Part245 = New'Part'{Parent = Model2, Size = V3(22.0005, 0.2005, 31.8005), CFrame = CN(46.7885, 37.8675, -280.383)*CA(-179.9995, -60, -179.9995), BrickColor = BN("Dark green")}
        Part246 = New'Part'{Parent = Model2, Size = V3(34.8005, 0.2005, 87.4005), CFrame = CN(47.6535, 37.8675, -240.571)*CA(-179.9995, -30, -179.9995), BrickColor = BN("Dark green")}
        Part247 = New'Part'{Parent = Model2, Size = V3(31.2005, 0.2005, 9.4), CFrame = CN(60.4835, 37.8675, -311.932)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark green")}
        Part248 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-38.8795, 72.0005, -209.5965)*CA(0.0005, -0, -0), BrickColor = BN("White"), Material = 800}
        Part249 = New'Part'{Parent = Model2, Size = V3(2, 1, 4), CFrame = CN(-38.879, 74.5005, -209.597)*CA(0.0005, -0, -0), BrickColor = BN("Black"), Material = 800}
        Part250 = New'Part'{Parent = Model2, Size = V3(1, 0.5, 4), CFrame = CN(-39.3785, 75.249, -209.594)*CA(0.0005, -0, -0), BrickColor = BN("White")}
        Part251 = New'Part'{Parent = Model2, Size = V3(5.6, 1, 0.4), CFrame = CN(-24.787, 70.501, -201.7965)*CA(-179.9995, -0.001, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part252 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-26.8885, 71.2, -203.596)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part253 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-27.888, 71.7, -201.796)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part254 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-28.885, 72.2, -203.5945)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part255 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-29.888, 72.6995, -201.796)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part256 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-31.888, 73.6995, -201.796)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part257 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-30.882, 73.1995, -203.5945)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part258 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-32.885, 74.1995, -203.6025)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part259 = New'Part'{Parent = Model2, Size = V3(5.6, 0.7, 0.4005), CFrame = CN(-34.989, 74.75, -201.796)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part260 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 16), CFrame = CN(-35.881, 75.301, -209.6025)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part261 = New'Part'{Parent = Model2, Size = V3(4, 4, 16), CFrame = CN(-39.8785, 68.0005, -209.596)*CA(-179.9995, -0, -179.9995), BrickColor = BN("White"), Material = 800}
        Part262 = New'Part'{Parent = Model2, Size = V3(4, 8, 16), CFrame = CN(-39.8785, 62.001, -209.5975)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part263 = New'Part'{Parent = Model2, Size = V3(4, 4, 16), CFrame = CN(-39.879, 56.001, -209.596)*CA(-179.9995, -0, -179.9995), BrickColor = BN("White"), Material = 800}
        Part264 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.85, 72, -200.5485)*CA(0.0005, -90, 0), BrickColor = BN("White"), Material = 800}
        Part265 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.841, 75.991, -200.567)*CA(0.0125, -90, 0), BrickColor = BN("Black"), Material = 800}
        Part266 = New'Part'{Parent = Model2, Size = V3(5.6, 1, 0.4), CFrame = CN(-24.785, 54.502, -201.7965)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part267 = New'Part'{Parent = Model2, Size = V3(5.6, 0.6005, 0.4), CFrame = CN(-22.0845, 65.3025, -214.696)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part268 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-26.886, 55.202, -203.596)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part269 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.0815, 66.302, -211.596)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part270 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-27.886, 55.702, -201.796)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part271 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.0815, 67.302, -209.5965)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part272 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 4), CFrame = CN(-23.8805, 64.8025, -215.591)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part273 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.0815, 68.302, -207.5965)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part274 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-28.883, 56.202, -203.5945)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part275 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.883, 65.802, -212.594)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part276 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-25.8815, 64.3025, -217.3955)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part277 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-29.886, 56.702, -201.796)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part278 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.884, 66.802, -210.5985)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part279 = New'Part'{Parent = Model2, Size = V3(5.6, 0.6005, 0.4), CFrame = CN(-22.083, 69.302, -204.4965)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part280 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-31.886, 57.702, -201.796)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part281 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-27.8815, 63.3025, -217.3955)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part282 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-30.88, 57.202, -203.5945)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part283 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-26.909, 63.8025, -215.5895)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part284 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.884, 67.802, -208.5995)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part285 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.884, 68.802, -206.6005)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part286 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-32.883, 58.202, -203.6025)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part287 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-28.8985, 62.8025, -215.5895)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part288 = New'Part'{Parent = Model2, Size = V3(5.6, 0.7, 0.4005), CFrame = CN(-34.986, 58.752, -201.796)*CA(-179.9995, -0.0025, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part289 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-29.8815, 62.3025, -217.3955)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part290 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 4), CFrame = CN(-23.8835, 69.8025, -203.5975)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part291 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 16), CFrame = CN(-35.878, 59.3035, -209.6025)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part292 = New'Part'{Parent = Model2, Size = V3(5.6, 1.1005, 0.4005), CFrame = CN(-34.9835, 60.053, -217.395)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part293 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-31.8815, 61.3025, -217.3955)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part294 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-30.888, 61.8025, -215.5895)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part295 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-32.8785, 60.803, -215.591)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part296 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-29.912, 71.9995, -218.639)*CA(0.0005, 90.0005, 0), BrickColor = BN("White"), Material = 800}
        Part297 = New'Part'{Parent = Model2, Size = V3(6, 4, 16), CFrame = CN(-40.8795, 52.001, -209.5955)*CA(0.0005, 0.0005, -0), BrickColor = BN("White"), Material = 800}
        Part298 = New'Part'{Parent = Model2, Size = V3(5.6, 0.6005, 0.4), CFrame = CN(-22.0855, 49.302, -214.696)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part299 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.081, 50.302, -211.598)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part300 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.081, 51.302, -209.598)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part301 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 4), CFrame = CN(-23.8815, 48.802, -215.5915)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part302 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-22.081, 52.302, -207.598)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part303 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.882, 49.802, -212.5955)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part304 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-25.8825, 48.302, -217.396)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part305 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.8835, 50.802, -210.6)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part306 = New'Part'{Parent = Model2, Size = V3(5.6, 0.6005, 0.4), CFrame = CN(-22.0825, 53.302, -204.498)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 1040}
        Part307 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-26.91, 47.802, -215.59)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part308 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.8835, 51.802, -208.6015)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part309 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 1.4), CFrame = CN(-23.883, 52.802, -206.6025)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part310 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 4), CFrame = CN(-23.8825, 53.8025, -203.598)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part311 = New'Part'{Parent = Model2, Size = V3(4, 4, 16), CFrame = CN(-29.882, 68.0005, -199.5945)*CA(0.0005, 90.0005, 0), BrickColor = BN("White"), Material = 800}
        Part312 = New'Part'{Parent = Model2, Size = V3(4, 8, 16), CFrame = CN(-29.8805, 62.0005, -199.595)*CA(0.0005, 90.0005, 0), BrickColor = BN("Black"), Material = 800}
        Part313 = New'Part'{Parent = Model2, Size = V3(4, 4, 16), CFrame = CN(-29.8825, 56.001, -199.5955)*CA(0.0005, 90.0005, 0), BrickColor = BN("White"), Material = 800}
        Part314 = New'Part'{Parent = Model2, Size = V3(2, 4, 16), CFrame = CN(-20.8855, 72, -209.6035)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("White"), Material = 800}
        Part315 = New'Part'{Parent = Model2, Size = V3(4, 4, 16), CFrame = CN(-29.883, 68.0005, -219.5945)*CA(0.0005, 90.0005, 0), BrickColor = BN("White"), Material = 800}
        Part316 = New'Part'{Parent = Model2, Size = V3(4, 8, 16), CFrame = CN(-29.8815, 62.0005, -219.5945)*CA(0.0005, 90.0005, 0), BrickColor = BN("Black"), Material = 800}
        Part317 = New'Part'{Parent = Model2, Size = V3(4, 4, 16), CFrame = CN(-29.8835, 56.0005, -219.595)*CA(0.0005, 90.0005, 0), BrickColor = BN("White"), Material = 800}
        Part318 = New'Part'{Parent = Model2, Size = V3(6, 4, 16), CFrame = CN(-29.88, 52.001, -198.5935)*CA(0.0005, 90.0005, 0), BrickColor = BN("White"), Material = 800}
        Part319 = New'Part'{Parent = Model2, Size = V3(6, 4, 16), CFrame = CN(-29.885, 52.001, -220.5955)*CA(0.0005, -90, 0), BrickColor = BN("White"), Material = 800}
        Part320 = New'Part'{Parent = Model2, Size = V3(4, 4, 16), CFrame = CN(-19.882, 56.0005, -209.5955)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("White"), Material = 800}
        Part321 = New'Part'{Parent = Model2, Size = V3(4, 1, 4), CFrame = CN(-19.882, 58.5, -209.596)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part322 = New'Part'{Parent = Model2, Size = V3(1, 0.5, 4), CFrame = CN(-18.383, 59.25, -209.597)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("White")}
        Part323 = New'Part'{Parent = Model2, Size = V3(1, 0.2005, 2.33), CFrame = CN(-18.3825, 60.68, -209.6965)*CA(-90.0035, 0.0005, 180), BrickColor = BN("White")}
        Part324 = New'Part'{Parent = Model2, Size = V3(4, 8, 6), CFrame = CN(-19.882, 62, -214.594)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part325 = New'Part'{Parent = Model2, Size = V3(1, 5, 0.5), CFrame = CN(-18.3825, 62, -211.353)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("White")}
        Part326 = New'Part'{Parent = Model2, Size = V3(1, 0.2005, 3), CFrame = CN(-18.3835, 61.95, -209.597)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("White")}
        Part327 = New'Part'{Parent = Model2, Size = V3(1, 5, 0.5), CFrame = CN(-18.383, 62, -207.853)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("White")}
        Part328 = New'Part'{Parent = Model2, Size = V3(4, 8, 6), CFrame = CN(-19.8815, 62, -204.597)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part329 = New'Part'{Parent = Model2, Size = V3(1, 6, 4), CFrame = CN(-19.383, 62, -209.596)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("Pastel Blue"), Transparency = 0.5}
        Part330 = New'Part'{Parent = Model2, Size = V3(1, 0.2005, 2.4505), CFrame = CN(-18.3825, 63.28, -209.6965)*CA(-90.0035, 0.0005, 180), BrickColor = BN("White")}
        Part331 = New'Part'{Parent = Model2, Size = V3(4, 4, 16), CFrame = CN(-19.8815, 68, -209.595)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("White"), Material = 800}
        Part332 = New'Part'{Parent = Model2, Size = V3(4, 1, 4), CFrame = CN(-19.882, 65.5, -209.5955)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part333 = New'Part'{Parent = Model2, Size = V3(1, 0.5, 4), CFrame = CN(-18.383, 64.75, -209.5975)*CA(-179.9995, 0.0005, -179.9995), BrickColor = BN("White")}
        Part334 = New'Part'{Parent = Model2, Size = V3(6, 4, 10), CFrame = CN(-18.8805, 52.001, -206.599)*CA(-179.9995, -0, -179.9995), BrickColor = BN("White"), Material = 800}
        Part335 = New'Part'{Parent = Model2, Size = V3(6, 4, 6), CFrame = CN(-18.869, 52.001, -214.586)*CA(-179.9995, -0, -179.9995), BrickColor = BN("White"), Material = 800}
        Part336 = New'Part'{Parent = Model2, Size = V3(6, 4, 7), CFrame = CN(-18.8815, 48.0005, -214.0955)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part337 = New'Part'{Parent = Model2, Size = V3(133.01, 0.2005, 8.37), CFrame = CN(150.3835, 38.067, -294.232)*CA(0.0005, 0.0005, -0), BrickColor = BN("Cool yellow"), Material = 864}
        Part338 = New'Part'{Parent = Model2, Name = "Minion", Size = V3(2.9205, 8.58, 2.7305), CFrame = CN(150.3185, 48.857, -218.972)*CA(105.923, 89.929, -105.9225)}
        SMesh1 = New'SpecialMesh'{Parent = Part338, MeshType = 5, Scale = V3(3, 3, 3), MeshId = "http://www.roblox.com/asset/?id=119447056", TextureId = "http://www.roblox.com/asset/?id=119444340"}
        Part339 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(111.6835, 53.567, -180.432)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        WPart28 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-38.8815, 71.9795, -200.6265)*CA(90.0005, 90.0005, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart29 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-38.8785, 72.0005, -218.596)*CA(0.0005, 0.0005, 90), BrickColor = BN("Institutional white"), Material = 800}
        WPart30 = New'WedgePart'{Parent = Model2, Size = V3(4, 4, 4), CFrame = CN(-39.882, 68.001, -199.5955)*CA(90.0005, 90.0005, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart31 = New'WedgePart'{Parent = Model2, Size = V3(8, 4, 4), CFrame = CN(-39.882, 62.001, -199.595)*CA(90.0005, 90.0005, 0), BrickColor = BN("Black"), Material = 800}
        WPart32 = New'WedgePart'{Parent = Model2, Size = V3(4, 4, 4), CFrame = CN(-39.882, 56.001, -199.595)*CA(90.0005, 90.0005, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart33 = New'WedgePart'{Parent = Model2, Size = V3(4, 4, 4), CFrame = CN(-39.883, 68.0005, -219.595)*CA(0.0005, 0.0005, 90), BrickColor = BN("Institutional white"), Material = 800}
        WPart34 = New'WedgePart'{Parent = Model2, Size = V3(8, 4, 4), CFrame = CN(-39.883, 62.0005, -219.595)*CA(0.0005, 0.0005, 90), BrickColor = BN("Black"), Material = 800}
        WPart35 = New'WedgePart'{Parent = Model2, Size = V3(4, 4, 4), CFrame = CN(-39.883, 56.0005, -219.595)*CA(0.0005, 0.0005, 90), BrickColor = BN("Institutional white"), Material = 800}
        WPart36 = New'WedgePart'{Parent = Model2, Size = V3(4, 6, 6), CFrame = CN(-40.8805, 52.001, -220.595)*CA(0.0005, 0.0005, 90), BrickColor = BN("Institutional white"), Material = 800}
        WPart37 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-20.8855, 72.001, -200.594)*CA(-179.9995, 0.0005, -89.9995), BrickColor = BN("Institutional white"), Material = 800}
        WPart38 = New'WedgePart'{Parent = Model2, Size = V3(4, 2, 2), CFrame = CN(-20.8745, 71.9995, -218.589)*CA(-89.9995, -90, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart39 = New'WedgePart'{Parent = Model2, Size = V3(4, 4, 4), CFrame = CN(-19.881, 68.001, -199.594)*CA(-179.9995, -0, -89.9995), BrickColor = BN("Institutional white"), Material = 800}
        WPart40 = New'WedgePart'{Parent = Model2, Size = V3(8, 4, 4), CFrame = CN(-19.881, 62.001, -199.5945)*CA(-179.9995, -0, -89.9995), BrickColor = BN("Black"), Material = 800}
        WPart41 = New'WedgePart'{Parent = Model2, Size = V3(4, 4, 4), CFrame = CN(-19.881, 56.001, -199.5945)*CA(-179.9995, -0, -89.9995), BrickColor = BN("Institutional white"), Material = 800}
        WPart42 = New'WedgePart'{Parent = Model2, Size = V3(4, 4, 4), CFrame = CN(-19.881, 68.001, -219.595)*CA(-89.9995, -90, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart43 = New'WedgePart'{Parent = Model2, Size = V3(8, 4, 4), CFrame = CN(-19.881, 62.001, -219.595)*CA(-89.9995, -90, 0), BrickColor = BN("Black"), Material = 800}
        WPart44 = New'WedgePart'{Parent = Model2, Size = V3(4, 4, 4), CFrame = CN(-19.881, 56.001, -219.595)*CA(-89.9995, -90, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart45 = New'WedgePart'{Parent = Model2, Size = V3(4, 6, 6), CFrame = CN(-18.881, 52.001, -220.595)*CA(-89.9995, -90, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart46 = New'WedgePart'{Parent = Model2, Size = V3(4, 6, 6), CFrame = CN(-18.881, 52.001, -198.596)*CA(-179.9995, -0, -89.9995), BrickColor = BN("Institutional white"), Material = 800}
        Part340 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(135.8835, 53.567, -274.432)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part341 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(198.0835, 42.767, -266.832)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part342 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(95.6835, 42.767, -276.632)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part343 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(106.8835, 53.567, -160.432)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part344 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(194.2835, 42.767, -240.232)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part345 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(166.4835, 53.567, -175.832)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part346 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(198.0835, 53.567, -266.832)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part347 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(95.6835, 53.567, -276.632)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part348 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(97.2835, 53.567, -233.632)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part349 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(194.2835, 53.567, -240.232)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part350 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(135.8835, 42.767, -274.432)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part351 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(170.6835, 42.767, -269.632)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part352 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(112.6835, 42.767, -262.832)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part353 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(98.0835, 53.567, -202.632)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part354 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(170.6835, 53.567, -269.632)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part355 = New'Part'{Parent = Model2, Size = V3(33.01, 0.2005, 8.37), CFrame = CN(200.3835, 38.067, -219.432)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Cool yellow"), Material = 864}
        Part356 = New'Part'{Parent = Model2, Size = V3(72.61, 0.2005, 8.37), CFrame = CN(179.6685, 38.067, -220.737)*CA(0.0005, -90, 0), BrickColor = BN("Cool yellow"), Material = 864}
        Part357 = New'Part'{Parent = Model2, Size = V3(50.01, 0.2005, 8.37), CFrame = CN(150.4785, 38.067, -252.817)*CA(0.0005, 0.0005, -0), BrickColor = BN("Cool yellow"), Material = 864}
        Part358 = New'Part'{Parent = Model2, Size = V3(33.01, 0.2005, 8.37), CFrame = CN(154.2835, 38.067, -273.5325)*CA(0.0005, 90.0005, 0), BrickColor = BN("Cool yellow"), Material = 864}
        Part359 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(112.6835, 53.567, -262.832)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part360 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(134.2835, 53.567, -166.632)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part361 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(97.2835, 42.767, -233.632)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part362 = New'Part'{Parent = Model2, Size = V3(41.0005, 4.0005, 2), CFrame = CN(151.5835, 39.967, -240.832)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        Part363 = New'Part'{Parent = Model2, Size = V3(1.2, 0.2005, 3.8), CFrame = CN(145.1835, 42.867, -219.032)*CA(90.0005, -0, -90), BrickColor = BN("Cyan"), Material = 1536, Transparency = 0.601, CanCollide = false}
        Part364 = New'Part'{Parent = Model2, Size = V3(1, 0.2005, 1.2), CFrame = CN(148.9835, 48.667, -219.032)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Cyan"), Material = 1536, Transparency = 0.601, CanCollide = false}
        Part365 = New'Part'{Parent = Model2, Size = V3(14.2, 3.8005, 11), CFrame = CN(150.7835, 42.667, -219.132)*CA(0.0005, 90.0005, 0), BrickColor = BN("Really black"), Material = 800}
        Part366 = New'Part'{Parent = Model2, Size = V3(4.6, 0.2005, 1.2), CFrame = CN(147.626, 46.6215, -219.032)*CA(-179.9995, -0, 120.0005), BrickColor = BN("Cyan"), Material = 1536, Transparency = 0.601, CanCollide = false}
        Part367 = New'Part'{Parent = Model2, Size = V3(1.4, 0.2005, 1.2), CFrame = CN(145.9835, 44.667, -219.032)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Cyan"), Material = 1536, Transparency = 0.601, CanCollide = false}
        Part368 = New'Part'{Parent = Model2, Size = V3(40, 0.8005, 37), CFrame = CN(151.5835, 38.367, -219.832)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 800}
        Part369 = New'Part'{Parent = Model2, Size = V3(40, 2.0005, 37), CFrame = CN(151.5835, 39.767, -219.832)*CA(0.0005, 90.0005, 0), BrickColor = BN("Cyan"), Material = 1536, Transparency = 0.601, CanCollide = false}
        Part370 = New'Part'{Parent = Model2, Size = V3(40.0005, 4.0005, 2), CFrame = CN(171.0835, 39.967, -219.832)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 800}
        Part371 = New'Part'{Parent = Model2, Size = V3(40.0005, 4.0005, 2), CFrame = CN(132.0835, 39.967, -219.832)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 800}
        Part372 = New'Part'{Parent = Model2, Size = V3(25.0005, 36.4005, 39.6005), CFrame = CN(59.416, 19.5675, -299.8805)*CA(-179.999, -75, -179.999), BrickColor = BN("Reddish brown")}
        Part373 = New'Part'{Parent = Model2, Size = V3(22.0005, 36.4005, 31.8005), CFrame = CN(46.788, 19.5675, -280.383)*CA(-179.9995, -60, -179.9995), BrickColor = BN("Reddish brown")}
        Part374 = New'Part'{Parent = Model2, Size = V3(22.0005, 36.4005, 32.4005), CFrame = CN(-14.8295, 19.5675, -246.689)*CA(-179.9995, -15, -179.9995), BrickColor = BN("Reddish brown")}
        Part375 = New'Part'{Parent = Model2, Size = V3(34.8005, 36.4005, 87.4005), CFrame = CN(47.653, 19.5675, -240.5715)*CA(-179.9995, -30, -179.9995), BrickColor = BN("Reddish brown")}
        Part376 = New'Part'{Parent = Model2, Size = V3(31.2005, 37.2005, 9.4), CFrame = CN(60.483, 19.1675, -311.932)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown")}
        Part377 = New'Part'{Parent = Model2, Size = V3(22.0005, 36.4005, 133.8), CFrame = CN(65.084, 19.567, -226.1315)*CA(0.0005, 0.0005, 180)}
        Part378 = New'Part'{Parent = Model2, Size = V3(46.2005, 0.2005, 89.6005), CFrame = CN(-37.7165, 37.8675, -210.932)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark green")}
        Part379 = New'Part'{Parent = Model2, Size = V3(5.0005, 0.2005, 10.8), CFrame = CN(-75.7445, 37.8675, -184.853)*CA(180, 60, 0.0005), BrickColor = BN("Dark green")}
        Part380 = New'Part'{Parent = Model2, Size = V3(5.0005, 0.2005, 8.2), CFrame = CN(-78.2065, 37.8675, -187.407)*CA(180, 75, 0.001), BrickColor = BN("Dark green")}
        Part381 = New'Part'{Parent = Model2, Size = V3(22.0005, 0.2005, 31.8005), CFrame = CN(-15.2945, 37.8675, -175.735)*CA(0.0005, -14.9995, 180), BrickColor = BN("Dark green")}
        Part382 = New'Part'{Parent = Model2, Size = V3(22.0005, 0.2005, 26.0005), CFrame = CN(-37.0775, 37.8675, -178.673)*CA(0.0005, -14.9995, 180), BrickColor = BN("Dark green")}
        Part383 = New'Part'{Parent = Model2, Size = V3(22.0005, 0.2005, 21.6), CFrame = CN(-58.6775, 37.8675, -182.286)*CA(0.0005, -14.9995, 180), BrickColor = BN("Dark green")}
        Part384 = New'Part'{Parent = Model2, Size = V3(5.0005, 0.2005, 12.8), CFrame = CN(-73.1725, 37.8675, -183.065)*CA(180, 45, 0.0005), BrickColor = BN("Dark green")}
        Part385 = New'Part'{Parent = Model2, Size = V3(27.2005, 0.2005, 56.8005), CFrame = CN(11.4375, 37.8675, -181.616)*CA(0.0005, -14.9995, 180), BrickColor = BN("Dark green")}
        Part386 = New'Part'{Parent = Model2, Size = V3(22.0005, 0.2005, 27.2005), CFrame = CN(-36.5035, 37.8675, -243.488)*CA(-179.9995, -15, -179.9995), BrickColor = BN("Dark green")}
        Part387 = New'Part'{Parent = Model2, Size = V3(22.0005, 0.2005, 20.2005), CFrame = CN(-58.4585, 37.8675, -241.071)*CA(-179.9995, -15, -179.9995), BrickColor = BN("Dark green")}
        Part388 = New'Part'{Parent = Model2, Size = V3(5.0005, 0.2005, 17), CFrame = CN(-69.4355, 37.8675, -239.509)*CA(0.0005, 30.0005, -0), BrickColor = BN("Dark green")}
        Part389 = New'Part'{Parent = Model2, Size = V3(5.0005, 0.2005, 14.6), CFrame = CN(-72.1355, 37.8675, -238.979)*CA(0.0005, 45.0005, -0), BrickColor = BN("Dark green")}
        Part390 = New'Part'{Parent = Model2, Size = V3(5.0005, 0.2005, 12.4), CFrame = CN(-74.6515, 37.8675, -237.429)*CA(0.0005, 60.0005, -0), BrickColor = BN("Dark green")}
        Part391 = New'Part'{Parent = Model2, Size = V3(5.0005, 0.2005, 9), CFrame = CN(-77.4195, 37.8675, -235.17)*CA(0.001, 75.0005, -0.0005), BrickColor = BN("Dark green")}
        Part392 = New'Part'{Parent = Model2, Size = V3(22.0005, 0.2005, 32.4005), CFrame = CN(-14.8295, 37.8675, -246.689)*CA(-179.9995, -15, -179.9995), BrickColor = BN("Dark green")}
        Part393 = New'Part'{Parent = Model2, Size = V3(43.0005, 0.2005, 85), CFrame = CN(23.1175, 37.8675, -229.49)*CA(-179.9995, -15, -179.9995), BrickColor = BN("Dark green")}
        Part394 = New'Part'{Parent = Model2, Size = V3(27.6005, 0.2005, 27.8005), CFrame = CN(24.3855, 37.867, -160.901)*CA(0.0005, -29.9995, 180), BrickColor = BN("Dark green")}
        Part395 = New'Part'{Parent = Model2, Size = V3(22.0005, 0.2005, 133.8), CFrame = CN(65.0835, 37.867, -226.132)*CA(0.0005, 0.0005, 180), BrickColor = BN("Dark green")}
        Part396 = New'Part'{Parent = Model2, Size = V3(8, 2, 9), CFrame = CN(-17.882, 39.0005, -206.0965)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        Part397 = New'Part'{Parent = Model2, Size = V3(8, 2, 16), CFrame = CN(-41.8785, 39.0015, -209.599)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark stone grey"), Material = 800}
        Part398 = New'Part'{Parent = Model2, Size = V3(6, 2, 16), CFrame = CN(-40.879, 41.0015, -209.597)*CA(0.0005, 0.0005, -0), BrickColor = BN("White"), Material = 800}
        Part399 = New'Part'{Parent = Model2, Size = V3(6, 8, 16), CFrame = CN(-40.879, 46.001, -209.596)*CA(0.0005, 0.0005, -0), BrickColor = BN("Black"), Material = 800}
        Part400 = New'Part'{Parent = Model2, Size = V3(5.6, 1, 0.4), CFrame = CN(-24.7855, 38.5015, -201.798)*CA(-179.9995, -0.0015, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part401 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-26.886, 39.2015, -203.5975)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part402 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-27.886, 39.7015, -201.7975)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part403 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-28.883, 40.2015, -203.596)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part404 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-29.886, 40.7015, -201.7975)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part405 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-31.886, 41.7015, -201.7975)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part406 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-27.8825, 47.302, -217.396)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part407 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-30.88, 41.2015, -203.596)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part408 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-32.883, 42.2015, -203.604)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part409 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-28.8995, 46.802, -215.59)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part410 = New'Part'{Parent = Model2, Size = V3(5.6, 0.7, 0.4005), CFrame = CN(-34.988, 42.7515, -201.797)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part411 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-29.8825, 46.302, -217.396)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part412 = New'Part'{Parent = Model2, Size = V3(4, 0.4005, 16), CFrame = CN(-35.8815, 43.3025, -209.604)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part413 = New'Part'{Parent = Model2, Size = V3(5.6, 1.1005, 0.4005), CFrame = CN(-34.9875, 44.052, -217.3965)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part414 = New'Part'{Parent = Model2, Size = V3(3.4005, 0.6005, 0.4), CFrame = CN(-31.8825, 45.302, -217.396)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part415 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-30.889, 45.802, -215.59)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part416 = New'Part'{Parent = Model2, Size = V3(1.4, 0.4005, 4), CFrame = CN(-32.8805, 44.8025, -215.5925)*CA(-179.9995, -0.002, -179.9995), BrickColor = BN("Black"), Material = 1040}
        Part417 = New'Part'{Parent = Model2, Size = V3(8, 2, 16), CFrame = CN(-29.8835, 39.001, -197.595)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 800}
        Part418 = New'Part'{Parent = Model2, Size = V3(6, 2, 16), CFrame = CN(-29.8815, 41.001, -198.594)*CA(0.0005, 90.0005, 0), BrickColor = BN("White"), Material = 800}
        Part419 = New'Part'{Parent = Model2, Size = V3(6, 8, 16), CFrame = CN(-29.8805, 46.001, -198.594)*CA(0.0005, 90.0005, 0), BrickColor = BN("Black"), Material = 800}
        Part420 = New'Part'{Parent = Model2, Size = V3(8, 2, 16), CFrame = CN(-29.8815, 39.001, -221.594)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 800}
        Part421 = New'Part'{Parent = Model2, Size = V3(6, 2, 16), CFrame = CN(-29.8835, 41.001, -220.595)*CA(0.0005, -90, 0), BrickColor = BN("White"), Material = 800}
        Part422 = New'Part'{Parent = Model2, Size = V3(6, 8, 16), CFrame = CN(-29.8845, 46.001, -220.595)*CA(0.0005, -90, 0), BrickColor = BN("Black"), Material = 800}
        Part423 = New'Part'{Parent = Model2, Size = V3(6, 8, 9), CFrame = CN(-18.8815, 46.0005, -206.1)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part424 = New'Part'{Parent = Model2, Size = V3(6, 4, 2), CFrame = CN(-18.8825, 44.001, -216.5945)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Black"), Material = 800}
        Part425 = New'Part'{Parent = Model2, Size = V3(6, 2, 9), CFrame = CN(-18.8815, 41.0005, -206.099)*CA(-179.9995, -0, -179.9995), BrickColor = BN("White"), Material = 800}
        Part426 = New'Part'{Parent = Model2, Size = V3(6, 2, 2), CFrame = CN(-18.883, 41.001, -216.595)*CA(-179.9995, -0, -179.9995), BrickColor = BN("White"), Material = 800}
        Part427 = New'Part'{Parent = Model2, Size = V3(8, 2, 2), CFrame = CN(-17.881, 39.0015, -216.5945)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        Part428 = New'Part'{Parent = Model2, Size = V3(89.81, 0.2005, 7.97), CFrame = CN(31.008, 38.067, -213.184)*CA(0.0005, 0.0005, -0), BrickColor = BN("Cool yellow"), Material = 864}
        Part429 = New'Part'{Parent = Model2, Size = V3(277.3605, 0.2005, 7.97), CFrame = CN(79.863, 38.047, -159.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Cool yellow"), Material = 864}
        Part430 = New'Part'{Parent = Model2, Size = V3(133.01, 0.2005, 8.37), CFrame = CN(150.3785, 38.067, -147.2075)*CA(0.0005, 0.0005, -0), BrickColor = BN("Cool yellow"), Material = 864}
        Part431 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(12.589, 9.9935, -275.954)*CA(-179.9995, -11.7175, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh2 = New'SpecialMesh'{Parent = Part431, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part432 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(190.7715, 44.9, -122.123)*CA(0.0005, 0.0005, -0), BrickColor = BN("New Yeller")}
        Part433 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(111.6835, 42.767, -180.432)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        WPart47 = New'WedgePart'{Parent = Model2, Size = V3(4, 6, 6), CFrame = CN(-40.8805, 52.001, -198.596)*CA(90.0005, 90.0005, 0), BrickColor = BN("Institutional white"), Material = 800}
        WPart48 = New'WedgePart'{Parent = Model2, Size = V3(8, 6, 6), CFrame = CN(-40.8805, 46.001, -198.596)*CA(90.0005, 90.0005, 0), BrickColor = BN("Black"), Material = 800}
        WPart49 = New'WedgePart'{Parent = Model2, Size = V3(2, 6, 6), CFrame = CN(-40.8805, 41.0015, -198.596)*CA(90.0005, 90.0005, 0), BrickColor = BN("White"), Material = 800}
        WPart50 = New'WedgePart'{Parent = Model2, Size = V3(2, 8, 8), CFrame = CN(-41.8805, 39.0015, -197.596)*CA(90.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 800}
        WPart51 = New'WedgePart'{Parent = Model2, Size = V3(8, 6, 6), CFrame = CN(-40.8805, 46.001, -220.595)*CA(0.0005, 0.0005, 90), BrickColor = BN("Black"), Material = 800}
        WPart52 = New'WedgePart'{Parent = Model2, Size = V3(2, 6, 6), CFrame = CN(-40.8805, 41.0015, -220.595)*CA(0.0005, 0.0005, 90), BrickColor = BN("White"), Material = 800}
        WPart53 = New'WedgePart'{Parent = Model2, Size = V3(2, 8, 8), CFrame = CN(-41.8805, 39.0015, -221.595)*CA(0.0005, 0.0005, 90), BrickColor = BN("Dark stone grey"), Material = 800}
        WPart54 = New'WedgePart'{Parent = Model2, Size = V3(8, 6, 6), CFrame = CN(-18.881, 46.001, -220.595)*CA(-89.9995, -90, 0), BrickColor = BN("Black"), Material = 800}
        WPart55 = New'WedgePart'{Parent = Model2, Size = V3(2, 6, 6), CFrame = CN(-18.881, 41.001, -220.595)*CA(-89.9995, -90, 0), BrickColor = BN("White"), Material = 800}
        WPart56 = New'WedgePart'{Parent = Model2, Size = V3(2, 8, 8), CFrame = CN(-17.881, 39.0015, -221.595)*CA(-89.9995, -90, 0), BrickColor = BN("Dark stone grey"), Material = 800}
        WPart57 = New'WedgePart'{Parent = Model2, Size = V3(8, 6, 6), CFrame = CN(-18.881, 46.001, -198.596)*CA(-179.9995, -0, -89.9995), BrickColor = BN("Black"), Material = 800}
        WPart58 = New'WedgePart'{Parent = Model2, Size = V3(2, 6, 6), CFrame = CN(-18.881, 41.001, -198.596)*CA(-179.9995, -0, -89.9995), BrickColor = BN("White"), Material = 800}
        WPart59 = New'WedgePart'{Parent = Model2, Size = V3(2, 8, 8), CFrame = CN(-17.881, 39.0015, -197.596)*CA(-179.9995, -0, -89.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        Part434 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(188.4835, 42.767, -183.432)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part435 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(166.4835, 42.767, -175.832)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part436 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(205.4835, 53.567, -166.832)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part437 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(205.4835, 42.767, -166.832)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part438 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(203.6835, 42.767, -206.032)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part439 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(203.6835, 53.567, -206.032)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part440 = New'Part'{Parent = Model2, Size = V3(50.01, 0.2005, 8.37), CFrame = CN(150.4785, 38.067, -188.617)*CA(0.0005, 0.0005, -0), BrickColor = BN("Cool yellow"), Material = 864}
        Part441 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(106.8835, 42.767, -160.432)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part442 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(134.2835, 42.767, -166.632)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part443 = New'Part'{Parent = Model2, Size = V3(72.61, 0.2005, 8.37), CFrame = CN(121.2685, 38.067, -220.737)*CA(0.0005, -90, 0), BrickColor = BN("Cool yellow"), Material = 864}
        Part444 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(2, 9.6005, 2), CFrame = CN(98.0835, 42.767, -202.632)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part445 = New'Part'{Parent = Model2, Name = "Smooth Block Model", Size = V3(12, 12, 12), CFrame = CN(188.4835, 53.567, -183.432)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("Camo")}
        Part446 = New'Part'{Parent = Model2, Size = V3(33.01, 0.2005, 8.37), CFrame = CN(154.2985, 38.067, -167.927)*CA(0.0005, 90.0005, 0), BrickColor = BN("Cool yellow"), Material = 864}
        Part447 = New'Part'{Parent = Model2, Size = V3(33.21, 0.2005, 8.37), CFrame = CN(100.4885, 38.067, -219.447)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Cool yellow"), Material = 864}
        Part448 = New'Part'{Parent = Model2, Size = V3(41.0005, 4.0005, 2), CFrame = CN(151.5835, 39.967, -198.832)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        Part449 = New'Part'{Parent = Model2, Size = V3(46.2005, 36.4005, 89.6005), CFrame = CN(-37.7165, 19.5675, -210.931)*CA(107.922, 89.966, -107.9215), BrickColor = BN("Reddish brown")}
        Part450 = New'Part'{Parent = Model2, Size = V3(27.2005, 36.4005, 56.8005), CFrame = CN(11.4375, 19.5675, -181.6155)*CA(0.0005, -14.9995, 180), BrickColor = BN("Reddish brown")}
        Part451 = New'Part'{Parent = Model2, Size = V3(5.0005, 36.4005, 9), CFrame = CN(-77.42, 19.5675, -235.17)*CA(0.001, 75.0005, -0.0005), BrickColor = BN("Reddish brown")}
        Part452 = New'Part'{Parent = Model2, Size = V3(5.0005, 36.4005, 12.4), CFrame = CN(-74.652, 19.5675, -237.4285)*CA(0.0005, 60.0005, -0), BrickColor = BN("Reddish brown")}
        Part453 = New'Part'{Parent = Model2, Size = V3(5.0005, 36.4005, 14.6), CFrame = CN(-72.136, 19.5675, -238.979)*CA(0.0005, 45.0005, -0), BrickColor = BN("Reddish brown")}
        Part454 = New'Part'{Parent = Model2, Size = V3(5.0005, 36.4005, 17), CFrame = CN(-69.4355, 19.5675, -239.5095)*CA(0.0005, 30.0005, -0), BrickColor = BN("Reddish brown")}
        Part455 = New'Part'{Parent = Model2, Size = V3(22.0005, 36.4005, 20.2005), CFrame = CN(-58.459, 19.5675, -241.071)*CA(-179.9995, -15, -179.9995), BrickColor = BN("Reddish brown")}
        Part456 = New'Part'{Parent = Model2, Size = V3(22.0005, 36.4005, 27.2005), CFrame = CN(-36.504, 19.5675, -243.4875)*CA(-179.9995, -15, -179.9995), BrickColor = BN("Reddish brown")}
        Part457 = New'Part'{Parent = Model2, Size = V3(43.0005, 36.4005, 85), CFrame = CN(23.117, 19.5675, -229.49)*CA(-179.9995, -15, -179.9995), BrickColor = BN("Reddish brown")}
        Part458 = New'Part'{Parent = Model2, Size = V3(67.6005, 67.6005, 67.6005), CFrame = CN(282.7835, 33.767, -288.732)*CA(-179.9995, -90, 0), BrickColor = BN("Camo")}
        Part459 = New'Part'{Parent = Model2, Size = V3(5.0005, 0.2005, 14.4), CFrame = CN(-70.4855, 37.8675, -182.046)*CA(-179.9995, 30, 0.0005), BrickColor = BN("Dark green")}
        Part460 = New'Part'{Parent = Model2, Size = V3(22.0005, 0.2005, 7), CFrame = CN(35.6485, 37.867, -136.099)*CA(-0, -59.9995, 180), BrickColor = BN("Dark green")}
        Part461 = New'Part'{Parent = Model2, Size = V3(82.8005, 0.2005, 45.8005), CFrame = CN(54.5315, 37.867, -151.516)*CA(-0, -74.9995, 179.9995), BrickColor = BN("Dark green")}
        Part462 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(-6.443, 5.1725, -283.148)*CA(-179.9995, 3.2825, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh3 = New'SpecialMesh'{Parent = Part462, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part463 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(1.972, 5.1725, -284.093)*CA(-179.9995, 3.2825, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh4 = New'SpecialMesh'{Parent = Part463, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part464 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(16.259, 4.8675, -281.657)*CA(-179.9995, 3.2825, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh5 = New'SpecialMesh'{Parent = Part464, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part465 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(7.835, 4.8675, -278.256)*CA(-179.9995, 3.2825, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh6 = New'SpecialMesh'{Parent = Part465, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part466 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(-2.058, 4.8675, -276.737)*CA(-179.9995, 3.2825, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh7 = New'SpecialMesh'{Parent = Part466, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part467 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(-13.69, 4.8675, -277.153)*CA(-179.9995, 3.2825, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh8 = New'SpecialMesh'{Parent = Part467, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part468 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(3.28, 3.28, 3.28), CFrame = CN(-8.192, 9.3315, -274.739)*CA(-179.9995, 3.2825, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh9 = New'SpecialMesh'{Parent = Part468, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part469 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(3.446, 9.4665, -274.057)*CA(-179.9995, -11.7175, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh10 = New'SpecialMesh'{Parent = Part469, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part470 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(11.41, 5.1725, -287.19)*CA(-179.9995, 3.2825, -179.9995), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh11 = New'SpecialMesh'{Parent = Part470, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part471 = New'Part'{Parent = Model2, Size = V3(17.6405, 11.9505, 34.94), CFrame = CN(199.6915, 43.9415, -112.061)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Material = 848}
        Part472 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(208.6115, 42.7915, -122.926)*CA(0.0005, 0.0005, -0), BrickColor = BN("New Yeller")}
        Part473 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(199.8235, 44.4175, -129.631)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("New Yeller")}
        Part474 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(190.7715, 44.8265, -112.418)*CA(0.0005, 0.0005, -0), BrickColor = BN("New Yeller")}
        Part475 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(190.7715, 45.0125, -102.683)*CA(0.0005, 0.0005, -0), BrickColor = BN("New Yeller")}
        WPart60 = New'WedgePart'{Parent = Model2, Size = V3(34.91, 7.7, 17.6305), CFrame = CN(199.6965, 53.7665, -112.043)*CA(0.0005, -90, 0), BrickColor = BN("Really black"), Material = 1040}
        Part476 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(144.6835, 38.867, -80.932)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh12 = New'SpecialMesh'{Parent = Part476, Scale = V3(1.25, 1.25, 1.25)}
        Part477 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -82.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part478 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(134.9835, 38.867, -77.432)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part479 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(154.4835, 38.867, -101.132)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh13 = New'SpecialMesh'{Parent = Part479, Scale = V3(1.25, 1.25, 1.25)}
        Part480 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -78.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part481 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -81.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part482 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -79.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part483 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -80.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part484 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.167, -79.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part485 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.167, -82.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part486 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(155.7835, 38.8665, -79.432)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part487 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(152.7835, 38.867, -79.432)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part488 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.167, -75.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part489 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -82.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part490 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(163.4835, 38.8665, -79.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part491 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.167, -80.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part492 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(162.9835, 38.8665, -77.432)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part493 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.167, -81.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part494 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -78.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part495 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.167, -76.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part496 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -75.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part497 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -79.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part498 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -81.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part499 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -74.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part500 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -77.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part501 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(154.7835, 38.8665, -77.432)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part502 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.167, -77.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part503 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.167, -74.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part504 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(154.2835, 38.867, -80.932)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh14 = New'SpecialMesh'{Parent = Part504, Scale = V3(1.25, 1.25, 1.25)}
        Part505 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(135.4835, 38.867, -80.932)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh15 = New'SpecialMesh'{Parent = Part505, Scale = V3(1.25, 1.25, 1.25)}
        Part506 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(161.9835, 38.8665, -79.432)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part507 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(163.9835, 38.8665, -77.432)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part508 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -76.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part509 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -80.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part510 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(163.4835, 38.8665, -80.932)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh16 = New'SpecialMesh'{Parent = Part510, Scale = V3(1.25, 1.25, 1.25)}
        Part511 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(153.7835, 38.8665, -77.432)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part512 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.167, -78.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part513 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(164.9835, 38.8665, -79.432)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part514 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(133.9835, 38.867, -79.432)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part515 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(154.2835, 38.867, -79.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part516 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(135.9835, 38.867, -77.432)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part517 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(136.9835, 38.867, -79.432)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part518 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(135.4835, 38.867, -79.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part519 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(146.1835, 38.867, -79.432)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part520 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(144.6835, 38.867, -79.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part521 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(145.1835, 38.867, -77.432)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part522 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(143.1835, 38.867, -79.432)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part523 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(144.1835, 38.867, -77.432)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part524 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -78.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part525 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -77.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part526 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -76.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part527 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -79.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part528 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -80.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part529 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -81.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part530 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -82.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part531 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(116.0835, 38.867, -80.932)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh17 = New'SpecialMesh'{Parent = Part531, Scale = V3(1.25, 1.25, 1.25)}
        Part532 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(125.2835, 38.867, -80.932)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh18 = New'SpecialMesh'{Parent = Part532, Scale = V3(1.25, 1.25, 1.25)}
        Part533 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(126.7835, 38.867, -79.432)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part534 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(125.2835, 38.867, -79.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part535 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(123.7835, 38.867, -79.432)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part536 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -81.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part537 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -82.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part538 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(163.6835, 38.867, -99.632)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part539 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -94.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part540 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(154.4835, 38.867, -99.632)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part541 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -99.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part542 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -100.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part543 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(165.1835, 38.867, -99.632)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part544 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(135.6835, 38.867, -101.132)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh19 = New'SpecialMesh'{Parent = Part544, Scale = V3(1.25, 1.25, 1.25)}
        Part545 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -95.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part546 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -97.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part547 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -94.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part548 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(152.9835, 38.867, -99.632)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part549 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -101.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part550 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(155.9835, 38.867, -99.632)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part551 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -97.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part552 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -96.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part553 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -94.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part554 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(154.9835, 38.867, -97.632)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part555 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(163.6835, 38.867, -101.132)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh20 = New'SpecialMesh'{Parent = Part555, Scale = V3(1.25, 1.25, 1.25)}
        Part556 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -98.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part557 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -100.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part558 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -95.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part559 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -99.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part560 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(153.9835, 38.867, -97.632)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part561 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(137.1835, 38.867, -99.632)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part562 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(135.6835, 38.867, -99.632)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part563 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(136.1835, 38.867, -97.632)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part564 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(134.1835, 38.867, -99.632)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part565 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(135.1835, 38.867, -97.632)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part566 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -98.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part567 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -97.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part568 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -96.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part569 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -99.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part570 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -95.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part571 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -101.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part572 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -94.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part573 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(144.8835, 38.867, -101.132)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh21 = New'SpecialMesh'{Parent = Part573, Scale = V3(1.25, 1.25, 1.25)}
        Part574 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -102.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part575 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(146.3835, 38.867, -99.632)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part576 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(144.8835, 38.867, -99.632)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part577 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(145.3835, 38.867, -97.632)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part578 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(143.3835, 38.867, -99.632)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part579 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(144.3835, 38.867, -97.632)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part580 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -98.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part581 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -96.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part582 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -99.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part583 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -101.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part584 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -102.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part585 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(116.2835, 38.867, -101.132)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh22 = New'SpecialMesh'{Parent = Part585, Scale = V3(1.25, 1.25, 1.25)}
        Part586 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -98.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part587 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -100.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part588 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -101.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part589 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(163.1835, 38.867, -97.632)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part590 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -96.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part591 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -95.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part592 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -100.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part593 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -97.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part594 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -102.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part595 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -102.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part596 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(164.1835, 38.867, -97.632)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part597 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(162.1835, 38.867, -99.632)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part598 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(117.7835, 38.867, -99.632)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part599 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(116.2835, 38.867, -99.632)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part600 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(116.7835, 38.867, -97.632)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part601 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(114.7835, 38.867, -99.632)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part602 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(115.7835, 38.867, -97.632)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part603 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -98.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part604 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -97.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part605 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -96.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part606 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -95.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part607 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -99.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part608 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -94.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part609 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -100.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part610 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -101.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part611 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -102.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part612 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(125.4835, 38.867, -101.132)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh23 = New'SpecialMesh'{Parent = Part612, Scale = V3(1.25, 1.25, 1.25)}
        Part613 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(126.9835, 38.867, -99.632)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part614 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(125.4835, 38.867, -99.632)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part615 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(125.9835, 38.867, -97.632)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part616 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(123.9835, 38.867, -99.632)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part617 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(124.9835, 38.867, -97.632)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part618 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -98.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part619 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -97.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part620 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -96.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part621 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -95.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part622 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -99.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part623 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -94.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part624 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -100.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part625 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -101.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part626 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -102.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part627 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(97.4835, 38.867, -101.132)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh24 = New'SpecialMesh'{Parent = Part627, Scale = V3(1.25, 1.25, 1.25)}
        Part628 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(98.9835, 38.867, -99.632)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part629 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(97.4835, 38.867, -99.632)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part630 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(97.9835, 38.867, -97.632)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part631 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(95.9835, 38.867, -99.632)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part632 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(96.9835, 38.867, -97.632)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part633 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -98.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part634 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -97.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part635 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -96.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part636 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -95.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part637 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -99.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part638 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -94.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part639 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -100.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part640 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -101.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part641 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -102.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part642 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(106.6835, 38.867, -101.132)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh25 = New'SpecialMesh'{Parent = Part642, Scale = V3(1.25, 1.25, 1.25)}
        Part643 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(108.1835, 38.867, -99.632)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part644 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(106.6835, 38.867, -99.632)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part645 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(107.1835, 38.867, -97.632)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part646 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(105.1835, 38.867, -99.632)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part647 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(106.1835, 38.867, -97.632)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part648 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -98.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part649 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -97.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part650 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -96.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part651 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -95.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part652 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -99.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part653 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -94.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part654 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -100.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part655 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -101.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part656 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -102.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part657 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(154.4835, 38.867, -120.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh26 = New'SpecialMesh'{Parent = Part657, Scale = V3(1.25, 1.25, 1.25)}
        Part658 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(155.9835, 38.867, -119.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part659 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(154.4835, 38.867, -119.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part660 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(154.9835, 38.867, -117.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part661 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(152.9835, 38.867, -119.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part662 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(153.9835, 38.867, -117.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part663 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -117.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part664 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -116.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part665 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -115.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part666 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -114.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part667 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -118.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part668 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -113.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part669 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -119.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part670 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -120.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part671 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.6835, 38.167, -121.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part672 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(163.6835, 38.867, -120.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh27 = New'SpecialMesh'{Parent = Part672, Scale = V3(1.25, 1.25, 1.25)}
        Part673 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(165.1835, 38.867, -119.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part674 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(163.6835, 38.867, -119.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part675 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(164.1835, 38.867, -117.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part676 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(162.1835, 38.867, -119.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part677 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(163.1835, 38.867, -117.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part678 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -117.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part679 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -116.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part680 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -115.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part681 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -114.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part682 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -118.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part683 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -113.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part684 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -119.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part685 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -120.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part686 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.8835, 38.167, -121.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part687 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(135.6835, 38.867, -120.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh28 = New'SpecialMesh'{Parent = Part687, Scale = V3(1.25, 1.25, 1.25)}
        Part688 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(137.1835, 38.867, -119.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part689 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(135.6835, 38.867, -119.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part690 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(136.1835, 38.867, -117.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part691 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(134.1835, 38.867, -119.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part692 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(135.1835, 38.867, -117.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part693 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -117.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part694 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -116.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part695 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -115.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part696 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -114.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part697 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -118.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part698 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -113.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part699 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -119.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part700 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -120.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part701 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.8835, 38.167, -121.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part702 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(144.8835, 38.867, -120.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh29 = New'SpecialMesh'{Parent = Part702, Scale = V3(1.25, 1.25, 1.25)}
        Part703 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(146.3835, 38.867, -119.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part704 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(144.8835, 38.867, -119.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part705 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(145.3835, 38.867, -117.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part706 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(143.3835, 38.867, -119.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part707 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(144.3835, 38.867, -117.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part708 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -117.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part709 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -116.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part710 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -115.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part711 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -114.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part712 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -118.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part713 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -113.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part714 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -119.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part715 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -120.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part716 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(145.0835, 38.167, -121.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part717 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(116.2835, 38.867, -120.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh30 = New'SpecialMesh'{Parent = Part717, Scale = V3(1.25, 1.25, 1.25)}
        Part718 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(117.7835, 38.867, -119.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part719 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(116.2835, 38.867, -119.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part720 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(116.7835, 38.867, -117.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part721 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(114.7835, 38.867, -119.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part722 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(115.7835, 38.867, -117.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part723 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -117.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part724 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -116.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part725 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -115.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part726 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -114.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part727 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -118.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part728 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -113.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part729 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -119.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part730 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -120.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part731 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.4835, 38.167, -121.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part732 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(125.4835, 38.867, -120.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh31 = New'SpecialMesh'{Parent = Part732, Scale = V3(1.25, 1.25, 1.25)}
        Part733 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(126.9835, 38.867, -119.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part734 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(125.4835, 38.867, -119.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part735 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(125.9835, 38.867, -117.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part736 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(123.9835, 38.867, -119.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part737 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(124.9835, 38.867, -117.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part738 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -117.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part739 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -116.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part740 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -115.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part741 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -114.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part742 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -118.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part743 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -113.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part744 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -119.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part745 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -120.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part746 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.6835, 38.167, -121.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part747 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(97.4835, 38.867, -120.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh32 = New'SpecialMesh'{Parent = Part747, Scale = V3(1.25, 1.25, 1.25)}
        Part748 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(98.9835, 38.867, -119.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part749 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(97.4835, 38.867, -119.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part750 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(97.9835, 38.867, -117.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part751 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(95.9835, 38.867, -119.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part752 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(96.9835, 38.867, -117.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part753 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -117.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part754 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -116.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part755 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -115.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part756 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -114.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part757 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -118.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part758 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -113.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part759 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -119.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part760 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -120.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part761 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.6835, 38.167, -121.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part762 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(106.6835, 38.867, -120.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh33 = New'SpecialMesh'{Parent = Part762, Scale = V3(1.25, 1.25, 1.25)}
        Part763 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(108.1835, 38.867, -119.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part764 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(106.6835, 38.867, -119.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part765 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(107.1835, 38.867, -117.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part766 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(105.1835, 38.867, -119.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part767 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(106.1835, 38.867, -117.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part768 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -117.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part769 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -116.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part770 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -115.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part771 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -114.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part772 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -118.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part773 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -113.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part774 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -119.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part775 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -120.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part776 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.8835, 38.167, -121.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part777 = New'Part'{Parent = Model2, Size = V3(5.0005, 36.4005, 8.2), CFrame = CN(-78.2065, 19.5675, -187.407)*CA(180, 75, 0.001), BrickColor = BN("Reddish brown")}
        Part778 = New'Part'{Parent = Model2, Size = V3(5.0005, 36.4005, 10.8), CFrame = CN(-75.745, 19.5675, -184.8525)*CA(180, 60, 0.0005), BrickColor = BN("Reddish brown")}
        Part779 = New'Part'{Parent = Model2, Size = V3(22.0005, 36.4005, 21.6), CFrame = CN(-58.6775, 19.5675, -182.2855)*CA(0.0005, -14.9995, 180), BrickColor = BN("Reddish brown")}
        Part780 = New'Part'{Parent = Model2, Size = V3(5.0005, 36.4005, 12.8), CFrame = CN(-73.1725, 19.5675, -183.065)*CA(180, 45, 0.0005), BrickColor = BN("Reddish brown")}
        Part781 = New'Part'{Parent = Model2, Size = V3(5.0005, 36.4005, 14.4), CFrame = CN(-70.4855, 19.5675, -182.0455)*CA(-179.9995, 30, 0.0005), BrickColor = BN("Reddish brown")}
        Part782 = New'Part'{Parent = Model2, Size = V3(22.0005, 36.4005, 26.0005), CFrame = CN(-37.0775, 19.5675, -178.6725)*CA(0.0005, -14.9995, 180), BrickColor = BN("Reddish brown")}
        Part783 = New'Part'{Parent = Model2, Size = V3(22.0005, 36.4005, 31.8005), CFrame = CN(-15.295, 19.5675, -175.7345)*CA(0.0005, -14.9995, 180), BrickColor = BN("Reddish brown")}
        Part784 = New'Part'{Parent = Model2, Size = V3(82.8005, 36.4005, 45.8005), CFrame = CN(54.5315, 19.567, -151.516)*CA(-0, -74.9995, 179.9995), BrickColor = BN("Reddish brown")}
        Part785 = New'Part'{Parent = Model2, Size = V3(99, 36.4005, 33.0005), CFrame = CN(59.584, 19.567, -65.732)*CA(-179.9995, -90, 0), BrickColor = BN("Reddish brown")}
        Part786 = New'Part'{Parent = Model2, Size = V3(27.6005, 36.4005, 27.8005), CFrame = CN(24.385, 19.567, -160.9005)*CA(0.0005, -29.9995, 180), BrickColor = BN("Reddish brown")}
        Part787 = New'Part'{Parent = Model2, Size = V3(22.0005, 36.4005, 7), CFrame = CN(35.6485, 19.567, -136.0995)*CA(-0, -59.9995, 180), BrickColor = BN("Reddish brown")}
        Part788 = New'Part'{Parent = Model2, Size = V3(458.0005, 36.4005, 241.0005), CFrame = CN(196.3835, 19.5665, -87.632)*CA(-179.9995, -90, 0), BrickColor = BN("Reddish brown")}
        Part789 = New'Part'{Parent = Model2, Size = V3(458.0005, 0.2005, 241.0005), CFrame = CN(196.3835, 37.8665, -87.632)*CA(-179.9995, -90, 0), BrickColor = BN("Dark green")}
        Part790 = New'Part'{Parent = Model2, Size = V3(99, 0.2005, 33.0005), CFrame = CN(59.5835, 37.867, -65.732)*CA(-179.9995, -90, 0), BrickColor = BN("Dark green")}
        Part791 = New'Part'{Parent = Model2, Size = V3(26.6005, 0.2005, 20.2005), CFrame = CN(73.0155, 37.867, -4.591)*CA(-0, -59.9995, 180), BrickColor = BN("Dark green")}
        Part792 = New'Part'{Parent = Model2, Size = V3(22.0005, 0.2005, 12.4005), CFrame = CN(55.7605, 37.867, -16.032)*CA(0.0005, -29.9995, 180), BrickColor = BN("Dark green")}
        Part793 = New'Part'{Parent = Model2, Size = V3(67.6005, 67.6005, 67.6005), CFrame = CN(281.5835, 36.5665, -156.732)*CA(-179.9995, -90, 0), BrickColor = BN("Camo")}
        Part794 = New'Part'{Parent = Model2, Size = V3(67.6005, 67.6005, 67.6005), CFrame = CN(280.2835, 34.5665, -222.432)*CA(-179.9995, -90, 0), BrickColor = BN("Camo")}
        Part795 = New'Part'{Parent = Model2, Size = V3(141.01, 0.54, 7.97), CFrame = CN(146.4135, 37.7965, -16.9835)*CA(0.0005, 0.0005, -0), BrickColor = BN("Cool yellow"), Material = 864}
        Part796 = New'Part'{Parent = Model2, Size = V3(405.2105, 0.4005, 7.97), CFrame = CN(220.8985, 37.9665, -95.8275)*CA(0.0005, 90.0005, 0), BrickColor = BN("Cool yellow"), Material = 864}
        Part797 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(-14.2445, 5.1725, -143.8315)*CA(0.0005, -32.323, -0), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh34 = New'SpecialMesh'{Parent = Part797, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part798 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(-95.1305, 5.1725, -200.955)*CA(-179.997, -86.718, -179.9975), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh35 = New'SpecialMesh'{Parent = Part798, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part799 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 9), CFrame = CN(-155.217, 13.883, -178.26)*CA(90.0005, -65.474, -90), BrickColor = BN("Bright blue")}
        Part800 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(-22.0605, 5.1725, -147.0895)*CA(0.0005, -32.323, -0), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh36 = New'SpecialMesh'{Parent = Part800, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part801 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(-33.369, 4.8675, -156.1545)*CA(0.0005, -32.323, -0), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh37 = New'SpecialMesh'{Parent = Part801, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part802 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(-24.3525, 4.8675, -155.0385)*CA(0.0005, -32.323, -0), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh38 = New'SpecialMesh'{Parent = Part802, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part803 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(-14.967, 4.8675, -151.564)*CA(0.0005, -32.323, -0), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh39 = New'SpecialMesh'{Parent = Part803, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part804 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(-4.999, 4.8675, -145.554)*CA(0.0005, -32.323, -0), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh40 = New'SpecialMesh'{Parent = Part804, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part805 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(3.28, 3.28, 3.28), CFrame = CN(-8.634, 9.3315, -150.333)*CA(0.0005, -32.323, -0), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh41 = New'SpecialMesh'{Parent = Part805, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part806 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(-18.4775, 9.4665, -156.579)*CA(0.0005, -17.323, -0), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh42 = New'SpecialMesh'{Parent = Part806, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part807 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(-27.3915, 9.9935, -159.359)*CA(0.0005, -17.323, -0), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh43 = New'SpecialMesh'{Parent = Part807, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part808 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(-31.816, 5.1725, -148.9625)*CA(0.0005, -32.323, -0), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh44 = New'SpecialMesh'{Parent = Part808, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part809 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(-96.0755, 5.1725, -209.3705)*CA(-179.997, -86.718, -179.9975), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh45 = New'SpecialMesh'{Parent = Part809, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part810 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(-93.6395, 4.8675, -223.657)*CA(-179.997, -86.718, -179.9975), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh46 = New'SpecialMesh'{Parent = Part810, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part811 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(-90.2385, 4.8675, -215.233)*CA(-179.997, -86.718, -179.9975), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh47 = New'SpecialMesh'{Parent = Part811, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part812 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(-88.72, 4.8675, -205.34)*CA(-179.997, -86.718, -179.9975), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh48 = New'SpecialMesh'{Parent = Part812, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part813 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(-89.1355, 4.8675, -193.708)*CA(-179.997, -86.718, -179.9975), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh49 = New'SpecialMesh'{Parent = Part813, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part814 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(3.28, 3.28, 3.28), CFrame = CN(-86.722, 9.3315, -199.2055)*CA(-179.997, -86.718, -179.9975), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh50 = New'SpecialMesh'{Parent = Part814, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part815 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(-86.04, 9.4665, -210.844)*CA(-0.0005, -78.282, -0.0005), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh51 = New'SpecialMesh'{Parent = Part815, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part816 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(-87.9365, 9.9935, -219.987)*CA(-0.0005, -78.282, -0.0005), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh52 = New'SpecialMesh'{Parent = Part816, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part817 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(-99.173, 5.1725, -218.808)*CA(-179.997, -86.718, -179.9975), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh53 = New'SpecialMesh'{Parent = Part817, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part818 = New'Part'{Parent = Model2, Size = V3(41, 0.8005, 1), CFrame = CN(-155.3045, -0.709, -178.26)*CA(90.0005, -20.4745, -90), BrickColor = BN("Medium blue")}
        Part819 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 8), CFrame = CN(-160.8775, 8.2195, -178.26)*CA(90.0005, -20.4745, -90), BrickColor = BN("Bright blue")}
        Part820 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 5), CFrame = CN(-158.2055, -0.1905, -178.26)*CA(90.0005, 69.525, -90), BrickColor = BN("Bright blue")}
        Part821 = New'Part'{Parent = Model2, Size = V3(41, 0.8005, 1), CFrame = CN(-151.3295, 14.998, -178.26)*CA(90.0005, -65.474, -90), BrickColor = BN("Medium blue")}
        Part822 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 4), CFrame = CN(-161.5255, 2.5105, -178.26)*CA(90.0005, 24.5255, -90), BrickColor = BN("Bright blue")}
        Part823 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.4235, 39.8265, 19.538)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh1 = New'CylinderMesh'{Parent = Part823, Scale = V3(1, 1, 0.3005)}
        Part824 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.4235, 39.8265, 18.538)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh2 = New'CylinderMesh'{Parent = Part824, Scale = V3(1, 1, 0.3005)}
        Part825 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(192.9235, 38.6265, 19.538)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh54 = New'SpecialMesh'{Parent = Part825, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part826 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.2435, 39.3665, 24.938)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part827 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.2435, 38.5665, 23.438)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh55 = New'SpecialMesh'{Parent = Part827, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part828 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.2435, 38.5665, 24.438)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh56 = New'SpecialMesh'{Parent = Part828, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part829 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.2435, 39.7665, 23.438)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh57 = New'SpecialMesh'{Parent = Part829, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part830 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.7435, 39.7665, 25.438)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh3 = New'CylinderMesh'{Parent = Part830, Scale = V3(1, 1, 0.3005)}
        Part831 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.7435, 39.7665, 25.438)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh4 = New'CylinderMesh'{Parent = Part831, Scale = V3(1, 1, 0.3005)}
        Part832 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.7435, 39.7665, 24.438)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh5 = New'CylinderMesh'{Parent = Part832, Scale = V3(1, 1, 0.3005)}
        Part833 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.7435, 39.7665, 19.438)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh6 = New'CylinderMesh'{Parent = Part833, Scale = V3(1, 1, 0.3005)}
        Part834 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.7435, 39.7665, 19.438)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh7 = New'CylinderMesh'{Parent = Part834, Scale = V3(1, 1, 0.3005)}
        Part835 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.7435, 39.7665, 18.438)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh8 = New'CylinderMesh'{Parent = Part835, Scale = V3(1, 1, 0.3005)}
        Part836 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.2435, 38.5665, 20.438)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh58 = New'SpecialMesh'{Parent = Part836, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part837 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.2435, 38.5665, 19.438)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh59 = New'SpecialMesh'{Parent = Part837, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part838 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.2435, 39.7665, 20.438)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh60 = New'SpecialMesh'{Parent = Part838, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part839 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.2435, 38.5665, 23.438)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh61 = New'SpecialMesh'{Parent = Part839, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part840 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.2435, 38.5665, 24.438)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh62 = New'SpecialMesh'{Parent = Part840, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part841 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.2435, 39.7665, 23.438)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh63 = New'SpecialMesh'{Parent = Part841, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part842 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.2435, 38.5665, 20.438)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh64 = New'SpecialMesh'{Parent = Part842, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part843 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.2435, 38.5665, 19.438)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh65 = New'SpecialMesh'{Parent = Part843, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part844 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.2435, 39.7665, 20.438)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh66 = New'SpecialMesh'{Parent = Part844, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part845 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.2435, 39.7665, 22.438)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh67 = New'SpecialMesh'{Parent = Part845, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part846 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.7435, 40.9665, 22.438)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh9 = New'CylinderMesh'{Parent = Part846, Scale = V3(1, 1, 0.3005)}
        Part847 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.7435, 40.9665, 22.438)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh10 = New'CylinderMesh'{Parent = Part847, Scale = V3(1, 1, 0.3005)}
        Part848 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.2435, 40.5665, 22.938)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part849 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.2435, 39.7665, 22.438)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh68 = New'SpecialMesh'{Parent = Part849, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part850 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.7435, 39.7665, 24.438)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh11 = New'CylinderMesh'{Parent = Part850, Scale = V3(1, 1, 0.3005)}
        Part851 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(184.6435, 38.9165, 21.938)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh69 = New'SpecialMesh'{Parent = Part851, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part852 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(175.8435, 38.9165, 21.938)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh70 = New'SpecialMesh'{Parent = Part852, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part853 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.7435, 40.9665, 21.438)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh12 = New'CylinderMesh'{Parent = Part853, Scale = V3(1, 1, 0.3005)}
        Part854 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.2435, 40.5665, 20.938)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part855 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.7435, 40.9665, 21.438)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh13 = New'CylinderMesh'{Parent = Part855, Scale = V3(1, 1, 0.3005)}
        Part856 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.2435, 39.7665, 21.438)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh71 = New'SpecialMesh'{Parent = Part856, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part857 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.2435, 39.7665, 21.438)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh72 = New'SpecialMesh'{Parent = Part857, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part858 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.2435, 39.3665, 18.938)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part859 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.7435, 39.7665, 18.438)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh14 = New'CylinderMesh'{Parent = Part859, Scale = V3(1, 1, 0.3005)}
        Part860 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.2235, 39.4265, 25.338)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part861 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.2235, 38.6265, 23.838)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh73 = New'SpecialMesh'{Parent = Part861, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part862 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.2235, 38.6265, 24.838)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh74 = New'SpecialMesh'{Parent = Part862, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part863 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.2235, 39.8265, 23.838)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh75 = New'SpecialMesh'{Parent = Part863, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part864 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.7235, 39.8265, 25.838)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh15 = New'CylinderMesh'{Parent = Part864, Scale = V3(1, 1, 0.3005)}
        Part865 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.7235, 39.8265, 25.838)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh16 = New'CylinderMesh'{Parent = Part865, Scale = V3(1, 1, 0.3005)}
        Part866 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.7235, 39.8265, 24.838)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh17 = New'CylinderMesh'{Parent = Part866, Scale = V3(1, 1, 0.3005)}
        Part867 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.7235, 39.8265, 19.838)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh18 = New'CylinderMesh'{Parent = Part867, Scale = V3(1, 1, 0.3005)}
        Part868 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.7235, 39.8265, 19.838)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh19 = New'CylinderMesh'{Parent = Part868, Scale = V3(1, 1, 0.3005)}
        Part869 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.7235, 39.8265, 18.838)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh20 = New'CylinderMesh'{Parent = Part869, Scale = V3(1, 1, 0.3005)}
        Part870 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.2235, 38.6265, 20.838)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh76 = New'SpecialMesh'{Parent = Part870, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part871 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.2235, 38.6265, 19.838)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh77 = New'SpecialMesh'{Parent = Part871, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part872 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.2235, 39.8265, 20.838)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh78 = New'SpecialMesh'{Parent = Part872, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part873 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.2235, 38.6265, 23.838)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh79 = New'SpecialMesh'{Parent = Part873, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part874 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.2235, 38.6265, 24.838)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh80 = New'SpecialMesh'{Parent = Part874, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part875 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.2235, 39.8265, 23.838)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh81 = New'SpecialMesh'{Parent = Part875, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part876 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.2235, 38.6265, 20.838)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh82 = New'SpecialMesh'{Parent = Part876, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part877 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.2235, 38.6265, 19.838)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh83 = New'SpecialMesh'{Parent = Part877, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part878 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.2235, 39.8265, 20.838)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh84 = New'SpecialMesh'{Parent = Part878, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part879 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.2235, 39.8265, 22.838)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh85 = New'SpecialMesh'{Parent = Part879, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part880 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.7235, 41.0265, 22.838)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh21 = New'CylinderMesh'{Parent = Part880, Scale = V3(1, 1, 0.3005)}
        Part881 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.7235, 41.0265, 22.838)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh22 = New'CylinderMesh'{Parent = Part881, Scale = V3(1, 1, 0.3005)}
        Part882 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.2235, 40.6265, 23.338)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part883 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.2235, 39.8265, 22.838)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh86 = New'SpecialMesh'{Parent = Part883, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part884 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.7235, 39.8265, 24.838)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh23 = New'CylinderMesh'{Parent = Part884, Scale = V3(1, 1, 0.3005)}
        Part885 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(166.6235, 38.9765, 22.338)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh87 = New'SpecialMesh'{Parent = Part885, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part886 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(157.8235, 38.9765, 22.338)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh88 = New'SpecialMesh'{Parent = Part886, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part887 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.7235, 41.0265, 21.838)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh24 = New'CylinderMesh'{Parent = Part887, Scale = V3(1, 1, 0.3005)}
        Part888 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.2235, 40.6265, 21.338)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part889 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.7235, 41.0265, 21.838)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh25 = New'CylinderMesh'{Parent = Part889, Scale = V3(1, 1, 0.3005)}
        Part890 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.2235, 39.8265, 21.838)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh89 = New'SpecialMesh'{Parent = Part890, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part891 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.2235, 39.8265, 21.838)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh90 = New'SpecialMesh'{Parent = Part891, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part892 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.2235, 39.4265, 19.338)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part893 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.7235, 39.8265, 18.838)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh26 = New'CylinderMesh'{Parent = Part893, Scale = V3(1, 1, 0.3005)}
        Part894 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(145.5435, 39.3665, 25.238)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part895 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.5435, 38.5665, 23.738)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh91 = New'SpecialMesh'{Parent = Part895, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part896 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.5435, 38.5665, 24.738)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh92 = New'SpecialMesh'{Parent = Part896, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part897 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.5435, 39.7665, 23.738)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh93 = New'SpecialMesh'{Parent = Part897, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part898 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.0435, 39.7665, 25.738)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh27 = New'CylinderMesh'{Parent = Part898, Scale = V3(1, 1, 0.3005)}
        Part899 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.0435, 39.7665, 25.738)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh28 = New'CylinderMesh'{Parent = Part899, Scale = V3(1, 1, 0.3005)}
        Part900 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.0435, 39.7665, 24.738)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh29 = New'CylinderMesh'{Parent = Part900, Scale = V3(1, 1, 0.3005)}
        Part901 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.0435, 39.7665, 19.738)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh30 = New'CylinderMesh'{Parent = Part901, Scale = V3(1, 1, 0.3005)}
        Part902 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.0435, 39.7665, 19.738)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh31 = New'CylinderMesh'{Parent = Part902, Scale = V3(1, 1, 0.3005)}
        Part903 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.0435, 39.7665, 18.738)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh32 = New'CylinderMesh'{Parent = Part903, Scale = V3(1, 1, 0.3005)}
        Part904 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.5435, 38.5665, 20.738)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh94 = New'SpecialMesh'{Parent = Part904, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part905 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.5435, 38.5665, 19.738)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh95 = New'SpecialMesh'{Parent = Part905, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part906 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.5435, 39.7665, 20.738)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh96 = New'SpecialMesh'{Parent = Part906, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part907 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.5435, 38.5665, 23.738)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh97 = New'SpecialMesh'{Parent = Part907, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part908 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.5435, 38.5665, 24.738)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh98 = New'SpecialMesh'{Parent = Part908, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part909 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.5435, 39.7665, 23.738)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh99 = New'SpecialMesh'{Parent = Part909, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part910 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.5435, 38.5665, 20.738)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh100 = New'SpecialMesh'{Parent = Part910, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part911 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.5435, 38.5665, 19.738)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh101 = New'SpecialMesh'{Parent = Part911, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part912 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.5435, 39.7665, 20.738)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh102 = New'SpecialMesh'{Parent = Part912, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part913 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.5435, 39.7665, 22.738)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh103 = New'SpecialMesh'{Parent = Part913, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part914 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.0435, 40.9665, 22.738)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh33 = New'CylinderMesh'{Parent = Part914, Scale = V3(1, 1, 0.3005)}
        Part915 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.0435, 40.9665, 22.738)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh34 = New'CylinderMesh'{Parent = Part915, Scale = V3(1, 1, 0.3005)}
        Part916 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(145.5435, 40.5665, 23.238)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part917 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.5435, 39.7665, 22.738)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh104 = New'SpecialMesh'{Parent = Part917, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part918 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.0435, 39.7665, 24.738)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh35 = New'CylinderMesh'{Parent = Part918, Scale = V3(1, 1, 0.3005)}
        Part919 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(149.9435, 38.9165, 22.238)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh105 = New'SpecialMesh'{Parent = Part919, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part920 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(141.1435, 38.9165, 22.238)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh106 = New'SpecialMesh'{Parent = Part920, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part921 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.0435, 40.9665, 21.738)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh36 = New'CylinderMesh'{Parent = Part921, Scale = V3(1, 1, 0.3005)}
        Part922 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(145.5435, 40.5665, 21.238)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part923 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.0435, 40.9665, 21.738)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh37 = New'CylinderMesh'{Parent = Part923, Scale = V3(1, 1, 0.3005)}
        Part924 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.5435, 39.7665, 21.738)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh107 = New'SpecialMesh'{Parent = Part924, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part925 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.5435, 39.7665, 21.738)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh108 = New'SpecialMesh'{Parent = Part925, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part926 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(145.5435, 39.3665, 19.238)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part927 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.0435, 39.7665, 18.738)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh38 = New'CylinderMesh'{Parent = Part927, Scale = V3(1, 1, 0.3005)}
        Part928 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.0235, 39.4265, 4.168)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part929 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.0235, 38.6265, 2.668)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh109 = New'SpecialMesh'{Parent = Part929, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part930 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.0235, 38.6265, 3.668)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh110 = New'SpecialMesh'{Parent = Part930, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part931 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.0235, 39.8265, 2.668)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh111 = New'SpecialMesh'{Parent = Part931, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part932 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.5235, 39.8265, 4.668)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh39 = New'CylinderMesh'{Parent = Part932, Scale = V3(1, 1, 0.3005)}
        Part933 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.5235, 39.8265, 4.668)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh40 = New'CylinderMesh'{Parent = Part933, Scale = V3(1, 1, 0.3005)}
        Part934 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.5235, 39.8265, 3.668)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh41 = New'CylinderMesh'{Parent = Part934, Scale = V3(1, 1, 0.3005)}
        Part935 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.5235, 39.8265, -1.332)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh42 = New'CylinderMesh'{Parent = Part935, Scale = V3(1, 1, 0.3005)}
        Part936 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.5235, 39.8265, -1.332)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh43 = New'CylinderMesh'{Parent = Part936, Scale = V3(1, 1, 0.3005)}
        Part937 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.5235, 39.8265, -2.332)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh44 = New'CylinderMesh'{Parent = Part937, Scale = V3(1, 1, 0.3005)}
        Part938 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.0235, 38.6265, -0.332)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh112 = New'SpecialMesh'{Parent = Part938, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part939 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.0235, 38.6265, -1.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh113 = New'SpecialMesh'{Parent = Part939, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part940 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.0235, 39.8265, -0.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh114 = New'SpecialMesh'{Parent = Part940, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part941 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.0235, 38.6265, 2.668)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh115 = New'SpecialMesh'{Parent = Part941, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part942 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.0235, 38.6265, 3.668)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh116 = New'SpecialMesh'{Parent = Part942, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part943 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.0235, 39.8265, 2.668)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh117 = New'SpecialMesh'{Parent = Part943, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part944 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.0235, 38.6265, -0.332)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh118 = New'SpecialMesh'{Parent = Part944, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part945 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.0235, 38.6265, -1.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh119 = New'SpecialMesh'{Parent = Part945, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part946 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.0235, 39.8265, -0.332)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh120 = New'SpecialMesh'{Parent = Part946, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part947 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.0235, 39.8265, 1.668)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh121 = New'SpecialMesh'{Parent = Part947, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part948 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.5235, 41.0265, 1.668)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh45 = New'CylinderMesh'{Parent = Part948, Scale = V3(1, 1, 0.3005)}
        Part949 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.5235, 41.0265, 1.668)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh46 = New'CylinderMesh'{Parent = Part949, Scale = V3(1, 1, 0.3005)}
        Part950 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.0235, 40.6265, 2.168)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part951 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.0235, 39.8265, 1.668)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh122 = New'SpecialMesh'{Parent = Part951, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part952 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.5235, 39.8265, 3.668)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh47 = New'CylinderMesh'{Parent = Part952, Scale = V3(1, 1, 0.3005)}
        Part953 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(201.4235, 38.9765, 1.168)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh123 = New'SpecialMesh'{Parent = Part953, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part954 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(192.6235, 38.9765, 1.168)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh124 = New'SpecialMesh'{Parent = Part954, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part955 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.5235, 41.0265, 0.668)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh48 = New'CylinderMesh'{Parent = Part955, Scale = V3(1, 1, 0.3005)}
        Part956 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.0235, 40.6265, 0.168)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part957 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.5235, 41.0265, 0.668)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh49 = New'CylinderMesh'{Parent = Part957, Scale = V3(1, 1, 0.3005)}
        Part958 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.0235, 39.8265, 0.668)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh125 = New'SpecialMesh'{Parent = Part958, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part959 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.0235, 39.8265, 0.668)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh126 = New'SpecialMesh'{Parent = Part959, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part960 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.0235, 39.4265, -1.832)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part961 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.5235, 39.8265, -2.332)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh50 = New'CylinderMesh'{Parent = Part961, Scale = V3(1, 1, 0.3005)}
        Part962 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.3435, 39.3665, 4.068)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part963 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.3435, 38.5665, 2.568)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh127 = New'SpecialMesh'{Parent = Part963, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part964 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.3435, 38.5665, 3.568)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh128 = New'SpecialMesh'{Parent = Part964, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part965 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.3435, 39.7665, 2.568)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh129 = New'SpecialMesh'{Parent = Part965, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part966 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.8435, 39.7665, 4.568)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh51 = New'CylinderMesh'{Parent = Part966, Scale = V3(1, 1, 0.3005)}
        Part967 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.8435, 39.7665, 4.568)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh52 = New'CylinderMesh'{Parent = Part967, Scale = V3(1, 1, 0.3005)}
        Part968 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.8435, 39.7665, 3.568)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh53 = New'CylinderMesh'{Parent = Part968, Scale = V3(1, 1, 0.3005)}
        Part969 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.8435, 39.7665, -1.432)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh54 = New'CylinderMesh'{Parent = Part969, Scale = V3(1, 1, 0.3005)}
        Part970 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.8435, 39.7665, -1.432)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh55 = New'CylinderMesh'{Parent = Part970, Scale = V3(1, 1, 0.3005)}
        Part971 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.8435, 39.7665, -2.432)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh56 = New'CylinderMesh'{Parent = Part971, Scale = V3(1, 1, 0.3005)}
        Part972 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.3435, 38.5665, -0.432)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh130 = New'SpecialMesh'{Parent = Part972, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part973 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.3435, 38.5665, -1.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh131 = New'SpecialMesh'{Parent = Part973, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part974 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.3435, 39.7665, -0.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh132 = New'SpecialMesh'{Parent = Part974, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part975 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.3435, 38.5665, 2.568)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh133 = New'SpecialMesh'{Parent = Part975, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part976 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.3435, 38.5665, 3.568)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh134 = New'SpecialMesh'{Parent = Part976, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part977 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.3435, 39.7665, 2.568)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh135 = New'SpecialMesh'{Parent = Part977, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part978 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.3435, 38.5665, -0.432)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh136 = New'SpecialMesh'{Parent = Part978, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part979 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.3435, 38.5665, -1.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh137 = New'SpecialMesh'{Parent = Part979, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part980 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.3435, 39.7665, -0.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh138 = New'SpecialMesh'{Parent = Part980, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part981 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.3435, 39.7665, 1.568)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh139 = New'SpecialMesh'{Parent = Part981, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part982 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.8435, 40.9665, 1.568)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh57 = New'CylinderMesh'{Parent = Part982, Scale = V3(1, 1, 0.3005)}
        Part983 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.8435, 40.9665, 1.568)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh58 = New'CylinderMesh'{Parent = Part983, Scale = V3(1, 1, 0.3005)}
        Part984 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.3435, 40.5665, 2.068)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part985 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.3435, 39.7665, 1.568)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh140 = New'SpecialMesh'{Parent = Part985, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part986 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.8435, 39.7665, 3.568)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh59 = New'CylinderMesh'{Parent = Part986, Scale = V3(1, 1, 0.3005)}
        Part987 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(184.7435, 38.9165, 1.068)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh141 = New'SpecialMesh'{Parent = Part987, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part988 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(175.9435, 38.9165, 1.068)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh142 = New'SpecialMesh'{Parent = Part988, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part989 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.8435, 40.9665, 0.568)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh60 = New'CylinderMesh'{Parent = Part989, Scale = V3(1, 1, 0.3005)}
        Part990 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.3435, 40.5665, 0.068)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part991 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(175.8435, 40.9665, 0.568)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh61 = New'CylinderMesh'{Parent = Part991, Scale = V3(1, 1, 0.3005)}
        Part992 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.3435, 39.7665, 0.568)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh143 = New'SpecialMesh'{Parent = Part992, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part993 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.3435, 39.7665, 0.568)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh144 = New'SpecialMesh'{Parent = Part993, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part994 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.3435, 39.3665, -1.932)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part995 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(184.8435, 39.7665, -2.432)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh62 = New'CylinderMesh'{Parent = Part995, Scale = V3(1, 1, 0.3005)}
        Part996 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.3235, 39.4265, 4.468)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part997 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.3235, 38.6265, 2.968)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh145 = New'SpecialMesh'{Parent = Part997, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part998 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.3235, 38.6265, 3.968)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh146 = New'SpecialMesh'{Parent = Part998, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part999 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.3235, 39.8265, 2.968)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh147 = New'SpecialMesh'{Parent = Part999, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1000 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.8235, 39.8265, 4.968)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh63 = New'CylinderMesh'{Parent = Part1000, Scale = V3(1, 1, 0.3005)}
        Part1001 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.8235, 39.8265, 4.968)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh64 = New'CylinderMesh'{Parent = Part1001, Scale = V3(1, 1, 0.3005)}
        Part1002 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.8235, 39.8265, 3.968)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh65 = New'CylinderMesh'{Parent = Part1002, Scale = V3(1, 1, 0.3005)}
        Part1003 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.8235, 39.8265, -1.032)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh66 = New'CylinderMesh'{Parent = Part1003, Scale = V3(1, 1, 0.3005)}
        Part1004 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.8235, 39.8265, -1.032)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh67 = New'CylinderMesh'{Parent = Part1004, Scale = V3(1, 1, 0.3005)}
        Part1005 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.8235, 39.8265, -2.032)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh68 = New'CylinderMesh'{Parent = Part1005, Scale = V3(1, 1, 0.3005)}
        Part1006 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.3235, 38.6265, -0.032)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh148 = New'SpecialMesh'{Parent = Part1006, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1007 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.3235, 38.6265, -1.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh149 = New'SpecialMesh'{Parent = Part1007, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1008 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.3235, 39.8265, -0.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh150 = New'SpecialMesh'{Parent = Part1008, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1009 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.3235, 38.6265, 2.968)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh151 = New'SpecialMesh'{Parent = Part1009, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1010 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.3235, 38.6265, 3.968)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh152 = New'SpecialMesh'{Parent = Part1010, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1011 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.3235, 39.8265, 2.968)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh153 = New'SpecialMesh'{Parent = Part1011, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1012 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.3235, 38.6265, -0.032)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh154 = New'SpecialMesh'{Parent = Part1012, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1013 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.3235, 38.6265, -1.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh155 = New'SpecialMesh'{Parent = Part1013, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1014 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.3235, 39.8265, -0.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh156 = New'SpecialMesh'{Parent = Part1014, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1015 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.3235, 39.8265, 1.968)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh157 = New'SpecialMesh'{Parent = Part1015, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1016 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.8235, 41.0265, 1.968)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh69 = New'CylinderMesh'{Parent = Part1016, Scale = V3(1, 1, 0.3005)}
        Part1017 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.8235, 41.0265, 1.968)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh70 = New'CylinderMesh'{Parent = Part1017, Scale = V3(1, 1, 0.3005)}
        Part1018 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.3235, 40.6265, 2.468)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1019 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.3235, 39.8265, 1.968)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh158 = New'SpecialMesh'{Parent = Part1019, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1020 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.8235, 39.8265, 3.968)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh71 = New'CylinderMesh'{Parent = Part1020, Scale = V3(1, 1, 0.3005)}
        Part1021 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(166.7235, 38.9765, 1.468)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh159 = New'SpecialMesh'{Parent = Part1021, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1022 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(157.9235, 38.9765, 1.468)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh160 = New'SpecialMesh'{Parent = Part1022, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1023 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.8235, 41.0265, 0.968)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh72 = New'CylinderMesh'{Parent = Part1023, Scale = V3(1, 1, 0.3005)}
        Part1024 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.3235, 40.6265, 0.468)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1025 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(157.8235, 41.0265, 0.968)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh73 = New'CylinderMesh'{Parent = Part1025, Scale = V3(1, 1, 0.3005)}
        Part1026 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.3235, 39.8265, 0.968)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh161 = New'SpecialMesh'{Parent = Part1026, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1027 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.3235, 39.8265, 0.968)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh162 = New'SpecialMesh'{Parent = Part1027, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1028 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.3235, 39.4265, -1.532)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1029 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(166.8235, 39.8265, -2.032)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh74 = New'CylinderMesh'{Parent = Part1029, Scale = V3(1, 1, 0.3005)}
        Part1030 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(145.6435, 39.3665, 4.368)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1031 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.6435, 38.5665, 2.868)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh163 = New'SpecialMesh'{Parent = Part1031, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1032 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.6435, 38.5665, 3.868)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh164 = New'SpecialMesh'{Parent = Part1032, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1033 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.6435, 39.7665, 2.868)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh165 = New'SpecialMesh'{Parent = Part1033, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1034 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.1435, 39.7665, 4.868)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh75 = New'CylinderMesh'{Parent = Part1034, Scale = V3(1, 1, 0.3005)}
        Part1035 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.1435, 39.7665, 4.868)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh76 = New'CylinderMesh'{Parent = Part1035, Scale = V3(1, 1, 0.3005)}
        Part1036 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.1435, 39.7665, 3.868)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh77 = New'CylinderMesh'{Parent = Part1036, Scale = V3(1, 1, 0.3005)}
        Part1037 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.1435, 39.7665, -1.132)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh78 = New'CylinderMesh'{Parent = Part1037, Scale = V3(1, 1, 0.3005)}
        Part1038 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.1435, 39.7665, -1.132)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh79 = New'CylinderMesh'{Parent = Part1038, Scale = V3(1, 1, 0.3005)}
        Part1039 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.1435, 39.7665, -2.132)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh80 = New'CylinderMesh'{Parent = Part1039, Scale = V3(1, 1, 0.3005)}
        Part1040 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.6435, 38.5665, -0.132)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh166 = New'SpecialMesh'{Parent = Part1040, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1041 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.6435, 38.5665, -1.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh167 = New'SpecialMesh'{Parent = Part1041, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1042 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.6435, 39.7665, -0.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh168 = New'SpecialMesh'{Parent = Part1042, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1043 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.6435, 38.5665, 2.868)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh169 = New'SpecialMesh'{Parent = Part1043, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1044 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.6435, 38.5665, 3.868)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh170 = New'SpecialMesh'{Parent = Part1044, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1045 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.6435, 39.7665, 2.868)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh171 = New'SpecialMesh'{Parent = Part1045, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1046 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.6435, 38.5665, -0.132)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh172 = New'SpecialMesh'{Parent = Part1046, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1047 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.6435, 38.5665, -1.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh173 = New'SpecialMesh'{Parent = Part1047, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1048 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.6435, 39.7665, -0.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh174 = New'SpecialMesh'{Parent = Part1048, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1049 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.6435, 39.7665, 1.868)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh175 = New'SpecialMesh'{Parent = Part1049, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1050 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.1435, 40.9665, 1.868)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh81 = New'CylinderMesh'{Parent = Part1050, Scale = V3(1, 1, 0.3005)}
        Part1051 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.1435, 40.9665, 1.868)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh82 = New'CylinderMesh'{Parent = Part1051, Scale = V3(1, 1, 0.3005)}
        Part1052 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(145.6435, 40.5665, 2.368)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1053 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.6435, 39.7665, 1.868)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh176 = New'SpecialMesh'{Parent = Part1053, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1054 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.1435, 39.7665, 3.868)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh83 = New'CylinderMesh'{Parent = Part1054, Scale = V3(1, 1, 0.3005)}
        Part1055 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(150.0435, 38.9165, 1.368)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh177 = New'SpecialMesh'{Parent = Part1055, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1056 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(141.2435, 38.9165, 1.368)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh178 = New'SpecialMesh'{Parent = Part1056, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1057 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.1435, 40.9665, 0.868)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh84 = New'CylinderMesh'{Parent = Part1057, Scale = V3(1, 1, 0.3005)}
        Part1058 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(145.6435, 40.5665, 0.368)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1059 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.1435, 40.9665, 0.868)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh85 = New'CylinderMesh'{Parent = Part1059, Scale = V3(1, 1, 0.3005)}
        Part1060 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(149.6435, 39.7665, 0.868)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh179 = New'SpecialMesh'{Parent = Part1060, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1061 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(141.6435, 39.7665, 0.868)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh180 = New'SpecialMesh'{Parent = Part1061, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1062 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(145.6435, 39.3665, -1.632)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1063 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.1435, 39.7665, -2.132)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh86 = New'CylinderMesh'{Parent = Part1063, Scale = V3(1, 1, 0.3005)}
        Part1064 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.4435, 39.7665, 42.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh87 = New'CylinderMesh'{Parent = Part1064, Scale = V3(1, 1, 0.3005)}
        Part1065 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.4435, 39.7665, 41.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh88 = New'CylinderMesh'{Parent = Part1065, Scale = V3(1, 1, 0.3005)}
        Part1066 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.9435, 39.7665, 43.658)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh181 = New'SpecialMesh'{Parent = Part1066, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1067 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.4435, 40.9665, 45.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh89 = New'CylinderMesh'{Parent = Part1067, Scale = V3(1, 1, 0.3005)}
        Part1068 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.4435, 40.9665, 44.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh90 = New'CylinderMesh'{Parent = Part1068, Scale = V3(1, 1, 0.3005)}
        Part1069 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.4235, 41.0265, 45.058)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh91 = New'CylinderMesh'{Parent = Part1069, Scale = V3(1, 1, 0.3005)}
        Part1070 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.4235, 39.8265, 42.058)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh92 = New'CylinderMesh'{Parent = Part1070, Scale = V3(1, 1, 0.3005)}
        Part1071 = New'Part'{Parent = Model2, Size = V3(21, 0.8005, 1), CFrame = CN(105.3305, 38.386, -34.718)*CA(0.0005, 0.0005, -0), BrickColor = BN("Brown")}
        Part1072 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(200.044, 43.544, -40.721)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("New Yeller")}
        Part1073 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(199.9935, 43.5445, -94.491)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("New Yeller")}
        Part1074 = New'Part'{Parent = Model2, Size = V3(8.29, 0.2005, 4.87), CFrame = CN(212.8685, 38.0665, -112.842)*CA(0.0005, 0.0005, -0), BrickColor = BN("Cool yellow"), Material = 864}
        Part1075 = New'Part'{Parent = Model2, Size = V3(0.2005, 8.8305, 4.8705), CFrame = CN(208.6115, 42.6275, -112.793)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown")}
        Part1076 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(208.6115, 42.6565, -101.916)*CA(0.0005, 0.0005, -0), BrickColor = BN("New Yeller")}
        Part1077 = New'Part'{Parent = Model2, Size = V3(0.2005, 2.53, 2.38), CFrame = CN(208.6115, 48.4315, -112.861)*CA(0.0005, 0.0005, -0), BrickColor = BN("Really black")}
        Part1078 = New'Part'{Parent = Model2, Size = V3(8.29, 0.2005, 4.87), CFrame = CN(212.919, 38.0665, -59.072)*CA(0.0005, 0.0005, -0), BrickColor = BN("Cool yellow"), Material = 864}
        Part1079 = New'Part'{Parent = Model2, Size = V3(1, 4.8005, 1), CFrame = CN(107.3475, 40.367, -30.367)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1080 = New'Part'{Parent = Model2, Size = V3(1, 4.8005, 1), CFrame = CN(103.3475, 40.367, -30.367)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1081 = New'Part'{Parent = Model2, Size = V3(1, 4.8005, 1), CFrame = CN(105.3475, 40.367, -30.367)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1082 = New'Part'{Parent = Model2, Size = V3(1, 4.8005, 1), CFrame = CN(109.3475, 40.367, -30.367)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1083 = New'Part'{Parent = Model2, Size = V3(1, 4.8005, 1), CFrame = CN(101.3475, 40.367, -30.367)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1084 = New'Part'{Parent = Model2, Size = V3(1, 4.8005, 1), CFrame = CN(111.3475, 40.367, -30.367)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1085 = New'Part'{Parent = Model2, Size = V3(1, 4.8005, 1), CFrame = CN(97.3475, 40.367, -30.367)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1086 = New'Part'{Parent = Model2, Size = V3(1, 4.8005, 1), CFrame = CN(95.3475, 40.367, -30.367)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1087 = New'Part'{Parent = Model2, Size = V3(1, 20.4005, 1), CFrame = CN(105.4475, 43.267, -30.367)*CA(0.0005, 0.0005, -90), BrickColor = BN("Brown")}
        Part1088 = New'Part'{Parent = Model2, Size = V3(1, 4.8005, 1), CFrame = CN(113.3475, 40.367, -30.367)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1089 = New'Part'{Parent = Model2, Size = V3(1, 4.8005, 1), CFrame = CN(115.3475, 40.367, -30.367)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1090 = New'Part'{Parent = Model2, Size = V3(1, 4.8005, 1), CFrame = CN(99.3475, 40.367, -30.367)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1091 = New'Part'{Parent = Model2, Size = V3(7, 0.8005, 1), CFrame = CN(95.7975, 41.005, -28.055)*CA(-171.2665, -87.8445, 144.2075), BrickColor = BN("Brown")}
        Part1092 = New'Part'{Parent = Model2, Size = V3(7, 0.8005, 1), CFrame = CN(95.4915, 41.059, -32.484)*CA(-47.3275, -90, 0), BrickColor = BN("Brown")}
        Part1093 = New'Part'{Parent = Model2, Size = V3(7, 0.8005, 1), CFrame = CN(115.1655, 40.949, -27.871)*CA(48.2675, -90, 0), BrickColor = BN("Brown")}
        Part1094 = New'Part'{Parent = Model2, Size = V3(7, 0.8005, 1), CFrame = CN(115.2865, 41.139, -32.413)*CA(89.9905, -89.774, 134.2545), BrickColor = BN("Brown")}
        Part1095 = New'Part'{Parent = Model2, Size = V3(21, 0.8005, 1), CFrame = CN(105.7675, 38.367, -25.853)*CA(0.0005, 0.0005, -0), BrickColor = BN("Brown")}
        Part1096 = New'Part'{Parent = Model2, Size = V3(10, 0.8005, 1), CFrame = CN(115.6245, 38.367, -30.353)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1097 = New'Part'{Parent = Model2, Size = V3(10, 0.8005, 1), CFrame = CN(95.3285, 38.52, -30.421)*CA(0.0005, -90, 0), BrickColor = BN("Brown")}
        Part1098 = New'Part'{Parent = Model2, Size = V3(17.6405, 11.9505, 34.94), CFrame = CN(199.7415, 43.9415, -58.291)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red"), Material = 848}
        Part1099 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(208.6615, 42.7915, -69.1555)*CA(0.0005, 0.0005, -0), BrickColor = BN("New Yeller")}
        Part1100 = New'Part'{Parent = Model2, Size = V3(0.2005, 8.8305, 4.8705), CFrame = CN(208.6615, 42.628, -59.023)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown")}
        Part1101 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(208.6615, 42.6565, -48.146)*CA(0.0005, 0.0005, -0), BrickColor = BN("New Yeller")}
        Part1102 = New'Part'{Parent = Model2, Size = V3(0.2005, 2.53, 2.38), CFrame = CN(208.6615, 48.4315, -59.091)*CA(0.0005, 0.0005, -0), BrickColor = BN("Really black")}
        Part1103 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(199.874, 44.418, -75.861)*CA(-89.9995, 0.0005, -89.9995), BrickColor = BN("New Yeller")}
        Part1104 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(190.8215, 44.9, -68.353)*CA(0.0005, 0.0005, -0), BrickColor = BN("New Yeller")}
        Part1105 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(190.8215, 44.827, -58.648)*CA(0.0005, 0.0005, -0), BrickColor = BN("New Yeller")}
        Part1106 = New'Part'{Parent = Model2, Size = V3(0.2005, 5.02, 4.8705), CFrame = CN(190.8215, 45.0125, -48.9135)*CA(0.0005, 0.0005, -0), BrickColor = BN("New Yeller")}
        Part1107 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(154.2835, 38.8665, -61.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh182 = New'SpecialMesh'{Parent = Part1107, Scale = V3(1.25, 1.25, 1.25)}
        Part1108 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(155.7835, 38.8665, -60.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1109 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(154.2835, 38.8665, -60.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part1110 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(152.7835, 38.8665, -60.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1111 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(154.7835, 38.8665, -58.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1112 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(153.7835, 38.8665, -58.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1113 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.1665, -58.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1114 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.1665, -57.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1115 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.1665, -56.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1116 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.1665, -59.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1117 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.1665, -55.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1118 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.1665, -54.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1119 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.1665, -60.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1120 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.1665, -61.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1121 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(154.4835, 38.1665, -62.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1122 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(163.4835, 38.8665, -61.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh183 = New'SpecialMesh'{Parent = Part1122, Scale = V3(1.25, 1.25, 1.25)}
        Part1123 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(164.9835, 38.8665, -60.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1124 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(163.4835, 38.8665, -60.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part1125 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(161.9835, 38.8665, -60.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1126 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(163.9835, 38.8665, -58.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1127 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(162.9835, 38.8665, -58.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1128 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -58.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1129 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -57.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1130 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -56.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1131 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -59.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1132 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -55.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1133 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -54.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1134 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -60.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1135 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -61.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1136 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(163.6835, 38.1665, -62.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1137 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(135.4835, 38.867, -61.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh184 = New'SpecialMesh'{Parent = Part1137, Scale = V3(1.25, 1.25, 1.25)}
        Part1138 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(136.9835, 38.867, -60.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1139 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(135.4835, 38.867, -60.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part1140 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(133.9835, 38.867, -60.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1141 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(135.9835, 38.867, -58.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1142 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(134.9835, 38.867, -58.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1143 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -58.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1144 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -57.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1145 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -56.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1146 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -59.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1147 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -55.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1148 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -54.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1149 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -60.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1150 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -61.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1151 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -62.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1152 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(144.6835, 38.8665, -61.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh185 = New'SpecialMesh'{Parent = Part1152, Scale = V3(1.25, 1.25, 1.25)}
        Part1153 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(146.1835, 38.8665, -60.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1154 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(144.6835, 38.8665, -60.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part1155 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(143.1835, 38.8665, -60.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1156 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(145.1835, 38.8665, -58.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1157 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(144.1835, 38.8665, -58.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1158 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -58.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1159 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.1665, -57.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1160 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.1665, -56.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1161 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -59.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1162 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.1665, -55.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1163 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.1665, -54.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1164 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -60.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1165 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -61.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1166 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -62.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        WPart61 = New'WedgePart'{Parent = Model2, Size = V3(34.91, 7.7, 17.6305), CFrame = CN(199.7465, 53.7665, -58.273)*CA(0.0005, -90, 0), BrickColor = BN("Really black"), Material = 1040}
        Part1167 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(116.0835, 38.867, -61.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh186 = New'SpecialMesh'{Parent = Part1167, Scale = V3(1.25, 1.25, 1.25)}
        Part1168 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(117.5835, 38.867, -60.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1169 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(116.0835, 38.867, -60.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part1170 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(116.5835, 38.867, -58.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1171 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(114.5835, 38.867, -60.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1172 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(115.5835, 38.867, -58.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1173 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -58.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1174 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -57.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1175 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -56.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1176 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -55.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1177 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -59.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1178 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -54.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1179 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -60.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1180 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -61.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1181 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -62.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1182 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(125.2835, 38.867, -61.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh187 = New'SpecialMesh'{Parent = Part1182, Scale = V3(1.25, 1.25, 1.25)}
        Part1183 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(126.7835, 38.867, -60.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1184 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(125.2835, 38.867, -60.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part1185 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(125.7835, 38.867, -58.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1186 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(123.7835, 38.867, -60.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1187 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(124.7835, 38.867, -58.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1188 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -58.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1189 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -57.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1190 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -56.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1191 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -55.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1192 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -59.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1193 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -54.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1194 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -60.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1195 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -61.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1196 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -62.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1197 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(97.2835, 38.867, -61.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh188 = New'SpecialMesh'{Parent = Part1197, Scale = V3(1.25, 1.25, 1.25)}
        Part1198 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(98.7835, 38.867, -60.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1199 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(97.2835, 38.867, -60.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part1200 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(97.7835, 38.867, -58.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1201 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(95.7835, 38.867, -60.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1202 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(96.7835, 38.867, -58.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1203 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -58.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1204 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -57.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1205 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -56.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1206 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -55.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1207 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -59.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1208 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -54.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1209 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -60.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1210 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -61.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1211 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -62.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1212 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(106.4835, 38.867, -61.532)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh189 = New'SpecialMesh'{Parent = Part1212, Scale = V3(1.25, 1.25, 1.25)}
        Part1213 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(107.9835, 38.867, -60.032)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1214 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(106.4835, 38.867, -60.032)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part1215 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(106.9835, 38.867, -58.032)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1216 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(104.9835, 38.867, -60.032)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1217 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(105.9835, 38.867, -58.032)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1218 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -58.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1219 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -57.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1220 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -56.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1221 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -55.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1222 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -59.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1223 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -54.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1224 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -60.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1225 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -61.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1226 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -62.732)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1227 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -77.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1228 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -75.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1229 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -76.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1230 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(135.6835, 38.167, -74.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1231 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -75.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1232 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(144.8835, 38.167, -74.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1233 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(117.5835, 38.867, -79.432)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1234 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(116.0835, 38.867, -79.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part1235 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(116.5835, 38.867, -77.432)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1236 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(114.5835, 38.867, -79.432)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1237 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(115.5835, 38.867, -77.432)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1238 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -78.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1239 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -77.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1240 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -76.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1241 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -75.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1242 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -79.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1243 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -74.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1244 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -80.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1245 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -81.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1246 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(116.2835, 38.167, -82.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1247 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(125.7835, 38.867, -77.432)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1248 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(124.7835, 38.867, -77.432)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1249 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -78.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1250 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -77.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1251 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -76.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1252 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -75.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1253 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -79.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1254 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -74.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1255 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(125.4835, 38.167, -80.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1256 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(97.2835, 38.867, -80.932)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh190 = New'SpecialMesh'{Parent = Part1256, Scale = V3(1.25, 1.25, 1.25)}
        Part1257 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(98.7835, 38.867, -79.432)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1258 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(97.2835, 38.867, -79.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part1259 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(97.7835, 38.867, -77.432)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1260 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(95.7835, 38.867, -79.432)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1261 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(96.7835, 38.867, -77.432)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1262 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -78.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1263 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -77.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1264 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -76.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1265 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -75.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1266 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -79.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1267 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -74.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1268 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -80.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1269 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -81.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1270 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(97.4835, 38.167, -82.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1271 = New'Part'{Parent = Model2, Name = "Head", Size = V3(2, 1, 1), CFrame = CN(106.4835, 38.867, -80.932)*CA(-89.9995, 0.0005, 0.0005), BrickColor = BN("Bright yellow")}
        SMesh191 = New'SpecialMesh'{Parent = Part1271, Scale = V3(1.25, 1.25, 1.25)}
        Part1272 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(107.9835, 38.867, -79.432)*CA(-89.9995, 0.0005, -179.9995), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1273 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(2, 1, 2), CFrame = CN(106.4835, 38.867, -79.432)*CA(0.0005, 0.0005, -0), BrickColor = BN("Deep blue")}
        Part1274 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(106.9835, 38.867, -77.432)*CA(90.0005, -0, -0), BrickColor = BN("Camo"), CanCollide = false}
        Part1275 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(104.9835, 38.867, -79.432)*CA(90.0005, -0, -0), BrickColor = BN("Bright yellow"), CanCollide = false}
        Part1276 = New'Part'{Parent = Model2, Name = "Right Arm", Size = V3(1, 2, 1), CFrame = CN(105.9835, 38.867, -77.432)*CA(90.0005, 90.0005, 0), BrickColor = BN("Camo")}
        Part1277 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -78.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1278 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -77.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1279 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -76.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1280 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -75.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1281 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -79.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1282 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -74.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1283 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -80.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1284 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -81.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Institutional white")}
        Part1285 = New'Part'{Parent = Model2, Size = V3(6, 0.4005, 1), CFrame = CN(106.6835, 38.167, -82.132)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright red")}
        Part1286 = New'Part'{Parent = Model2, Name = "Baseplate", Size = V3(492.03, 1.2005, 458), CFrame = CN(71.0685, 0.767, -87.632)*CA(0.0005, 0.0005, -0), BrickColor = BN("Bright blue"), Material = 1536}
        Part1287 = New'Part'{Parent = Model2, Size = V3(22.0005, 36.4005, 7.6), CFrame = CN(76.75, 19.567, 19.5895)*CA(-0, -74.9995, 179.9995), BrickColor = BN("Reddish brown")}
        Part1288 = New'Part'{Parent = Model2, Size = V3(22.0005, 36.4005, 12.4005), CFrame = CN(55.7605, 19.567, -16.0315)*CA(0.0005, -29.9995, 180), BrickColor = BN("Reddish brown")}
        Part1289 = New'Part'{Parent = Model2, Size = V3(26.6005, 36.4005, 20.2005), CFrame = CN(73.015, 19.567, -4.591)*CA(-0, -59.9995, 180), BrickColor = BN("Reddish brown")}
        Part1290 = New'Part'{Parent = Model2, Size = V3(22.0005, 0.2005, 7.6), CFrame = CN(76.7495, 37.867, 19.589)*CA(-0, -74.9995, 179.9995), BrickColor = BN("Dark green")}
        Part1291 = New'Part'{Parent = Model2, Size = V3(67.6005, 67.6005, 67.6005), CFrame = CN(279.0835, 37.3665, -90.432)*CA(-179.9995, -90, 0), BrickColor = BN("Camo")}
        Part1292 = New'Part'{Parent = Model2, Size = V3(0.9405, 5.9605, 1.0205), CFrame = CN(48.3335, 41.3405, 66.134)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark orange"), Material = 512}
        Part1293 = New'Part'{Parent = Model2, Size = V3(119.61, 0.2005, 7.97), CFrame = CN(123.5035, 37.9665, 46.786)*CA(0.0005, 90.0005, 0), BrickColor = BN("Cool yellow"), Material = 864}
        Part1294 = New'Part'{Parent = Model2, Size = V3(43.81, 0.2005, 7.97), CFrame = CN(97.594, 37.9665, 66.376)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Cool yellow"), Material = 864}
        Part1295 = New'Part'{Parent = Model2, Size = V3(2.8, 0.6, 8), CFrame = CN(74.294, 37.7665, 66.376)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1296 = New'Part'{Parent = Model2, Size = V3(2.8, 0.6, 8), CFrame = CN(63.288, 37.7665, 66.391)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1297 = New'Part'{Parent = Model2, Size = V3(2.8, 0.6, 8), CFrame = CN(55.8935, 37.7665, 66.376)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1298 = New'Part'{Parent = Model2, Size = V3(2.8, 0.6, 8), CFrame = CN(59.4935, 37.7665, 66.376)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1299 = New'Part'{Parent = Model2, Size = V3(2.8, 0.6, 8), CFrame = CN(66.8885, 37.7665, 66.391)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1300 = New'Part'{Parent = Model2, Size = V3(2.8, 0.6, 8), CFrame = CN(70.494, 37.7665, 66.376)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1301 = New'Part'{Parent = Model2, Size = V3(2.8, 0.6, 8), CFrame = CN(52.293, 37.7665, 66.376)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1302 = New'Part'{Parent = Model2, Size = V3(2.8, 0.55, 28.6005), CFrame = CN(61.5935, 37.7415, 60.976)*CA(0.0005, -90, 0), BrickColor = BN("Dark orange"), Material = 512}
        Part1303 = New'Part'{Parent = Model2, Size = V3(2.8, 0.55, 28.6005), CFrame = CN(61.5835, 37.6705, 71.784)*CA(0.0005, -90, 0), BrickColor = BN("Dark orange"), Material = 512}
        Part1304 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(53.8835, 40.971, 71.684)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1305 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(53.8835, 41.071, 60.884)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1306 = New'Part'{Parent = Model2, Size = V3(2, 0.55, 28.6005), CFrame = CN(61.5835, 44.2705, 71.784)*CA(0.0005, -90, 0), BrickColor = BN("Dark orange"), Material = 512}
        Part1307 = New'Part'{Parent = Model2, Size = V3(1.8, 0.55, 28.6005), CFrame = CN(61.5935, 44.4415, 61.076)*CA(0.0005, -90, 0), BrickColor = BN("Dark orange"), Material = 512}
        Part1308 = New'Part'{Parent = Model2, Size = V3(0.9405, 5.9305, 1.0205), CFrame = CN(48.5335, 41.326, 70.234)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark orange"), Material = 512}
        Part1309 = New'Part'{Parent = Model2, Size = V3(2, 0.2005, 8.8), CFrame = CN(48.4935, 44.437, 66.376)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1310 = New'Part'{Parent = Model2, Size = V3(0.9405, 5.9805, 1.0205), CFrame = CN(48.3935, 41.337, 62.176)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark orange"), Material = 512}
        Part1311 = New'Part'{Parent = Model2, Size = V3(1.0105, 16.3805, 1.0205), CFrame = CN(71.214, 31.305, 61.051)*CA(0.0005, 0.0005, 38.62), BrickColor = BN("Really black"), Material = 1056}
        Part1312 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(28.5105, 5.172, -53.0695)*CA(-73.7405, -89.972, -73.741), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh192 = New'SpecialMesh'{Parent = Part1312, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1313 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 9), CFrame = CN(-82.581, 9.1985, -67.66)*CA(90.0005, -63.1425, -90), BrickColor = BN("Bright blue")}
        Part1314 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(73.7835, 41.0805, 60.984)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1315 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(57.8835, 41.081, 60.984)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1316 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(49.7835, 41.081, 61.084)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1317 = New'Part'{Parent = Model2, Size = V3(2.8, 0.6, 8), CFrame = CN(48.693, 37.767, 66.376)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1318 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(73.7835, 40.9705, 71.784)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1319 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(57.8835, 40.971, 71.784)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1320 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(49.7835, 40.971, 71.884)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1321 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(27.0845, 5.172, -61.416)*CA(-73.7405, -89.972, -73.741), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh193 = New'SpecialMesh'{Parent = Part1321, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1322 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(28.6985, 4.867, -75.8195)*CA(-76.256, -89.98, -76.256), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh194 = New'SpecialMesh'{Parent = Part1322, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1323 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(32.5765, 4.867, -67.6025)*CA(-76.256, -89.98, -76.256), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh195 = New'SpecialMesh'{Parent = Part1323, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1324 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(34.6585, 4.867, -57.8135)*CA(-76.256, -89.98, -76.256), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh196 = New'SpecialMesh'{Parent = Part1324, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1325 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(34.909, 4.867, -46.1775)*CA(-76.256, -89.98, -76.256), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh197 = New'SpecialMesh'{Parent = Part1325, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1326 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(3.28, 3.28, 3.28), CFrame = CN(37.004, 9.3315, -51.804)*CA(-76.256, -89.98, -76.256), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh198 = New'SpecialMesh'{Parent = Part1326, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1327 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(37.019, 9.466, -63.462)*CA(-0, -74.9995, -0.0005), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh199 = New'SpecialMesh'{Parent = Part1327, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1328 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(34.6025, 9.993, -72.481)*CA(-0, -74.9995, -0.0005), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh200 = New'SpecialMesh'{Parent = Part1328, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1329 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(23.451, 5.172, -70.6615)*CA(-73.7405, -89.972, -73.741), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh201 = New'SpecialMesh'{Parent = Part1329, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1330 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 8), CFrame = CN(-88.0065, 3.309, -67.66)*CA(90.0005, -18.1425, -90), BrickColor = BN("Bright blue")}
        Part1331 = New'Part'{Parent = Model2, Size = V3(41, 0.8005, 1), CFrame = CN(-78.742, 10.47, -67.66)*CA(90.0005, -63.1425, -90), BrickColor = BN("Medium blue")}
        Part1332 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 4), CFrame = CN(-88.4215, -2.4215, -67.66)*CA(90.0005, 26.857, -90), BrickColor = BN("Bright blue")}
        Part1333 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(61.6835, 41.071, 60.984)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1334 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(65.6835, 41.0805, 61.084)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1335 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(69.7835, 41.0705, 60.884)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1336 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(61.6835, 40.9705, 71.784)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1337 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(65.6835, 40.9705, 71.884)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1338 = New'Part'{Parent = Model2, Size = V3(0.9405, 6.0205, 1.0205), CFrame = CN(69.7835, 40.9705, 71.684)*CA(0.0005, 0.0005, -0), BrickColor = BN("Dark orange"), Material = 512}
        Part1339 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(181.6435, 39.3665, 91.758)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1340 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(177.1435, 39.7665, 92.258)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh93 = New'CylinderMesh'{Parent = Part1340, Scale = V3(1, 1, 0.3005)}
        Part1341 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(177.1435, 39.7665, 91.258)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh94 = New'CylinderMesh'{Parent = Part1341, Scale = V3(1, 1, 0.3005)}
        Part1342 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(186.1435, 39.7665, 86.258)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh95 = New'CylinderMesh'{Parent = Part1342, Scale = V3(1, 1, 0.3005)}
        Part1343 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(177.1435, 39.7665, 86.258)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh96 = New'CylinderMesh'{Parent = Part1343, Scale = V3(1, 1, 0.3005)}
        Part1344 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(177.1435, 39.7665, 85.258)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh97 = New'CylinderMesh'{Parent = Part1344, Scale = V3(1, 1, 0.3005)}
        Part1345 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(185.6435, 38.5665, 87.258)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh202 = New'SpecialMesh'{Parent = Part1345, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1346 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(185.6435, 38.5665, 86.258)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh203 = New'SpecialMesh'{Parent = Part1346, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1347 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(185.6435, 39.7665, 87.258)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh204 = New'SpecialMesh'{Parent = Part1347, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1348 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(177.6435, 38.5665, 90.258)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh205 = New'SpecialMesh'{Parent = Part1348, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1349 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(177.6435, 38.5665, 91.258)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh206 = New'SpecialMesh'{Parent = Part1349, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1350 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(177.6435, 39.7665, 90.258)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh207 = New'SpecialMesh'{Parent = Part1350, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1351 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(177.6435, 38.5665, 87.258)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh208 = New'SpecialMesh'{Parent = Part1351, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1352 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(177.6435, 38.5665, 86.258)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh209 = New'SpecialMesh'{Parent = Part1352, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1353 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(177.6435, 39.7665, 87.258)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh210 = New'SpecialMesh'{Parent = Part1353, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1354 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(177.1435, 40.9665, 89.258)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh98 = New'CylinderMesh'{Parent = Part1354, Scale = V3(1, 1, 0.3005)}
        Part1355 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(181.6435, 40.5665, 89.758)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1356 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(177.6435, 39.7665, 89.258)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh211 = New'SpecialMesh'{Parent = Part1356, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1357 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(186.0435, 38.9165, 88.758)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh212 = New'SpecialMesh'{Parent = Part1357, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1358 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(177.2435, 38.9165, 88.758)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh213 = New'SpecialMesh'{Parent = Part1358, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1359 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(181.6435, 40.5665, 87.758)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1360 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(177.1435, 40.9665, 88.258)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh99 = New'CylinderMesh'{Parent = Part1360, Scale = V3(1, 1, 0.3005)}
        Part1361 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(185.6435, 39.7665, 88.258)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh214 = New'SpecialMesh'{Parent = Part1361, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1362 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(177.6435, 39.7665, 88.258)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh215 = New'SpecialMesh'{Parent = Part1362, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1363 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(181.6435, 39.3665, 85.758)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1364 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(186.1435, 39.7665, 85.258)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh100 = New'CylinderMesh'{Parent = Part1364, Scale = V3(1, 1, 0.3005)}
        Part1365 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(163.6235, 39.4265, 92.158)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1366 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(167.6235, 38.6265, 90.658)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh216 = New'SpecialMesh'{Parent = Part1366, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1367 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(167.6235, 38.6265, 91.658)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh217 = New'SpecialMesh'{Parent = Part1367, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1368 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(167.6235, 39.8265, 90.658)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh218 = New'SpecialMesh'{Parent = Part1368, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1369 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(168.1235, 39.8265, 92.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh101 = New'CylinderMesh'{Parent = Part1369, Scale = V3(1, 1, 0.3005)}
        Part1370 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(159.1235, 39.8265, 92.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh102 = New'CylinderMesh'{Parent = Part1370, Scale = V3(1, 1, 0.3005)}
        Part1371 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(159.1235, 39.8265, 91.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh103 = New'CylinderMesh'{Parent = Part1371, Scale = V3(1, 1, 0.3005)}
        Part1372 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(168.1235, 39.8265, 86.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh104 = New'CylinderMesh'{Parent = Part1372, Scale = V3(1, 1, 0.3005)}
        Part1373 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(159.1235, 39.8265, 86.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh105 = New'CylinderMesh'{Parent = Part1373, Scale = V3(1, 1, 0.3005)}
        Part1374 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(159.1235, 39.8265, 85.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh106 = New'CylinderMesh'{Parent = Part1374, Scale = V3(1, 1, 0.3005)}
        Part1375 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(167.6235, 38.6265, 87.658)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh219 = New'SpecialMesh'{Parent = Part1375, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1376 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(167.6235, 38.6265, 86.658)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh220 = New'SpecialMesh'{Parent = Part1376, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1377 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(167.6235, 39.8265, 87.658)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh221 = New'SpecialMesh'{Parent = Part1377, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1378 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(159.6235, 38.6265, 90.658)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh222 = New'SpecialMesh'{Parent = Part1378, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1379 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(159.6235, 38.6265, 91.658)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh223 = New'SpecialMesh'{Parent = Part1379, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1380 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(159.6235, 39.8265, 90.658)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh224 = New'SpecialMesh'{Parent = Part1380, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1381 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(159.6235, 38.6265, 87.658)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh225 = New'SpecialMesh'{Parent = Part1381, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1382 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(159.6235, 38.6265, 86.658)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh226 = New'SpecialMesh'{Parent = Part1382, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1383 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(159.6235, 39.8265, 87.658)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh227 = New'SpecialMesh'{Parent = Part1383, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1384 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(167.6235, 39.8265, 89.658)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh228 = New'SpecialMesh'{Parent = Part1384, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1385 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(159.1235, 41.0265, 89.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh107 = New'CylinderMesh'{Parent = Part1385, Scale = V3(1, 1, 0.3005)}
        Part1386 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(168.1235, 41.0265, 89.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh108 = New'CylinderMesh'{Parent = Part1386, Scale = V3(1, 1, 0.3005)}
        Part1387 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(163.6235, 40.6265, 90.158)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1388 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(159.6235, 39.8265, 89.658)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh229 = New'SpecialMesh'{Parent = Part1388, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1389 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(168.1235, 39.8265, 91.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh109 = New'CylinderMesh'{Parent = Part1389, Scale = V3(1, 1, 0.3005)}
        Part1390 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(168.0235, 38.9765, 89.158)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh230 = New'SpecialMesh'{Parent = Part1390, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1391 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(159.2235, 38.9765, 89.158)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh231 = New'SpecialMesh'{Parent = Part1391, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1392 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(168.1235, 41.0265, 88.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh110 = New'CylinderMesh'{Parent = Part1392, Scale = V3(1, 1, 0.3005)}
        Part1393 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(163.6235, 40.6265, 88.158)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1394 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(159.1235, 41.0265, 88.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh111 = New'CylinderMesh'{Parent = Part1394, Scale = V3(1, 1, 0.3005)}
        Part1395 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(167.6235, 39.8265, 88.658)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh232 = New'SpecialMesh'{Parent = Part1395, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1396 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(159.6235, 39.8265, 88.658)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh233 = New'SpecialMesh'{Parent = Part1396, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1397 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(163.6235, 39.4265, 86.158)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1398 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(168.1235, 39.8265, 85.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh112 = New'CylinderMesh'{Parent = Part1398, Scale = V3(1, 1, 0.3005)}
        Part1399 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.9435, 39.3665, 92.058)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1400 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.9435, 38.5665, 90.558)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh234 = New'SpecialMesh'{Parent = Part1400, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1401 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.9435, 38.5665, 91.558)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh235 = New'SpecialMesh'{Parent = Part1401, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1402 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.9435, 39.7665, 90.558)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh236 = New'SpecialMesh'{Parent = Part1402, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1403 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(151.4435, 39.7665, 92.558)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh113 = New'CylinderMesh'{Parent = Part1403, Scale = V3(1, 1, 0.3005)}
        Part1404 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(142.4435, 39.7665, 92.558)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh114 = New'CylinderMesh'{Parent = Part1404, Scale = V3(1, 1, 0.3005)}
        Part1405 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(142.4435, 39.7665, 91.558)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh115 = New'CylinderMesh'{Parent = Part1405, Scale = V3(1, 1, 0.3005)}
        Part1406 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(151.4435, 39.7665, 86.558)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh116 = New'CylinderMesh'{Parent = Part1406, Scale = V3(1, 1, 0.3005)}
        Part1407 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(142.4435, 39.7665, 86.558)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh117 = New'CylinderMesh'{Parent = Part1407, Scale = V3(1, 1, 0.3005)}
        Part1408 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(142.4435, 39.7665, 85.558)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh118 = New'CylinderMesh'{Parent = Part1408, Scale = V3(1, 1, 0.3005)}
        Part1409 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.9435, 38.5665, 87.558)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh237 = New'SpecialMesh'{Parent = Part1409, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1410 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.9435, 38.5665, 86.558)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh238 = New'SpecialMesh'{Parent = Part1410, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1411 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.9435, 39.7665, 87.558)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh239 = New'SpecialMesh'{Parent = Part1411, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1412 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.9435, 38.5665, 90.558)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh240 = New'SpecialMesh'{Parent = Part1412, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1413 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.9435, 38.5665, 91.558)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh241 = New'SpecialMesh'{Parent = Part1413, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1414 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.9435, 39.7665, 90.558)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh242 = New'SpecialMesh'{Parent = Part1414, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1415 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.9435, 38.5665, 87.558)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh243 = New'SpecialMesh'{Parent = Part1415, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1416 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.9435, 38.5665, 86.558)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh244 = New'SpecialMesh'{Parent = Part1416, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1417 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.9435, 39.7665, 87.558)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh245 = New'SpecialMesh'{Parent = Part1417, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1418 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.9435, 39.7665, 89.558)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh246 = New'SpecialMesh'{Parent = Part1418, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1419 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(142.4435, 40.9665, 89.558)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh119 = New'CylinderMesh'{Parent = Part1419, Scale = V3(1, 1, 0.3005)}
        Part1420 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(151.4435, 40.9665, 89.558)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh120 = New'CylinderMesh'{Parent = Part1420, Scale = V3(1, 1, 0.3005)}
        Part1421 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.9435, 40.5665, 90.058)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1422 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.9435, 39.7665, 89.558)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh247 = New'SpecialMesh'{Parent = Part1422, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1423 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(151.4435, 39.7665, 91.558)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh121 = New'CylinderMesh'{Parent = Part1423, Scale = V3(1, 1, 0.3005)}
        Part1424 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(151.3435, 38.9165, 89.058)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh248 = New'SpecialMesh'{Parent = Part1424, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1425 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(142.5435, 38.9165, 89.058)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh249 = New'SpecialMesh'{Parent = Part1425, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1426 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(151.4435, 40.9665, 88.558)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh122 = New'CylinderMesh'{Parent = Part1426, Scale = V3(1, 1, 0.3005)}
        Part1427 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.9435, 40.5665, 88.058)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1428 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(142.4435, 40.9665, 88.558)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh123 = New'CylinderMesh'{Parent = Part1428, Scale = V3(1, 1, 0.3005)}
        Part1429 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.9435, 39.7665, 88.558)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh250 = New'SpecialMesh'{Parent = Part1429, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1430 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.9435, 39.7665, 88.558)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh251 = New'SpecialMesh'{Parent = Part1430, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1431 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.9435, 39.3665, 86.058)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1432 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(151.4435, 39.7665, 85.558)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh124 = New'CylinderMesh'{Parent = Part1432, Scale = V3(1, 1, 0.3005)}
        Part1433 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(196.9235, 39.4265, 25.038)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1434 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(200.9235, 38.6265, 23.538)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh252 = New'SpecialMesh'{Parent = Part1434, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1435 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(200.9235, 38.6265, 24.538)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh253 = New'SpecialMesh'{Parent = Part1435, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1436 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(200.9235, 39.8265, 23.538)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh254 = New'SpecialMesh'{Parent = Part1436, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1437 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.4235, 39.8265, 25.538)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh125 = New'CylinderMesh'{Parent = Part1437, Scale = V3(1, 1, 0.3005)}
        Part1438 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.4235, 39.8265, 25.538)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh126 = New'CylinderMesh'{Parent = Part1438, Scale = V3(1, 1, 0.3005)}
        Part1439 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.4235, 39.8265, 24.538)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh127 = New'CylinderMesh'{Parent = Part1439, Scale = V3(1, 1, 0.3005)}
        Part1440 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.4235, 39.8265, 19.538)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh128 = New'CylinderMesh'{Parent = Part1440, Scale = V3(1, 1, 0.3005)}
        Part1441 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(200.9235, 38.6265, 20.538)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh255 = New'SpecialMesh'{Parent = Part1441, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1442 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(200.9235, 38.6265, 19.538)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh256 = New'SpecialMesh'{Parent = Part1442, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1443 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(200.9235, 39.8265, 20.538)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh257 = New'SpecialMesh'{Parent = Part1443, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1444 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(192.9235, 38.6265, 23.538)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh258 = New'SpecialMesh'{Parent = Part1444, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1445 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(192.9235, 38.6265, 24.538)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh259 = New'SpecialMesh'{Parent = Part1445, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1446 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(192.9235, 39.8265, 23.538)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh260 = New'SpecialMesh'{Parent = Part1446, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1447 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(192.9235, 38.6265, 20.538)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh261 = New'SpecialMesh'{Parent = Part1447, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1448 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(192.9235, 39.8265, 20.538)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh262 = New'SpecialMesh'{Parent = Part1448, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1449 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(200.9235, 39.8265, 22.538)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh263 = New'SpecialMesh'{Parent = Part1449, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1450 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.4235, 41.0265, 22.538)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh129 = New'CylinderMesh'{Parent = Part1450, Scale = V3(1, 1, 0.3005)}
        Part1451 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.4235, 41.0265, 22.538)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh130 = New'CylinderMesh'{Parent = Part1451, Scale = V3(1, 1, 0.3005)}
        Part1452 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(196.9235, 40.6265, 23.038)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1453 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(192.9235, 39.8265, 22.538)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh264 = New'SpecialMesh'{Parent = Part1453, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1454 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.4235, 39.8265, 24.538)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh131 = New'CylinderMesh'{Parent = Part1454, Scale = V3(1, 1, 0.3005)}
        Part1455 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(201.3235, 38.9765, 22.038)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh265 = New'SpecialMesh'{Parent = Part1455, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1456 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(192.5235, 38.9765, 22.038)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh266 = New'SpecialMesh'{Parent = Part1456, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1457 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.4235, 41.0265, 21.538)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh132 = New'CylinderMesh'{Parent = Part1457, Scale = V3(1, 1, 0.3005)}
        Part1458 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(196.9235, 40.6265, 21.038)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1459 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(192.4235, 41.0265, 21.538)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh133 = New'CylinderMesh'{Parent = Part1459, Scale = V3(1, 1, 0.3005)}
        Part1460 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(200.9235, 39.8265, 21.538)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh267 = New'SpecialMesh'{Parent = Part1460, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1461 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(192.9235, 39.8265, 21.538)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh268 = New'SpecialMesh'{Parent = Part1461, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1462 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(196.9235, 39.4265, 19.038)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1463 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(201.4235, 39.8265, 18.538)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh134 = New'CylinderMesh'{Parent = Part1463, Scale = V3(1, 1, 0.3005)}
        Part1464 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.6235, 39.4265, 48.258)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1465 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.6235, 38.6265, 46.758)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh269 = New'SpecialMesh'{Parent = Part1465, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1466 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.6235, 38.6265, 47.758)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh270 = New'SpecialMesh'{Parent = Part1466, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1467 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.6235, 39.8265, 46.758)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh271 = New'SpecialMesh'{Parent = Part1467, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1468 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.1235, 39.8265, 48.758)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh135 = New'CylinderMesh'{Parent = Part1468, Scale = V3(1, 1, 0.3005)}
        Part1469 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.1235, 39.8265, 48.758)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh136 = New'CylinderMesh'{Parent = Part1469, Scale = V3(1, 1, 0.3005)}
        Part1470 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.1235, 39.8265, 47.758)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh137 = New'CylinderMesh'{Parent = Part1470, Scale = V3(1, 1, 0.3005)}
        Part1471 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.1235, 39.8265, 42.758)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh138 = New'CylinderMesh'{Parent = Part1471, Scale = V3(1, 1, 0.3005)}
        Part1472 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.1235, 39.8265, 42.758)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh139 = New'CylinderMesh'{Parent = Part1472, Scale = V3(1, 1, 0.3005)}
        Part1473 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.1235, 39.8265, 41.758)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh140 = New'CylinderMesh'{Parent = Part1473, Scale = V3(1, 1, 0.3005)}
        Part1474 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.6235, 38.6265, 43.758)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh272 = New'SpecialMesh'{Parent = Part1474, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1475 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.6235, 38.6265, 42.758)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh273 = New'SpecialMesh'{Parent = Part1475, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1476 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.6235, 39.8265, 43.758)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh274 = New'SpecialMesh'{Parent = Part1476, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1477 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.6235, 38.6265, 46.758)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh275 = New'SpecialMesh'{Parent = Part1477, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1478 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.6235, 38.6265, 47.758)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh276 = New'SpecialMesh'{Parent = Part1478, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1479 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.6235, 39.8265, 46.758)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh277 = New'SpecialMesh'{Parent = Part1479, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1480 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.6235, 38.6265, 43.758)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh278 = New'SpecialMesh'{Parent = Part1480, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1481 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.6235, 38.6265, 42.758)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh279 = New'SpecialMesh'{Parent = Part1481, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1482 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.6235, 39.8265, 43.758)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh280 = New'SpecialMesh'{Parent = Part1482, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1483 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.6235, 39.8265, 45.758)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh281 = New'SpecialMesh'{Parent = Part1483, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1484 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.1235, 41.0265, 45.758)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh141 = New'CylinderMesh'{Parent = Part1484, Scale = V3(1, 1, 0.3005)}
        Part1485 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.1235, 41.0265, 45.758)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh142 = New'CylinderMesh'{Parent = Part1485, Scale = V3(1, 1, 0.3005)}
        Part1486 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.6235, 40.6265, 46.258)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1487 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.6235, 39.8265, 45.758)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh282 = New'SpecialMesh'{Parent = Part1487, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1488 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.1235, 39.8265, 47.758)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh143 = New'CylinderMesh'{Parent = Part1488, Scale = V3(1, 1, 0.3005)}
        Part1489 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(202.0235, 38.9765, 45.258)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh283 = New'SpecialMesh'{Parent = Part1489, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1490 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(193.2235, 38.9765, 45.258)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh284 = New'SpecialMesh'{Parent = Part1490, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1491 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.1235, 41.0265, 44.758)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh144 = New'CylinderMesh'{Parent = Part1491, Scale = V3(1, 1, 0.3005)}
        Part1492 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.6235, 40.6265, 44.258)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1493 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.1235, 41.0265, 44.758)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh145 = New'CylinderMesh'{Parent = Part1493, Scale = V3(1, 1, 0.3005)}
        Part1494 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.6235, 39.8265, 44.758)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh285 = New'SpecialMesh'{Parent = Part1494, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1495 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.6235, 39.8265, 44.758)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh286 = New'SpecialMesh'{Parent = Part1495, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1496 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.6235, 39.4265, 42.258)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1497 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.1235, 39.8265, 41.758)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh146 = New'CylinderMesh'{Parent = Part1497, Scale = V3(1, 1, 0.3005)}
        Part1498 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.9435, 39.3665, 48.158)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1499 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.9435, 38.5665, 46.658)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh287 = New'SpecialMesh'{Parent = Part1499, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1500 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.9435, 38.5665, 47.658)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh288 = New'SpecialMesh'{Parent = Part1500, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1501 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.9435, 39.7665, 46.658)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh289 = New'SpecialMesh'{Parent = Part1501, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1502 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.4435, 39.7665, 48.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh147 = New'CylinderMesh'{Parent = Part1502, Scale = V3(1, 1, 0.3005)}
        Part1503 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.4435, 39.7665, 48.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh148 = New'CylinderMesh'{Parent = Part1503, Scale = V3(1, 1, 0.3005)}
        Part1504 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.4435, 39.7665, 47.658)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh149 = New'CylinderMesh'{Parent = Part1504, Scale = V3(1, 1, 0.3005)}
        Part1505 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.4435, 39.7665, 42.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh150 = New'CylinderMesh'{Parent = Part1505, Scale = V3(1, 1, 0.3005)}
        Part1506 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.9435, 38.5665, 43.658)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh290 = New'SpecialMesh'{Parent = Part1506, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1507 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.9435, 38.5665, 42.658)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh291 = New'SpecialMesh'{Parent = Part1507, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1508 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.9435, 39.7665, 43.658)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh292 = New'SpecialMesh'{Parent = Part1508, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1509 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.9435, 38.5665, 46.658)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh293 = New'SpecialMesh'{Parent = Part1509, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1510 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.9435, 38.5665, 47.658)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh294 = New'SpecialMesh'{Parent = Part1510, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1511 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.9435, 39.7665, 46.658)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh295 = New'SpecialMesh'{Parent = Part1511, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1512 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.9435, 38.5665, 43.658)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh296 = New'SpecialMesh'{Parent = Part1512, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1513 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.9435, 38.5665, 42.658)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh297 = New'SpecialMesh'{Parent = Part1513, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1514 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.9435, 39.7665, 45.658)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh298 = New'SpecialMesh'{Parent = Part1514, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1515 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.4435, 40.9665, 45.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh151 = New'CylinderMesh'{Parent = Part1515, Scale = V3(1, 1, 0.3005)}
        Part1516 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.9435, 40.5665, 46.158)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1517 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.9435, 39.7665, 45.658)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh299 = New'SpecialMesh'{Parent = Part1517, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1518 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.4435, 39.7665, 47.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh152 = New'CylinderMesh'{Parent = Part1518, Scale = V3(1, 1, 0.3005)}
        Part1519 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(185.3435, 38.9165, 45.158)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh300 = New'SpecialMesh'{Parent = Part1519, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1520 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(176.5435, 38.9165, 45.158)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh301 = New'SpecialMesh'{Parent = Part1520, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1521 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.4435, 40.9665, 44.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh153 = New'CylinderMesh'{Parent = Part1521, Scale = V3(1, 1, 0.3005)}
        Part1522 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.9435, 40.5665, 44.158)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1523 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.9435, 39.7665, 44.658)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh302 = New'SpecialMesh'{Parent = Part1523, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1524 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.9435, 39.7665, 44.658)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh303 = New'SpecialMesh'{Parent = Part1524, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1525 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.9435, 39.3665, 42.158)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1526 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.4435, 39.7665, 41.658)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh154 = New'CylinderMesh'{Parent = Part1526, Scale = V3(1, 1, 0.3005)}
        Part1527 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.9235, 39.4265, 48.558)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1528 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.9235, 38.6265, 47.058)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh304 = New'SpecialMesh'{Parent = Part1528, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1529 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.9235, 38.6265, 48.058)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh305 = New'SpecialMesh'{Parent = Part1529, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1530 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.9235, 39.8265, 47.058)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh306 = New'SpecialMesh'{Parent = Part1530, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1531 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.4235, 39.8265, 49.058)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh155 = New'CylinderMesh'{Parent = Part1531, Scale = V3(1, 1, 0.3005)}
        Part1532 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.4235, 39.8265, 49.058)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh156 = New'CylinderMesh'{Parent = Part1532, Scale = V3(1, 1, 0.3005)}
        Part1533 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.4235, 39.8265, 48.058)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh157 = New'CylinderMesh'{Parent = Part1533, Scale = V3(1, 1, 0.3005)}
        Part1534 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.4235, 39.8265, 43.058)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh158 = New'CylinderMesh'{Parent = Part1534, Scale = V3(1, 1, 0.3005)}
        Part1535 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.4235, 39.8265, 43.058)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh159 = New'CylinderMesh'{Parent = Part1535, Scale = V3(1, 1, 0.3005)}
        Part1536 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.4235, 39.8265, 42.058)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh160 = New'CylinderMesh'{Parent = Part1536, Scale = V3(1, 1, 0.3005)}
        Part1537 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.9235, 38.6265, 44.058)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh307 = New'SpecialMesh'{Parent = Part1537, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1538 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.9235, 38.6265, 43.058)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh308 = New'SpecialMesh'{Parent = Part1538, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1539 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.9235, 39.8265, 44.058)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh309 = New'SpecialMesh'{Parent = Part1539, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1540 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.9235, 38.6265, 47.058)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh310 = New'SpecialMesh'{Parent = Part1540, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1541 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.9235, 38.6265, 48.058)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh311 = New'SpecialMesh'{Parent = Part1541, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1542 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.9235, 39.8265, 47.058)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh312 = New'SpecialMesh'{Parent = Part1542, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1543 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.9235, 38.6265, 44.058)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh313 = New'SpecialMesh'{Parent = Part1543, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1544 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.9235, 38.6265, 43.058)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh314 = New'SpecialMesh'{Parent = Part1544, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1545 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.9235, 39.8265, 44.058)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh315 = New'SpecialMesh'{Parent = Part1545, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1546 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.9235, 39.8265, 46.058)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh316 = New'SpecialMesh'{Parent = Part1546, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1547 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.4235, 41.0265, 46.058)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh161 = New'CylinderMesh'{Parent = Part1547, Scale = V3(1, 1, 0.3005)}
        Part1548 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.4235, 41.0265, 46.058)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh162 = New'CylinderMesh'{Parent = Part1548, Scale = V3(1, 1, 0.3005)}
        Part1549 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.9235, 40.6265, 46.558)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1550 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.9235, 39.8265, 46.058)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh317 = New'SpecialMesh'{Parent = Part1550, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1551 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.4235, 39.8265, 48.058)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh163 = New'CylinderMesh'{Parent = Part1551, Scale = V3(1, 1, 0.3005)}
        Part1552 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(167.3235, 38.9765, 45.558)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh318 = New'SpecialMesh'{Parent = Part1552, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1553 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(158.5235, 38.9765, 45.558)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh319 = New'SpecialMesh'{Parent = Part1553, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1554 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.9235, 40.6265, 44.558)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1555 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.4235, 41.0265, 45.058)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh164 = New'CylinderMesh'{Parent = Part1555, Scale = V3(1, 1, 0.3005)}
        Part1556 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.9235, 39.8265, 45.058)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh320 = New'SpecialMesh'{Parent = Part1556, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1557 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.9235, 39.8265, 45.058)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh321 = New'SpecialMesh'{Parent = Part1557, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1558 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.9235, 39.4265, 42.558)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1559 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.2435, 39.3665, 48.458)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1560 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.2435, 38.5665, 46.958)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh322 = New'SpecialMesh'{Parent = Part1560, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1561 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.2435, 38.5665, 47.958)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh323 = New'SpecialMesh'{Parent = Part1561, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1562 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.2435, 39.7665, 46.958)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh324 = New'SpecialMesh'{Parent = Part1562, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1563 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.7435, 39.7665, 48.958)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh165 = New'CylinderMesh'{Parent = Part1563, Scale = V3(1, 1, 0.3005)}
        Part1564 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.7435, 39.7665, 48.958)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh166 = New'CylinderMesh'{Parent = Part1564, Scale = V3(1, 1, 0.3005)}
        Part1565 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.7435, 39.7665, 47.958)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh167 = New'CylinderMesh'{Parent = Part1565, Scale = V3(1, 1, 0.3005)}
        Part1566 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.7435, 39.7665, 42.958)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh168 = New'CylinderMesh'{Parent = Part1566, Scale = V3(1, 1, 0.3005)}
        Part1567 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.7435, 39.7665, 42.958)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh169 = New'CylinderMesh'{Parent = Part1567, Scale = V3(1, 1, 0.3005)}
        Part1568 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.7435, 39.7665, 41.958)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh170 = New'CylinderMesh'{Parent = Part1568, Scale = V3(1, 1, 0.3005)}
        Part1569 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.2435, 38.5665, 43.958)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh325 = New'SpecialMesh'{Parent = Part1569, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1570 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.2435, 38.5665, 42.958)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh326 = New'SpecialMesh'{Parent = Part1570, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1571 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.2435, 39.7665, 43.958)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh327 = New'SpecialMesh'{Parent = Part1571, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1572 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.2435, 38.5665, 46.958)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh328 = New'SpecialMesh'{Parent = Part1572, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1573 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.2435, 38.5665, 47.958)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh329 = New'SpecialMesh'{Parent = Part1573, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1574 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.2435, 39.7665, 46.958)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh330 = New'SpecialMesh'{Parent = Part1574, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1575 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.2435, 38.5665, 43.958)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh331 = New'SpecialMesh'{Parent = Part1575, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1576 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.2435, 38.5665, 42.958)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh332 = New'SpecialMesh'{Parent = Part1576, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1577 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.2435, 39.7665, 43.958)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh333 = New'SpecialMesh'{Parent = Part1577, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1578 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.2435, 39.7665, 45.958)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh334 = New'SpecialMesh'{Parent = Part1578, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1579 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.7435, 40.9665, 45.958)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh171 = New'CylinderMesh'{Parent = Part1579, Scale = V3(1, 1, 0.3005)}
        Part1580 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.7435, 40.9665, 45.958)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh172 = New'CylinderMesh'{Parent = Part1580, Scale = V3(1, 1, 0.3005)}
        Part1581 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.2435, 40.5665, 46.458)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1582 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.2435, 39.7665, 45.958)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh335 = New'SpecialMesh'{Parent = Part1582, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1583 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.7435, 39.7665, 47.958)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh173 = New'CylinderMesh'{Parent = Part1583, Scale = V3(1, 1, 0.3005)}
        Part1584 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(150.6435, 38.9165, 45.458)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh336 = New'SpecialMesh'{Parent = Part1584, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1585 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(141.8435, 38.9165, 45.458)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh337 = New'SpecialMesh'{Parent = Part1585, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1586 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.7435, 40.9665, 44.958)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh174 = New'CylinderMesh'{Parent = Part1586, Scale = V3(1, 1, 0.3005)}
        Part1587 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.2435, 40.5665, 44.458)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1588 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.7435, 40.9665, 44.958)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh175 = New'CylinderMesh'{Parent = Part1588, Scale = V3(1, 1, 0.3005)}
        Part1589 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.2435, 39.7665, 44.958)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh338 = New'SpecialMesh'{Parent = Part1589, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1590 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.2435, 39.7665, 44.958)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh339 = New'SpecialMesh'{Parent = Part1590, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1591 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.2435, 39.3665, 42.458)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1592 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.7435, 39.7665, 41.958)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh176 = New'CylinderMesh'{Parent = Part1592, Scale = V3(1, 1, 0.3005)}
        Part1593 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.5235, 39.4265, 69.128)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1594 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.0235, 39.8265, 69.628)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh177 = New'CylinderMesh'{Parent = Part1594, Scale = V3(1, 1, 0.3005)}
        Part1595 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.0235, 39.8265, 68.628)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh178 = New'CylinderMesh'{Parent = Part1595, Scale = V3(1, 1, 0.3005)}
        Part1596 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.0235, 39.8265, 63.628)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh179 = New'CylinderMesh'{Parent = Part1596, Scale = V3(1, 1, 0.3005)}
        Part1597 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.0235, 39.8265, 63.628)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh180 = New'CylinderMesh'{Parent = Part1597, Scale = V3(1, 1, 0.3005)}
        Part1598 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.0235, 39.8265, 62.628)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh181 = New'CylinderMesh'{Parent = Part1598, Scale = V3(1, 1, 0.3005)}
        Part1599 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.5235, 38.6265, 64.628)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh340 = New'SpecialMesh'{Parent = Part1599, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1600 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.5235, 38.6265, 63.628)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh341 = New'SpecialMesh'{Parent = Part1600, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1601 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.5235, 39.8265, 64.628)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh342 = New'SpecialMesh'{Parent = Part1601, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1602 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.5235, 38.6265, 67.628)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh343 = New'SpecialMesh'{Parent = Part1602, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1603 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.5235, 38.6265, 68.628)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh344 = New'SpecialMesh'{Parent = Part1603, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1604 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.5235, 39.8265, 67.628)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh345 = New'SpecialMesh'{Parent = Part1604, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1605 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.5235, 38.6265, 64.628)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh346 = New'SpecialMesh'{Parent = Part1605, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1606 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.5235, 38.6265, 63.628)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh347 = New'SpecialMesh'{Parent = Part1606, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1607 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.5235, 39.8265, 64.628)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh348 = New'SpecialMesh'{Parent = Part1607, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1608 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.0235, 41.0265, 66.628)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh182 = New'CylinderMesh'{Parent = Part1608, Scale = V3(1, 1, 0.3005)}
        Part1609 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.5235, 40.6265, 67.128)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1610 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.5235, 39.8265, 66.628)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh349 = New'SpecialMesh'{Parent = Part1610, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1611 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(193.1235, 38.9765, 66.128)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh350 = New'SpecialMesh'{Parent = Part1611, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1612 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.5235, 40.6265, 65.128)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1613 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.0235, 41.0265, 65.628)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh183 = New'CylinderMesh'{Parent = Part1613, Scale = V3(1, 1, 0.3005)}
        Part1614 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(193.5235, 39.8265, 65.628)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh351 = New'SpecialMesh'{Parent = Part1614, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1615 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(197.5235, 39.4265, 63.128)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1616 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.0235, 39.8265, 62.628)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh184 = New'CylinderMesh'{Parent = Part1616, Scale = V3(1, 1, 0.3005)}
        Part1617 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.8435, 39.3665, 69.028)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1618 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.8435, 38.5665, 67.528)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh352 = New'SpecialMesh'{Parent = Part1618, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1619 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.8435, 38.5665, 68.528)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh353 = New'SpecialMesh'{Parent = Part1619, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1620 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.8435, 39.7665, 67.528)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh354 = New'SpecialMesh'{Parent = Part1620, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1621 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.3435, 39.7665, 69.528)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh185 = New'CylinderMesh'{Parent = Part1621, Scale = V3(1, 1, 0.3005)}
        Part1622 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.3435, 39.7665, 69.528)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh186 = New'CylinderMesh'{Parent = Part1622, Scale = V3(1, 1, 0.3005)}
        Part1623 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.3435, 39.7665, 68.528)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh187 = New'CylinderMesh'{Parent = Part1623, Scale = V3(1, 1, 0.3005)}
        Part1624 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.3435, 39.7665, 63.528)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh188 = New'CylinderMesh'{Parent = Part1624, Scale = V3(1, 1, 0.3005)}
        Part1625 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.3435, 39.7665, 63.528)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh189 = New'CylinderMesh'{Parent = Part1625, Scale = V3(1, 1, 0.3005)}
        Part1626 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.3435, 39.7665, 62.528)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh190 = New'CylinderMesh'{Parent = Part1626, Scale = V3(1, 1, 0.3005)}
        Part1627 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.8435, 38.5665, 64.528)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh355 = New'SpecialMesh'{Parent = Part1627, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1628 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.8435, 38.5665, 63.528)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh356 = New'SpecialMesh'{Parent = Part1628, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1629 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.8435, 39.7665, 64.528)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh357 = New'SpecialMesh'{Parent = Part1629, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1630 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.8435, 38.5665, 67.528)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh358 = New'SpecialMesh'{Parent = Part1630, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1631 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.8435, 38.5665, 68.528)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh359 = New'SpecialMesh'{Parent = Part1631, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1632 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.8435, 39.7665, 67.528)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh360 = New'SpecialMesh'{Parent = Part1632, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1633 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.8435, 38.5665, 64.528)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh361 = New'SpecialMesh'{Parent = Part1633, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1634 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.8435, 38.5665, 63.528)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh362 = New'SpecialMesh'{Parent = Part1634, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1635 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.8435, 39.7665, 64.528)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh363 = New'SpecialMesh'{Parent = Part1635, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1636 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.8435, 39.7665, 66.528)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh364 = New'SpecialMesh'{Parent = Part1636, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1637 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.3435, 40.9665, 66.528)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh191 = New'CylinderMesh'{Parent = Part1637, Scale = V3(1, 1, 0.3005)}
        Part1638 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.3435, 40.9665, 66.528)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh192 = New'CylinderMesh'{Parent = Part1638, Scale = V3(1, 1, 0.3005)}
        Part1639 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.8435, 40.5665, 67.028)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1640 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.8435, 39.7665, 66.528)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh365 = New'SpecialMesh'{Parent = Part1640, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1641 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.3435, 39.7665, 68.528)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh193 = New'CylinderMesh'{Parent = Part1641, Scale = V3(1, 1, 0.3005)}
        Part1642 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(185.2435, 38.9165, 66.028)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh366 = New'SpecialMesh'{Parent = Part1642, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1643 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(176.4435, 38.9165, 66.028)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh367 = New'SpecialMesh'{Parent = Part1643, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1644 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.3435, 40.9665, 65.528)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh194 = New'CylinderMesh'{Parent = Part1644, Scale = V3(1, 1, 0.3005)}
        Part1645 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.8435, 40.5665, 65.028)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1646 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(176.3435, 40.9665, 65.528)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh195 = New'CylinderMesh'{Parent = Part1646, Scale = V3(1, 1, 0.3005)}
        Part1647 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(184.8435, 39.7665, 65.528)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh368 = New'SpecialMesh'{Parent = Part1647, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1648 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(176.8435, 39.7665, 65.528)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh369 = New'SpecialMesh'{Parent = Part1648, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1649 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(180.8435, 39.3665, 63.028)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1650 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(185.3435, 39.7665, 62.528)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh196 = New'CylinderMesh'{Parent = Part1650, Scale = V3(1, 1, 0.3005)}
        Part1651 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.8235, 39.4265, 69.428)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1652 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.8235, 38.6265, 67.928)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh370 = New'SpecialMesh'{Parent = Part1652, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1653 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.8235, 38.6265, 68.928)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh371 = New'SpecialMesh'{Parent = Part1653, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1654 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.8235, 39.8265, 67.928)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh372 = New'SpecialMesh'{Parent = Part1654, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1655 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.3235, 39.8265, 69.928)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh197 = New'CylinderMesh'{Parent = Part1655, Scale = V3(1, 1, 0.3005)}
        Part1656 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.3235, 39.8265, 69.928)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh198 = New'CylinderMesh'{Parent = Part1656, Scale = V3(1, 1, 0.3005)}
        Part1657 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.3235, 39.8265, 68.928)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh199 = New'CylinderMesh'{Parent = Part1657, Scale = V3(1, 1, 0.3005)}
        Part1658 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.3235, 39.8265, 63.928)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh200 = New'CylinderMesh'{Parent = Part1658, Scale = V3(1, 1, 0.3005)}
        Part1659 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.3235, 39.8265, 63.928)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh201 = New'CylinderMesh'{Parent = Part1659, Scale = V3(1, 1, 0.3005)}
        Part1660 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.3235, 39.8265, 62.928)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh202 = New'CylinderMesh'{Parent = Part1660, Scale = V3(1, 1, 0.3005)}
        Part1661 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.8235, 38.6265, 64.928)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh373 = New'SpecialMesh'{Parent = Part1661, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1662 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.8235, 38.6265, 63.928)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh374 = New'SpecialMesh'{Parent = Part1662, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1663 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.8235, 39.8265, 64.928)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh375 = New'SpecialMesh'{Parent = Part1663, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1664 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.8235, 38.6265, 67.928)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh376 = New'SpecialMesh'{Parent = Part1664, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1665 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.8235, 38.6265, 68.928)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh377 = New'SpecialMesh'{Parent = Part1665, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1666 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.8235, 39.8265, 67.928)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh378 = New'SpecialMesh'{Parent = Part1666, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1667 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.8235, 38.6265, 64.928)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh379 = New'SpecialMesh'{Parent = Part1667, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1668 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.8235, 38.6265, 63.928)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh380 = New'SpecialMesh'{Parent = Part1668, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1669 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.8235, 39.8265, 64.928)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh381 = New'SpecialMesh'{Parent = Part1669, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1670 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.8235, 39.8265, 66.928)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh382 = New'SpecialMesh'{Parent = Part1670, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1671 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.3235, 41.0265, 66.928)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh203 = New'CylinderMesh'{Parent = Part1671, Scale = V3(1, 1, 0.3005)}
        Part1672 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.3235, 41.0265, 66.928)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh204 = New'CylinderMesh'{Parent = Part1672, Scale = V3(1, 1, 0.3005)}
        Part1673 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.8235, 40.6265, 67.428)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1674 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.8235, 39.8265, 66.928)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh383 = New'SpecialMesh'{Parent = Part1674, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1675 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.3235, 39.8265, 68.928)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh205 = New'CylinderMesh'{Parent = Part1675, Scale = V3(1, 1, 0.3005)}
        Part1676 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(167.2235, 38.9765, 66.428)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh384 = New'SpecialMesh'{Parent = Part1676, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1677 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(158.4235, 38.9765, 66.428)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh385 = New'SpecialMesh'{Parent = Part1677, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1678 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.3235, 41.0265, 65.928)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh206 = New'CylinderMesh'{Parent = Part1678, Scale = V3(1, 1, 0.3005)}
        Part1679 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.8235, 40.6265, 65.428)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1680 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(158.3235, 41.0265, 65.928)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh207 = New'CylinderMesh'{Parent = Part1680, Scale = V3(1, 1, 0.3005)}
        Part1681 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(166.8235, 39.8265, 65.928)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh386 = New'SpecialMesh'{Parent = Part1681, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1682 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(158.8235, 39.8265, 65.928)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh387 = New'SpecialMesh'{Parent = Part1682, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1683 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(162.8235, 39.4265, 63.428)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1684 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(167.3235, 39.8265, 62.928)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh208 = New'CylinderMesh'{Parent = Part1684, Scale = V3(1, 1, 0.3005)}
        Part1685 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.1435, 39.3665, 69.328)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1686 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.1435, 38.5665, 67.828)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh388 = New'SpecialMesh'{Parent = Part1686, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1687 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.1435, 38.5665, 68.828)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh389 = New'SpecialMesh'{Parent = Part1687, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1688 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.1435, 39.7665, 67.828)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh390 = New'SpecialMesh'{Parent = Part1688, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1689 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.6435, 39.7665, 69.828)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh209 = New'CylinderMesh'{Parent = Part1689, Scale = V3(1, 1, 0.3005)}
        Part1690 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.6435, 39.7665, 69.828)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh210 = New'CylinderMesh'{Parent = Part1690, Scale = V3(1, 1, 0.3005)}
        Part1691 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.6435, 39.7665, 68.828)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh211 = New'CylinderMesh'{Parent = Part1691, Scale = V3(1, 1, 0.3005)}
        Part1692 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.6435, 39.7665, 63.828)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh212 = New'CylinderMesh'{Parent = Part1692, Scale = V3(1, 1, 0.3005)}
        Part1693 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.6435, 39.7665, 63.828)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh213 = New'CylinderMesh'{Parent = Part1693, Scale = V3(1, 1, 0.3005)}
        Part1694 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.6435, 39.7665, 62.828)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh214 = New'CylinderMesh'{Parent = Part1694, Scale = V3(1, 1, 0.3005)}
        Part1695 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.1435, 38.5665, 64.828)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh391 = New'SpecialMesh'{Parent = Part1695, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1696 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.1435, 38.5665, 63.828)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh392 = New'SpecialMesh'{Parent = Part1696, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1697 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.1435, 39.7665, 64.828)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh393 = New'SpecialMesh'{Parent = Part1697, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1698 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.1435, 38.5665, 67.828)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh394 = New'SpecialMesh'{Parent = Part1698, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1699 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.1435, 38.5665, 68.828)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh395 = New'SpecialMesh'{Parent = Part1699, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1700 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.1435, 39.7665, 67.828)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh396 = New'SpecialMesh'{Parent = Part1700, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1701 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.1435, 38.5665, 64.828)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh397 = New'SpecialMesh'{Parent = Part1701, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1702 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.1435, 38.5665, 63.828)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh398 = New'SpecialMesh'{Parent = Part1702, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1703 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.1435, 39.7665, 64.828)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh399 = New'SpecialMesh'{Parent = Part1703, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1704 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.1435, 39.7665, 66.828)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh400 = New'SpecialMesh'{Parent = Part1704, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1705 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.6435, 40.9665, 66.828)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh215 = New'CylinderMesh'{Parent = Part1705, Scale = V3(1, 1, 0.3005)}
        Part1706 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.6435, 40.9665, 66.828)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh216 = New'CylinderMesh'{Parent = Part1706, Scale = V3(1, 1, 0.3005)}
        Part1707 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.1435, 40.5665, 67.328)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1708 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.1435, 39.7665, 66.828)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh401 = New'SpecialMesh'{Parent = Part1708, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1709 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.6435, 39.7665, 68.828)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh217 = New'CylinderMesh'{Parent = Part1709, Scale = V3(1, 1, 0.3005)}
        Part1710 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(150.5435, 38.9165, 66.328)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh402 = New'SpecialMesh'{Parent = Part1710, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1711 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(141.7435, 38.9165, 66.328)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh403 = New'SpecialMesh'{Parent = Part1711, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1712 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.6435, 40.9665, 65.828)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh218 = New'CylinderMesh'{Parent = Part1712, Scale = V3(1, 1, 0.3005)}
        Part1713 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.1435, 40.5665, 65.328)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1714 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(141.6435, 40.9665, 65.828)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh219 = New'CylinderMesh'{Parent = Part1714, Scale = V3(1, 1, 0.3005)}
        Part1715 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(150.1435, 39.7665, 65.828)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh404 = New'SpecialMesh'{Parent = Part1715, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1716 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(142.1435, 39.7665, 65.828)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh405 = New'SpecialMesh'{Parent = Part1716, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1717 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(146.1435, 39.3665, 63.328)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1718 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(150.6435, 39.7665, 62.828)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh220 = New'CylinderMesh'{Parent = Part1718, Scale = V3(1, 1, 0.3005)}
        Part1719 = New'Part'{Parent = Model2, Size = V3(67.6005, 67.6005, 67.6005), CFrame = CN(280.2835, 37.7665, -24.832)*CA(-179.9995, -90, 0), BrickColor = BN("Camo")}
        Part1720 = New'Part'{Parent = Model2, Size = V3(105.4105, 0.2005, 7.97), CFrame = CN(172.203, 37.9665, 110.586)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Cool yellow"), Material = 864}
        Part1721 = New'Part'{Parent = Model2, Size = V3(1.0105, 16.1005, 1.0205), CFrame = CN(71.302, 31.2755, 71.5705)*CA(0.0005, 0.0005, 38.62), BrickColor = BN("Really black"), Material = 1056}
        Part1722 = New'Part'{Parent = Model2, Size = V3(1.0105, 21.8305, 1.0205), CFrame = CN(69.643, 29.114, 66.861)*CA(0.0005, 0.0005, 38.62), BrickColor = BN("Really black"), Material = 1056}
        Part1723 = New'Part'{Parent = Model2, Size = V3(41, 0.8005, 1), CFrame = CN(-82.075, -5.385, -67.66)*CA(90.0005, -18.1425, -90), BrickColor = BN("Medium blue")}
        Part1724 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 5), CFrame = CN(-84.9945, -4.985, -67.66)*CA(90.0005, 71.857, -90), BrickColor = BN("Bright blue")}
        Part1725 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(198.3235, 39.4265, 91.858)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1726 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(202.3235, 38.6265, 90.358)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh406 = New'SpecialMesh'{Parent = Part1726, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1727 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(202.3235, 38.6265, 91.358)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh407 = New'SpecialMesh'{Parent = Part1727, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1728 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(202.3235, 39.8265, 90.358)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh408 = New'SpecialMesh'{Parent = Part1728, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1729 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.8235, 39.8265, 92.358)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh221 = New'CylinderMesh'{Parent = Part1729, Scale = V3(1, 1, 0.3005)}
        Part1730 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.8235, 39.8265, 91.358)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh222 = New'CylinderMesh'{Parent = Part1730, Scale = V3(1, 1, 0.3005)}
        Part1731 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.8235, 39.8265, 86.358)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh223 = New'CylinderMesh'{Parent = Part1731, Scale = V3(1, 1, 0.3005)}
        Part1732 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.8235, 39.8265, 86.358)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh224 = New'CylinderMesh'{Parent = Part1732, Scale = V3(1, 1, 0.3005)}
        Part1733 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.8235, 39.8265, 85.358)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh225 = New'CylinderMesh'{Parent = Part1733, Scale = V3(1, 1, 0.3005)}
        Part1734 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(202.3235, 38.6265, 87.358)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh409 = New'SpecialMesh'{Parent = Part1734, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1735 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(202.3235, 38.6265, 86.358)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh410 = New'SpecialMesh'{Parent = Part1735, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1736 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(202.3235, 39.8265, 87.358)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh411 = New'SpecialMesh'{Parent = Part1736, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1737 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(194.3235, 38.6265, 90.358)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh412 = New'SpecialMesh'{Parent = Part1737, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1738 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(194.3235, 38.6265, 91.358)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh413 = New'SpecialMesh'{Parent = Part1738, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1739 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(194.3235, 39.8265, 90.358)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh414 = New'SpecialMesh'{Parent = Part1739, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1740 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(194.3235, 38.6265, 87.358)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh415 = New'SpecialMesh'{Parent = Part1740, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1741 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(194.3235, 38.6265, 86.358)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh416 = New'SpecialMesh'{Parent = Part1741, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1742 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(194.3235, 39.8265, 87.358)*CA(0.0005, 0.0005, -0), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh417 = New'SpecialMesh'{Parent = Part1742, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1743 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(202.3235, 39.8265, 89.358)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh418 = New'SpecialMesh'{Parent = Part1743, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1744 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.8235, 41.0265, 89.358)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh226 = New'CylinderMesh'{Parent = Part1744, Scale = V3(1, 1, 0.3005)}
        Part1745 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.8235, 41.0265, 89.358)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh227 = New'CylinderMesh'{Parent = Part1745, Scale = V3(1, 1, 0.3005)}
        Part1746 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(198.3235, 40.6265, 89.858)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1747 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(194.3235, 39.8265, 89.358)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh419 = New'SpecialMesh'{Parent = Part1747, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1748 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(202.7235, 38.9765, 88.858)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh420 = New'SpecialMesh'{Parent = Part1748, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1749 = New'Part'{Parent = Model2, Name = "a2", Size = V3(7, 0.4005, 1), CFrame = CN(193.9235, 38.9765, 88.858)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh421 = New'SpecialMesh'{Parent = Part1749, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1750 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.8235, 41.0265, 88.358)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh228 = New'CylinderMesh'{Parent = Part1750, Scale = V3(1, 1, 0.3005)}
        Part1751 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(198.3235, 40.6265, 87.858)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1752 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(193.8235, 41.0265, 88.358)*CA(0.0005, -90, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh229 = New'CylinderMesh'{Parent = Part1752, Scale = V3(1, 1, 0.3005)}
        Part1753 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(202.3235, 39.8265, 88.358)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh422 = New'SpecialMesh'{Parent = Part1753, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1754 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(194.3235, 39.8265, 88.358)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh423 = New'SpecialMesh'{Parent = Part1754, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1755 = New'Part'{Parent = Model2, Size = V3(10, 0.4005, 2), CFrame = CN(198.3235, 39.4265, 85.858)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        Part1756 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.8235, 39.8265, 85.358)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh230 = New'CylinderMesh'{Parent = Part1756, Scale = V3(1, 1, 0.3005)}
        Part1757 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(185.6435, 38.5665, 90.258)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh424 = New'SpecialMesh'{Parent = Part1757, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1758 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(185.6435, 38.5665, 91.258)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh425 = New'SpecialMesh'{Parent = Part1758, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1759 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(185.6435, 39.7665, 90.258)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh426 = New'SpecialMesh'{Parent = Part1759, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1760 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(186.1435, 39.7665, 92.258)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh231 = New'CylinderMesh'{Parent = Part1760, Scale = V3(1, 1, 0.3005)}
        Part1761 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(185.6435, 39.7665, 89.258)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh427 = New'SpecialMesh'{Parent = Part1761, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1762 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(186.1435, 40.9665, 89.258)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh232 = New'CylinderMesh'{Parent = Part1762, Scale = V3(1, 1, 0.3005)}
        Part1763 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(186.1435, 39.7665, 91.258)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh233 = New'CylinderMesh'{Parent = Part1763, Scale = V3(1, 1, 0.3005)}
        Part1764 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(186.1435, 40.9665, 88.258)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh234 = New'CylinderMesh'{Parent = Part1764, Scale = V3(1, 1, 0.3005)}
        Part1765 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.5235, 38.6265, 67.628)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh428 = New'SpecialMesh'{Parent = Part1765, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1766 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.5235, 38.6265, 68.628)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh429 = New'SpecialMesh'{Parent = Part1766, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1767 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.5235, 39.8265, 67.628)*CA(-179.9995, -0, -179.9995), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh430 = New'SpecialMesh'{Parent = Part1767, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1768 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.0235, 39.8265, 69.628)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh235 = New'CylinderMesh'{Parent = Part1768, Scale = V3(1, 1, 0.3005)}
        Part1769 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.5235, 39.8265, 66.628)*CA(0.0005, 0.0005, 180), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh431 = New'SpecialMesh'{Parent = Part1769, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1770 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.0235, 41.0265, 66.628)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh236 = New'CylinderMesh'{Parent = Part1770, Scale = V3(1, 1, 0.3005)}
        Part1771 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.0235, 39.8265, 68.628)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh237 = New'CylinderMesh'{Parent = Part1771, Scale = V3(1, 1, 0.3005)}
        Part1772 = New'Part'{Parent = Model2, Name = "a1", Size = V3(7, 0.4005, 1), CFrame = CN(201.9235, 38.9765, 66.128)*CA(0.0005, 90.0005, 0), BrickColor = BN("Reddish brown"), Material = 512, CanCollide = false}
        SMesh432 = New'SpecialMesh'{Parent = Part1772, MeshType = 6, Scale = V3(1, 1.5, 0.4005)}
        Part1773 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.0235, 41.0265, 65.628)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh238 = New'CylinderMesh'{Parent = Part1773, Scale = V3(1, 1, 0.3005)}
        Part1774 = New'Part'{Parent = Model2, Size = V3(1, 1.2005, 1), CFrame = CN(201.5235, 39.8265, 65.628)*CA(-179.9995, -0, 0.0005), BrickColor = BN("Reddish brown"), Material = 512}
        SMesh433 = New'SpecialMesh'{Parent = Part1774, MeshType = 2, Scale = V3(0.5, 1, 1)}
        Part1775 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(65.392, 5.1915, 74.266)*CA(-179.999, -78.903, -179.999), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh434 = New'SpecialMesh'{Parent = Part1775, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1776 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 9), CFrame = CN(-124.7075, 14.4175, 49.44)*CA(90.0005, -59.074, -90), BrickColor = BN("Bright blue")}
        Part1777 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(65.5995, 5.1915, 65.801)*CA(-179.999, -78.903, -179.999), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh435 = New'SpecialMesh'{Parent = Part1777, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1778 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(69.9555, 4.8865, 51.9775)*CA(-179.999, -78.903, -179.999), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh436 = New'SpecialMesh'{Parent = Part1778, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1779 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(72.1795, 4.8865, 60.786)*CA(-179.999, -78.903, -179.999), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh437 = New'SpecialMesh'{Parent = Part1779, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1780 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(72.3395, 4.8865, 70.7935)*CA(-179.999, -78.903, -179.999), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh438 = New'SpecialMesh'{Parent = Part1780, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1781 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7, 7, 7), CFrame = CN(70.346, 4.8865, 82.261)*CA(-179.999, -78.903, -179.999), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh439 = New'SpecialMesh'{Parent = Part1781, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1782 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(3.28, 3.28, 3.28), CFrame = CN(73.485, 9.3505, 77.1425)*CA(-179.999, -78.903, -179.999), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh440 = New'SpecialMesh'{Parent = Part1782, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1783 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(75.743, 9.4855, 65.705)*CA(-0.0015, -86.0965, -0.0015), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh441 = New'SpecialMesh'{Parent = Part1783, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1784 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(75.1065, 10.0125, 56.389)*CA(-0.0015, -86.0965, -0.0015), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh442 = New'SpecialMesh'{Parent = Part1784, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1785 = New'Part'{Parent = Model2, Name = "Rock", Size = V3(7.61, 7.61, 7.61), CFrame = CN(63.8145, 5.192, 56.0295)*CA(-179.999, -78.903, -179.999), BrickColor = BN("Dark stone grey"), Material = 800}
        SMesh443 = New'SpecialMesh'{Parent = Part1785, MeshType = 5, Scale = V3(5, 5, 5), MeshId = "http://www.roblox.com/asset/?id=1290033", TextureId = "http://www.roblox.com/asset/?id=1290030"}
        Part1786 = New'Part'{Parent = Model2, Size = V3(41, 0.8005, 1), CFrame = CN(-123.168, -0.0935, 49.44)*CA(90.0005, -14.074, -90), BrickColor = BN("Medium blue")}
        Part1787 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 8), CFrame = CN(-129.7015, 8.158, 49.44)*CA(90.0005, -14.074, -90), BrickColor = BN("Bright blue")}
        Part1788 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 5), CFrame = CN(-126.1085, 0.098, 49.44)*CA(90.0005, 75.9255, -90), BrickColor = BN("Bright blue")}
        Part1789 = New'Part'{Parent = Model2, Size = V3(41, 0.8005, 1), CFrame = CN(-120.9685, 15.958, 49.44)*CA(90.0005, -59.074, -90), BrickColor = BN("Medium blue")}
        Part1790 = New'Part'{Parent = Model2, Size = V3(41, 0.4005, 4), CFrame = CN(-129.709, 2.412, 49.44)*CA(90.0005, 30.926, -90), BrickColor = BN("Bright blue")}
        Part1791 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.8235, 39.8265, 92.358)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh239 = New'CylinderMesh'{Parent = Part1791, Scale = V3(1, 1, 0.3005)}
        Part1792 = New'Part'{Parent = Model2, Name = "a1", Size = V3(1, 0.4005, 1), CFrame = CN(202.8235, 39.8265, 91.358)*CA(0.0005, 90.0005, 0), BrickColor = BN("Dark stone grey"), Material = 512}
        CMesh240 = New'CylinderMesh'{Parent = Part1792, Scale = V3(1, 1, 0.3005)}
        Part1793 = New'Part'{Parent = Model2, Size = V3(67.6005, 67.6005, 67.6005), CFrame = CN(281.5835, 39.7665, 40.868)*CA(-179.9995, -90, 0), BrickColor = BN("Camo")}
        Part1794 = New'Part'{Parent = Model2, Size = V3(67.6005, 67.6005, 67.6005), CFrame = CN(279.0835, 40.566, 107.168)*CA(-179.9995, -90, 0), BrickColor = BN("Camo")}