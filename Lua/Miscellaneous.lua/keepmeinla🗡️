--keepmeinla

getgenv().Tick = tick()
getgenv().Players = game:GetService'Players'
getgenv().User = Players.LocalPlayer
getgenv().ReplicatedStorage = game:GetService'ReplicatedStorage'
getgenv().RunService = game:GetService'RunService'
getgenv().StarterGui = game:GetService'StarterGui'
getgenv().Core = game:GetService'CoreGui'
getgenv().UserInputService = game:GetService'UserInputService'
getgenv().Work = game:GetService'Workspace'
getgenv().Camera = Work.CurrentCamera
getgenv().TeleportService = game:GetService'TeleportService'
getgenv().Visualizing = game:GetService'VirtualUser'
getgenv().Lighting = game:GetService'Lighting'
getgenv().NetworkProtoCall = math.random(0,255)

-- Booleans --

local Airwalk = false
local AntiAim = false
local AntiVoid = true
local CFrameSprint = false
local ClearWalls = false
local Freeze = false
local Highlight = false
local InfiniteForcefield = false
local InfiniteJump = false
local LookVectorSprint = false
local MoveDirectionSprint = true
local Noclip = false
local Notify = true
local Outerspace = false
local PaidFeaturePopUps = true
local Protect = false
local RectangeEsp = true
local Shadows = true
local Spinning = false
local Sprint = false
local Sprinting = false
local TimeChange = false
local TracerEsp = true
local Viewing = false
local Void = false

-- Values --

local AntivoidDistance = 9e25
local FieldOfView = 70
local FovCircleThickness = 1
local FovCircleRadius = 70
local GravitionalPull = 196.2
local HippedHeight = 0
local JumpingPower = 50
local LookVectorSprintSpeed = 200
local SpinSpeed = 40
local Time = 12
local TracerFill = 0
local WalkingSpeed = 16
local ZoomDistance = 20

-- Nils --

local AgeTarget;
local AntiaimMethod;
local EspTarget;
local HighlightedTarget;
local LastdeathCFrame;
local TracedTarget;
local ProtectTarget;
local UntracedTarget;
local ViewTarget;

-- Strings --

local Font = Enum.Font.Code
local ScriptColour = Color3.fromRGB(170, 0, 255)
local TargetColor = Color3.fromRGB(255,0,0)
local FovCirlceColor = ScriptColour
local OwnerColor = Color3.fromRGB(0, 0, 255)
local SprintingMethod = 'MoveDirection'

-- Instance --

local Screen = Instance.new('ScreenGui')
Screen.Name = 'Backdoor.JSON'
Screen.Parent = Core
Screen.ResetOnSpawn = false

local CommandBar = Instance.new('ImageLabel', Screen)
local UserCommand = Instance.new('TextBox', CommandBar)
local BackFrameToCommand = Instance.new('Frame', CommandBar)
local ScrollFrame = Instance.new('ScrollingFrame', BackFrameToCommand)
local CommandList = Instance.new('TextLabel', ScrollFrame)
local CommandBarImage = Instance.new('ImageLabel', BackFrameToCommand)

local Spin = Instance.new('BodyAngularVelocity', User.Character:FindFirstChild'HumanoidRootPart')

local CmdImage = "http://www.roblox.com/asset/?id=9290290399"

local Air = Instance.new('Part', Work)

local FovCircle = Drawing.new('Circle')

FovCircle.Visible = false
FovCircle.Filled = false
FovCircle.Transparency = 1
FovCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y /2)

-- Tables --

local Hotkeys = {
    CommandBarKey = 'Period';
    NoclipKey = 'X';
    SprintKey = 'LeftShift';

    ['W'] = false;
    ['A'] = false;
    ['S'] = false;
    ['D'] = false; 
}

local Commands = {}
local CommandCount = 0
local Data = {}
local Owners = {
    [193003759] = true;-- cordends
    [2298663546] = true; -- sevenspacedgoddess   
    [2291506324] = true; -- spacedgods
    [3891067746] = true;-- spacedgodcoryu;
    [1903396851] = true; -- sevenspacedgods;
    [4055426568] = true; -- maliciouscodes;
}

getgenv().AddNotification = function(title, text, time) 
    StarterGui:SetCore("SendNotification", 
    {Title = title; Text = text; Icon = 'rbxassetid://13941412659'; Duration = time;})
end

local function NormalSettings()
    if User and Work and User.Character and typeof(NormalSettings) == 'function' then
        if User.Character:FindFirstChild'Humanoid' and User.Character:FindFirstChild'Humanoid'.JumpPower then
            Work[User].Character:WaitForChild'Humanoid'.JumpPower = Work[User].Character:WaitForChild'Humanoid'.JumpPower
        elseif User.Character:FindFirstChild'Humanoid' and User.Character:FindFirstChild'Humanoid'.Walkspeed then
            Work[User].Character:WaitForChild'Humanoid'.WalkSpeed = Work[User].Character:WaitForChild'Humanoid'.WalkSpeed
        elseif User.Character:FindFirstChild'Humanoid' and User.Character:FindFirstChild'Humanoid'.HipHeight then
            Work[User].Character:WaitForChild'Humanoid'.HipHeight = Work[User].Character:WaitForChild'Humanoid'.HipHeight
        end
    end
end

local function Owners(Coryu)
    for _,v in next, Players:GetPlayers() do
        if v.Name == Owners[v.Name] then
            Core:FindFirstChild'PlayerList':FindFirstChild'PlayerListMaster':FindFirstChild'OffsetFrame':FindFirstChild'PlayerScrollList':FindFirstChild'SizeOffsetFrame':FindFirstChild'ScrollingFrameContainer':FindFirstChild'ScrollingFrameClippingFrame':FindFirstChild'ScollingFrame':FindFirstChild'OffsetUndoFrame'["p_"..[Owners[v.Name.UserId]]]:FindFirstChild'ChildrenFrame':FindFirstChild'NameFrame':FindFirstChild'BGFrame':FindFirstChild'OverlayFrame':FindFirstChild'PlayerName':FindFirstChild'PlayerName'.TextColor3 = OwnerColor
        end
    end    
end

CommandBar.Name = "CommandBar"
CommandBar.BackgroundTransparency = 1.000
CommandBar.Position = UDim2.new(0.849968195, 0, 0.97, 0)
CommandBar.Size = UDim2.new(0, 236, 0, 33)
CommandBar.ZIndex = 2
CommandBar.Image = "rbxassetid://3570695787"
CommandBar.ImageColor3 = Color3.fromRGB(20, 20, 20)
CommandBar.ScaleType = Enum.ScaleType.Slice
CommandBar.SliceCenter = Rect.new(100, 100, 100, 100)
CommandBar.SliceScale = 0.040

UserCommand.Name = "UserCommand"
UserCommand.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserCommand.BackgroundTransparency = 1.000
UserCommand.BorderColor3 = Color3.fromRGB(0, 0, 0)
UserCommand.BorderSizePixel = 0
UserCommand.Position = UDim2.new(0, 0, -9.24775122e-07, 0)
UserCommand.Size = UDim2.new(0, 236, 0, 32)
UserCommand.ZIndex = 3
UserCommand.Font = Font
UserCommand.PlaceholderColor3 = ScriptColour
UserCommand.PlaceholderText = "Enter Command!"
UserCommand.Text = ""
UserCommand.TextColor3 = ScriptColour
UserCommand.TextSize = 15.000

BackFrameToCommand.Name = "BackFrameToCommand"
BackFrameToCommand.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
BackFrameToCommand.BorderColor3 = Color3.fromRGB(0, 0, 0)
BackFrameToCommand.BorderSizePixel = 0
BackFrameToCommand.Position = UDim2.new(0, 0, 0.969697893, 0)
BackFrameToCommand.Size = UDim2.new(0, 236, 0, 225)

ScrollFrame.Name = "ScrollFrame"
ScrollFrame.Active = true
ScrollFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
ScrollFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollFrame.BorderSizePixel = 0
ScrollFrame.Position = UDim2.new(0.0296610165, 0, 0, 0)
ScrollFrame.Size = UDim2.new(0, 222, 0, 225)
ScrollFrame.CanvasSize = UDim2.new(0, 0, 4, 0)
ScrollFrame.ScrollBarImageColor3 = ScriptColour
ScrollFrame.ScrollBarThickness = 5

CommandList.Name = "CommandList"
CommandList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandList.BackgroundTransparency = 1.000
CommandList.BorderColor3 = Color3.fromRGB(0, 0, 0)
CommandList.BorderSizePixel = 0
CommandList.Position = UDim2.new(0, 0, -1.35633684e-07, 0)
CommandList.Size = UDim2.new(0, 222, 0, 712)
CommandList.Font = Font
CommandList.Text = 'Age <Player>\nAirwalk/Air\nAntiafk/Afk\nAntiaim\nAntiaimmode [Void]\nAntivoid\nCirclethickness <number>\nCircleradius <number>\nClearwalls/Inviswalls\nDay\nDex/Darkdex\nFieldofview/Fov <number>\nFovcircle/Circle\nFreeze/Anchored\nInfiniteff/Infff\nInfinitejump/Infjump\nJump\nLoadpos/Loadsavedpos/Savedpos\nMaxzoom\nMinzoom\nNight\nNoclip\nNofog\nNotifications/Notify\nOuterspace/Space\nPaywall/Gamepassads\nProtect/Pro <player>\nRejoin\nReset\nResettime\nSavepos\nShadows\nSit\nSpin\nSpinspeed <number>\nSprint\nSprintmode [movedirection/cframe/lookvector]\nTime <number>\nView <Player>\nVoid\nVoiddistance/Antivoiddistance\nWalkspeed/Ws <number>\nZoomdistance/Cameradistance'
CommandList.TextColor3 = ScriptColour
CommandList.TextSize = 13.000
CommandList.TextXAlignment = Enum.TextXAlignment.Left
CommandList.TextYAlignment = Enum.TextYAlignment.Top

CommandBarImage.BackgroundColor3 = Color3.fromRGB(0,0,0)
CommandBarImage.Size = UDim2.new(0, 236, 0, 225)
CommandBarImage.Image = CmdImage

UserInputService.InputBegan:Connect(function(Array, Restrain)
    if Restrain then
        return nil
    elseif Array.KeyCode == Enum.KeyCode[Hotkeys.CommandBarKey] then
        CommandBar:TweenPosition(UDim2.new(0.849968195, 0, 0.7, 0), "InOut", "Quart", 0.5, true, nil)
        UserCommand.Text = ''
        task.wait()
        UserCommand:CaptureFocus()
    elseif Array.KeyCode == Enum.KeyCode[Hotkeys.NoclipKey] then
        Noclip = not Noclip
        AddNotification('keepmeinla🗡️', 'Noclip is now '..tostring(Noclip),5)
    elseif Array.KeyCode == Enum.KeyCode[Hotkeys.SprintKey] then
        Sprinting = true
    elseif Array.KeyCode == Enum.KeyCode.W then
        Hotkeys['W'] = true
    elseif Array.KeyCode == Enum.KeyCode.A then
        Hotkeys['A'] = true
    elseif Array.KeyCode == Enum.KeyCode.S then
        Hotkeys['S'] = true
    elseif Array.KeyCode == Enum.KeyCode.D then
        Hotkeys['D'] = true
    end
end)

UserInputService.InputEnded:Connect(function(Array)
    if Array.KeyCode == Enum.KeyCode[Hotkeys.SprintKey] then
        Sprinting = false
    elseif Array.KeyCode == Enum.KeyCode.W then
        Hotkeys['W'] = false
    elseif Array.KeyCode == Enum.KeyCode.A then
        Hotkeys['A'] = false
    elseif Array.KeyCode == Enum.KeyCode.S then
        Hotkeys['S'] = false
    elseif Array.KeyCode == Enum.KeyCode.D then
        Hotkeys['D'] = false
    end
end)

local function LockCommandBar()
    CommandBar:TweenPosition(
        UDim2.new(
            0.849968195, 0, 0.97, 0
        ), 
        "InOut", "Quart", 0.5, 
        true, 
    nil
    )
end

local function Teleportation(Args)
    if User.Character:FindFirstChild'HumanoidRootPart' then
        User.Character:WaitForChild'HumanoidRootPart'.CFrame = Args
    end
end -- SHE WANNA KILL ME WATCH ME BLEED

local function Airwalk()
    Air.Size = Vector3.new(7, 2, 3)
    Air.Transparency = 1
    Air.Anchored = true
end

local function RigType()
    if User.Character:FindFirstChild'UpperTorso' then
        return User.Character:FindFirstChild'UpperTorso'
    else
        return User.Character:FindFirstChild'Torso'
    end
end

local function Noslow(Args)
    if not User.Character:FindFirstChild'Action' then
        return AddNotification('keepmeinla','Action was not found',5)
    elseif User.Character:FindFirstChild'Action' then
        User.Character:WaitForChild'Action':Destroy()
    end
end

for _,v in pairs(Core.RobloxGui.NotificationFrame:GetDescendants()) do
    if tostring(v) == 'Notification' then
        v.NotificationText.TextColor3 = ScriptColour
        v.NotificationTitle.TextColor3 = ScriptColour
    end
end

local function ExtraSensoryPerception(Args)
    if Args and Args.Character and Args.Character:FindFirstChild'HumanoidRootPart' then
        local function ArgsRigType()
            if Args.Character:FindFirstChild'UpperTorso' or Args.Character:FindFirstChild'Humanoid'.RigType == Enum.HumanoidRigType.R15 then
                return Args.Character:WaitForChild'UpperTorso'
            else
                return Args.Character:FindFirstChild'Torso'
            end
        end
        local BillBoard = Instance.new("BillboardGui", ArgsRigType())
        local Text = Instance.new("TextLabel", BillBoard)
        local Tracer = Drawing.new('Line')
        local Box = Drawing.new('Square')
        
        BillBoard.Name = "BillBoard"
        BillBoard.Adornee = part
        BillBoard.AlwaysOnTop = true
        BillBoard.ExtentsOffset = Vector3.new(0, 3, 0)
        BillBoard.Size = UDim2.new(0, 10, 0, 10)
                    
        Text.Name = "ILOVEMYGIRL"
        Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Text.BackgroundTransparency = 1
        Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Text.BorderSizePixel = 0
        Text.Position = UDim2.new(0, 0, 0, -40)
        Text.Size = UDim2.new(1, 0, 7, 0)
        Text.Font = Font
        Text.TextColor3 = ScriptColour
        Text.TextSize = 13
        Text.Visible = true
        Text.ZIndex = 2

        Tracer.Visible = true
        Tracer.Transparency = 1

        Box.Visible = true
        Box.Transparency = 1
        Box.Filled = false

        RunService.RenderStepped:Connect(function()
            if Args and Args.Character and Args.Character:FindFirstChild'Humanoid' then
                local Vec = Vector3.new(0,3,0)
                local NoVec = Vector3.new(0,0.5,0)
                local Hum, TurnVisible = Camera:WorldToViewportPoint(Args.Character:WaitForChild'HumanoidRootPart'.Position)
                local Head = Camera:WorldToViewportPoint(Args.Character.Head.Position + NoVec)
                local Division = 2200
                local Minus = Camera:WorldToViewportPoint(Args.Character:WaitForChild'HumanoidRootPart'.Position - Vec)
                local Plus = Camera:WorldToViewportPoint(Args.Character:WaitForChild'HumanoidRootPart'.Position + NoVec)
                    if TurnVisible then
                        if TracerEsp then
                            Tracer.Visible = true
                            Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 1)
                            Tracer.To = Vector2.new(Hum.X, Hum.Y)
                        elseif not TracerEsp then
                            Tracer.Visible = false
                        end
                        if RectangeEsp then
                            Box.Visible = true
                            Box.Size = Vector2.new(Division / Hum.Z, Head.Y - Minus.Y, Hum.X)
                            Box.Position = Vector2.new(Hum.X - Box.Size.X / 2, Hum.Y - Box.Size.Y / 2)
                        elseif not RectangeEsp then
                            Box.Visible = false
                        end
                    else
                        Tracer.Visible = false
                        Box.Visible = false
                    end
                else
                Tracer.Visible = false
                Box.Visible = false
            end
        end)
        Args.CharacterAdded:Connect(function()
            local BillBoard = Instance.new("BillboardGui", Args.Character:FindFirstChild'Head')
            local Text = Instance.new("TextLabel", BillBoard)
            local Tracer = Drawing.new('Line')
            local Box = Drawing.new('Square')
            
            BillBoard.Name = "BillBoard"
            BillBoard.Adornee = part
            BillBoard.AlwaysOnTop = true
            BillBoard.ExtentsOffset = Vector3.new(0, 3, 0)
            BillBoard.Size = UDim2.new(0, 10, 0, 10)
                        
            Text.Name = "ILOVEMYGIRL"
            Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Text.BackgroundTransparency = 1
            Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Text.BorderSizePixel = 0
            Text.Position = UDim2.new(0, 0, 0, -40)
            Text.Size = UDim2.new(1, 0, 7, 0)
            Text.Font = Font
            Text.TextColor3 = ScriptColour
            Text.TextSize = 13
            Text.Visible = true
            Text.ZIndex = 2

            Tracer.Visible = true
            Tracer.Transparency = 1

            Box.Visible = true
            Box.Transparency = 1
            Box.Filled = false

            RunService.RenderStepped:Connect(function()
                if Args and Args.Character and Args.Character:FindFirstChild'Humanoid' then
                    local Vec = Vector3.new(0,3,0)
                    local NoVec = Vector3.new(0,0.5,0)
                    local Hum, TurnVisible = Camera:WorldToViewportPoint(Args.Character:WaitForChild'HumanoidRootPart'.Position)
                    local Head = Camera:WorldToViewportPoint(Args.Character.Head.Position + NoVec)
                    local Division = 2200
                    local Minus = Camera:WorldToViewportPoint(Args.Character:WaitForChild'HumanoidRootPart'.Position - Vec)
                    local Plus = Camera:WorldToViewportPoint(Args.Character:WaitForChild'HumanoidRootPart'.Position + NoVec)
                        if TurnVisible then
                            if TracerEsp then
                                Tracer.Visible = true
                                Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 1)
                                Tracer.To = Vector2.new(Hum.X, Hum.Y)
                            elseif not TracerEsp then
                                Tracer.Visible = false
                            end
                            if RectangeEsp then
                                Box.Visible = true
                                Box.Size = Vector2.new(Division / Hum.Z, Head.Y - Minus.Y, Hum.X)
                                Box.Position = Vector2.new(Hum.X - Box.Size.X / 2, Hum.Y - Box.Size.Y / 2)
                            elseif not RectangeEsp then
                                Box.Visible = false
                            end
                        else
                            Tracer.Visible = false
                            Box.Visible = false
                        end
                    else
                    Tracer.Visible = false
                    Box.Visible = false
                end
            end)
        end)
    end
end

local function Spin()
    if User and User.Character and User.Character:FindFirstChild'HumanoidRootPart' and Spinning then
        Spin.MaxTorque = Vector3.new(0, math.huge, 0)
        Spin.AngularVelocity = Vector3.new(0,Spinspeed,0)
    elseif User and User.Character and User.Character:FindFirstChild'HumanoidRootPart' and not Spinning then
        for i,v in pairs(User.Character:FindFirstChild'HumanoidRootPart':GetDescendants()) do
            if v.Name == 'BodyAngularVelocity' then
                v:Destroy()
            end
        end
    end
end

local function TracePlayer(Args)
    if Args and Args.Character then
        if Args == User then
            return nil
        end
        local Traced = Instance.new('Highlight', Args.Character)
        Traced.Name = 'Trace'
        Traced.FillColor = ScriptColour
        Traced.OutlineTransparency = 0

        RunService.Stepped:Connect(function()
            Traced.FillTransparency = TracerFill
        end)
    end
end

local function PaywallPopups()
    if User and Core and Core:FindFirstChild'PurchasePrompt' then
        if PaidFeaturePopUps then
            Core:WaitForChild'PurchasePrompt'.Enabled = true
        elseif not PaidFeaturePopUps then
            Core:WaitForChild'PurchasePrompt'.Enabled = false
        end
    end
end

local function SearchDataCenter(T : S)
    for _,v in next, Players:GetPlayers() do
        if string.sub(string.lower(v.DisplayName),1,string.len(T)) == string.lower(T) then
            return v
        elseif string.sub(string.lower(v.Name),1,string.len(T)) == string.lower(T) then
            return v
        end
    end
    return nil
end

local function TransparentWalls()
    if User then
        if ClearWalls then
            User.DevCameraOcclusionMode = 'Invisicam'
        elseif not ClearWalls then
            User.DevCameraOcclusionMode = 'Zoom'
        end
    end
end

local function Kill()
    if User and User.Character and User.Character:FindFirstChild'Humanoid' then
        User.Character:WaitForChild'Humanoid':ChangeState(15)
    end
end

local function Circle()
    if Drawing then
        if Circle then
            FovCircle.Visible = true
        end
    else
        AddNotification('External Error', 'Message from keepmeinla🗡️\nSorry, your executor does not support this API')
    end
end

local function GlobalShadows()
    if Shadows then
        Lighting.GlobalShadows = true
    else
        Lighting.GlobalShadows = false
    end
end

local function Lastdeath()
    if User and User.Character and User.Character:FindFirstChild'Humanoid' then
        User.Character:WaitForChild'Humanoid'.Died:Connect(function()
            LastdeathCFrame = RigType(User.Character).CFrame
        end)
    end
end
        
RunService.RenderStepped:Connect(function()
    if User and User.Character then
        if User and User.Character and User.Character:FindFirstChild'Head' then
            if Noclip then
                for _,v in pairs(User.Character:GetDescendants()) do
                    if v:IsA'BasePart' and v.CanCollide == true then
                        v.CanCollide = false
                    end
                end
            elseif not Noclip then
                for _,v in pairs(User.Character:GetDescendants()) do
                    if v:IsA'BasePart' and v.CanCollide == false then
                        v.CanCollide = true
                    end
                end
            end
        end
        if User and Camera then
            if Viewing and ViewTarget then
                Camera.CameraSubject = Players[ViewTarget.Name].Head
            elseif not Viewing then
                ViewTarget = nil
                Camera.CameraSubject = User.Character:FindFirstChild'Humanoid'
            end
        end
        if User and User.Character and User.Character:FindFirstChild'HumanoidRootPart' then
            if Airwalk then
                Airwalk()
                Air.CFrame = User.Character:WaitForChild'HumanoidRootPart'.CFrame + Vector3.new(0,-4,0)
            end
        end
        if User and User.Character and User.Character:FindFirstChild'HumanoidRootPart' then
            if Outerspace then
                User.Character:WaitForChild'HumanoidRootPart'.CFrame = CFrame.new(9e25,9e25,9e25)
            end
        end
        if User and User.Character and User.Character:FindFirstChild'HumanoidRootPart' then
            if Void then
                User.Character:WaitForChild'HumanoidRootPart'.CFrame = CFrame.new(-9e25,-9e25,-9e25)
            end
        end
        if User and User.Character and User.Character:FindFirstChild'HumanoidRootPart' then
            if InfiniteForcefield then
                task.wait(4.9)
                local Trace = User.Character:FindFirstChild'HumanoidRootPart'.CFrame
                Kill()
                User.CharacterAdded:Wait()
                User.Character:WaitForChild'HumanoidRootPart'.CFrame = Trace
            end
        end
        if Drawing and Circle then
            FovCircle.Color = FovCirlceColor
            FovCircle.Radius = FovCircleRadius
            FovCircle.Thickness = FovCircleThickness
        end
        if User and User.Character and User.Character:FindFirstChild'HumanoidRootPart' then
            if Protect and ProtectTarget then
                User.Character:WaitForChild'HumanoidRootPart'.CFrame = ProtectTarget.Character:FindFirstChild'HumanoidRootPart'.CFrame + CFrame.new(0,0,-1)
            end
        end
        if User.Character:FindFirstChild'HumanoidRootPart' then
            if Sprint then
                if Sprinting then
                    --if typeof(SprintingMethod) == 'string' then
                        if SprintingMethod == 'LookVector' then
                            if LookVectorSprint then
                                User.Character:FindFirstChild'HumanoidRootPart'.CFrame = User.Character:FindFirstChild'HumanoidRootPart'.CFrame + User.Character:FindFirstChild'HumanoidRootPart'.CFrame.lookVector * SprintSpeed
                            end
                        elseif SprintingMethod == 'CFrame' then
                            if CFrameSprint then
                                if Hotkeys['W'] then
                                    User.Character:FindFirstChild'HumanoidRootPart'.CFrame = User.Character:FindFirstChild'HumanoidRootPart'.CFrame * CFrame.new(0, 0, -SprintSpeed)
                                elseif Hotkeys['S'] then
                                    User.Character:FindFirstChild'HumanoidRootPart'.CFrame = User.Character:FindFirstChild'HumanoidRootPart'.CFrame * CFrame.new(0, 0, SprintSpeed)
                                elseif Hotkeys['A'] then
                                    User.Character:FindFirstChild'HumanoidRootPart'.CFrame = User.Character:FindFirstChild'HumanoidRootPart'.CFrame * CFrame.new(-SprintSpeed, 0, 0)
                                elseif Hotkeys['D'] then
                                    User.Character:FindFirstChild'HumanoidRootPart'.CFrame = User.Character:FindFirstChild'HumanoidRootPart'.CFrame * CFrame.new(SprintSpeed, 0, 0)
                                end
                            end
                        elseif SprintingMethod == 'MoveDirection' then
                            if MoveDirectionSprint then
                                User.Character:FindFirstChild'HumanoidRootPart'.CFrame = User.Character:FindFirstChild'HumanoidRootPart'.CFrame + Vector3.new(User.Character.Humanoid.MoveDirection.X * SprintSpeed / 5, 0, User.Character.Humanoid.MoveDirection.Z * SprintSpeed / 5)
                            end
                        end
                    --end
                end
            end
        end
        if Freeze then
            if User.Character:FindFirstChild'UpperTorso' or User.Character:FindFirstChild'Humanoid'.RigType == Enum.HumanoidRigType.R15 then
                User.Character:WaitForChild'UpperTorso'.Anchored = true
                User.Character:FindFirstChild'LowerTorso'.Anchored = true
            elseif User.Character:FindFirstChild'Torso' or User.Character:FindFirstChild'Humanoid'.RigType.Value == 0 then
                User.Character:WaitForChild'Torso'.Anchored = true
            end
        end
        if Work then
            if AntiVoid then
                Work.FallenPartsDestroyHeight = -AntivoidDistance
            end
        end
        if UserInputService and UserInputService.JumpRequest then
            if InfiniteJump then
                UserInputService.JumpRequest:Connect(function()
                    User.Character:FindFirstChildOfClass'Humanoid':ChangeState'Jumping'
                end)
            end
        end
        if Core and Core:FindFirstChild'PlayerList' then
            if Highlight then
                if HighlightedTarget then
                    Core:FindFirstChild'PlayerList':FindFirstChild'PlayerListMaster':FindFirstChild'OffsetFrame':FindFirstChild'PlayerScrollList':FindFirstChild'SizeOffsetFrame':FindFirstChild'ScrollingFrameContainer':FindFirstChild'ScrollingFrameClippingFrame':FindFirstChild'ScollingFrame':FindFirstChild'OffsetUndoFrame'["p_"..[HighlightedTarget.Name.UserId]]:FindFirstChild'ChildrenFrame':FindFirstChild'NameFrame':FindFirstChild'BGFrame':FindFirstChild'OverlayFrame':FindFirstChild'PlayerName':FindFirstChild'PlayerName'.TextColor3 = TargetColor
                end
            end
        end
    end
end)

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'spin') then
        Spinning = not Spinning
        Spin()
        AddNotification('keepmeinla🗡️', 'Spin is now '..tostring(Spinning),5)
    elseif string.lower(UserCommand.Text == 'sp') then
        Spinning = not Spinning
       Spin()
       AddNotification('keepmeinla🗡️', 'Spin is now '..tostring(Spinning),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'noclip') then
        Noclip = not Noclip
        AddNotification('keepmeinla🗡️', 'Noclip is now '..tostring(Noclip),5)
    elseif string.lower(UserCommand.Text == 'nc') then
        Noclip = not Noclip
        AddNotification('keepmeinla🗡️', 'Noclip is now '..tostring(Noclip),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'clip') then
        Core:ToggleRecording()
    elseif string.lower(UserCommand.Text == 'record') then
        Core:ToggleRecording()
    elseif string.lower(UserCommand.Text == 'togglerecord') then
        Core:ToggleRecording()
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'view '),1,5) then
        ViewTarget = SearchDataCenter(UserCommand:sub(6))
        Viewing = not Viewing
        AddNotification('keepmeinla🗡️', 'Viewing is now '..tostring(Viewing),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'seethroughwalls') then
        ClearWalls = not ClearWalls
        AddNotification('keepmeinla🗡️', 'Clearwalls is now '..tostring(ClearWalls),5)
    elseif string.lower(UserCommand.Text == 'throughwalls') then
        ClearWalls = not ClearWalls
        AddNotification('keepmeinla🗡️', 'Clearwalls is now '..tostring(ClearWalls),5)
    elseif string.lower(UserCommand.Text == 'clearwalls') then
        ClearWalls = not ClearWalls
        AddNotification('keepmeinla🗡️', 'Clearwalls is now '..tostring(ClearWalls),5)
    elseif string.lower(UserCommand.Text == 'inviswalls') then
        ClearWalls = not ClearWalls
        AddNotification('keepmeinla🗡️', 'Clearwalls is now '..tostring(ClearWalls),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'age '),1,4) then
        AgeTarget = SearchDataCenter(UserCommand:sub(5))
        if AgeTarget then
            AddNotification('keepmeinla🗡️', AgeTarget.Name.."'s account age is "..AgeTarget.AccountAge)
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'airwalk')
        Airwalk = not Airwalk
        AddNotification('keepmeinla🗡️', 'Airwalk is now '..tostring(Airwalk),5)
    elseif string.lower(UserCommand.Text == 'air')
        Airwalk = not Airwalk
        AddNotification('keepmeinla🗡️', 'Airwalk is now '..tostring(Airwalk),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'outerspace') then
        Outerspace = not Outerspace
        if not Outerspace then
            Kill()
        end
        AddNotification('keepmeinla🗡️', 'Outerspace is now '..tostring(Outerspace))
    elseif string.lower(UserCommand.Text == 'space') then
        Outerspace = not Outerspace
        if not Outerspace then
            Kill()
        end
        AddNotification('keepmeinla🗡️', 'Outerspace is now '..tostring(Outerspace))
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'notifications') then
        Notify = not Notify
        AddNotification('keepmeinla🗡️', 'Notificantions are now '..tostring(Notify),5)
    elseif string.lower(UserCommand.Text == 'notify') then
        Notify = not Notify
        AddNotification('keepmeinla🗡️', 'Notificantions are now '..tostring(Notify),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'infiniteforcefield') then
        InfiniteForcefield = not InfiniteForcefield
        AddNotification('keepmeinla🗡️', 'Infinite Forcefield is now'..tostring(InfiniteForcefield),5)
    elseif string.lower(UserCommand.Text == 'infiniteff') then
        InfiniteForcefield = not InfiniteForcefield
        AddNotification('keepmeinla🗡️', 'Infinite Forcefield is now'..tostring(InfiniteForcefield),5)
    elseif string.lower(UserCommand.Text == 'infff') then
        InfiniteForcefield = not InfiniteForcefield
        AddNotification('keepmeinla🗡️', 'Infinite Forcefield is now'..tostring(InfiniteForcefield),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'fovcircle') then
        Circle = not Circle
        Circle()
    elseif string.lower(UserCommand.Text == 'circle') then
        Circle = not Circle
        Circle()
    elseif string.lower(UserCommand.Text == 'aimbotcircle') then
        Circle = not Circle
        Circle()
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'circleradius '),1,13) then
        if Circle then
            FovCircleRadius = UserCommand.text:sub(14)
        elseif not Circle then
            Circle = true
            FovCircleRadius = UserCommand.text:sub(14)
        end
        AddNotification('keepmeinla🗡️', 'Circle radius is now '..tonumber(FovCircleRadius),5)
    elseif string.lower(string.sub(UserCommand.Text == 'circlethickness '),1,16) then
        if Circle then
            FovCircleThickness = UserCommand.text:sub(17)
        elseif not Circle then
            Circle = true
            FovCircleThickness = UserCommand.text:sub(17)
        end
        AddNotification('keepmeinla🗡️', 'Circle thickness is now '..tonumber(FovCircleThickness),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'spinspeed '),1,10) then
        if Spin then
            SpinSpeed = UserCommand.text:sub(11)
        elseif not Spin then
            Spin = true
            SpinSpeed = UserCommand.text:sub(11)
        end
        AddNotification('keepmeinla🗡️', 'Spinspeed is now '..tonumber(SpinSpeed),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'fieldofview '),1,12) then
        FieldOfView = UserCommand.text:sub(13)
        Camera.FieldOfView = FieldOfView
        AddNotification('keepmeinla🗡️', 'Field of view is now '..tonumber(FieldOfView),5)
    elseif string.lower(string.sub(UserCommand.Text == 'fov '),1,4) then
        FieldOfView = UserCommand.text:sub(5)
        Camera.FieldOfView = FieldOfView
        AddNotification('keepmeinla🗡️', 'Field of view is now '..tonumber(FieldOfView),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'protect '),1,8) then
        ProtectTarget = SearchDataCenter(UserCommand:sub(9))
        Protect = not Protect
        AddNotification('keepmeinla🗡️', 'Protect is now '..tostring(Protect),5)
    elseif string.lower(string.sub(UserCommand.Text == 'pro '),1,4) then
        ProtectTarget = SearchDataCenter(UserCommand:sub(5))
        Protect = not Protect
        AddNotification('keepmeinla🗡️', 'Protect is now '..tostring(Protect),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'reset') then
        Kill()
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'rejoin') then
        TeleportService:Teleport(game.PlaceId, User)
    elseif string.lower(UserCommand.Text == 'rj') then
        TeleportService:Teleport(game.PlaceId, User)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'exit') then
        game:shutdown()
    elseif string.lower(UserCommand.Text == 'shutdown') then
        game:shutdown()
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'sprint') then
        Sprint = not Sprint
        AddNotification('keepmeinla🗡️', 'Sprinting is now '..tostring(Sprint),5)
    end
    if Sprint then
        if string.lower(UserCommand.Text == 'sprintmode movedirection') then
            SprintingMethod = 'MoveDirection'
            MoveDirectionSprint = true
            AddNotification('keepmeinla🗡️', 'Sprint mode is now MoveDirection',5)
        elseif string.lower(UserCommand.Text == 'sprintmode cframe') then
            SprintingMethod = 'CFrame'
            CFrameSprint = true
            AddNotification('keepmeinla🗡️', 'Sprint mode is now CFrame',5)
        elseif string.lower(UserCommand.Text == 'sprintmode lookvector') then
            SprintingMethod = 'LookVector'
            LookVectorSprint = true
            AddNotification('keepmeinla🗡️', 'Sprint mode is now Lookvector',5)
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'void') then
        Void = not Void
        if not Void then
            Kill()
        end
        AddNotification('keepmeinla🗡️', 'Void is now '..tostring(Void))
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'antiaim') then
        AntiAim = not AntiAim
        AddNotification('keepmeinla🗡️', 'Antiaim is now '..tostring(Antiaim),5)
    elseif string.lower(UserCommand.Text == 'antiaimmode void') then
        AntiaimMethod = 'Void'
        if AntiAim then
            if AntiaimMethod == 'Void' then
                AddNotification('keepmeinla🗡️', 'Antiaim mode is now Void',5)
                Void = true
                task.wait()
                repeat task.wait()
                    if User.Character:FindFirstChild'Torso' then
                        User.Character:WaitForChild'Torso'.Anchored = true
                    elseif User.Character:FindFirstChild'UpperTorso' then
                        User.Character:WaitForChild'UpperTorso'.Anchored = true
                        User.Character:WaitForChild'LowerTorso'.Anchored = true
                    end
                until not AntiAim
                Kill()
            end
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'freeze') then
        Freeze = not Freeze
        AddNotification('keepmeinla🗡️', 'Anchored is now '..tostring(Freeze),5)
    elseif string.lower(UserCommand.Text == 'anchor') then
        Freeze = not Freeze
        AddNotification('keepmeinla🗡️', 'Anchored is now '..tostring(Freeze),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'antiafk') then
        coroutine.wrap(function()
            Visualizing:Button2Down(Vector2.new(0,0),Work:WaitForChild'Camera'.CFrame)
            task.wait(1)
            Visualizing:Button2Up(Vector2.new(0,0),Work:WaitForChild'Camera'.CFrame)
        end)()
        AddNotification('keepmeinla🗡️', 'Anti-Afk is now true ',5)
    elseif string.lower(UserCommand.Text == 'afk') then
        coroutine.wrap(function()
            Visualizing:Button2Down(Vector2.new(0,0),Work:WaitForChild'Camera'.CFrame)
            task.wait(1)
            Visualizing:Button2Up(Vector2.new(0,0),Work:WaitForChild'Camera'.CFrame)
        end)()
        AddNotification('keepmeinla🗡️', 'Anti-Afk is now true ',5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'dex') then -- only added this because i use it all the time
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))() -- By Moon for Inf Yield
    elseif string.lower(UserCommand.Text == 'darkdex') then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1   

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'paypopups') then
        PaidFeaturePopUps = not PaidFeaturePopUps
        PaywallPopups()
        AddNotification('keepmeinla🗡️', 'Gamepass pop ups are now '..tostring(PaidFeaturePopUps),5)
    elseif string.lower(UserCommand.Text == 'paywall') then
        PaidFeaturePopUps = not PaidFeaturePopUps
        PaywallPopups()
        AddNotification('keepmeinla🗡️', 'Gamepass pop ups are now '..tostring(PaidFeaturePopUps),5)
    elseif string.lower(UserCommand.Text == 'gamepassads') then
        PaidFeaturePopUps = not PaidFeaturePopUps
        PaywallPopups()
        AddNotification('keepmeinla🗡️', 'Gamepass pop ups are now '..tostring(PaidFeaturePopUps),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'zoomdistance '),1,13) then
        ZoomDistance = UserCommand.Text:sub(14)
        AddNotification('keepmeinla🗡️', 'Zoom distance is now '..tonumber(ZoomDistance),5)
    elseif string.lower(string.sub(UserCommand.Text == 'cameradistance '),1,15) then
        ZoomDistance = UserCommand.Text:sub(16)
        AddNotification('keepmeinla🗡️', 'Zoom distance is now '..tonumber(ZoomDistance),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'antivoiddistance '),1,17)
        AntivoidDistance = UserCommand.Text:sub(18)
        Work.FallenPartsDestroyHeight = -AntivoidDistance
        AddNotification('keepmeinla🗡️', 'Antivoid distance is now '..tonumber(-AntivoidDistance),5)
    elseif string.lower(string.sub(UserCommand.Text == 'voiddistance '),1,13)
        AntivoidDistance = UserCommand.Text:sub(14)
        Work.FallenPartsDestroyHeight = -AntivoidDistance
        AddNotification('keepmeinla🗡️', 'Antivoid distance is now '..tonumber(-AntivoidDistance),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'antivoid') then
        AntiVoid = not AntiVoid
        AddNotification('keepmeinla🗡️', 'Antivoid is now '..tostring(AntiVoid),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'maxzoom') then
        User.CameraMaxZoomDistance = 9e9
        AddNotification('keepmeinla🗡️', 'Max Camera zoom is now true',5)
    elseif string.lower(UserCommand.Text == 'minzoom') then
        User.CameraMaxZoomDistance = 20
        AddNotification('keepmeinla🗡️', 'Min Camera zoom is now true',5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'walkspeed '),1,10)
        WalkingSpeed = UserCommand.Text:sub(11)
        Work[User].Character:FindFirstChild'Humanoid'.Walkspeed = WalkingSpeed
        AddNotification('keepmeinla🗡️', 'Walkspeed is now '..tonumber(WalkingSpeed),5)
    elseif string.lower(string.sub(UserCommand.Text == 'ws '),1,3)
        WalkingSpeed = UserCommand.Text:sub(4)
        Work[User].Character:FindFirstChild'Humanoid'.Walkspeed = WalkingSpeed
        AddNotification('keepmeinla🗡️', 'Walkspeed is now '..tonumber(WalkingSpeed),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'savepos') then
        if User and User.Character and User.Character:FindFirstChild'HumanoidRootPart' then
            local SavedPos = User.Character:WaitForChild'HumanoidRootPart'.CFrame
            AddNotification('keepmeinla🗡️', 'CFrame saved!',5)
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'loadpos') then
        if not SavedPos then
            AddNotification('keepmeinla🗡️', 'No saved cooridanteframe position was found',5)
        elseif User and User.Character and User.Character:FindFirstChild'HumanoidRootPart' then
            User.Character:WaitForChild'HumanoidRootPart'.CFrame = SavedPos
        end
    elseif string.lower(UserCommand.Text == 'loadsavedpos') then
        if not SavedPos then
            AddNotification('keepmeinla🗡️', 'No saved cooridanteframe position was found',5)
        elseif User and User.Character and User.Character:FindFirstChild'HumanoidRootPart' then
            User.Character:WaitForChild'HumanoidRootPart'.CFrame = SavedPos
        end
    elseif string.lower(UserCommand.Text == 'savedpos') then
        if not SavedPos then
            AddNotification('keepmeinla🗡️', 'No saved cooridanteframe position was found',5)
        elseif User and User.Character and User.Character:FindFirstChild'HumanoidRootPart' then
            User.Character:WaitForChild'HumanoidRootPart'.CFrame = SavedPos
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'jump') then
        if User and User.Character and User.Character:FindFirstChild'Humanoid' then
            User.Character:WaitForChild'Humanoid':ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'sit') then
        if User and User.Character and User.Character:FindFirstChild'Humanoid' then
            User.Character:WaitForChild'Humanoid'.Sit = true
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'time '),1,5) then
        TimeChange = true
        if Lighting and TimeChange then
            Time = UserCommand.Text:sub(6)
            Lighting.TimeOfDay = Time
        end
        AddNotification('keepmeinla🗡️', 'Time of day is now '..tonumber(Time),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'resettime')
        Lighting:Destroy()
        AddNotification('keepmeinla🗡️', 'Time of day changed to normal',5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

--[[
UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'setcreatorid')
        if 
        AddNotification('keepmeinla🗡️', 'Time of day changed to normal',5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1
]]--

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'infjump') then
        InfiniteJump = not InfiniteJump
        AddNotification('keepmeinla🗡️', 'Infinite Jump is now '..tostring(InfiniteJump),5)
    elseif string.lower(UserCommand.Text == 'infinitejump') then
        InfiniteJump = not InfiniteJump
        AddNotification('keepmeinla🗡️', 'Infinite Jump is now '..tostring(InfiniteJump),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'night') then
        if Lighting then
            Lighting.TimeOfDay = 0
        end
        AddNotification('keepmeinla🗡️', 'Time is now night',5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'day') then
        if Lighting then
            Lighting.TimeOfDay = 12
        end
        AddNotification('keepmeinla🗡️', 'Time is now day',5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'nofog') then
        if Lighting then
            Lighting.FogEnd = 9e9
        end
        AddNotification('keepmeinla🗡️', 'Fog removed',5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'shadows') then
        if Lighting and Lighting.GlobalShadows then
            Shadows = not Shadows
        end
        AddNotification('keepmeinla🗡️', 'Globalshadows are now '..tostring(Shadows),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'removerightarm') then
        if User and User.Character and User.Character:FindFirstChild'RightUpperArm' or RigType() then
            User.Character:FindFirstChild'RightUpperArm':Destroy()
        else
            User.Character:FindFirstChild'Right Arm':Destroy()
        end
    elseif string.lower(UserCommand.Text == 'rrarm') then
        if User and User.Character and User.Character:FindFirstChild'RightUpperArm' or RigType() then
            User.Character:FindFirstChild'RightUpperArm':Destroy()
        else
            User.Character:FindFirstChild'Right Arm':Destroy()
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'removeleftarm') then
        if User and User.Character and User.Character:FindFirstChild'LefttUpperArm' or RigType() then
            User.Character:FindFirstChild'LeftUpperArm':Destroy()
        else
            User.Character:FindFirstChild'Left Arm':Destroy()
        end
    elseif string.lower(UserCommand.Text == 'rlarm') then
        if User and User.Character and User.Character:FindFirstChild'LefttUpperArm' or RigType() then
            User.Character:FindFirstChild'LeftUpperArm':Destroy()
        else
            User.Character:FindFirstChild'Left Arm':Destroy()
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'removeleftleg') then
        if User and User.Character and User.Character:FindFirstChild'LefttUpperLeg' or RigType() then
            User.Character:FindFirstChild'LeftUpperLeg':Destroy()
        else
            User.Character:FindFirstChild'Left Leg':Destroy()
        end
    elseif string.lower(UserCommand.Text == 'rlleg') then
        if User and User.Character and User.Character:FindFirstChild'LefttUpperLeg' or RigType() then
            User.Character:FindFirstChild'LeftUpperLeg':Destroy()
        else
            User.Character:FindFirstChild'Left Leg':Destroy()
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'removerightleg') then
        if User and User.Character and User.Character:FindFirstChild'RighttUpperLeg' or RigType() then
            User.Character:FindFirstChild'RightUpperLeg':Destroy()
        else
            User.Character:FindFirstChild'Right Leg':Destroy()
        end
    elseif string.lower(UserCommand.Text == 'rrleg') then
        if User and User.Character and User.Character:FindFirstChild'RighttUpperLeg' or RigType() then
            User.Character:FindFirstChild'RightUpperLeg':Destroy()
        else
            User.Character:FindFirstChild'Right Leg':Destroy()
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'removelegs') then
        if User and User.Character and User.Character:FindFirstChild'RighttUpperLeg' or RigType() then
            User.Character:FindFirstChild'RightUpperLeg':Destroy()
            User.Character:FindFirstChild'LeftUpperLeg':Destroy()
        else
            User.Character:FindFirstChild'Right Leg':Destroy()
            User.Character:FindFirstChild'Left Leg':Destroy()
        end
    elseif string.lower(UserCommand.Text == 'rlegs') then
        if User and User.Character and User.Character:FindFirstChild'RighttUpperLeg' or RigType() then
            User.Character:FindFirstChild'RightUpperLeg':Destroy()
            User.Character:FindFirstChild'LeftUpperLeg':Destroy()
        else
            User.Character:FindFirstChild'Right Leg':Destroy()
            User.Character:FindFirstChild'Left Leg':Destroy()
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'removearms') then
        if User and User.Character and User.Character:FindFirstChild'LefttUpperArm' or RigType() then
            User.Character:FindFirstChild'LeftUpperArm':Destroy()
            User.Character:FindFirstChild'RightUpperArm':Destroy()
        else
            User.Character:FindFirstChild'Left Arm':Destroy()
            User.Character:FindFirstChild'Right Arm':Destroy()
        end
    elseif string.lower(UserCommand.Text == 'rarms') then
        if User and User.Character and User.Character:FindFirstChild'LefttUpperArm' or RigType() then
            User.Character:FindFirstChild'LeftUpperArm':Destroy()
            User.Character:FindFirstChild'RightUpperArm':Destroy()
        else
            User.Character:FindFirstChild'Left Arm':Destroy()
            User.Character:FindFirstChild'Right Arm':Destroy()
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'jumppower '),1,10) then
        if User and Work and User.Character:FindFirstChild'Humanoid' then
            JumpingPower = UserCommand.Text:sub(6)
            Work[User].Character:FindFirstChild'Humanoid'.JumpPower = JumpingPower
        end
        AddNotification('keepmeinla🗡️', 'Jump power is now '..tonumber(JumpingPower),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'sprintspeed '),1,12) then
        SprintSpeed = UserCommand.Text:sub(13)
        AddNotification('keepmeinla🗡️', 'Sprint speed is now '..tonumber(SprintSpeed),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'hipheight '),1,10) then
        HippedHeight = UserCommand.Text:sub(11)
        if Work and User and Work[User].Character or User.Character and User.Character:FindFirstChild'Humanoid' or Work[User].Character:FindFirstChild'Humanoid' then
            Work[User].Character:WaitForChild'Humanoid'.HipHeight = HippedHeight
        end
        AddNotification('keepmeinla🗡️', ' Hip height is now '..tonumber(HippedHeight),5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'ipgen') then
        if ReplicatedStorage and ReplicatedStorage:FindFirstChild'DefaultChatSystemChatEvents' and ReplicatedStorage:FindFirstChild'DefaultChatSystemChatEvents':FindFirstChild'SayMessageRequest' then
            ReplicatedStorage:WaitForChild'DefaultChatSystemChatEvents':WaitForChild'SayMessageRequest':FireServer(NetworkProtoCall..'.'..NetworkProtoCall..'.'..NetworkProtoCall..'.'..NetworkProtoCall, 'All')
        else 
            AddNotification('keepmeinla🗡️ Detected', 'keepmeinla🗡️ has detected an Internal Error and cannot process chat requests',5)
            task.wait(1)
            AddNotification('keepmeinla🗡️', 'The Ipgen Command has been printed in the Dev Console!, Press F9')
            Print(NetworkProtoCall..'.'..NetworkProtoCall..'.'..NetworkProtoCall..'.'..NetworkProtoCall)
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'highlightuser '),1,14) then
        HighlightedTarget = SearchDataCenter(UserCommand.Text:sub(15))
        if HighlightedTarget then
            Highlight = true
        end
        AddNotification('keepmeinla🗡️', HighlightedTarget.Name..' has been highlighted in the playerlist',5)
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'outlineplayer '),1,14) then
        TracedTarget = SearchDataCenter(UserCommand.Text:sub(15))
        if TracedTarget then
            TracePlayer(TracedTarget)
            AddNotification('keepmeinla🗡️', TracedTarget.Name..' has been outlined',5)
        else
            AddNotification('keepmeinla🗡️', 'Player was not found or there was a typo, further issues contact Coryu @killserver')
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'unoutlineplayer '),1,16) then
        UntracedTarget = SearchDataCenter(UserCommand.Text:sub(17))
        if UntracedTarget then
            for _,obj in pairs(Players[UntracedTarget.Name].Character:GetDescendants()) do
                if obj.Name == 'Trace' then
                    obj:Destroy()
                end
            end
            AddNotification('keepmeinla🗡️', UntracedTarget.Name..' has been unoutlined',5)
        else
            AddNotification('keepmeinla🗡️', 'Player was not found or there was a typo, further issues contact Coryu @killserver')
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'esp '),1,4) then
        EspTarget = SearchDataCenter(UserCommand.Text:sub(5))
        if EspTarget then
            ExtraSensoryPerception(EspTarget)
            AddNotification('keepmeinla🗡️', EspTarget.Name.." has been esp'd",5)
        else
            AddNotification('keepmeinla🗡️', 'Player was not found or there was a typo, further issues contact Coryu @killserver')
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(string.sub(UserCommand.Text == 'gravity '),1,8) then
        GravitionalPull = UserCommand.Text:sub(9)
        if Work and Work:FindFirstChild'Gravity' then
            Work.Gravity = GravitionalPull
            AddNotification('keepmeinla🗡️', 'Gravity has been set to '..tonumber(GravitionalPull),5)
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'defaultgravity') then
        if Work and Work:FindFirstChild'Gravity' then
            Work.Gravity = 196.2
            AddNotification('keepmeinla🗡️', 'Gravity has been set to 196.2',5)
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

UserCommand.FocusLost:Connect(function()
    if string.lower(UserCommand.Text == 'lastdeathpos') then
        if User and User.Character then
            RigType(User.Character).CFrame = LastdeathCFrame
        end
    end
    LockCommandBar()
end)
CommandCount = CommandCount + 1

AddNotification('keepmeinla🗡️', 'keepmeinla🗡️ is a universial admin with over '..CommandCount..' commands',5)
task.wait(0.7)
AddNotification('keepmeinla🗡️', 'Made by Coryu \n Script took '..math.floor(tick() - Tick)..' Seconds', Players:GetUserThumbnailAsync(User.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size352x352), 5)
