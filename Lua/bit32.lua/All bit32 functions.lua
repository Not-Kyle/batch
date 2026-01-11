local Example = 8;

local Bit32 = {
	Arshift = bit32.arshift(-Example, 2),
	Band = bit32.band(Example - 5, 2),
	Bnot = bit32.bnot(Example),
	Bor = bit32.bor(Example, 5),
	--Btest = bit32.btest(Example, 3),
	Bxor = bit32.bxor(Example + 2, 3),
	Byteswap = bit32.byteswap(Example),
	Countlz = bit32.countlz(Example - 3),
	Countrz = bit32.countrz(Example),
	Extract = bit32.extract(Example, 2, 4),
	Replace = bit32.replace(Example, 6, 2, 4),
	Lrotate = bit32.lrotate(Example, 2),
	Lshift = bit32.lshift(Example, 2),
	Rrotate = bit32.rrotate(Example, 2),
	Rshift = bit32.rshift(Example, 2),
}

for Index, Value in pairs(Bit32) do
	if not Index or not Value then return end
	
	if typeof(Index) == 'string' and Index == 'Arshift' then
		Value -= 2^32
		
		print(string.format('[Name]: %s [Value]: %s', Index, tostring(Value)));
	end

	if Index ~= 'Arshift' then
		print(string.format('[Name]: %s [Value]: %s', Index, tostring(Value)));
	end
end

--[[

[Name]: Arshift [Value]: 4294967294 (-2) Bit32.Arshift -= 2^32. Why is this different from Rshift, If you use a negative number using rshift, it will not preserve the negative number. But using arshift will keep it negative
[Name]: Band [Value]: 2 // This because 8 - 5 = 3 and the comparing number is 2. 3 is 0011 and 2 is 0010 (If a 1 is in the place of another value then it will return how many bits it has in common after the 1)
[Name]: Bnot [Value]: 4294967287 // Every bit that is a 1 gets flipped into a 0, for every number that is a 0 gets turned into a 1. Why is it such a high number? Because its addressing 32 unassigned bits that are now assigned. For every bit that was a 0 gets turned into a 1.
[Name]: Bor [Value]: 13 // Think of this as a matrice table it will place X on top and Y on the bottom. 8 is 1000 and 5 is 0101. It pulls every 1 down into the result so the new bits are 1101 which converts to 13
[Name]: Btest [Value]: false // This is similar to bit32.band but the only difference is it returns a boolean, if two numbers share an overlapping bit it will return true. 8 = 1000 and 3 == 0011 there is not overlapping bits
[Name]: Bxor [Value]: 9 // If there is two 1's in then the result bit will be 0, if there is only 1 bit then the result bit will be 1. 
[Name]: Byteswap [Value]: 134217728 // Think of bit32 has having 4 colums and each colum holds 2 bytes (8 bits). 8 bits is in the first byte colum, (00000000 00000000 00000000 00001000) now using byteswap it switches to the last colum and will not look like this (00001000 00000000 00000000 00000000)
[Name]: Countlz [Value]: 28 // Think of 32 bits, since I assigned 8 bits, its (00000000000000000000000000001000) It will start from the left, it counts all zeros until it hits 1.
[Name]: Countrz [Value]: 3 // Think of 32 bits, since I assigned 8 bits, its (00000000000000000000000000001000) It will start from the right, it counts all zeros until it hits 1.
[Name]: Extract [Value]: 0100 (2), Why does 0100 return 2 but in bits its 4. Well its not 4. Because I started at 2. The right most zero gets shaved off so actually its 0010
[Name]: Replace [Value]: 0011000 (24) // Read tables below
[Name]: Lrotate [Value]: 00100000 (32) // This moves the first 1 two spaces to the left because I set it to 2, but if I did 5, it would be 00000001. This is because it wraps around the colum until its matched its spot you gave
[Name]: Lshift [Value]: 00100000 (32) // This moves the first 1 two spaces to the left because I set it to 2 but unlike Lrotate, it does not wrap around the colum. It just cuts off the excess

]]--

--[[

Bit32.bor {
	1000
	0101
	----
	1101 // This is the result of the OR operation (13)
}

Bit32.bxor {
	1010
	0011
	----
	1001 // This is the result of the XOR operation (9)
	
	If there is two 1's in then the result bit will be 0, if there is only 1 bit then the result bit will be 1. 
}

Bit32.extract {
	00001000
	      ^ Start, because I start at 2
	   ^ End here, because the width is 4
	   
   The return number is 000[0100]0 (0100)
   
   But since I started at 2, I take off the right most zero
   
   So my real return is 010, which is actually 0010
}

Bit32.replace {
	00001000 (8)
	00000110 (6)
		^ Starts at the right most bits, with a width of 4 that I set (Stores them (0110))
		
	Adds them into 8, starting at position 2
	
	00001100 (24)
	
	Why is it 24, when its clearly 12?
	Again there is a hidden 0 because I started at 2, so really its like this 0011000 (24)
}

]]--
