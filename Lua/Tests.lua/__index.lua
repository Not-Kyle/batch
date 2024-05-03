local yes = {}

local two = {}
two.__index = yes

local three = setmetatable({},two)