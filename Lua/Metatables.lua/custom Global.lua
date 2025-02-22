local public = setmetatable({}, {
    __index = function(self: Instance, value: string)
        return getgenv()[value]
    end
})

public.Players = game:GetService('Players')
public.Host = public.Players.LocalPlayer

print(public.Host.Name)
