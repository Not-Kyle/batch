local byte = 850 -- 12 bits (Each number is 4 bits or 1 byte)
local float = 30752 -- 20 bits (I know it's not a float blah blah, shut the fuck up)

local Bit = bit32.replace(byte, float, 12, 20)

local getBytes, getFloats = bit32.extract(Bit, 0, 12), bit32.extract(Bit, 12, 20)

print(getBytes); print(getFloats)
