-- Char

print(utf8.char(308)) -- Forms a character from the decimal column / Output: Ĵ
-- https://unicodelookup.com/# (List of characters)

-- Codes

local StringTest = 'A'

print(utf8.codes(StringTest)) -- Sends a memory address form of the character or string

-- Codepoint

local String = 'Yes';

print(utf8.codepoint(String, 1, 3)) -- Output: 89, 101, 115
-- It outputs the decimal column number of numbers listed
-- 0x059, 0x065, 0x073
-- If the first number was just 2, it would search the second char in the string 'e' and output 101

-- Offset

local Sure = 'Two';
print(utf8.offset(Sure, 2)) -- Returns the byte position of the character mentioned '2';
-- I don't have a clue what kind of use this would ever have but sure

-- Len

local SetRandom = tostring(utf8.char(329)..utf8.char(335))

print(utf8.len(SetRandom)..' Output: '..SetRandom)
-- The string uses ASCII so usually it would be 4 or 0x06F, 0x2D8, 0x06E, 0x2BC

-- Nfc

local StringOne = 'Ćool';

print(utf8.nfcnormalize(StringOne))
setclipboard(utf8.nfdnormalize(StringOne)) -- Output: CÌool
-- Not that great of a function but it attempts to set Ć (0x106) to C (0x043)

-- Nfd

local StringTwo = 'Cool';

print(utf8.nfdnormalize(StringTwo))
setclipboard(utf8.nfdnormalize(StringTwo)) -- Output: CÌool
-- Attempts to set StringTwo into decomposed chars or like ^

--[[
    functions I missed

    utf8.graphemes
    utf8.charpattern
]]--

