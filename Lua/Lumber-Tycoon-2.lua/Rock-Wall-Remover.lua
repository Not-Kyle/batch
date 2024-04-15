for i,v in pairs(workspace.Region_Snow:GetChildren()) do
    if v.Name == 'PartSpawner' then
        v:Destroy()
    end
end
