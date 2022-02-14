--Saved Nov 17, 2014
--Voting Game
Question = "What kind of game should ask4kingbily make?"
Answers = {
        "Survival Game",
        "Awesome Game",
        "Epic Game"
}
AnswersGoToThisGuy = "N00bCaik"
TimeToVote = 30
Players = Game:GetService("Players")
for _, Player in pairs(Players:GetChildren()) do
        local PlayerGui = Player:WaitForChild("PlayerGui")
        for _, Thing in pairs(PlayerGui:GetChildren()) do
                if Thing.Name == "Voting Stuff" then
                        Thing:Destroy()
                end
        end
        local VotingGui = Instance.new("ScreenGui", PlayerGui)
        VotingGui.Name = "Voting Stuff"
        if Player.Name ~= AnswersGoToThisGuy then
                local Height = 125+#Answers*75
                local MainFrame = Instance.new("Frame", VotingGui)
                MainFrame.Size = UDim2.new(0, 400, 0, Height)
                MainFrame.Position = UDim2.new(1, -400, 1, -Height-50)
                MainFrame.BackgroundColor3 = Color3.new()
                MainFrame.BackgroundTransparency = 0.75
                MainFrame.BorderSizePixel = 0
                local Gradient = Instance.new("ImageLabel", MainFrame)
                Gradient.Size = UDim2.new(1, 0, 1, 0)
                Gradient.BackgroundTransparency = 1
                Gradient.Image = "rbxassetid://152451738"
                local QuestionText = Instance.new("TextLabel", MainFrame)
                QuestionText.Size = UDim2.new(0, 350, 0, 100)
                QuestionText.Position = UDim2.new(0, 25, 0, 0)
                QuestionText.BackgroundTransparency = 1
                QuestionText.Text = Question
                QuestionText.TextScaled = true
                QuestionText.TextColor3 = Color3.new(1, 1, 1)
                QuestionText.Font = 0
                for A, Answer in pairs(Answers) do
                        local AnswerBox = Instance.new("ImageLabel", MainFrame)
                        AnswerBox.Size = UDim2.new(0, 25, 0, 25)
                        AnswerBox.Position = UDim2.new(0, 25, 0, 50+A*75)
                        AnswerBox.BackgroundColor3 = Color3.new()
                        AnswerBox.BackgroundTransparency = 0.5
                        AnswerBox.Image = "rbxassetid://152451738"
                        local AnswerText = Instance.new("TextLabel", MainFrame)
                        AnswerText.Size = UDim2.new(1, -100, 0, 25)
                        AnswerText.Position = UDim2.new(0, 75, 0, 50+A*75)
                        AnswerText.BackgroundTransparency = 1
                        AnswerText.Text = Answer
                        AnswerText.TextScaled = true
                        AnswerText.TextXAlignment = "Left"
                        AnswerText.TextColor3 = Color3.new(1, 1, 1)
                        AnswerText.Font = 0
                end
        end
end