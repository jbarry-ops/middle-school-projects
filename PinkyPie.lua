Pinky = {
        164076671,
        164076844,
        164076942,
        164076980,
        164077058,
        164077137,
        164079468,
        164240026,
        164241059,
        164241226,
        164241358,
        164241592,
        164241723
}
for _, Pie in pairs(Pinky) do
        Game:GetService("ContentProvider"):Preload("rbxassetid://"..Pie)
end
Painting = Instance.new("Part", Workspace)
Painting.Anchored = true
Painting.FormFactor = 3
Painting.TopSurface = 0
Painting.BottomSurface = 0
Painting.Size = Vector3.new(50, 50, 1)
Painting.BrickColor = BrickColor.new("Reddish brown")
Painting.Material = "Wood"
Painting.CFrame = CFrame.new(0, 1, 0)*CFrame.Angles(math.rad(90), 0, 0)
 
Picture = Instance.new("Decal", Painting)
Picture.Face = "Front"
 
ApplePie = 1
while true do
        wait(1)
        Picture.Texture = "rbxassetid://"..Pinky[ApplePie]
        if ApplePie ~= #Pinky then
                ApplePie = ApplePie+1
        else
                ApplePie = 1
        end
end