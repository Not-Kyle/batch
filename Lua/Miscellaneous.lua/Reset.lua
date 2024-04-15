if not getgenv()['CoryuReset'] then
    getgenv()['CoryuReset'] = true

    getgenv().Players = game:GetService'Players'
    getgenv().Host = Players.LocalPlayer
    getgenv().RunService = game:GetService'RunService'
    getgenv().UserInputService = game:GetService'UserInputService'
    getgenv().getHttp1_1 = game:GetService'HttpService'
    getgenv().StarterGui = game:GetService'StarterGui'
    getgenv().Core = game:GetService'CoreGui'

    --// Nils
    local File;

    --// Booleans
    local Notify = true

    --// Hotkeys
    local Hotkeys = {
        Key = 'C';
    }

    getgenv().AddNotification = function(Title, Text)
        if StarterGui then
            if Notify then
                StarterGui:SetCore('SendNotifiction', {Title = Title; Text = Text;})
            end
        end
    end

    local function API()
        if not _G.Version == 1.1 then
            AddNotification('Internal Error', 'Reset is out of date! For further support contact Coryu @killserver' Button1 = 'Okay!')
        end
        if not makefolder or readfile or writefile then
            AddNotification('External Error', 'Sorry!, your executer is non-compatiable')
        end
        if isfolder('Coryu') then
            makefolder('Coryu')
        elseif isfolder('Coryu/Universal') == nil then
            makefolder('Coryu/Universal')
        end
    end

    pcall(function()
        File = readfile('Coryu/Universal/Reset.lua')
    end)

    local function Saving()
        if File ~= nil then
            File = gethttp1_1:JSONDecode(readfile('Coryu/Universal/Reset.lua'))
            for i,v in next, Hotkeys do
                if File[i] ~= nil then
                    Hotkeys[i] = File[i]
                end
            end
        writefile('Coryu/Universal/Reset.lua', gethttp1_1:JSONEncode(Hotkeys))
    else
        File = writefile('Coryu/Universal/Reset.lua', gethttp1_1:JSONEncode(Hotkeys))
    end

    local function uDATA()
        if writefile ~= nil and readfile ~= nil then
            writefile('Coryu/Universal/Reset.lua', gethttp1_1:JSONEncode(Hotkeys))
        else
            AddNotification('External Error', 'Sorry!, your executor is non-compatiable')
        end
    end

    local function KillYourself()
        if Host and Host.Character and Host.Character:FindFirstChild'UpperTorso' then
            Host.Character:FindFirstChild'Head':Destroy()
            Host.Character:FindFirstChild'UpperTorso':Destroy()
            Host.Character:FindFirstChild'LowerTorso':Destory()
        elseif Host and Host.Character and Host.Character:FindFirstChild'Torso' then
            Host.Character:FindFirstChild'Head':Destroy()
            Host.Character:FindFirstChild'Torso':Destroy()
        end
    end

    UserInputService.InputBegan:Connect(function(Args, Kill)
        if Kill then
            return nil
        elseif Args.KeyCode = Enum.KeyCode[Hotkeys.Key]
            KillYourself()
        end
    end)
            
    local CoryuMadeThisScript = Instance.new("ScreenGui")
    CoryuMadeThisScript.Name = "CoryuMadeThisScript"
    CoryuMadeThisScript.Parent = Core
    CoryuMadeThisScript.ResetOnSpawn = false

    local Frame = Instance.new("ImageLabel")
    Frame.Name = "Frame"
    Frame.Parent = CoryuMadeThisScript
    Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Frame.BackgroundTransparency = 1.000
    Frame.Position = UDim2.new(-0.0161290318, 0, 0.540942907, 0)
    Frame.Size = UDim2.new(0, 163, 0, 32)
    Frame.Image = "rbxassetid://3570695787"
    Frame.ImageColor3 = Color3.fromRGB(25, 25, 25)
    Frame.ScaleType = Enum.ScaleType.Slice
    Frame.SliceCenter = Rect.new(100, 100, 100, 100)
    Frame.SliceScale = 0.040
    local Vis = false
    Frame.Visible = Vis

    local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.159827903, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 107, 0, 32)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "  Reset Hotkey: "
    TextLabel.TextColor3 = Color3.fromRGB(0, 170, 255)
    TextLabel.TextSize = 20.000
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    local TextBox = Instance.new("TextBox")
    TextBox.Parent = Frame
    TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextBox.BorderSizePixel = 0
    TextBox.Position = UDim2.new(0.816269577, 0, 0, 0)
    TextBox.Size = UDim2.new(0, 29, 0, 31)
    TextBox.Font = Enum.Font.SourceSans
    TextBox.PlaceholderColor3 = Color3.fromRGB(0, 170, 255)
    TextBox.PlaceholderText = "C"
    TextBox.Text = ""
    TextBox.TextColor3 = Color3.fromRGB(0, 170, 255)
    TextBox.TextSize = 23.000

    TextBox.MouseButton1Down:Connect(function()
        if string.len(TextBox.Text) > 0 then
            Key = string.upper(string.sub(tostring(TextBox.Text),1,1))
            UserNotifications('Coryu Reset', 'Reset hotkey has been updated to '..tostring(Key))
            uDATA()
        end
    end)

    Host.Chatted:Connect(function(Arg)
        if (string.lower(Arg) == 'key') then
            Vis = not Vis
        end
    end)
end
