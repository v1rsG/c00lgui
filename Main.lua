local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local SoundService = game:GetService("SoundService")
local StarterGui = game:GetService("StarterGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")

local function applySkybox()
    local sky = Instance.new("Sky", Lighting)
    local id = "rbxassetid://158118263"
    sky.SkyboxBk = id
    sky.SkyboxDn = id
    sky.SkyboxFt = id
    sky.SkyboxLf = id
    sky.SkyboxRt = id
    sky.SkyboxUp = id
end

local function decalSpam()
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("Part") or obj:IsA("MeshPart") or obj:IsA("UnionOperation") or obj:IsA("Terrain") then
            for _, face in ipairs(Enum.NormalId:GetEnumItems()) do
                local decal = Instance.new("Decal")
                decal.Texture = "rbxassetid://158118263"
                decal.Face = face
                decal.Parent = obj
            end
        end
    end
end

local function activate666()
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("Part") or obj:IsA("MeshPart") or obj:IsA("UnionOperation") then
            obj.Color = Color3.fromRGB(0, 0, 0)
            obj.Material = Enum.Material.SmoothPlastic
            obj.Reflectance = 0
            obj.Transparency = 0
            local fire = Instance.new("Fire")
            fire.Size = 10
            fire.Heat = 5
            fire.Color = Color3.fromRGB(255, 0, 0)
            fire.SecondaryColor = Color3.fromRGB(255, 0, 0)
            fire.Parent = obj
        end
    end
end

local function playSound()
    local music = Instance.new("Sound", SoundService)
    music.SoundId = "rbxassetid://95156028272944"
    music.Looped = true
    music.Volume = 1
    music.Pitch = 0.2
    music:Play()
end

local function showHint()
    local hint = Instance.new("Hint", workspace)
    hint.Text = "Team c00lkidd! Join today!"
end

local function particleEffect()
    for _, player in pairs(Players:GetPlayers()) do
        local function addParticles(character)
            local rootPart = character:WaitForChild("HumanoidRootPart", 5) or character:FindFirstChild("Torso")
            if rootPart then
                local attachment = Instance.new("Attachment", rootPart)
                local particle = Instance.new("ParticleEmitter", attachment)
                particle.Texture = "rbxassetid://158118263"
                particle.Rate = 25
                particle.Lifetime = NumberRange.new(2)
                particle.Speed = NumberRange.new(1, 2)
                particle.Size = NumberSequence.new(2)
                particle.LightEmission = 1
                particle.Transparency = NumberSequence.new(0)
                particle.SpreadAngle = Vector2.new(360, 360)
                particle.VelocitySpread = 180
            end
        end

        if player.Character then
            addParticles(player.Character)
        end

        player.CharacterAdded:Connect(addParticles)
    end
end

local function notifyScript(name, success)
    local imageId = "rbxassetid://158118263"
    local message = success and "Have fun!" or "Script didn't load"
    StarterGui:SetCore("SendNotification", {
        Title = name,
        Text = message,
        Icon = imageId,
        Duration = 5
    })
end

local function loadScript(url, name, useAsync)
    local success = pcall(function()
        if useAsync then
            loadstring(game:HttpGetAsync(url))()
        else
            loadstring(game:HttpGet(url))()
        end
    end)
    notifyScript(name, success)
end

local function loadInfiniteYield()
    loadScript("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", "Infinite Yield")
end

local function loadDex()
    loadScript("https://gist.githubusercontent.com/dannythehacker/1781582ab545302f2b34afc4ec53e811/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4", "Dark Dex")
end

local function loadRemoteSpy()
    loadScript("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpyBeta.lua", "RemoteSpy", true)
end

local function superRing()
    loadScript("https://rscripts.net/raw/super-ring-parts-v4-by-lukas_1741980981842_td0ummjymf.txt", "Super Ring")
end

local function johnDoe()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/c00lkidd-Gu3st/c00lgui/refs/heads/main/john%20doe"))()
end

local function rejoin()
    TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
end

local function serverHop()
    loadstring(game:HttpGet("https://pastebin.com/raw/cWbZhmD3"))()
end

local function tpClosest()
    local player = Players.LocalPlayer
    local char = player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local hrp = char.HumanoidRootPart
    local closest, dist = nil, math.huge
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local d = (hrp.Position - p.Character.HumanoidRootPart.Position).Magnitude
            if d < dist then
                dist = d
                closest = p
            end
        end
    end
    if closest and closest.Character and closest.Character:FindFirstChild("HumanoidRootPart") then
        hrp.CFrame = closest.Character.HumanoidRootPart.CFrame
    end
end

local function esp()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer and player.Character then
            local highlight = Instance.new("Highlight")
            highlight.Parent = player.Character
            highlight.FillColor = Color3.fromRGB(255, 0, 0)
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.FillTransparency = 0.5
            highlight.OutlineTransparency = 0
        end
    end
end

local function invisibleGui()
    loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
end

local function fly()
    local player = Players.LocalPlayer
    local char = player.Character
    if not char then return end
    local humanoid = char:FindFirstChild("Humanoid")
    if not humanoid then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    local bv = Instance.new("BodyVelocity")
    bv.MaxForce = Vector3.new(4000, 4000, 4000)
    bv.Velocity = Vector3.new(0, 0, 0)
    bv.Parent = root

    local keys = {}
    local speed = 50

    local function update()
        local cam = workspace.CurrentCamera
        local move = Vector3.new(0, 0, 0)
        if keys.W then move = move + cam.CFrame.LookVector end
        if keys.S then move = move - cam.CFrame.LookVector end
        if keys.A then move = move - cam.CFrame.RightVector end
        if keys.D then move = move + cam.CFrame.RightVector end
        if keys.Space then move = move + Vector3.new(0, 1, 0) end
        if keys.LeftShift then move = move - Vector3.new(0, 1, 0) end
        bv.Velocity = move * speed
    end

    local inputBegan = UserInputService.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            keys[input.KeyCode.Name] = true
        end
    end)

    local inputEnded = UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            keys[input.KeyCode.Name] = false
        end
    end)

    local heartbeat = RunService.Heartbeat:Connect(update)

    -- Toggle off on respawn
    player.CharacterRemoving:Connect(function()
        bv:Destroy()
        inputBegan:Disconnect()
        inputEnded:Disconnect()
        heartbeat:Disconnect()
    end)
end

local function noclip()
    local player = Players.LocalPlayer
    local char = player.Character
    if char then
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
        -- Re-apply on respawn
        player.CharacterAdded:Connect(function(newChar)
            task.wait(0.1)
            for _, part in pairs(newChar:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end)
    end
end

local function copyDiscord()
    setclipboard("https://discord.gg/rEFSQGtMR")
    StarterGui:SetCore("SendNotification", {
        Title = "Discord Invite",
        Text = "Copied to clipboard!",
        Duration = 3
    })
end

local actions = {
    applySkybox,
    decalSpam,
    activate666,
    playSound,
    showHint,
    particleEffect,
    loadInfiniteYield,
    loadDex,
    loadRemoteSpy,
    superRing,
    johnDoe,
    rejoin,
    serverHop,
    tpClosest,
    esp,
    invisibleGui,
    fly,
    noclip,
    copyDiscord
}

local labels = {
    "Skybox",
    "Decal Spam",
    "666",
    "Play Sound",
    "Hint",
    "Particles",
    "Infinite Yield",
    "Dark Dex",
    "RemoteSpy",
    "Super Ring",
    "John Doe",
    "Rejoin",
    "Server Hop",
    "TP Closest",
    "ESP",
    "Invisible GUI",
    "Fly",
    "Noclip",
    "Discord"
}

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")

ScreenGui.Name = "GridUI"
ScreenGui.Parent = game:GetService("CoreGui")

local buttonWidth = 120
local buttonHeight = 70
local spacingX = 30
local spacingY = 20
local rows = 3
local cols = 3
local titleHeight = 40
local topPadding = 10
local bottomPadding = 10
local pageBarHeight = 50

local totalWidth = buttonWidth * cols + spacingX * (cols - 1)
local totalHeight = titleHeight + topPadding + bottomPadding + rows * buttonHeight + (rows - 1) * spacingY + pageBarHeight

Frame.Name = "MainFrame"
Frame.Size = UDim2.new(0, totalWidth + 40, 0, totalHeight)
Frame.Position = UDim2.new(0.5, -(totalWidth + 40) / 2, 0.5, -totalHeight / 2)
Frame.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

Title.Size = UDim2.new(0, totalWidth + 40, 0, titleHeight)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 24
Title.Text = "c00lgui by c00lkidd"
Title.Parent = Frame

local backgroundImage = Instance.new("ImageLabel")
backgroundImage.Image = "rbxassetid://158118263"
backgroundImage.Size = UDim2.new(0, 300, 0, 300)
backgroundImage.Position = UDim2.new(0, -120, 0.5, -150)
backgroundImage.BackgroundTransparency = 1
backgroundImage.Rotation = -25
backgroundImage.ZIndex = 0
backgroundImage.Parent = Frame

local buttonsPerPage = rows * cols
local totalActions = #actions
local totalPages = 4
local currentPage = 1

local function updateButtons()
    -- Destroy existing action buttons and credits label
    for _, child in ipairs(Frame:GetChildren()) do
        if child:IsA("TextButton") and string.find(child.Name, "ActionButton") then
            child:Destroy()
        elseif child.Name == "CreditsLabel" then
            child:Destroy()
        end
    end

    local pageLabel = Frame:FindFirstChild("PageLabel")
    if pageLabel then
        if currentPage == totalPages then
            pageLabel.Text = "Page " .. currentPage .. "/" .. totalPages .. " (Credits)"
        else
            pageLabel.Text = "Page " .. currentPage .. "/" .. totalPages
        end
    end

    -- Update button states
    local leftBtn = Frame:FindFirstChild("LeftPage")
    local rightBtn = Frame:FindFirstChild("RightPage")
    if leftBtn then leftBtn.Visible = currentPage > 1 end
    if rightBtn then rightBtn.Visible = currentPage < totalPages end

    if currentPage == totalPages then
        -- Credits page
        local creditsLabel = Instance.new("TextLabel")
        creditsLabel.Name = "CreditsLabel"
        creditsLabel.Size = UDim2.new(1, -40, 1, -(titleHeight + topPadding + pageBarHeight + 20))
        creditsLabel.Position = UDim2.new(0, 20, 0, titleHeight + topPadding)
        creditsLabel.BackgroundTransparency = 1
        creditsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        creditsLabel.Font = Enum.Font.SourceSans
        creditsLabel.TextSize = 18
        creditsLabel.Text = "Credits to everyone who provided the loadstrings:\n\n- EdgeIY for Infinite Yield\n- dannythehacker for Dark Dex\n- 78n for SimpleSpy (RemoteSpy)\n- lukas for Super Ring\n- And all other contributors!\n\nThanks for making this possible!"
        creditsLabel.TextWrapped = true
        creditsLabel.ZIndex = 1
        creditsLabel.Parent = Frame
    else
        -- Action buttons page
        local pageStart = (currentPage - 1) * buttonsPerPage + 1
        local pageEnd = math.min(pageStart + buttonsPerPage - 1, totalActions)
        local numButtons = pageEnd - pageStart + 1

        local startX = 20
        local startY = titleHeight + topPadding

        for i = 0, numButtons - 1 do
            local actionIndex = pageStart + i
            local row = math.floor(i / cols)
            local col = i % cols
            local Button = Instance.new("TextButton")
            Button.Name = "ActionButton" .. actionIndex
            Button.Size = UDim2.new(0, buttonWidth, 0, buttonHeight)
            Button.Position = UDim2.new(0, startX + col * (buttonWidth + spacingX), 0, startY + row * (buttonHeight + spacingY))
            Button.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
            Button.BorderSizePixel = 0
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.Font = Enum.Font.SourceSansBold
            Button.TextSize = 20
            Button.Text = labels[actionIndex]
            Button.ZIndex = 1
            Button.Parent = Frame
            Button.MouseButton1Click:Connect(actions[actionIndex])
        end
    end
end

-- Create page navigation buttons
local leftBtn = Instance.new("TextButton")
leftBtn.Name = "LeftPage"
leftBtn.Size = UDim2.new(0, 50, 0, 30)
leftBtn.Position = UDim2.new(0, 20, 0, totalHeight - pageBarHeight + 10)
leftBtn.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
leftBtn.BorderSizePixel = 0
leftBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
leftBtn.Font = Enum.Font.SourceSansBold
leftBtn.TextSize = 24
leftBtn.Text = "<"
leftBtn.ZIndex = 2
leftBtn.Parent = Frame
leftBtn.MouseButton1Click:Connect(function()
    if currentPage > 1 then
        currentPage = currentPage - 1
        updateButtons()
    end
end)

local rightBtn = Instance.new("TextButton")
rightBtn.Name = "RightPage"
rightBtn.Size = UDim2.new(0, 50, 0, 30)
rightBtn.Position = UDim2.new(0, totalWidth - 70, 0, totalHeight - pageBarHeight + 10)
rightBtn.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
rightBtn.BorderSizePixel = 0
rightBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
rightBtn.Font = Enum.Font.SourceSansBold
rightBtn.TextSize = 24
rightBtn.Text = ">"
rightBtn.ZIndex = 2
rightBtn.Parent = Frame
rightBtn.MouseButton1Click:Connect(function()
    if currentPage < totalPages then
        currentPage = currentPage + 1
        updateButtons()
    end
end)

local pageLabel = Instance.new("TextLabel")
pageLabel.Name = "PageLabel"
pageLabel.Size = UDim2.new(0, 100, 0, 30)
pageLabel.Position = UDim2.new(0, (totalWidth - 100) / 2, 0, totalHeight - pageBarHeight + 10)
pageLabel.BackgroundTransparency = 1
pageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
pageLabel.Font = Enum.Font.SourceSansBold
pageLabel.TextSize = 18
pageLabel.Text = "Page 1/" .. totalPages
pageLabel.ZIndex = 2
pageLabel.Parent = Frame

-- Initial button creation
updateButtons()    local gui = Instance.new("ScreenGui")
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
          
