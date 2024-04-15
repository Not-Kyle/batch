local LP = game:GetService('Players').LocalPlayer
local wK = game:GetService('Workspace')

if LP and LP.Character and LP.Character:FindFirstChild('HumanoidRootPart') then
	if wK['Fruit Sell Box'] and wK['Fruit Sell Box'].Part then
		LP.Character.HumanoidRootPart.CFrame = wK['Fruit Sell Box'].Part.CFrame
	end
end
