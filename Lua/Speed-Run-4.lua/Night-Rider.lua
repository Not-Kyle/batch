local parentscreen = Instance.new("ScreenGui")
local mainframe = Instance.new("ImageLabel")
local IGNORETHISFRA = Instance.new("Frame")
local textlabeltoUI = Instance.new("TextLabel")
local mainframeforscript = Instance.new("ImageLabel")
local firstbutton = Instance.new("TextButton")
local frametofirstbutton = Instance.new("Frame")
local frameforscript = Instance.new("ImageLabel")
local autofarmtext = Instance.new("TextLabel")
local buttontoautofarm = Instance.new("TextButton")
local texttobuttonautofarm = Instance.new("TextLabel")
local godmodetextlabel = Instance.new("TextLabel")
local godmodebutton = Instance.new("TextButton")
local texttobuttongodmode = Instance.new("TextLabel")
local Airwalktext = Instance.new("TextLabel")
local airwalkbutton = Instance.new("TextButton")
local texttobuttonairwalk = Instance.new("TextLabel")
local rejointext = Instance.new("TextLabel")
local buttonrejoin = Instance.new("TextButton")
local texttobuttonrejoin = Instance.new("TextLabel")
local exittext = Instance.new("TextLabel")
local buttonexit = Instance.new("TextButton")
local texttobuttonexit = Instance.new("TextLabel")
local nocliptext = Instance.new("TextLabel")
local noclipbutton = Instance.new("TextButton")
local texttobuttonnocip = Instance.new("TextLabel")
local resettext = Instance.new("TextLabel")
local resetbutton = Instance.new("TextButton")
local texttobuttonreset = Instance.new("TextLabel")
local skipleveltext = Instance.new("TextLabel")
local skiplevelbutton = Instance.new("TextButton")
local texttobuttonskiplevel = Instance.new("TextLabel")
local megaupload = Instance.new("Frame")
local TITLEOFSCRIPT = Instance.new("TextLabel")
local scriptlogo = Instance.new("ImageLabel")
local exitscriptutton = Instance.new("TextButton")
local exitscriptutton2 = Instance.new("TextButton")
local rlexitbuttontoscript = Instance.new("ImageLabel")
local secondbutton = Instance.new("TextButton")
local frametosecondbutton = Instance.new("Frame")
local framefrsecond = Instance.new("ImageLabel")
local gotoreloaded = Instance.new("TextLabel")
local gotoreloadedbutton = Instance.new("TextButton")
local texttobuttonreloaded = Instance.new("TextLabel")
local gotoretro = Instance.new("TextLabel")
local gotoretrobutton = Instance.new("TextButton")
local texttobuttonretro = Instance.new("TextLabel")
local teleporttofinaldestiny = Instance.new("TextLabel")
local gotodestinybutton = Instance.new("TextButton")
local texttobuttondestiny = Instance.new("TextLabel")
local thirdbutton = Instance.new("TextButton")
local frametothridbutton = Instance.new("Frame")
local framefrsecond_2 = Instance.new("ImageLabel")
local getspeedcoiltext = Instance.new("TextLabel")
local getspeedcoilbutton = Instance.new("TextButton")
local texttobuttonspeedcoil = Instance.new("TextLabel")
local removerarmtext = Instance.new("TextLabel")
local removerarmbutton = Instance.new("TextButton")
local texttobuttonrarm = Instance.new("TextLabel")
local getcloudtext = Instance.new("TextLabel")
local getcloudbutton = Instance.new("TextButton")
local texttobuttoncloud = Instance.new("TextLabel")
local creditsbutton = Instance.new("TextButton")
local frametocreditsbutton = Instance.new("Frame")
local frameforscript_2 = Instance.new("ImageLabel")
local descofscript = Instance.new("TextLabel")
local descofscript_2 = Instance.new("TextLabel")
local descofscript_3 = Instance.new("TextLabel")
local descofscript_4 = Instance.new("TextLabel")
local descofscript_5 = Instance.new("TextLabel")
local gotospeedrun4 = Instance.new("TextLabel")
local gotospeedrun4button = Instance.new("TextButton")
local texttobuttonspeedrun4 = Instance.new("TextLabel")

local var = {
    ['LocalPlayer'] = game.Players.LocalPlayer,
    ['TeleportService'] = game:GetService("TeleportService"),
    ['RunService'] = game:GetService("RunService"),
    ['ReplicatedStorage'] = game:GetService("ReplicatedStorage"),
    ['GetSPlayerLP'] = game:GetService("Players").LocalPlayer,
    ['Jumprequest'] = game:GetService("UserInputService").JumpRequest,
}

local sets = {
    ['Rejoin'] = false,
    ['KillGame'] = false,
    ['RetroTeleport'] = false,
    ['DestinyTeleport'] = false,
    ['ReloadTeleport'] = false,
    ['Noclip'] = false,
    ['SpeedRunTeleport'] = false,
    ['Autofarm'] = false,
    ['infjump'] = false,
    ['airwalk'] = false,
}

local arguments = {
    ['wait'] = wait(0.3)
}

local color = {
    ['Blue'] = Color3.fromRGB(0,170,255),
    ['Red'] = Color3.fromRGB(255,0,0),
}

local IDS = {
    ['Retro'] = 190590056;
    ['Destiny'] = 1088603468;
    ['Reloaded'] = 244532931;
    ['SpeedRun'] = 183364845;
}

local const = {
    ['GetCloud'] = var['ReplicatedStorage'].Cloud,
    ['GetGravCoil'] = var['ReplicatedStorage'].GravityCoilv2,
    ['GetSpeedCoil'] = game:GetService("ReplicatedStorage")["Speed Coil"]
}

local function Noti(title, text, icon, time)
    game.StarterGui:SetCore("SendNotification",{
       Title = title;
       Text = text;
       Icon = icon;
       Duration = time;
})
end

Noti("Night Rider", "Hello "..game.Players.LocalPlayer.Displayname.."!"

parentscreen.Name = "parentscreen"
parentscreen.Parent = var['LocalPlayer']:WaitForChild("PlayerGui")
parentscreen.ResetOnSpawn = false

mainframe.Name = "mainframe"
mainframe.Parent = parentscreen
mainframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainframe.BackgroundTransparency = 1.000
mainframe.Position = UDim2.new(0.788, 0, 0.975, 0)
mainframe.Size = UDim2.new(0, 415, 0, 26)
mainframe.Image = "rbxassetid://3570695787"
mainframe.ImageColor3 = Color3.fromRGB(17, 17, 17)
mainframe.ScaleType = Enum.ScaleType.Slice
mainframe.SliceCenter = Rect.new(100, 100, 100, 100)
mainframe.SliceScale = 0.040

IGNORETHISFRA.Name = "IGNORETHISFRA"
IGNORETHISFRA.Parent = mainframe
IGNORETHISFRA.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
IGNORETHISFRA.BorderColor3 = Color3.fromRGB(0, 0, 0)
IGNORETHISFRA.BorderSizePixel = 0
IGNORETHISFRA.Size = UDim2.new(0, 415, 0, 2)

var['RunService'].Stepped:connect(function()
    local vars = {
        ['FramesPerSecond'] = game.Workspace:GetRealPhysicsFPS(),
        ['NetworkProtoCall'] = game.Stats.PerformanceStats.Ping:GetValue(),
    }
    textlabeltoUI.Name = "textlabeltoUI"
    textlabeltoUI.Parent = mainframe
    textlabeltoUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textlabeltoUI.BackgroundTransparency = 1.000
    textlabeltoUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
    textlabeltoUI.BorderSizePixel = 0
    textlabeltoUI.Position = UDim2.new(0.2, 0, 0.0769230798, 0)
    textlabeltoUI.Size = UDim2.new(0, 331, 0, 24)
    textlabeltoUI.Font = Enum.Font.Code
    textlabeltoUI.Text = "NightRider \\ Version: 2.20.1B5 \\ FPS: "..math.floor(vars['FramesPerSecond']).." \\ PING: "..vars['NetworkProtoCall']..""
    textlabeltoUI.TextColor3 = Color3.fromRGB(255, 255, 255)
    textlabeltoUI.TextSize = 14.000
end)

mainframeforscript.Name = "mainframeforscript"
mainframeforscript.Parent = parentscreen
mainframeforscript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainframeforscript.BackgroundTransparency = 1.000
mainframeforscript.Position = UDim2.new(0.430476189, 0, 0.401098907, 0)
mainframeforscript.Size = UDim2.new(0, 100, 0, 329)
mainframeforscript.Image = "rbxassetid://3570695787"
mainframeforscript.ImageColor3 = Color3.fromRGB(10, 10, 10)
mainframeforscript.ScaleType = Enum.ScaleType.Slice
mainframeforscript.SliceCenter = Rect.new(100, 100, 100, 100)
mainframeforscript.SliceScale = 0.040
mainframeforscript.Active = true
mainframeforscript.Draggable = true
mainframeforscript.Selectable = false

firstbutton.Name = "firstbutton"
firstbutton.Parent = mainframeforscript
firstbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
firstbutton.BackgroundTransparency = 1.000
firstbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
firstbutton.BorderSizePixel = 0
firstbutton.Position = UDim2.new(0.100000001, 0, 0.0540540554, 0)
firstbutton.Size = UDim2.new(0, 80, 0, 23)
firstbutton.ZIndex = 2
firstbutton.Font = Enum.Font.Code
firstbutton.Text = "World"
firstbutton.TextColor3 = Color3.fromRGB(0, 170, 255)
firstbutton.TextSize = 14.000

frametofirstbutton.Name = "frametofirstbutton"
frametofirstbutton.Parent = firstbutton
frametofirstbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
frametofirstbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
frametofirstbutton.BorderSizePixel = 0
frametofirstbutton.Size = UDim2.new(0, 4, 0, 23)
frametofirstbutton.Visible = false

frameforscript.Name = "frameforscript"
frameforscript.Parent = firstbutton
frameforscript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frameforscript.BackgroundTransparency = 1.000
frameforscript.Position = UDim2.new(1.1028173, 0, -0.782801747, 0)
frameforscript.Selectable = true
frameforscript.Size = UDim2.new(0, 356, 0, 329)
frameforscript.Visible = false
frameforscript.ZIndex = 2
frameforscript.Image = "rbxassetid://3570695787"
frameforscript.ImageColor3 = Color3.fromRGB(17, 17, 17)
frameforscript.ScaleType = Enum.ScaleType.Slice
frameforscript.SliceCenter = Rect.new(100, 100, 100, 100)
frameforscript.SliceScale = 0.040

autofarmtext.Name = "autofarmtext"
autofarmtext.Parent = frameforscript
autofarmtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
autofarmtext.BackgroundTransparency = 1.000
autofarmtext.BorderColor3 = Color3.fromRGB(0, 0, 0)
autofarmtext.BorderSizePixel = 0
autofarmtext.Position = UDim2.new(0.0337078646, 0, 0.0453418866, 0)
autofarmtext.Size = UDim2.new(0, 66, 0, 23)
autofarmtext.ZIndex = 3
autofarmtext.Font = Enum.Font.Code
autofarmtext.Text = "AutoFarm"
autofarmtext.TextColor3 = Color3.fromRGB(0, 170, 255)
autofarmtext.TextSize = 15.000

buttontoautofarm.Name = "buttontoautofarm"
buttontoautofarm.Parent = autofarmtext
buttontoautofarm.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
buttontoautofarm.BorderColor3 = Color3.fromRGB(0, 0, 0)
buttontoautofarm.BorderSizePixel = 0
buttontoautofarm.Position = UDim2.new(0, 0, 1.39130437, 0)
buttontoautofarm.Size = UDim2.new(0, 16, 0, 16)
buttontoautofarm.ZIndex = 3
buttontoautofarm.Font = Enum.Font.Code
buttontoautofarm.Text = ""
buttontoautofarm.TextColor3 = Color3.fromRGB(0, 0, 0)
buttontoautofarm.TextSize = 14.000

texttobuttonautofarm.Name = "texttobuttonautofarm"
texttobuttonautofarm.Parent = buttontoautofarm
texttobuttonautofarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonautofarm.BackgroundTransparency = 1.000
texttobuttonautofarm.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonautofarm.BorderSizePixel = 0
texttobuttonautofarm.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonautofarm.Size = UDim2.new(0, 66, 0, 23)
texttobuttonautofarm.ZIndex = 3
texttobuttonautofarm.Font = Enum.Font.Code
texttobuttonautofarm.Text = "-- false"
texttobuttonautofarm.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonautofarm.TextSize = 14.000

godmodetextlabel.Name = "godmodetextlabel"
godmodetextlabel.Parent = frameforscript
godmodetextlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
godmodetextlabel.BackgroundTransparency = 1.000
godmodetextlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
godmodetextlabel.BorderSizePixel = 0
godmodetextlabel.Position = UDim2.new(0.376404494, 0, 0.0453418866, 0)
godmodetextlabel.Size = UDim2.new(0, 66, 0, 23)
godmodetextlabel.ZIndex = 3
godmodetextlabel.Font = Enum.Font.Code
godmodetextlabel.Text = "God Mode"
godmodetextlabel.TextColor3 = Color3.fromRGB(0, 170, 255)
godmodetextlabel.TextSize = 15.000

godmodebutton.Name = "godmodebutton"
godmodebutton.Parent = godmodetextlabel
godmodebutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
godmodebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
godmodebutton.BorderSizePixel = 0
godmodebutton.Position = UDim2.new(0, 0, 1.39130437, 0)
godmodebutton.Size = UDim2.new(0, 16, 0, 16)
godmodebutton.ZIndex = 3
godmodebutton.Font = Enum.Font.Code
godmodebutton.Text = ""
godmodebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
godmodebutton.TextSize = 14.000

texttobuttongodmode.Name = "texttobuttongodmode"
texttobuttongodmode.Parent = godmodebutton
texttobuttongodmode.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttongodmode.BackgroundTransparency = 1.000
texttobuttongodmode.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttongodmode.BorderSizePixel = 0
texttobuttongodmode.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttongodmode.Size = UDim2.new(0, 66, 0, 23)
texttobuttongodmode.ZIndex = 3
texttobuttongodmode.Font = Enum.Font.Code
texttobuttongodmode.Text = "-- false"
texttobuttongodmode.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttongodmode.TextSize = 14.000

Airwalktext.Name = "Airwalktext"
Airwalktext.Parent = frameforscript
Airwalktext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Airwalktext.BackgroundTransparency = 1.000
Airwalktext.BorderColor3 = Color3.fromRGB(0, 0, 0)
Airwalktext.BorderSizePixel = 0
Airwalktext.Position = UDim2.new(0.724719107, 0, 0.0453418866, 0)
Airwalktext.Size = UDim2.new(0, 66, 0, 23)
Airwalktext.ZIndex = 3
Airwalktext.Font = Enum.Font.Code
Airwalktext.Text = "Airwalk"
Airwalktext.TextColor3 = Color3.fromRGB(0, 170, 255)
Airwalktext.TextSize = 15.000

airwalkbutton.Name = "airwalkbutton"
airwalkbutton.Parent = Airwalktext
airwalkbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
airwalkbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
airwalkbutton.BorderSizePixel = 0
airwalkbutton.Position = UDim2.new(0, 0, 1.39130437, 0)
airwalkbutton.Size = UDim2.new(0, 16, 0, 16)
airwalkbutton.ZIndex = 3
airwalkbutton.Font = Enum.Font.Code
airwalkbutton.Text = ""
airwalkbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
airwalkbutton.TextSize = 14.000

texttobuttonairwalk.Name = "texttobuttonairwalk"
texttobuttonairwalk.Parent = airwalkbutton
texttobuttonairwalk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonairwalk.BackgroundTransparency = 1.000
texttobuttonairwalk.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonairwalk.BorderSizePixel = 0
texttobuttonairwalk.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonairwalk.Size = UDim2.new(0, 66, 0, 23)
texttobuttonairwalk.ZIndex = 3
texttobuttonairwalk.Font = Enum.Font.Code
texttobuttonairwalk.Text = "-- false"
texttobuttonairwalk.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonairwalk.TextSize = 14.000

rejointext.Name = "rejointext"
rejointext.Parent = frameforscript
rejointext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rejointext.BackgroundTransparency = 1.000
rejointext.BorderColor3 = Color3.fromRGB(0, 0, 0)
rejointext.BorderSizePixel = 0
rejointext.Position = UDim2.new(0.0337078646, 0, 0.267226398, 0)
rejointext.Size = UDim2.new(0, 66, 0, 23)
rejointext.ZIndex = 3
rejointext.Font = Enum.Font.Code
rejointext.Text = "Rejoin"
rejointext.TextColor3 = Color3.fromRGB(0, 170, 255)
rejointext.TextSize = 15.000

buttonrejoin.Name = "buttonrejoin"
buttonrejoin.Parent = rejointext
buttonrejoin.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
buttonrejoin.BorderColor3 = Color3.fromRGB(0, 0, 0)
buttonrejoin.BorderSizePixel = 0
buttonrejoin.Position = UDim2.new(0, 0, 1.39130437, 0)
buttonrejoin.Size = UDim2.new(0, 16, 0, 16)
buttonrejoin.ZIndex = 3
buttonrejoin.Font = Enum.Font.Code
buttonrejoin.Text = ""
buttonrejoin.TextColor3 = Color3.fromRGB(0, 0, 0)
buttonrejoin.TextSize = 14.000

texttobuttonrejoin.Name = "texttobuttonrejoin"
texttobuttonrejoin.Parent = buttonrejoin
texttobuttonrejoin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonrejoin.BackgroundTransparency = 1.000
texttobuttonrejoin.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonrejoin.BorderSizePixel = 0
texttobuttonrejoin.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonrejoin.Size = UDim2.new(0, 66, 0, 23)
texttobuttonrejoin.ZIndex = 3
texttobuttonrejoin.Font = Enum.Font.Code
texttobuttonrejoin.Text = "-- false"
texttobuttonrejoin.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonrejoin.TextSize = 14.000

exittext.Name = "exittext"
exittext.Parent = frameforscript
exittext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exittext.BackgroundTransparency = 1.000
exittext.BorderColor3 = Color3.fromRGB(0, 0, 0)
exittext.BorderSizePixel = 0
exittext.Position = UDim2.new(0.351123601, 0, 0.267226398, 0)
exittext.Size = UDim2.new(0, 66, 0, 23)
exittext.ZIndex = 3
exittext.Font = Enum.Font.Code
exittext.Text = "Kill Game"
exittext.TextColor3 = Color3.fromRGB(0, 170, 255)
exittext.TextSize = 15.000

buttonexit.Name = "buttonexit"
buttonexit.Parent = exittext
buttonexit.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
buttonexit.BorderColor3 = Color3.fromRGB(0, 0, 0)
buttonexit.BorderSizePixel = 0
buttonexit.Position = UDim2.new(0, 0, 1.39130437, 0)
buttonexit.Size = UDim2.new(0, 16, 0, 16)
buttonexit.ZIndex = 3
buttonexit.Font = Enum.Font.Code
buttonexit.Text = ""
buttonexit.TextColor3 = Color3.fromRGB(0, 0, 0)
buttonexit.TextSize = 14.000

texttobuttonexit.Name = "texttobuttonexit"
texttobuttonexit.Parent = buttonexit
texttobuttonexit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonexit.BackgroundTransparency = 1.000
texttobuttonexit.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonexit.BorderSizePixel = 0
texttobuttonexit.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonexit.Size = UDim2.new(0, 66, 0, 23)
texttobuttonexit.ZIndex = 3
texttobuttonexit.Font = Enum.Font.Code
texttobuttonexit.Text = "-- false"
texttobuttonexit.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonexit.TextSize = 14.000

nocliptext.Name = "nocliptext"
nocliptext.Parent = frameforscript
nocliptext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
nocliptext.BackgroundTransparency = 1.000
nocliptext.BorderColor3 = Color3.fromRGB(0, 0, 0)
nocliptext.BorderSizePixel = 0
nocliptext.Position = UDim2.new(0.724719107, 0, 0.267226398, 0)
nocliptext.Size = UDim2.new(0, 66, 0, 23)
nocliptext.ZIndex = 3
nocliptext.Font = Enum.Font.Code
nocliptext.Text = "Noclip"
nocliptext.TextColor3 = Color3.fromRGB(0, 170, 255)
nocliptext.TextSize = 15.000

noclipbutton.Name = "noclipbutton"
noclipbutton.Parent = nocliptext
noclipbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
noclipbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
noclipbutton.BorderSizePixel = 0
noclipbutton.Position = UDim2.new(0, 0, 1.39130437, 0)
noclipbutton.Size = UDim2.new(0, 16, 0, 16)
noclipbutton.ZIndex = 3
noclipbutton.Font = Enum.Font.Code
noclipbutton.Text = ""
noclipbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
noclipbutton.TextSize = 14.000

texttobuttonnocip.Name = "texttobuttonnocip"
texttobuttonnocip.Parent = noclipbutton
texttobuttonnocip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonnocip.BackgroundTransparency = 1.000
texttobuttonnocip.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonnocip.BorderSizePixel = 0
texttobuttonnocip.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonnocip.Size = UDim2.new(0, 66, 0, 23)
texttobuttonnocip.ZIndex = 3
texttobuttonnocip.Font = Enum.Font.Code
texttobuttonnocip.Text = "-- false"
texttobuttonnocip.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonnocip.TextSize = 14.000

resettext.Name = "resettext"
resettext.Parent = frameforscript
resettext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
resettext.BackgroundTransparency = 1.000
resettext.BorderColor3 = Color3.fromRGB(0, 0, 0)
resettext.BorderSizePixel = 0
resettext.Position = UDim2.new(0.0337078571, 0, 0.495189905, 0)
resettext.Size = UDim2.new(0, 66, 0, 23)
resettext.ZIndex = 3
resettext.Font = Enum.Font.Code
resettext.Text = "Reset"
resettext.TextColor3 = Color3.fromRGB(0, 170, 255)
resettext.TextSize = 15.000

resetbutton.Name = "resetbutton"
resetbutton.Parent = resettext
resetbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
resetbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
resetbutton.BorderSizePixel = 0
resetbutton.Position = UDim2.new(0, 0, 1.39130437, 0)
resetbutton.Size = UDim2.new(0, 16, 0, 16)
resetbutton.ZIndex = 3
resetbutton.Font = Enum.Font.Code
resetbutton.Text = ""
resetbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
resetbutton.TextSize = 14.000

texttobuttonreset.Name = "texttobuttonreset"
texttobuttonreset.Parent = resetbutton
texttobuttonreset.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonreset.BackgroundTransparency = 1.000
texttobuttonreset.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonreset.BorderSizePixel = 0
texttobuttonreset.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonreset.Size = UDim2.new(0, 66, 0, 23)
texttobuttonreset.ZIndex = 3
texttobuttonreset.Font = Enum.Font.Code
texttobuttonreset.Text = "-- false"
texttobuttonreset.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonreset.TextSize = 14.000

skipleveltext.Name = "skipleveltext"
skipleveltext.Parent = frameforscript
skipleveltext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
skipleveltext.BackgroundTransparency = 1.000
skipleveltext.BorderColor3 = Color3.fromRGB(0, 0, 0)
skipleveltext.BorderSizePixel = 0
skipleveltext.Position = UDim2.new(0.351123601, 0, 0.495189935, 0)
skipleveltext.Size = UDim2.new(0, 66, 0, 23)
skipleveltext.ZIndex = 3
skipleveltext.Font = Enum.Font.Code
skipleveltext.Text = "Skip Level"
skipleveltext.TextColor3 = Color3.fromRGB(0, 170, 255)
skipleveltext.TextSize = 15.000

skiplevelbutton.Name = "skiplevelbutton"
skiplevelbutton.Parent = skipleveltext
skiplevelbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
skiplevelbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
skiplevelbutton.BorderSizePixel = 0
skiplevelbutton.Position = UDim2.new(0, 0, 1.39130437, 0)
skiplevelbutton.Size = UDim2.new(0, 16, 0, 16)
skiplevelbutton.ZIndex = 3
skiplevelbutton.Font = Enum.Font.Code
skiplevelbutton.Text = ""
skiplevelbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
skiplevelbutton.TextSize = 14.000

texttobuttonskiplevel.Name = "texttobuttonskiplevel"
texttobuttonskiplevel.Parent = skiplevelbutton
texttobuttonskiplevel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonskiplevel.BackgroundTransparency = 1.000
texttobuttonskiplevel.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonskiplevel.BorderSizePixel = 0
texttobuttonskiplevel.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonskiplevel.Size = UDim2.new(0, 66, 0, 23)
texttobuttonskiplevel.ZIndex = 3
texttobuttonskiplevel.Font = Enum.Font.Code
texttobuttonskiplevel.Text = "-- false"
texttobuttonskiplevel.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonskiplevel.TextSize = 14.000

megaupload.Name = "megaupload"
megaupload.Parent = mainframeforscript
megaupload.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
megaupload.BorderColor3 = Color3.fromRGB(0, 0, 0)
megaupload.BorderSizePixel = 0
megaupload.Position = UDim2.new(0, 0, -0.0607902743, 0)
megaupload.Size = UDim2.new(0, 455, 0, 28)
megaupload.ZIndex = 10

TITLEOFSCRIPT.Name = "TITLEOFSCRIPT"
TITLEOFSCRIPT.Parent = megaupload
TITLEOFSCRIPT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TITLEOFSCRIPT.BackgroundTransparency = 1.000
TITLEOFSCRIPT.BorderColor3 = Color3.fromRGB(0, 0, 0)
TITLEOFSCRIPT.BorderSizePixel = 0
TITLEOFSCRIPT.Position = UDim2.new(0.0747252777, 0, 0, 0)
TITLEOFSCRIPT.Size = UDim2.new(0, 190, 0, 34)
TITLEOFSCRIPT.ZIndex = 10
TITLEOFSCRIPT.Font = Enum.Font.Code
TITLEOFSCRIPT.Text = "Night Rider - by Coryu"
TITLEOFSCRIPT.TextColor3 = Color3.fromRGB(0, 170, 255)
TITLEOFSCRIPT.TextSize = 15.000

scriptlogo.Name = "scriptlogo"
scriptlogo.Parent = megaupload
scriptlogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scriptlogo.BackgroundTransparency = 1.000
scriptlogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
scriptlogo.BorderSizePixel = 0
scriptlogo.Position = UDim2.new(0.0131868133, 0, 0.107142858, 0)
scriptlogo.Size = UDim2.new(0, 28, 0, 28)
scriptlogo.ZIndex = 10
scriptlogo.Image = "http://www.roblox.com/asset/?id=10522032392"

exitscriptutton.Name = "exitscriptutton"
exitscriptutton.Parent = megaupload
exitscriptutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exitscriptutton.BackgroundTransparency = 1.000
exitscriptutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
exitscriptutton.BorderSizePixel = 0
exitscriptutton.Position = UDim2.new(0.944999993, 0, 0, 7)
exitscriptutton.Size = UDim2.new(0, 20, 0, 16)
exitscriptutton.ZIndex = 11
exitscriptutton.Font = Enum.Font.SourceSans
exitscriptutton.Text = "-"
exitscriptutton.TextColor3 = Color3.fromRGB(0, 170, 255)
exitscriptutton.TextSize = 14.000

exitscriptutton2.Name = "exitscriptutton"
exitscriptutton2.Parent = megaupload
exitscriptutton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exitscriptutton2.BackgroundTransparency = 1.000
exitscriptutton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
exitscriptutton2.BorderSizePixel = 0
exitscriptutton2.Position = UDim2.new(0.944999993, 0, 0, 7)
exitscriptutton2.Size = UDim2.new(0, 20, 0, 16)
exitscriptutton2.ZIndex = 11
exitscriptutton2.Font = Enum.Font.SourceSans
exitscriptutton2.Text = "O"
exitscriptutton2.TextColor3 = Color3.fromRGB(0, 170, 255)
exitscriptutton2.TextSize = 14.000
exitscriptutton2.Visible = false

rlexitbuttontoscript.Name = "rlexitbuttontoscript"
rlexitbuttontoscript.Parent = exitscriptutton
rlexitbuttontoscript.Active = true
rlexitbuttontoscript.AnchorPoint = Vector2.new(0.5, 0.5)
rlexitbuttontoscript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rlexitbuttontoscript.BackgroundTransparency = 1.000
rlexitbuttontoscript.Position = UDim2.new(0.5, 0, 0.5, 0)
rlexitbuttontoscript.Selectable = true
rlexitbuttontoscript.Size = UDim2.new(1, 0, 1, 0)
rlexitbuttontoscript.ZIndex = 10
rlexitbuttontoscript.Image = "rbxassetid://3570695787"
rlexitbuttontoscript.ImageColor3 = Color3.fromRGB(11, 11, 11)
rlexitbuttontoscript.ScaleType = Enum.ScaleType.Slice
rlexitbuttontoscript.SliceCenter = Rect.new(100, 100, 100, 100)
rlexitbuttontoscript.SliceScale = 0.040

secondbutton.Name = "secondbutton"
secondbutton.Parent = mainframeforscript
secondbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
secondbutton.BackgroundTransparency = 1.000
secondbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
secondbutton.BorderSizePixel = 0
secondbutton.Position = UDim2.new(0.100000001, 0, 0.163000003, 0)
secondbutton.Size = UDim2.new(0, 80, 0, 23)
secondbutton.ZIndex = 2
secondbutton.Font = Enum.Font.Code
secondbutton.Text = "Teleports"
secondbutton.TextColor3 = Color3.fromRGB(0, 170, 255)
secondbutton.TextSize = 14.000

frametosecondbutton.Name = "frametosecondbutton"
frametosecondbutton.Parent = secondbutton
frametosecondbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
frametosecondbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
frametosecondbutton.BorderSizePixel = 0
frametosecondbutton.Size = UDim2.new(0, 4, 0, 23)
frametosecondbutton.Visible = false

framefrsecond.Name = "framefrsecond"
framefrsecond.Parent = secondbutton
framefrsecond.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
framefrsecond.BackgroundTransparency = 1.000
framefrsecond.Position = UDim2.new(1.1028173, 0, -2.34801912, 0)
framefrsecond.Selectable = true
framefrsecond.Size = UDim2.new(0, 356, 0, 329)
framefrsecond.ZIndex = 2
framefrsecond.Image = "rbxassetid://3570695787"
framefrsecond.ImageColor3 = Color3.fromRGB(17, 17, 17)
framefrsecond.ScaleType = Enum.ScaleType.Slice
framefrsecond.SliceCenter = Rect.new(100, 100, 100, 100)
framefrsecond.SliceScale = 0.040
framefrsecond.Visible = false

gotospeedrun4.Name = "gotospeedrun4"
gotospeedrun4.Parent = framefrsecond
gotospeedrun4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gotospeedrun4.BackgroundTransparency = 1.000
gotospeedrun4.BorderColor3 = Color3.fromRGB(0, 0, 0)
gotospeedrun4.BorderSizePixel = 0
gotospeedrun4.Position = UDim2.new(0.620786548, 0, 0.376648813, 0)
gotospeedrun4.Size = UDim2.new(0, 66, 0, 23)
gotospeedrun4.ZIndex = 2
gotospeedrun4.Font = Enum.Font.Code
gotospeedrun4.Text = "Speed Run 4"
gotospeedrun4.TextColor3 = Color3.fromRGB(0, 170, 255)
gotospeedrun4.TextSize = 15.000

gotospeedrun4button.Name = "gotospeedrun4button"
gotospeedrun4button.Parent = gotospeedrun4
gotospeedrun4button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
gotospeedrun4button.BorderColor3 = Color3.fromRGB(0, 0, 0)
gotospeedrun4button.BorderSizePixel = 0
gotospeedrun4button.Position = UDim2.new(0, 0, 1.39130437, 0)
gotospeedrun4button.Size = UDim2.new(0, 16, 0, 16)
gotospeedrun4button.ZIndex = 2
gotospeedrun4button.Font = Enum.Font.Code
gotospeedrun4button.Text = ""
gotospeedrun4button.TextColor3 = Color3.fromRGB(0, 0, 0)
gotospeedrun4button.TextSize = 14.000

texttobuttonspeedrun4.Name = "texttobuttonspeedrun4"
texttobuttonspeedrun4.Parent = gotospeedrun4button
texttobuttonspeedrun4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonspeedrun4.BackgroundTransparency = 1.000
texttobuttonspeedrun4.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonspeedrun4.BorderSizePixel = 0
texttobuttonspeedrun4.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonspeedrun4.Size = UDim2.new(0, 66, 0, 23)
texttobuttonspeedrun4.ZIndex = 2
texttobuttonspeedrun4.Font = Enum.Font.Code
texttobuttonspeedrun4.Text = "-- false"
texttobuttonspeedrun4.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonspeedrun4.TextSize = 14.000

gotoreloaded.Name = "gotoreloaded"
gotoreloaded.Parent = framefrsecond
gotoreloaded.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gotoreloaded.BackgroundTransparency = 1.000
gotoreloaded.BorderColor3 = Color3.fromRGB(0, 0, 0)
gotoreloaded.BorderSizePixel = 0
gotoreloaded.Position = UDim2.new(0.620786488, 0, 0.0878950655, 0)
gotoreloaded.Size = UDim2.new(0, 66, 0, 23)
gotoreloaded.ZIndex = 2
gotoreloaded.Font = Enum.Font.Code
gotoreloaded.Text = "Speed Run Reloaded"
gotoreloaded.TextColor3 = Color3.fromRGB(0, 170, 255)
gotoreloaded.TextSize = 15.000

gotoreloadedbutton.Name = "gotoreloadedbutton"
gotoreloadedbutton.Parent = gotoreloaded
gotoreloadedbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
gotoreloadedbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
gotoreloadedbutton.BorderSizePixel = 0
gotoreloadedbutton.Position = UDim2.new(0, 0, 1.39130437, 0)
gotoreloadedbutton.Size = UDim2.new(0, 16, 0, 16)
gotoreloadedbutton.ZIndex = 2
gotoreloadedbutton.Font = Enum.Font.Code
gotoreloadedbutton.Text = ""
gotoreloadedbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
gotoreloadedbutton.TextSize = 14.000

texttobuttonreloaded.Name = "texttobuttonreloaded"
texttobuttonreloaded.Parent = gotoreloadedbutton
texttobuttonreloaded.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonreloaded.BackgroundTransparency = 1.000
texttobuttonreloaded.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonreloaded.BorderSizePixel = 0
texttobuttonreloaded.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonreloaded.Size = UDim2.new(0, 66, 0, 23)
texttobuttonreloaded.ZIndex = 2
texttobuttonreloaded.Font = Enum.Font.Code
texttobuttonreloaded.Text = "-- false"
texttobuttonreloaded.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonreloaded.TextSize = 14.000

gotoretro.Name = "gotoretro"
gotoretro.Parent = framefrsecond
gotoretro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gotoretro.BackgroundTransparency = 1.000
gotoretro.BorderColor3 = Color3.fromRGB(0, 0, 0)
gotoretro.BorderSizePixel = 0
gotoretro.Position = UDim2.new(0.137640506, 0, 0.0878950059, 0)
gotoretro.Size = UDim2.new(0, 66, 0, 23)
gotoretro.ZIndex = 2
gotoretro.Font = Enum.Font.Code
gotoretro.Text = "Speed Run 4 Retro"
gotoretro.TextColor3 = Color3.fromRGB(0, 170, 255)
gotoretro.TextSize = 15.000

gotoretrobutton.Name = "gotoretrobutton"
gotoretrobutton.Parent = gotoretro
gotoretrobutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
gotoretrobutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
gotoretrobutton.BorderSizePixel = 0
gotoretrobutton.Position = UDim2.new(0, 0, 1.39130437, 0)
gotoretrobutton.Size = UDim2.new(0, 16, 0, 16)
gotoretrobutton.ZIndex = 2
gotoretrobutton.Font = Enum.Font.Code
gotoretrobutton.Text = ""
gotoretrobutton.TextColor3 = Color3.fromRGB(0, 0, 0)
gotoretrobutton.TextSize = 14.000

texttobuttonretro.Name = "texttobuttonretro"
texttobuttonretro.Parent = gotoretrobutton
texttobuttonretro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonretro.BackgroundTransparency = 1.000
texttobuttonretro.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonretro.BorderSizePixel = 0
texttobuttonretro.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonretro.Size = UDim2.new(0, 66, 0, 23)
texttobuttonretro.ZIndex = 2
texttobuttonretro.Font = Enum.Font.Code
texttobuttonretro.Text = "-- false"
texttobuttonretro.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonretro.TextSize = 14.000

teleporttofinaldestiny.Name = "teleporttofinaldestiny"
teleporttofinaldestiny.Parent = framefrsecond
teleporttofinaldestiny.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
teleporttofinaldestiny.BackgroundTransparency = 1.000
teleporttofinaldestiny.BorderColor3 = Color3.fromRGB(0, 0, 0)
teleporttofinaldestiny.BorderSizePixel = 0
teleporttofinaldestiny.Position = UDim2.new(0.137640476, 0, 0.376648843, 0)
teleporttofinaldestiny.Size = UDim2.new(0, 66, 0, 23)
teleporttofinaldestiny.ZIndex = 2
teleporttofinaldestiny.Font = Enum.Font.Code
teleporttofinaldestiny.Text = "Final Destiny"
teleporttofinaldestiny.TextColor3 = Color3.fromRGB(0, 170, 255)
teleporttofinaldestiny.TextSize = 15.000

gotodestinybutton.Name = "gotodestinybutton"
gotodestinybutton.Parent = teleporttofinaldestiny
gotodestinybutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
gotodestinybutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
gotodestinybutton.BorderSizePixel = 0
gotodestinybutton.Position = UDim2.new(0, 0, 1.39130437, 0)
gotodestinybutton.Size = UDim2.new(0, 16, 0, 16)
gotodestinybutton.ZIndex = 2
gotodestinybutton.Font = Enum.Font.Code
gotodestinybutton.Text = ""
gotodestinybutton.TextColor3 = Color3.fromRGB(0, 0, 0)
gotodestinybutton.TextSize = 14.000

texttobuttondestiny.Name = "texttobuttondestiny"
texttobuttondestiny.Parent = gotodestinybutton
texttobuttondestiny.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttondestiny.BackgroundTransparency = 1.000
texttobuttondestiny.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttondestiny.BorderSizePixel = 0
texttobuttondestiny.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttondestiny.Size = UDim2.new(0, 66, 0, 23)
texttobuttondestiny.ZIndex = 2
texttobuttondestiny.Font = Enum.Font.Code
texttobuttondestiny.Text = "-- false"
texttobuttondestiny.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttondestiny.TextSize = 14.000

thirdbutton.Name = "thirdbutton"
thirdbutton.Parent = mainframeforscript
thirdbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thirdbutton.BackgroundTransparency = 1.000
thirdbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
thirdbutton.BorderSizePixel = 0
thirdbutton.Position = UDim2.new(0.100000001, 0, 0.266820014, 0)
thirdbutton.Size = UDim2.new(0, 80, 0, 23)
thirdbutton.ZIndex = 2
thirdbutton.Font = Enum.Font.Code
thirdbutton.Text = "Gamepass"
thirdbutton.TextColor3 = Color3.fromRGB(0, 170, 255)
thirdbutton.TextSize = 14.000

frametothridbutton.Name = "frametothridbutton"
frametothridbutton.Parent = thirdbutton
frametothridbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
frametothridbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
frametothridbutton.BorderSizePixel = 0
frametothridbutton.Size = UDim2.new(0, 4, 0, 23)
frametothridbutton.Visible = false

framefrsecond_2.Name = "framefrsecond"
framefrsecond_2.Parent = thirdbutton
framefrsecond_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
framefrsecond_2.BackgroundTransparency = 1.000
framefrsecond_2.Position = UDim2.new(1.11531746, 0, -3.8262794, 0)
framefrsecond_2.Selectable = true
framefrsecond_2.Size = UDim2.new(0, 356, 0, 329)
framefrsecond_2.Visible = false
framefrsecond_2.ZIndex = 2
framefrsecond_2.Image = "rbxassetid://3570695787"
framefrsecond_2.ImageColor3 = Color3.fromRGB(17, 17, 17)
framefrsecond_2.ScaleType = Enum.ScaleType.Slice
framefrsecond_2.SliceCenter = Rect.new(100, 100, 100, 100)
framefrsecond_2.SliceScale = 0.040

getspeedcoiltext.Name = "getspeedcoiltext"
getspeedcoiltext.Parent = framefrsecond_2
getspeedcoiltext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
getspeedcoiltext.BackgroundTransparency = 1.000
getspeedcoiltext.BorderColor3 = Color3.fromRGB(0, 0, 0)
getspeedcoiltext.BorderSizePixel = 0
getspeedcoiltext.Position = UDim2.new(0.620786488, 0, 0.0878950655, 0)
getspeedcoiltext.Size = UDim2.new(0, 66, 0, 23)
getspeedcoiltext.ZIndex = 2
getspeedcoiltext.Font = Enum.Font.Code
getspeedcoiltext.Text = "Get SpeedCoil"
getspeedcoiltext.TextColor3 = Color3.fromRGB(0, 170, 255)
getspeedcoiltext.TextSize = 15.000

getspeedcoilbutton.Name = "getspeedcoilbutton"
getspeedcoilbutton.Parent = getspeedcoiltext
getspeedcoilbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
getspeedcoilbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
getspeedcoilbutton.BorderSizePixel = 0
getspeedcoilbutton.Position = UDim2.new(0, 0, 1.39130437, 0)
getspeedcoilbutton.Size = UDim2.new(0, 16, 0, 16)
getspeedcoilbutton.ZIndex = 2
getspeedcoilbutton.Font = Enum.Font.Code
getspeedcoilbutton.Text = ""
getspeedcoilbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
getspeedcoilbutton.TextSize = 14.000

texttobuttonspeedcoil.Name = "texttobuttonspeedcoil"
texttobuttonspeedcoil.Parent = getspeedcoilbutton
texttobuttonspeedcoil.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonspeedcoil.BackgroundTransparency = 1.000
texttobuttonspeedcoil.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonspeedcoil.BorderSizePixel = 0
texttobuttonspeedcoil.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonspeedcoil.Size = UDim2.new(0, 66, 0, 23)
texttobuttonspeedcoil.ZIndex = 2
texttobuttonspeedcoil.Font = Enum.Font.Code
texttobuttonspeedcoil.Text = "-- false"
texttobuttonspeedcoil.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonspeedcoil.TextSize = 14.000

removerarmtext.Name = "removerarmtext"
removerarmtext.Parent = framefrsecond_2
removerarmtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
removerarmtext.BackgroundTransparency = 1.000
removerarmtext.BorderColor3 = Color3.fromRGB(0, 0, 0)
removerarmtext.BorderSizePixel = 0
removerarmtext.Position = UDim2.new(0.115168601, 0, 0.0878950059, 0)
removerarmtext.Size = UDim2.new(0, 66, 0, 23)
removerarmtext.ZIndex = 2
removerarmtext.Font = Enum.Font.Code
removerarmtext.Text = "Get GravityCoil"
removerarmtext.TextColor3 = Color3.fromRGB(0, 170, 255)
removerarmtext.TextSize = 15.000

removerarmbutton.Name = "removerarmbutton"
removerarmbutton.Parent = removerarmtext
removerarmbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
removerarmbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
removerarmbutton.BorderSizePixel = 0
removerarmbutton.Position = UDim2.new(0, 0, 1.39130437, 0)
removerarmbutton.Size = UDim2.new(0, 16, 0, 16)
removerarmbutton.ZIndex = 2
removerarmbutton.Font = Enum.Font.Code
removerarmbutton.Text = ""
removerarmbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
removerarmbutton.TextSize = 14.000

texttobuttonrarm.Name = "texttobuttonrarm"
texttobuttonrarm.Parent = removerarmbutton
texttobuttonrarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttonrarm.BackgroundTransparency = 1.000
texttobuttonrarm.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttonrarm.BorderSizePixel = 0
texttobuttonrarm.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttonrarm.Size = UDim2.new(0, 66, 0, 23)
texttobuttonrarm.ZIndex = 2
texttobuttonrarm.Font = Enum.Font.Code
texttobuttonrarm.Text = "-- false"
texttobuttonrarm.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttonrarm.TextSize = 14.000

getcloudtext.Name = "getcloudtext"
getcloudtext.Parent = framefrsecond_2
getcloudtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
getcloudtext.BackgroundTransparency = 1.000
getcloudtext.BorderColor3 = Color3.fromRGB(0, 0, 0)
getcloudtext.BorderSizePixel = 0
getcloudtext.Position = UDim2.new(0.115168571, 0, 0.337135166, 0)
getcloudtext.Size = UDim2.new(0, 66, 0, 23)
getcloudtext.ZIndex = 2
getcloudtext.Font = Enum.Font.Code
getcloudtext.Text = "Get Cloud"
getcloudtext.TextColor3 = Color3.fromRGB(0, 170, 255)
getcloudtext.TextSize = 15.000

getcloudbutton.Name = "getcloudbutton"
getcloudbutton.Parent = getcloudtext
getcloudbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
getcloudbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
getcloudbutton.BorderSizePixel = 0
getcloudbutton.Position = UDim2.new(0, 0, 1.39130437, 0)
getcloudbutton.Size = UDim2.new(0, 16, 0, 16)
getcloudbutton.ZIndex = 2
getcloudbutton.Font = Enum.Font.Code
getcloudbutton.Text = ""
getcloudbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
getcloudbutton.TextSize = 14.000

texttobuttoncloud.Name = "texttobuttoncloud"
texttobuttoncloud.Parent = getcloudbutton
texttobuttoncloud.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texttobuttoncloud.BackgroundTransparency = 1.000
texttobuttoncloud.BorderColor3 = Color3.fromRGB(0, 0, 0)
texttobuttoncloud.BorderSizePixel = 0
texttobuttoncloud.Position = UDim2.new(1.40870786, 0, -0.267158121, 0)
texttobuttoncloud.Size = UDim2.new(0, 66, 0, 23)
texttobuttoncloud.ZIndex = 2
texttobuttoncloud.Font = Enum.Font.Code
texttobuttoncloud.Text = "-- false"
texttobuttoncloud.TextColor3 = Color3.fromRGB(0, 170, 255)
texttobuttoncloud.TextSize = 14.000

creditsbutton.Name = "creditsbutton"
creditsbutton.Parent = mainframeforscript
creditsbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
creditsbutton.BackgroundTransparency = 1.000
creditsbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
creditsbutton.BorderSizePixel = 0
creditsbutton.Position = UDim2.new(0.100000001, 0, 0.376242518, 0)
creditsbutton.Size = UDim2.new(0, 80, 0, 23)
creditsbutton.ZIndex = 2
creditsbutton.Font = Enum.Font.Code
creditsbutton.Text = "Credits"
creditsbutton.TextColor3 = Color3.fromRGB(0, 170, 255)
creditsbutton.TextSize = 14.000

frametocreditsbutton.Name = "frametocreditsbutton"
frametocreditsbutton.Parent = creditsbutton
frametocreditsbutton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
frametocreditsbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
frametocreditsbutton.BorderSizePixel = 0
frametocreditsbutton.Size = UDim2.new(0, 4, 0, 23)

frameforscript_2.Name = "frameforscript"
frameforscript_2.Parent = creditsbutton
frameforscript_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frameforscript_2.BackgroundTransparency = 1.000
frameforscript_2.Position = UDim2.new(1.10249996, 0, -5.42008686, 0)
frameforscript_2.Selectable = true
frameforscript_2.Size = UDim2.new(0, 356, 0, 329)
frameforscript_2.Image = "rbxassetid://3570695787"
frameforscript_2.ImageColor3 = Color3.fromRGB(17, 17, 17)
frameforscript_2.ScaleType = Enum.ScaleType.Slice
frameforscript_2.SliceCenter = Rect.new(100, 100, 100, 100)
frameforscript_2.SliceScale = 0.040

descofscript.Name = "descofscript"
descofscript.Parent = frameforscript_2
descofscript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descofscript.BackgroundTransparency = 1.000
descofscript.BorderColor3 = Color3.fromRGB(0, 0, 0)
descofscript.BorderSizePixel = 0
descofscript.Position = UDim2.new(0.0614890903, 0, 0.0539513826, 0)
descofscript.Size = UDim2.new(0, 312, 0, 34)
descofscript.Font = Enum.Font.Code
descofscript.Text = "Thank you for choosing Night-Rider"
descofscript.TextColor3 = Color3.fromRGB(0, 170, 255)
descofscript.TextSize = 15.000

descofscript_2.Name = "descofscript"
descofscript_2.Parent = frameforscript_2
descofscript_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descofscript_2.BackgroundTransparency = 1.000
descofscript_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
descofscript_2.BorderSizePixel = 0
descofscript_2.Position = UDim2.new(0.058943823, 0, 0.166887522, 0)
descofscript_2.Size = UDim2.new(0, 312, 0, 34)
descofscript_2.Font = Enum.Font.Code
descofscript_2.Text = "Verison 2.20.1B5"
descofscript_2.TextColor3 = Color3.fromRGB(0, 170, 255)
descofscript_2.TextSize = 15.000

descofscript_3.Name = "descofscript"
descofscript_3.Parent = frameforscript_2
descofscript_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descofscript_3.BackgroundTransparency = 1.000
descofscript_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
descofscript_3.BorderSizePixel = 0
descofscript_3.Position = UDim2.new(0.0313258469, 0, 0.57874161, 0)
descofscript_3.Size = UDim2.new(0, 332, 0, 34)
descofscript_3.Font = Enum.Font.Code
descofscript_3.Text = "Contact me for any support or suggestions!"
descofscript_3.TextColor3 = Color3.fromRGB(0, 170, 255)
descofscript_3.TextSize = 15.000

descofscript_4.Name = "descofscript"
descofscript_4.Parent = frameforscript_2
descofscript_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descofscript_4.BackgroundTransparency = 1.000
descofscript_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
descofscript_4.BorderSizePixel = 0
descofscript_4.Position = UDim2.new(0.0477078706, 0, 0.726872325, 0)
descofscript_4.Size = UDim2.new(0, 322, 0, 34)
descofscript_4.Font = Enum.Font.Code
descofscript_4.Text = "My discord is killserver or backdoor.exe"
descofscript_4.TextColor3 = Color3.fromRGB(0, 170, 255)
descofscript_4.TextSize = 15.000

descofscript_5.Name = "descofscript"
descofscript_5.Parent = frameforscript_2
descofscript_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descofscript_5.BackgroundTransparency = 1.000
descofscript_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
descofscript_5.BorderSizePixel = 0
descofscript_5.Position = UDim2.new(0.0477078706, 0, 0.854577482, 0)
descofscript_5.Size = UDim2.new(0, 322, 0, 34)
descofscript_5.Font = Enum.Font.Code
descofscript_5.Text = "Listen to NIGHT RIDER - Joji"
descofscript_5.TextColor3 = Color3.fromRGB(0, 170, 255)
descofscript_5.TextSize = 10.000

firstbutton.MouseButton1Down:connect(function()
    frameforscript.Visible = true
    frametofirstbutton.Visible = true
    framefrsecond.Visible = false
    framefrsecond_2.Visible = false
    frameforscript_2.Visible = false
    frametothridbutton.Visible = false
    frametocreditsbutton.Visible = false
    frametosecondbutton.Visible = false
end)

secondbutton.MouseButton1Down:connect(function()
    framefrsecond.Visible = true
    frametosecondbutton.Visible = true
    frameforscript.Visible = false
    framefrsecond_2.Visible = false
    frameforscript_2.Visible = false
    frametocreditsbutton.Visible = false
    frametofirstbutton.Visible = false
    frametothridbutton.Visible = false
end)

thirdbutton.MouseButton1Down:connect(function()
    framefrsecond_2.Visible = true
    frametothridbutton.Visible = true
    frameforscript_2.Visible = false
    frameforscript.Visible = false
    framefrsecond.Visible = false
    frametofirstbutton.Visible = false
    frametosecondbutton.Visible = false
    frametocreditsbutton.Visible = false
end)

creditsbutton.MouseButton1Down:connect(function()
    frameforscript_2.Visible = true
    frametocreditsbutton.Visible = true
    frameforscript.Visible = false
    framefrsecond.Visible = false
    framefrsecond_2.Visible = false
    frametofirstbutton.Visible = false
    frametosecondbutton.Visible = false
    frametothridbutton.Visible = false
end)

var['RunService'].Stepped:Connect(function()
	if sets['Rejoin'] == true then
	    game:GetService('TeleportService'):Teleport(game.PlaceId)
	end
    if sets['KillGame'] == true then
        game:shutdown()
    end
    if sets['RetroTeleport'] == true then
        var['TeleportService']:Teleport(IDS['Retro'], var['LocalPlayer'])
    end
    if sets['DestinyTeleport'] == true then
        var['TeleportService']:Teleport(IDS['Destiny'], var['LocalPlayer'])
    end
    if sets['ReloadTeleport'] == true then
        var['TeleportService']:Teleport(IDS['Reloaded'], var['LocalPlayer'])
    end
    if sets['Noclip'] == true then
        var['LocalPlayer'].Character.Humanoid.Head.CanCollide = false
        var['LocalPlayer'].Character.Humanoid.Torso.CanCollide = false
    end
    if sets['Autofarm'] == true then
        for i = 1,30 do
        	task.wait(1)
		        local args = task.wait(1)
		        var['ReplicatedStorage'].BeatLevel:FireServer(args)
		    end
		var['ReplicatedStorage'].BackToLobby:FireServer()
	end
end)

var['Jumprequest']:Connect(function()
    if sets['infjump'] == true and var['LocalPlayer'].Character then 
        var['LocalPlayer'].Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)

function reset_cool()
    var['GetSPlayerLP'].Character:BreakJoints()
		task.wait()
		for i,v in pairs(var['GetSPlayerLP'].Character:GetChildren()) do
		if v:IsA("Part") then
			v:Destroy()
		end
	end
end

var["LocalPlayer"].CameraMaxZoomDistance = 9e9

buttonrejoin.MouseButton1Down:connect(function()
    if not sets['Rejoin'] then
        buttonrejoin.BackgroundColor3 = color['Red']
		buttonrejoin.Text = "✔"
		texttobuttonrejoin.Text = "-- true"
		texttobuttonrejoin.TextColor3 = color['Red']
		task.wait(1)
        sets['Rejoin'] = true
    elseif sets['Rejoin'] then
        sets['Rejoin'] = false
        buttonrejoin.BackgroundColor3 = color['Blue']
		buttonrejoin.Text = ""
		texttobuttonrejoin.Text = "-- false"
		texttobuttonrejoin.TextColor3 = color['Blue']
    end
end)

skiplevelbutton.MouseButton1Down:connect(function()
        for i=1,1 do
	        var['ReplicatedStorage'].BeatLevel:FireServer()
	    end
        skiplevelbutton.BackgroundColor3 = color['Red']
		skiplevelbutton.Text = "✔"
		texttobuttonskiplevel.Text = "-- true"
		texttobuttonskiplevel.TextColor3 = color['Red']
		task.wait(1)
        skiplevelbutton.BackgroundColor3 = color['Blue']
		skiplevelbutton.Text = ""
		texttobuttonskiplevel.Text = "-- false"
		texttobuttonskiplevel.TextColor3 = color['Blue']
end)

getcloudbutton.MouseButton1Down:connect(function()
    for i=1,1 do
        const['GetCloud']:Clone()
        const['GetCloud'].Parent = var['GetSPlayerLP'].Backpack
    end
    getcloudbutton.BackgroundColor3 = color['Red']
	getcloudbutton.Text = "✔"
	texttobuttoncloud.Text = "-- true"
	texttobuttoncloud.TextColor3 = color['Red']
   var['LocalPlayer'].Character:WaitForChild("Humanoid").Died:Connect(function()
   wait(5)
        getcloudbutton.BackgroundColor3 = color['Blue']
        getcloudbutton.Text = ""
        texttobuttoncloud.Text = "-- false"
        texttobuttoncloud.TextColor3 = color['Blue']
    end)
end)

buttonexit.MouseButton1Down:connect(function()
    if not sets['KillGame'] then
        buttonexit.BackgroundColor3 = color['Red']
        buttonexit.Text = "✔"
        texttobuttonexit.TextColor3 = color['Red']
        texttobuttonexit.Text = "-- true"
        task.wait(1)
        sets['KillGame'] = true
    elseif sets['KillGame'] then
        sets['KillGame'] = false
        buttonexit.BackgroundColor3 = color['Blue']
        buttonexit.Text = ""
        texttobuttonexit.TextColor3 = color['Blue']
        texttobuttonexit.Text = "-- false"
    end
end)

resetbutton.MouseButton1Down:connect(function()
    resetbutton.BackgroundColor3 = color['Red']
    resetbutton.Text = "✔"
    texttobuttonreset.TextColor3 = color['Red']
    texttobuttonreset.Text = "-- true"
    reset_cool()
    task.wait(5)
    resetbutton.BackgroundColor3 = color['Blue']
    resetbutton.Text = ""
    texttobuttonreset.TextColor3 = color['Blue']
    texttobuttonreset.Text = "-- false"
end)

gotoretrobutton.MouseButton1Down:connect(function()
    if not sets['RetroTeleport'] then
        gotoretrobutton.BackgroundColor3 = color['Red']
		gotoretrobutton.Text = "✔"
		texttobuttonretro.Text = "-- true"
		texttobuttonretro.TextColor3 = color['Red']
		task.wait(1)
        sets['RetroTeleport'] = true
    elseif sets['RetroTeleport'] then
        sets['RetroTeleport'] = false
        gotoretrobutton.BackgroundColor3 = color['Blue']
		gotoretrobutton.Text = ""
		texttobuttonretro.Text = "-- false"
		texttobuttonretro.TextColor3 = color['Blue']
    end
end)

gotodestinybutton.MouseButton1Down:connect(function()
    if not sets['DestinyTeleport'] then
        gotodestinybutton.BackgroundColor3 = color['Red']
		gotodestinybutton.Text = "✔"
		texttobuttondestiny.Text = "-- true"
		texttobuttondestiny.TextColor3 = color['Red']
		task.wait(1)
        sets['DestinyTeleport'] = true
    elseif sets['DestinyTeleport'] then
        sets['DestinyTeleport'] = false
        gotodestinybutton.BackgroundColor3 = color['Blue']
		gotodestinybutton.Text = ""
		texttobuttondestiny.Text = "-- false"
		texttobuttondestiny.TextColor3 = color['Blue']
    end
end)

gotoreloadedbutton.MouseButton1Down:connect(function()
    if not sets['ReloadTeleport'] then
        gotoreloadedbutton.BackgroundColor3 = color['Red']
		gotoreloadedbutton.Text = "✔"
		texttobuttonreloaded.Text = "-- true"
		texttobuttonreloaded.TextColor3 = color['Red']
		task.wait(1)
        sets['ReloadTeleport'] = true
    elseif sets['ReloadTeleport'] then
        sets['ReloadTeleport'] = false
        gotoreloadedbutton.BackgroundColor3 = color['Blue']
		gotoreloadedbutton.Text = ""
		texttobuttonreloaded.Text = "-- false"
		texttobuttonreloaded.TextColor3 = color['Blue']
    end
end)

removerarmbutton.MouseButton1Down:connect(function()
    for i=1,1 do
        const['GetGravCoil']:Clone()
        const['GetGravCoil'].Parent = var['GetSPlayerLP'].Backpack
    end
        removerarmbutton.BackgroundColor3 = color['Red']
        removerarmbutton.Text = "✔"
        texttobuttonrarm.Text = "-- true"
        texttobuttonrarm.TextColor3 = color['Red']
        var['LocalPlayer'].Character:WaitForChild("Humanoid").Died:Connect(function()
    wait(5)
        removerarmbutton.BackgroundColor3 = color['Blue']
        removerarmbutton.Text = ""
        texttobuttonrarm.Text = "-- false"
        texttobuttonrarm.TextColor3 = color['Blue']
    end)
end)

noclipbutton.MouseButton1Down:connect(function()
    if not sets['Noclip'] then
        sets['Noclip'] = true
        noclipbutton.BackgroundColor3 = color['Red']
		noclipbutton.Text = "✔"
		texttobuttonnocip.Text = "-- true"
		texttobuttonnocip.TextColor3 = color['Red']
    elseif sets['Noclip'] then
        sets['Noclip'] = false
        noclipbutton.BackgroundColor3 = color['Blue']
		noclipbutton.Text = ""
		texttobuttonnocip.Text = "-- false"
		texttobuttonnocip.TextColor3 = color['Blue']
    end
end)

getspeedcoilbutton.MouseButton1Down:connect(function()
    for i=1,1 do
        const['GetSpeedCoil']:Clone()
        const['GetSpeedCoil'].Parent = var['GetSPlayerLP'].Backpack
    end
    getspeedcoilbutton.BackgroundColor3 = color['Red']
	getspeedcoilbutton.Text = "✔"
	texttobuttonspeedcoil.Text = "-- true"
	texttobuttonspeedcoil.TextColor3 = color['Red']
   var['LocalPlayer'].Character:WaitForChild("Humanoid").Died:Connect(function()
   wait(5)
        getspeedcoilbutton.BackgroundColor3 = color['Blue']
        getspeedcoilbutton.Text = ""
        texttobuttonspeedcoil.Text = "-- false"
        texttobuttonspeedcoil.TextColor3 = color['Blue']
    end)
end)

gotospeedrun4button.MouseButton1Down:connect(function()
    gotospeedrun4button.BackgroundColor3 = color['Red']
	gotospeedrun4button.Text = "✔"
	texttobuttonspeedrun4.Text = "-- true"
	texttobuttonspeedrun4.TextColor3 = color['Red']
	var['TeleportService']:Teleport(IDS['SpeedRun'], var['LocalPlayer']) -- stupid dev console spam
    task.wait(1)
    gotospeedrun4button.BackgroundColor3 = color['Blue']
	gotospeedrun4button.Text = ""
	texttobuttonspeedrun4.Text = "-- false"
	texttobuttonspeedrun4.TextColor3 = color['Blue']
end)

exitscriptutton.MouseButton1Down:connect(function()
	mainframeforscript.Position = UDim2.new(0.01, 0, 0.99, 0)
	exitscriptutton.Visible = false
	exitscriptutton2.Visible = true
end)

exitscriptutton2.MouseButton1Down:connect(function()
	mainframeforscript.Position = UDim2.new(0.430476189, 0, 0.401098907, 0)
	exitscriptutton.Visible = true
	exitscriptutton2.Visible = false
end)

buttontoautofarm.MouseButton1Down:connect(function()
    if not sets['Autofarm'] then
        Noti("WARNING!","THIS WILL GET VERY LAGGY JUST WAIT WHEN ITS NOT DOING ANYTHING","rbxassetid://2541869220",5)
        task.wait(4)
        sets['Autofarm'] = true
        buttontoautofarm.BackgroundColor3 = color['Red']
		buttontoautofarm.Text = "✔"
		texttobuttonautofarm.Text = "-- true"
		texttobuttonautofarm.TextColor3 = color['Red']
    elseif sets['Autofarm'] then
        sets['Autofarm'] = false
        buttontoautofarm.BackgroundColor3 = color['Blue']
		buttontoautofarm.Text = ""
		texttobuttonautofarm.Text = "-- false"
		texttobuttonautofarm.TextColor3 = color['Blue']
    end
end)

godmodebutton.MouseButton1Down:connect(function()
    if not sets['infjump'] then
        sets['infjump'] = true
        godmodebutton.BackgroundColor3 = color['Red']
		godmodebutton.Text = "✔"
		texttobuttongodmode.Text = "-- true"
		texttobuttongodmode.TextColor3 = color['Red']
    elseif sets['infjump'] then
        sets['infjump'] = false
        godmodebutton.BackgroundColor3 = color['Blue']
		godmodebutton.Text = ""
		texttobuttongodmode.Text = "-- false"
		texttobuttongodmode.TextColor3 = color['Blue']
    end
end)
