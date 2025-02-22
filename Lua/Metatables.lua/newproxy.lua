-- Some useless junk that was scraped in Lua 5.2

local Std = newproxy(true);
local SetMeta = getmetatable(Std);

SetMeta.__index = function(self, value)
    print(value)
end

local Velocity = Std['Is '..tostring(6)]
