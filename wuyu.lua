game:GetService("StarterGui"):SetCore("SendNotification",{ 
    Title = "神秘保护中...", 
    Text = "请避免使用链接抓包脚本", 
    Duration = 1
})

spawn(function()
    while true do
        wait(1.5) 
        
        pcall(function()
            getgenv().rconsoletitle = nil
            getgenv().rconsoleprint = nil
            getgenv().rconsolewarn = nil
            getgenv().rconsoleinfo = nil
            getgenv().rconsolerr = nil
            getgenv().clonefunction = function(...) while true do end return end
            
            for _, child in pairs(game.CoreGui:GetChildren()) do
                if string.lower(child.Name) == 'devconsolemaster' then
                    game.Players.LocalPlayer:Kick("bro don't do that")
                    game:Shutdown()
                    while true do end
                    child:Destroy()
                end
            end
        end)
    end
end)

spawn(function()
    pcall(function()
    hookfunction(print, function(...)
        game.Players.LocalPlayer:Kick("bro don't do that")
        game:Shutdown()
        while true do end
        return
    end)
    hookfunction(warn, function(...)
        game.Players.LocalPlayer:Kick("bro don't do that")
        game:Shutdown()
        while true do end
        return
    end)
    hookfunction(error, function(...)
        game.Players.LocalPlayer:Kick("bro don't do that")
        game:Shutdown()
        while true do end
        return
    end)

    
hookfunction(print, function(a)
    if string.find(a:lower(), "http") then
        game.Players.LocalPlayer:Kick("bro don't do that")
        game:Shutdown()
        while true do end
    end
end)
hookfunction(warn, function(a)
    if string.find(a:lower(), "http") then
        game.Players.LocalPlayer:Kick("bro don't do that")
        game:Shutdown()
        while true do end
    end
end)
hookfunction(error, function(a)
    if string.find(a:lower(), "http") then
        game.Players.LocalPlayer:Kick("bro don't do that")
        game:Shutdown()
        while true do end
    end
end)
        
     local oldwrite
        oldwrite = hookfunction(writefile, function(file, content)
            if(string.find(string.lower(content), 'http') or string.find(string.lower(content), '//') or string.find(string.lower(content), 'https://discord.com/api/webhooks/')) then
                game.Players.LocalPlayer:Kick("bro don't do that")
                game:Shutdown()
                while true do end
                return
            end
        
            return oldwrite(file, content)
        end)
        local oldappend
        oldappend = hookfunction(appendfile, function(file, content)
            if(string.find(string.lower(content), 'http') or string.find(string.lower(content), '//') or string.find(string.lower(content), 'https://discord.com/api/webhooks/')) then
                game.Players.LocalPlayer:Kick("bro don't do that")
                game:Shutdown()
                while true do end
                return
            end
            return oldappend(file, content)
        end)
        game.DescendantAdded:Connect(function(c)
            if c and c:IsA('TextLabel') or c:IsA('TextButton') or c:IsA('Message') then
                if string.find(string.lower(c.Text), 'http') then
                    game.Players.LocalPlayer:Kick("bro don't do that")
                    game:Shutdown()
                    while true do end
                    c:Destroy()
                end
            end
        end)
        getgenv().rconsoletitle = nil
        getgenv().rconsoleprint = nil
        getgenv().rconsolewarn = nil
        getgenv().rconsoleinfo = nil
        getgenv().rconsolerr = nil
        getgenv().clonefunction = function(...) while true do end return end
        game.CoreGui.ChildAdded:Connect(function(c)
            if(string.lower(c.Name) == 'devconsolemaster') then
                game.Players.LocalPlayer:Kick("bro don't do that")
                game:Shutdown()
                while true do end
                c:Destroy()
            end
        end)
        local oldNamecall
        oldNamecall = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
            local method = getnamecallmethod()
            if(string.lower(method) == 'rconsoleprint') then
                game.Players.LocalPlayer:Kick("bro don't do that")
                game:Shutdown()
                while true do end
                return 
            end
            if(string.lower(method) == 'rconsoleinfo') then
                game.Players.LocalPlayer:Kick("bro don't do that")
                game:Shutdown()
                while true do end
                return 
            end
            if(string.lower(method) == 'rconsolewarn') then
                game.Players.LocalPlayer:Kick("bro don't do that")
                game:Shutdown()
                while true do end
                return 
            end
            if(string.lower(method) == 'rconsoleerr') then
                game.Players.LocalPlayer:Kick("bro don't do that")
                game:Shutdown()
                while true do end
                return
            end
            if(string.lower(method) == 'warn') then
                game.Players.LocalPlayer:Kick("bro don't do that")
                game:Shutdown()
                while true do end
                return
            end
            if(string.lower(method) == 'error') then
                game.Players.LocalPlayer:Kick("bro don't do that")
                game:Shutdown()
                while true do end
                return
            end
            if(string.lower(method) == 'rendernametag') then
                game.Players.LocalPlayer:Kick("bro don't do that")
                game:Shutdown()
                while true do end
                return 
            end
            return oldNamecall(self, ...)
        end))
        end)
    end)

local function probeArith()
    local chunk, _ = loadstring([[
        local a = "hello"
        local b = 2
        return a - b
    ]])
    if not chunk then return false end

    local ok, _ = pcall(chunk)
    return not ok        
end

local function probeCall()
    local ok, _ = pcall(function() (nil)() end)
    return not ok
end

local function probeFS()
    local ok, _ = pcall(function()
        if not isfolder("BS_script") then makefolder("BS_script") end
        if not isfolder("BS_script/Music") then makefolder("BS_script/Music") end
    end)
    return ok and isfolder("BS_script/Music")
end

local function coreLogic()
print("该脚本使用L.A.T脚本托管服务")
local p = game.Players.LocalPlayer
print("您好用户: "..p.Name.." | UID: "..p.UserId)
print(" 当前时间: " .. os.date("%X"))
print(" [L.A.T] : 脚本正在加载中...")
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

WindUI.TransparencyValue = 0.3

WindUI:SetTheme("Dark")

WindUI:Popup({
    Title = "欢迎使用WQ Hub",
    Icon = "sparkles",
    Content = "尊贵的WQ用户"..game.Players.LocalPlayer.Name..",加入我们qq群1078019244",
    Buttons = {
        {
            Title = "启动",
            Icon = "arrow-right",
            Variant = "Primary",
            Callback = function() 
                print("脚本已启动")
            end
        }
    }
})

wait(10)

local function gradient(text, startColor, endColor)
    local result = ""
    for i = 1, #text do
        local t = (i - 1) / (#text - 1)  
        
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)
        
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', r, g, b, text:sub(i, i))
    end
    return result
end

print("Anti Afk On")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local function createAdaptiveWatermark()
    if game.CoreGui:FindFirstChild("AUG_Watermark") then
        game.CoreGui.AUG_Watermark:Destroy()
    end

    local screenSize = workspace.CurrentCamera.ViewportSize
    local watermarkGui = Instance.new("ScreenGui")
    watermarkGui.Name = "AUG_Watermark"
    watermarkGui.Parent = game.CoreGui
    watermarkGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    watermarkGui.ResetOnSpawn = false

    local watermarkText = Instance.new("TextLabel")
    watermarkText.Name = "WatermarkText"
    watermarkText.Parent = watermarkGui
    watermarkText.Text = "五月和秋晚" 
    watermarkText.TextColor3 = Color3.fromRGB(255, 255, 255)
    watermarkText.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    watermarkText.TextStrokeTransparency = 0.3 
    watermarkText.Font = Enum.Font.GothamBold 
    watermarkText.TextSize = math.floor(screenSize.Y * 0.02)
    watermarkText.BackgroundTransparency = 1 
    watermarkText.AnchorPoint = Vector2.new(1, 0) 
    watermarkText.Position = UDim2.new(1, -10, 0, 10) 
    watermarkText.TextXAlignment = Enum.TextXAlignment.Right 
    watermarkText.Size = UDim2.new(0, watermarkText.TextBounds.X + 20, 0, watermarkText.TextBounds.Y + 10)

    workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
        screenSize = workspace.CurrentCamera.ViewportSize
        watermarkText.TextSize = math.floor(screenSize.Y * 0.02)
        watermarkText.Size = UDim2.new(0, watermarkText.TextBounds.X + 20, 0, watermarkText.TextBounds.Y + 10)
    end)
end

createAdaptiveWatermark()

local LBLG = Instance.new("ScreenGui")
local LBL = Instance.new("TextLabel")
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local Window = WindUI:CreateWindow({
    Title = "WQ Hub", 
    Icon = "star", 
    Author = "尊贵的"..game.Players.LocalPlayer.Name.."，欢迎使用WQ Hub", 
    Folder = "WindUI_Example", 
    Size = UDim2.fromOffset(600, 450), 
    Theme = "Dark", 
    
    User = {
        Enabled = true, 
        Anonymous = false, 
        Callback = function() 
            WindUI:Notify({
                Title = "点击",
                Content = "请输入文本",
                Duration = 3
            })
        end
    },
    SideBarWidth = 170, 
    ScrollBarEnabled = true 
})

Window:Tag({
    Title = "v3",
    Color = Color3.fromHex("#30ff6a")
})
Window:Tag({
    Title = "by五月 秋晚", 
    Color = Color3.fromHex("#315dff")
})
local TimeTag = Window:Tag({
    Title = "qq群1078019244",
    Color = Color3.fromHex("#000000")
})

local Tabs = {
    Game = Window:Section({ Title = "面板", Icon = "user" ,Opened = true }),
    Player = Window:Section({ Title = "玩家功能", Icon = "user" ,Opened = false }),
    Scripts = Window:Section({ Title = "脚本合集", Icon = "star" ,Opened = false }),
    Teleport = Window:Section({ Title = "传送功能", Icon = "map-pin" ,Opened = false }),
    Music = Window:Section({ Title = "音乐功能", Icon = "music" ,Opened = false }),
    Misc = Window:Section({ Title = "其他功能", Icon = "settings" ,Opened = false })
}

local TabHandles = {
    GameSettings = Tabs.Game:Tab({ Title = "通用带脚本介绍", Icon = "user" }),
    A2Settings = Tabs.Game:Tab({ Title = "关于作者", Icon = "info"}),
    UiSettings = Tabs.Game:Tab({ Title = "UI设置", Icon = "star" }),
    PlayerSettings = Tabs.Player:Tab({ Title = "玩家设置", Icon = "user" }),
    GameTools = Tabs.Game:Tab({ Title = "游戏工具", Icon = "gamepad-2" }),
    ScriptsCollection = Tabs.Scripts:Tab({ Title = "脚本合集", Icon = "package" }),
    TeleportTab = Tabs.Teleport:Tab({ Title = "传送", Icon = "map-pin" }),
    MusicTab = Tabs.Music:Tab({ Title = "音乐", Icon = "music" }),
    MiscTab = Tabs.Misc:Tab({ Title = "其他", Icon = "settings" })
}

TabHandles.UiSettings:Paragraph({
    Title = "设置ui的",
    Desc = "ui",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

local themeValues = {}
for name, _ in pairs(WindUI:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = TabHandles.UiSettings:Dropdown({
    Title = "更改ui颜色",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUI:SetTheme(theme)
    end
})

TabHandles.GameSettings:Paragraph({
    Title = "作者名称",
    Desc = "作者：五月天 秋晚",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.GameSettings:Paragraph({
    Title = "你的信息",
    Desc = "用户名: " .. game.Players.LocalPlayer.Name
})

TabHandles.GameSettings:Paragraph({
    Title = "账号年龄",
    Desc = game.Players.LocalPlayer.AccountAge .. "天"
})

TabHandles.GameSettings:Paragraph({
    Title = "服务器ID",
    Desc = tostring(game.PlaceId).Name
})

TabHandles.GameSettings:Button({
    Title = "复制作者QQ群",
    Description = "复制QQ群号到剪贴板",
    Callback = function()
        setclipboard("1078019244")
        WindUI:Notify({
            Title = "成功",
            Content = "QQ群号已复制到剪贴板",
            Duration = 3
        })
    end
})

TabHandles.GameSettings:Button({
    Title = "关闭脚本",
    Description = "关闭当前脚本界面",
    Callback = function()
        if game:GetService("CoreGui"):FindFirstChild("frosty") then
            game:GetService("CoreGui")["frosty"]:Destroy()
        end
    end
})

TabHandles.PlayerSettings:Slider({
    Title = "步行速度",
    Desc = "设置移动速度",
    Step = 1,
    Value = {
        Min = 16,
        Max = 500,
        Default = 16,
    },
    Callback = function(Speed)
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = Speed
        end
    end
})

TabHandles.PlayerSettings:Slider({
    Title = "跳跃高度",
    Desc = "设置跳跃高度",
    Step = 1,
    Value = {
        Min = 50,
        Max = 500,
        Default = 50,
    },
    Callback = function(Jump)
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = Jump
        end
    end
})

TabHandles.PlayerSettings:Slider({
    Title = "重力设置",
    Desc = "设置游戏重力",
    Step = 1,
    Value = {
        Min = 50,
        Max = 500,
        Default = 196,
    },
    Callback = function(Value)
        game.Workspace.Gravity = Value
    end
})

TabHandles.PlayerSettings:Toggle({
    Title = "无限跳",
    Description = "启用无限跳跃功能",
    Default = false,
    Callback = function(Value)
        if Value then
            local u
            local s = game:GetService("UserInputService")
            u = s.JumpRequest:Connect(function()
                if game.Players.LocalPlayer.Character then
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                end
            end)
        elseif getgenv().u then
            getgenv().u:Disconnect()
            getgenv().u = nil
        end
    end
})

TabHandles.PlayerSettings:Toggle({
    Title = "夜视",
    Description = "启用夜视功能",
    Default = false,
    Callback = function(Value)
        if Value then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
            game.Lighting.Brightness = 2
            game.Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
            game.Lighting.Brightness = 1
            game.Lighting.OutdoorAmbient = Color3.new(0, 0, 0)
        end
    end
})

TabHandles.PlayerSettings:Toggle({
    Title = "自动互动",
    Description = "自动触发附近的交互",
    Default = false,
    Callback = function(Value)
        if Value then
            getgenv().v = true
            task.spawn(function()
                while getgenv().v do
                    for w, x in pairs(workspace:GetDescendants()) do
                        if x:IsA("ProximityPrompt") then
                            fireproximityprompt(x)
                        end
                    end
                    task.wait(0.1)
                end
            end)
        else
            getgenv().v = false
        end
    end
})

TabHandles.PlayerSettings:Toggle({
    Title = "red eyes翻译脚本",
    Description = "比tx的好用",
    Default = false,
    Callback = function(Value)
        if Value then
            local success, err = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/S-WTB/Z/main/Z-自动翻译-缓存版.lua"))()
            end)
            
            if not success then
                warn("加载翻译脚本失败: " .. tostring(err))
                pcall(function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/S-WTB/Z/main/Z-自动翻译-缓存版"))()
                end)
            end
        else
            
            if _G.TranslateScript and _G.TranslateScript.Destroy then
                _G.TranslateScript:Destroy()
            end
            
            if _G.TranslationService then
                _G.TranslationService:DisconnectAll()
                _G.TranslationService = nil
            end
            game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
        end
    end
})

TabHandles.PlayerSettings:Toggle({
    Title = "神秘隐身脚本",
    Description = "启用隐身功能",
    Default = false,
    Callback = function(Value)
        if Value then
            loadstring(game:HttpGet("https://pastebin.com/raw/3Rnd9rHf"))()
        end
    end
})

TabHandles.PlayerSettings:Toggle({
    Title = "一键偷别人东西",
    Description = "获取其他玩家的道具",
    Default = false,
    Callback = function(Value)
        if Value then
            for i,v in pairs(game.Players:GetChildren()) do
                wait()
                for i,b in pairs(v.Backpack:GetChildren()) do
                    b.Parent = game.Players.LocalPlayer.Backpack
                end
            end
        end
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "神秘黑客脚本 v6",
    Description = "加载黑客脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v6x/source.lua"))()
    end
})

TabHandles.GameTools:Button({
    Title = "神秘穿墙脚本",
    Description = "启用穿墙功能",
    Callback = function()
        local Success_50, Error_Message_50 = pcall(function(...)
            local Players_14 = game.Players
            local LocalPlayer_13 = game.Players.LocalPlayer
            local Character_6 = LocalPlayer_13.Character
            local Children = Character_6:GetChildren()
            for i, v in pairs(Children) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end)
    end
})

TabHandles.GameTools:Button({
    Title = "击杀NPC",
    Description = "消灭所有NPC",
    Callback = function()
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "KillAllNPCs"
        screenGui.ResetOnSpawn = false

        local button = Instance.new("TextButton")
        button.Size = UDim2.new(0, 200, 0, 50)
        button.Position = UDim2.new(0.5, -100, 0.5, -25)
        button.Text = "Start kill"
        button.Font = Enum.Font.SourceSansBold
        button.TextSize = 20
        button.BackgroundColor3 = Color3.new(0.3, 0.7, 0.3)
        button.BorderSizePixel = 0

        button.Parent = screenGui
        screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        local dragging = false
        local dragInput, mousePos, framePos

        local function update(input)
            local delta = input.Position - mousePos
            button.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
        end

        button.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                mousePos = input.Position
                framePos = button.Position

                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)

        button.InputChanged:Connect(function(input)
            if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                dragInput = input
            end
        end)

        game:GetService("UserInputService").InputChanged:Connect(function(input)
            if dragging and input == dragInput then
                update(input)
            end
        end)

        local isKilling = false
        local killCoroutine

        local function killAllNPCs()
            while isKilling and task.wait(0.5) do
                for _, d in ipairs(game.Workspace:GetDescendants()) do
                    if d:IsA("Humanoid") and d.Parent then
                        local isPlayer = false
                        for _, player in ipairs(game.Players:GetPlayers()) do
                            if d.Parent == player.Character then
                                isPlayer = true
                                break
                            end
                        end
                        if not isPlayer and d.Parent.Name ~= "Elemental Spirit" then
                            d.Health = -1
                            d:ChangeState(Enum.HumanoidStateType.Dead)
                            d:TakeDamage(9999999999)
                        end
                    end
                end
            end
        end

        button.MouseButton1Click:Connect(function()
            if not dragging then
                isKilling = not isKilling
                if isKilling then
                    button.Text = "Stop kill"
                    button.BackgroundColor3 = Color3.new(1, 0, 0)
                    killCoroutine = coroutine.create(killAllNPCs)
                    coroutine.resume(killCoroutine)
                else
                    button.Text = "Start kill"
                    button.BackgroundColor3 = Color3.new(0.3, 0.7, 0.3)
                end
            end
        end)
    end
})

TabHandles.GameTools:Button({
    Title = "点击传送工具",
    Description = "点击即可传送",
    Callback = function()
        local mouse = game.Players.LocalPlayer:GetMouse()
        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Equip to Click TP"
        tool.Activated:connect(function()
            local pos = mouse.Hit.p + Vector3.new(0, 2.5, 0)
            pos = CFrame.new(pos.X, pos.Y, pos.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        end)
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
})

TabHandles.GameTools:Button({
    Title = "位置坐标",
    Description = "获取当前位置坐标",
    Callback = function()
        if game.Players.LocalPlayer.Character then
            local y = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local z = string.format("X: %.2f, Y: %.2f, Z: %.2f", y.X, y.Y, y.Z)
            setclipboard(z)
            WindUI:Notify({
                Title = "位置坐标",
                Content = "坐标已复制到剪贴板: " .. z,
                Duration = 3
            })
        end
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "绕过管理员检测",
    Description = "绕过管理员检测",
    Callback = function()
        local var198 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua"))
        var198()
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "防止甩飞",
    Description = "防止被甩飞",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/protezzx/Player-joined-left/refs/heads/main/Antifling%20script", true))()
        end)
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "Kenny甩飞",
    Description = "Kenny甩飞脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/DHJB%E7%94%A9%E9%A3%9E.txt"))()
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "自瞄NPC",
    Description = "自动瞄准NPC",
    Callback = function()
        local fov = 140
        local RunService = game:GetService("RunService")
        local UserInputService = game:GetService("UserInputService")
        local Cam = workspace.CurrentCamera
        local Player = game:GetService("Players").LocalPlayer

        local FOVring = Drawing.new("Circle")
        FOVring.Visible = false
        FOVring.Thickness = 2
        FOVring.Color = Color3.fromRGB(128, 0, 128)
        FOVring.Filled = false
        FOVring.Radius = fov
        FOVring.Position = Cam.ViewportSize / 2

        local isAiming = false
        local validNPCs = {}
        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

        local ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Parent = game.CoreGui

        local ToggleButton = Instance.new("TextButton")
        ToggleButton.Size = UDim2.new(0, 120, 0, 40)
        ToggleButton.Position = UDim2.new(0, 10, 0, 10)
        ToggleButton.Text = "AIMBOT: OFF"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        ToggleButton.TextColor3 = Color3.fromRGB(255, 50, 50)
        ToggleButton.Font = Enum.Font.GothamBold
        ToggleButton.TextSize = 14
        ToggleButton.Parent = ScreenGui

        local function isNPC(obj)
            return obj:IsA("Model") 
                and obj:FindFirstChild("Humanoid")
                and obj.Humanoid.Health > 0
                and obj:FindFirstChild("Head")
                and obj:FindFirstChild("HumanoidRootPart")
                and not game:GetService("Players"):GetPlayerFromCharacter(obj)
        end

        local function updateNPCs()
            local tempTable = {}
            for _, obj in ipairs(workspace:GetDescendants()) do
                if isNPC(obj) then
                    tempTable[obj] = true
                end
            end
            for i = #validNPCs, 1, -1 do
                if not tempTable[validNPCs[i]] then
                    table.remove(validNPCs, i)
                end
            end
            for obj in pairs(tempTable) do
                if not table.find(validNPCs, obj) then
                    table.insert(validNPCs, obj)
                end
            end
        end

        local function handleDescendant(descendant)
            if isNPC(descendant) then
                table.insert(validNPCs, descendant)
                local humanoid = descendant:WaitForChild("Humanoid")
                humanoid.Destroying:Connect(function()
                    for i = #validNPCs, 1, -1 do
                        if validNPCs[i] == descendant then
                            table.remove(validNPCs, i)
                            break
                        end
                    end
                end)
            end
        end

        workspace.DescendantAdded:Connect(handleDescendant)

        local function updateDrawings()
            FOVring.Position = Cam.ViewportSize / 2
            FOVring.Radius = fov * (Cam.ViewportSize.Y / 1080)
        end

        local function predictPos(target)
            local rootPart = target:FindFirstChild("HumanoidRootPart")
            local head = target:FindFirstChild("Head")
            if not rootPart or not head then
                return head and head.Position or rootPart and rootPart.Position
            end
            local velocity = rootPart.Velocity
            local predictionTime = 0.01
            local basePosition = rootPart.Position + velocity * predictionTime
            local headOffset = head.Position - rootPart.Position
            return basePosition + headOffset
        end

        local function getTarget()
            local nearest = nil
            local minDistance = math.huge
            local viewportCenter = Cam.ViewportSize / 2
            raycastParams.FilterDescendantsInstances = {Player.Character}
            for _, npc in ipairs(validNPCs) do
                local predictedPos = predictPos(npc)
                local screenPos, visible = Cam:WorldToViewportPoint(predictedPos)
                if visible and screenPos.Z > 0 then
                    local ray = workspace:Raycast(
                        Cam.CFrame.Position,
                        (predictedPos - Cam.CFrame.Position).Unit * 1000,
                        raycastParams
                    )
                    if ray and ray.Instance:IsDescendantOf(npc) then
                        local distance = (Vector2.new(screenPos.X, screenPos.Y) - viewportCenter).Magnitude
                        if distance < minDistance and distance < fov then
                            minDistance = distance
                            nearest = npc
                        end
                    end
                end
            end
            return nearest
        end

        local function aim(targetPosition)
            local currentCF = Cam.CFrame
            local targetDirection = (targetPosition - currentCF.Position).Unit
            local smoothFactor = 0.73
            local newLookVector = currentCF.LookVector:Lerp(targetDirection, smoothFactor)
            Cam.CFrame = CFrame.new(currentCF.Position, currentCF.Position + newLookVector)
        end

        local heartbeat = RunService.Heartbeat
        local lastUpdate = 0
        local UPDATE_INTERVAL = 0.4

        heartbeat:Connect(function(dt)
            updateDrawings()
            lastUpdate = lastUpdate + dt
            if lastUpdate >= UPDATE_INTERVAL then
                updateNPCs()
                lastUpdate = 0
            end
            if isAiming then
                local target = getTarget()
                if target then
                    local predictedPosition = predictPos(target)
                    aim(predictedPosition)
                end
            end
        end)

        ToggleButton.MouseButton1Click:Connect(function()
            isAiming = not isAiming
            FOVring.Visible = isAiming
            ToggleButton.Text = "AIMBOT: " .. (isAiming and "ON" or "OFF")
            ToggleButton.TextColor3 = isAiming and Color3.fromRGB(50, 255, 50) or Color3.fromRGB(255, 50, 50)
        end)

        local dragging, dragInput, dragStart, startPos

        local function update(input)
            local delta = input.Position - dragStart
            ToggleButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        ToggleButton.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = ToggleButton.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)

        ToggleButton.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)

        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end)

        updateNPCs()
        workspace.DescendantRemoved:Connect(function(descendant)
            if isNPC(descendant) then
                for i = #validNPCs, 1, -1 do
                    if validNPCs[i] == descendant then
                        table.remove(validNPCs, i)
                        break
                    end
                end
            end
        end)

        game:GetService("Players").PlayerRemoving:Connect(function()
            FOVring:Remove()
            ScreenGui:Destroy()
        end)
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "外部房间发言",
    Description = "需要和朋友商量房间号",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://latlat.lat/script/raw/Chat"))()
        end)
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "DM飞行脚本",
    Description = "旧冬飞行脚本",
    Callback = function()
        local function loadScript()
            local url = "https://raw.githubusercontent.com/shenmi9178/Dong-s-script/refs/heads/main/%E5%86%AC%E6%9F%90%E9%A3%9E%E8%A1%8C.lua"
            local code = game:HttpGet(url, true)
            assert(loadstring(code), "脚本加载失败")()
        end
        
        local success, err = pcall(loadScript)
        if not success then
            warn("飞行脚本错误:", err)
        end
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "飞行脚本",
    Description = "加载飞行脚本",
    Callback = function()
        pcall(function()
            loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\104\97\114\107\105\110\100\101\118\101\108\111\112\101\114\47\98\57\97\98\49\55\51\56\53\97\48\48\50\49\48\49\51\57\53\49\50\52\100\53\49\49\98\49\56\102\56\55\53\52\102\55\49\55\50\55\51\47\114\97\119\47\55\50\99\51\56\54\101\100\101\54\52\102\100\54\48\50\99\52\52\98\48\51\98\48\57\51\102\55\50\56\99\50\100\48\51\54\52\98\49\55\55\49\55\48\51\47\102\108\121\46\108\117\97\39\41\41\41\40\41")()
        end)
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "回溯脚本",
    Description = "时间回溯脚本",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/MSTTOPPER/Scripts/refs/heads/main/FlashBack"))()
        end)
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "无头加断腿",
    Description = "可以装牛逼",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Permanent-Headless-And-korblox-Script-4140"))()
    end
})

TabHandles.GameTools:Button({
    Title = "增加FPS",
    Description = "测试可以用",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/smalldesikon/hun/ee906e570c0f5b22e580a20decaba23757533569/fps"))()
    end
})

TabHandles.GameTools:Button({
    Title = "透视NPC功能",
    Description = "透视显示NPC",
    Callback = function()
        local RunService = game:GetService("RunService")
        local Workspace = game:GetService("Workspace")
        
        local NPCESPTable = {}
        
        local function IsNPC(model)
            if not model:IsA("Model") then return false end
            
            local humanoid = model:FindFirstChildOfClass("Humanoid")
            if not humanoid then return false end
            
            local isPlayer = false
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player.Character == model then
                    isPlayer = true
                    break
                end
            end
            
            return not isPlayer and humanoid.Health > 0
        end
        
        local function CreateNPCESP(npc)
            if NPCESPTable[npc] then return end
            
            local head = npc:FindFirstChild("Head") or npc:FindFirstChild("HumanoidRootPart")
            if not head then return end
            
            local billboard = Instance.new("BillboardGui")
            billboard.Name = "NPCESP_" .. npc.Name
            billboard.Adornee = head
            billboard.Size = UDim2.new(0, 150, 0, 30)
            billboard.StudsOffset = Vector3.new(0, 3, 0)
            billboard.AlwaysOnTop = true
            billboard.Parent = head
            
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.Text = npc.Name
            textLabel.TextColor3 = Color3.new(1, 1, 1)
            textLabel.TextStrokeTransparency = 0
            textLabel.TextSize = 14
            textLabel.Font = Enum.Font.Gotham
            textLabel.Parent = billboard
            
            local highlight = Instance.new("Highlight")
            highlight.Name = "NPCESP_Highlight"
            highlight.FillColor = Color3.new(0.5, 0, 0.5)
            highlight.FillTransparency = 0.7
            highlight.OutlineColor = Color3.new(1, 1, 1)
            highlight.OutlineTransparency = 0
            highlight.Adornee = npc
            highlight.Parent = npc
            
            NPCESPTable[npc] = {
                Billboard = billboard,
                Highlight = highlight
            }
        end
        
        local function RemoveNPCESP(npc)
            local espData = NPCESPTable[npc]
            if espData then
                if espData.Billboard then
                    espData.Billboard:Destroy()
                end
                if espData.Highlight then
                    espData.Highlight:Destroy()
                end
                NPCESPTable[npc] = nil
            end
        end
        
        local function ScanForNPCs()
            for _, descendant in pairs(Workspace:GetDescendants()) do
                if IsNPC(descendant) then
                    CreateNPCESP(descendant)
                end
            end
        end
        
        ScanForNPCs()
        
        local scanConnection
        scanConnection = RunService.Heartbeat:Connect(function()
            for _, descendant in pairs(Workspace:GetDescendants()) do
                if IsNPC(descendant) and not NPCESPTable[descendant] then
                    CreateNPCESP(descendant)
                end
            end
            
            for npc, espData in pairs(NPCESPTable) do
                if not npc:IsDescendantOf(Workspace) then
                    RemoveNPCESP(npc)
                end
            end
        end)
        
        local descendantAddedConnection
        descendantAddedConnection = Workspace.DescendantAdded:Connect(function(descendant)
            if IsNPC(descendant) then
                CreateNPCESP(descendant)
            end
        end)
        
        getgenv().NPCESP = {
            Table = NPCESPTable,
            ScanConnection = scanConnection,
            DescendantConnection = descendantAddedConnection
        }
        
        WindUI:Notify({
            Title = "NPC透视",
            Content = "NPC透视已启用，重新点击此按钮关闭",
            Duration = 3
        })
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "西格玛spy",
    Description = "间谍工具",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/depthso/Sigma-Spy/refs/heads/main/Main.lua"))()
    end
})

TabHandles.GameTools:Button({
    Title = "ESP透视",
    Description = "启用玩家ESP透视",
    Callback = function()
        local C = game:GetService("Players")
        local function D(E)
            if E ~= C.LocalPlayer then
                E.CharacterAdded:Connect(function(F)
                    wait(1)
                    local G = Instance.new("Highlight")
                    G.Name = "ESP_" .. E.Name
                    G.Adornee = F
                    G.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    G.FillColor = Color3.fromRGB(255, 0, 0)
                    G.FillTransparency = 0.5
                    G.OutlineColor = Color3.fromRGB(255, 255, 255)
                    G.OutlineTransparency = 0
                    G.Parent = F
                end)
                if E.Character then
                    local G = Instance.new("Highlight")
                    G.Name = "ESP_" .. E.Name
                    G.Adornee = E.Character
                    G.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    G.FillColor = Color3.fromRGB(255, 0, 0)
                    G.FillTransparency = 0.5
                    G.OutlineColor = Color3.fromRGB(255, 255, 255)
                    G.OutlineTransparency = 0
                    G.Parent = E.Character
                end
            end
        end
        for H, I in pairs(C:GetPlayers()) do
            D(I)
        end
        C.PlayerAdded:Connect(D)
        WindUI:Notify({
            Title = "ESP透视",
            Content = "玩家ESP透视已启用",
            Duration = 3
        })
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "双环黑洞",
    Description = "黑洞效果",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E5%8F%8C%E7%8E%AF%E6%8E%A7%E5%88%B6%E9%BB%91%E6%B4%9E.txt"))()
        end)
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "哥特风黑洞",
    Description = "神秘黑洞效果",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E5%93%A5%E7%89%B9%E9%A3%8E%E9%BB%91%E6%B4%9E.txt"))()
        end)
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "旋转脚本",
    Description = "旋转效果",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/r97d7dS0", true))()
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "ragebot",
    Description = "愤怒机器人",
    Callback = function()
        pcall(function()
            local Players = game:GetService("Players")
            local RunService = game:GetService("RunService")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Debris = game:GetService("Debris")
            local LocalPlayer = Players.LocalPlayer
            local Camera = workspace.CurrentCamera
            local ShootEvent = ReplicatedStorage:WaitForChild("GunRemotes"):WaitForChild("ShootEvent")

            local MaxDistance = 1500

            local function getNearestTarget()
                local myPos = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if not myPos then return nil end
                myPos = myPos.Position
                local nearest, minDist = nil, MaxDistance
                for _, plr in ipairs(Players:GetPlayers()) do
                    if plr ~= LocalPlayer then
                        local char = plr.Character
                        if char and char:FindFirstChild("Head") and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
                            if plr.Team == LocalPlayer.Team then continue end
                            local head = char.Head
                            local dist = (head.Position - myPos).Magnitude
                            if dist < minDist then
                                minDist = dist
                                nearest = head
                            end
                        end
                    end
                end
                return nearest
            end

            RunService.Heartbeat:Connect(function()
                local char = LocalPlayer.Character
                local hrp = char:FindFirstChild("HumanoidRootPart")
                local tool = char:FindFirstChildOfClass("Tool")
                if not hrp or not tool or tool:GetAttribute("ToolType") ~= "Gun" then return end
                local myPos = hrp.Position
                local targetHead = getNearestTarget()
                if not targetHead then return end
                local hitPos = targetHead.Position
                pcall(function()
                    ShootEvent:FireServer({
                        {
                            myPos,
                            hitPos,
                            targetHead
                        }
                    })
                end)
            end)
        end)
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "德与中山",
    Description = "非常有实力的脚本",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dream77239/Deyu-Zhongshan/refs/heads/main/%E5%BE%B7%E4%B8%8E%E4%B8%AD%E5%B1%B1.txt"))()
        end)
    end
})

TabHandles.GameTools:Paragraph({
    Title = "通用脚本",
    Desc = "适用于多个游戏的脚本"
})

TabHandles.GameTools:Button({
    Title = "lY指令",
    Description = "加载无限收益指令集",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end
})

TabHandles.GameTools:Button({
    Title = "Dex抓包工具",
    Description = "加载Dex浏览器",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoFenHG/Dex-Explorer/refs/heads/main/Dex-Explorer.lua"))()
    end
})

TabHandles.GameTools:Button({
    Title = "Spy调试工具",
    Description = "加载Spy调试工具",
    Callback = function()
        getgenv().Spy="汉化Spy" 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/refs/heads/main/spy%E6%B1%89%E5%8C%96%20(1).txt"))()
    end
})

TabHandles.GameTools:Button({
    Title = "位置仪",
    Description = "显示当前位置坐标",
    Callback = function()
        local ScreenGui = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local title = Instance.new("TextLabel")
        local copy = Instance.new("TextButton")
        local pos = Instance.new("TextBox")
        local find = Instance.new("TextButton")
        
        ScreenGui.Parent = game.CoreGui
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        Frame.Parent = ScreenGui
        Frame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0.639646292, 0, 0.399008662, 0)
        Frame.Size = UDim2.new(0, 387, 0, 206)
        Frame.Active = true
        
        title.Name = "title"
        title.Parent = Frame
        title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        title.BorderSizePixel = 0
        title.Size = UDim2.new(0, 387, 0, 50)
        title.Font = Enum.Font.GothamBold
        title.Text = "位置仪"
        title.TextColor3 = Color3.fromRGB(255, 255, 255)
        title.TextSize = 30.000
        title.TextWrapped = true
        
        copy.Name = "copy"
        copy.Parent = Frame
        copy.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        copy.BorderSizePixel = 0
        copy.Position = UDim2.new(0.527131796, 0, 0.635922313, 0)
        copy.Size = UDim2.new(0, 148, 0, 50)
        copy.Font = Enum.Font.GothamSemibold
        copy.Text = "复制"
        copy.TextColor3 = Color3.fromRGB(255, 255, 255)
        copy.TextSize = 20.000
        
        pos.Name = "pos"
        pos.Parent = Frame
        pos.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        pos.BorderSizePixel = 0
        pos.Position = UDim2.new(0.0904392749, 0, 0.305825233, 0)
        pos.Size = UDim2.new(0, 317, 0, 50)
        pos.Font = Enum.Font.GothamSemibold
        pos.Text = ""
        pos.TextColor3 = Color3.fromRGB(255, 255, 255)
        pos.TextSize = 14.000
        pos.TextWrapped = true
        
        find.Name = "find"
        find.Parent = Frame
        find.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        find.BorderSizePixel = 0
        find.Position = UDim2.new(0.0904392898, 0, 0.635922313, 0)
        find.Size = UDim2.new(0, 148, 0, 50)
        find.Font = Enum.Font.GothamSemibold
        find.Text = "查找当前位置"
        find.TextColor3 = Color3.fromRGB(255, 255, 255)
        find.TextSize = 20.000
        
        copy.MouseButton1Click:Connect(function()
            setclipboard(pos.Text)
        end)
        
        find.MouseButton1Down:Connect(function()
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart then
                pos.Text = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        end)
    end
})

TabHandles.ScriptsCollection:Paragraph({
    Title = "热门脚本合集",
    Desc = "各种游戏的脚本"
})

TabHandles.ScriptsCollection:Button({
    Title = "冷脚本",
    Description = "冷脚本QQ群815883059",
    Callback = function()
        getgenv().Leng="冷脚本QQ群815883059" 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/lenglenglenglenglenglenglenglenglenglenglengleng-cold-script-LBT-H/refs/heads/main/-cold-script-LBT-H.txt"))()
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "星河脚本",
    Description = "星河脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AWDX-DYVB/test/main/%E6%B2%B3%E6%B5%81%E6%97%A0%E5%AF%86%E9%92%A5.lua"))()
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "XA HUB",
    Description = "XA脚本中心",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/h8nC0fLb", true))()
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "落叶中星",
    Description = "落叶中心脚本",
    Callback = function()
        getgenv().LS="落叶中心" 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()
    end
})

TabHandles.ScriptsCollection:Button({
    Title = "小灵脚本",
    Description = "小凌中心脚本",
    Callback = function()
        XiaoLing = "小凌中心.Cocoe" 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/Xiao-Ling-NEO.UI/main/%E2%82%AA%E5%B0%8F%E5%87%8C%E4%B8%AD%E5%BF%83(%E6%96%B0%E7%89%88ui).txt"))("小凌中心")("作者QQ:1211373508")
    end
})

TabHandles.TeleportTab:Paragraph({
    Title = "加入其他游戏",
    Desc = "传送到其他Roblox游戏"
})

local games = {
    {"极速传奇", 3101667897},
    {"鲨口生求2", 8908228901},
    {"监狱人生", 155615604},
    {"忍者传奇", 3956818381},
    {"Break in (故事)", 1318971886},
    {"自然灾害生存游戏", 189707},
    {"力量传奇", 3623096087},
    {"餐厅大亨2", 3398014311}
}

for _, gameInfo in ipairs(games) do
    TabHandles.TeleportTab:Button({
        Title = "加入" .. gameInfo[1],
        Description = "传送到" .. gameInfo[1],
        Callback = function()
            local game_id = gameInfo[2]
            game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
        end
    })
end

TabHandles.TeleportTab:Paragraph({
    Title = "位置传送",
    Desc = "传送至特定位置"
})

TabHandles.TeleportTab:Button({
    Title = "珠宝店",
    Description = "传送到珠宝店",
    Callback = function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(671.68688964844, 6.2448601722717, -655.50268554688)
        end
    end
})

TabHandles.TeleportTab:Button({
    Title = "医院",
    Description = "传送到医院",
    Callback = function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1091.5296630859, 6.0434188842773, -457.62033081055)
        end
    end
})

TabHandles.TeleportTab:Button({
    Title = "警察局",
    Description = "传送到警察局",
    Callback = function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1543.3168945312, 6.2433180809021, -682.63525390625)
        end
    end
})

TabHandles.TeleportTab:Button({
    Title = "银行",
    Description = "传送到银行",
    Callback = function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1170.8796386719, 13.850684165955, -25.795112609863)
        end
    end
})

TabHandles.TeleportTab:Button({
    Title = "传送到出生点",
    Description = "传送回出生位置",
    Callback = function()
        if game.Players.LocalPlayer.Character then
            local O = workspace:FindFirstChild("SpawnLocation") or game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if O then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = O.CFrame
            end
        end
    end
})

TabHandles.MusicTab:Paragraph({
    Title = "背景音乐",
    Desc = "播放各种音乐"
})

local sounds = {
    {"防空警报", 792323017},
    {"义勇军进行曲", 1845918434},
    {"彩虹瀑布", 1837879082},
    {"火车音", 3900067524},
    {"植物大战僵尸", 158260415},
    {"梅西", 7354576319},
    {"蜘蛛侠出场声音", 9108472930},
    {"消防车", 317455930},
    {"国歌", 1845918434},
    {"电音", 6911766512}
}

for _, soundInfo in ipairs(sounds) do
    TabHandles.MusicTab:Button({
        Title = soundInfo[1],
        Description = "播放" .. soundInfo[1],
        Callback = function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. soundInfo[2]
            sound.Parent = game.Workspace
            sound:Play()
            WindUI:Notify({
                Title = "音乐",
                Content = "正在播放: " .. soundInfo[1],
                Duration = 3
            })
        end
    })
end

TabHandles.MusicTab:Button({
    Title = "国外音乐脚本",
    Description = "加载音乐脚本",
    Callback = function()          
        loadstring(game:HttpGet(('https://pastebin.com/raw/g97RafnE'),true))()                   
    end
})

TabHandles.MiscTab:Paragraph({
    Title = "游戏脚本",
    Desc = "特定游戏的脚本"
})

TabHandles.MiscTab:Button({
    Title = "通缉",
    Description = "加载通缉脚本（五月天9178）",
    Callback = function()
        loadstring(game:HttpGet("https://latlat.lat/script/raw/WuYueTian/9178"))()
        WindUI:Notify({
            Title = "通缉",
            Content = "通缉脚本已加载",
            Duration = 3
        })
    end
})

TabHandles.MiscTab:Button({
    Title = "俄亥俄州杀戮光环",
    Description = "俄亥俄州杀戮光环",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/main/Games/Ohio"))()
    end
})

TabHandles.MiscTab:Button({
    Title = "俄亥俄州死亡笔记",
    Description = "俄亥俄州死亡笔记",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
    end
})

TabHandles.MiscTab:Button({
    Title = "俄亥俄州印钞机",
    Description = "寻找印钞机",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XTScripthub/Ohio/main/MoneyPrinterFinder"))()
    end
})

TabHandles.MiscTab:Button({
    Title = "力量传奇脚本",
    Description = "力量传奇修改",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
    end
})

TabHandles.MiscTab:Button({
    Title = "监狱人生脚本",
    Description = "监狱人生功能",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
    end
})

TabHandles.MiscTab:Button({
    Title = "Doors脚本",
    Description = "Doors游戏脚本",
    Callback = function()
        loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
    end
})

TabHandles.MiscTab:Button({
    Title = "Doors脚本",
    Description = "Doors游戏脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shenmi9178/Dong-s-script/refs/heads/main/%E5%86%AC%E6%9F%90%E8%A2%AB%E9%81%97%E5%BC%83.lua"))()
    end
})

TabHandles.MiscTab:Button({
    Title = "压力脚本",
    Description = "压力游戏脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hun/main/%E5%8E%8B%E5%8A%9B123456.lua"))()
    end
})

TabHandles.MiscTab:Button({
    Title = "画质增强",
    Description = "光影画质增强",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
    end
})

TabHandles.MiscTab:Button({
    Title = "犯罪",
    Description = "五月写的",
    Callback = function()
        loadstring(game:HttpGet("https://latlat.lat/script/raw/WuYueTian/fz"))()
    end
})

TabHandles.MiscTab:Button({
    Title = "柔术",
    Description = "五月写的",
    Callback = function()
        loadstring(game:HttpGet("https://latlat.lat/script/raw/WuYueTian/rs"))()
    end
})

TabHandles.MiscTab:Button({
    Title = "重新加入服务器",
    Description = "重新加入当前服务器",
    Callback = function()
        task.wait(1)
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
})

local S
TabHandles.UiSettings:Toggle({
    Title = "显示FPS",
    Description = "在屏幕上显示FPS",
    Default = false,
    Callback = function(p)
        if p then
            S = Instance.new("ScreenGui")
            S.Name = "T"
            S.Parent = game.CoreGui
            local U = Instance.new("Frame")
            U.Size = UDim2.new(0, 100, 0, 30)
            U.Position = UDim2.new(0, 10, 0, 10)
            U.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            U.BackgroundTransparency = 0.5
            U.Parent = S
            local V = Instance.new("TextLabel")
            V.Size = UDim2.new(1, 0, 1, 0)
            V.Text = "FPS: 60"
            V.TextColor3 = Color3.fromRGB(255, 255, 255)
            V.Font = Enum.Font.GothamMedium
            V.TextSize = 14
            V.BackgroundTransparency = 1
            V.Parent = U
            local W = 0
            local X = tick()
            game:GetService("RunService").RenderStepped:Connect(function()
                W = W + 1
                local Y = tick()
                if Y - X >= 1 then
                    local Z = math.floor(W / (Y - X))
                    V.Text = "FPS: " .. Z
                    W = 0
                    X = Y
                end
            end)
        elseif S then
            S:Destroy()
            S = nil
        end
    end
})

TabHandles.A2Settings:Button({
    Title = "脚本信息",
    Description = "点击显示脚本信息",
    Callback = function()
        WindUI:Notify({
            Title = "WQ Hub 完整版",
            Content = "制作人: 五月天 / 秋晚\nQQ: 3335753204\n更新时间: 2026年1月19日\n牛逼无敌吊炸天版本",
            Duration = 5
        })
    end
})

WindUI:Notify({
    Title = "WQ Hub 完整版",
    Content = "所有功能已加载完成）",
    Duration = 5
})

print("WYT Hub 完整版加载完成！")
end

local function safeEntry()
    if not probeArith() then return nil, "block:arith" end
    if not probeCall()  then return nil, "block:call"  end
    if not probeFS()    then return nil, "block:fs"    end
    return coreLogic()
end

local success, tag = safeEntry()
if not success then
    warn("BS：已拦截异常执行 (" .. tostring(tag) .. ")")
    script:ClearAllChildren()
    script.Source = ""
    return
end