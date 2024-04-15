for _,v in pairs(workspace.Bridge.VerticalLiftBridge:GetChildren()) do
	if v.Name == 'Lift' then
		for c = 1,#v:GetChildren() do
			if v:GetChildren()[c]:IsA'Part' and v:GetChildren()[c].Material == Enum.Material.Concrete and v:GetChildren()[c].Color == Color3.fromRGB(27,42,53) and v:GetChildren()[c].Transparency == 0 then
				v:GetChildren()[c].CFrame = CFrame.new(113.6, 6.4, -883)
			end
		end
	end
end
	
for i,v in pairs(workspace.Bridge.VerticalLiftBridge:GetChildren()) do
    if v.Name == 'Weight' then
	v:Destroy()
    end
end
