local trace = setmetatable({}, {
    __index = function(self: Instance, ...)    
        return game:GetService(...)
    end
})

local Players = trace.Players
local Host = Players.LocalPlayer

print(Host.Name)
