getgenv().host = game:GetService'Players'.LocalPlayer

getgenv().light = Instance.new('PointLight',host.Character:WaitForChild('HumanoidRootPart'))
light.Range = 50 --change this number
