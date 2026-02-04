-- https://www.lua.org/manual/5.4/manual.html

local String = {};
local StringMetatable = {
    __metatable = 'Protected';
    __index = String;

    --// __mode = 'v'; -- Weak value
};

local function checkNumber(Source)
    return (type(Source) == 'table' and tonumber(Source._Value)) or tonumber(Source);
end

local function checkString(Source)
    return (type(Source) == 'table' and Source._Value) or tostring(Source);
end

StringMetatable.__concat = function(Source1, Source2)
	local A = checkString(Source1);
	local B = checkString(Source2);

	return String.new(A .. B);
end

StringMetatable.__eq = function(Source1, Source2)
	local A = Source1._Value;
	local B = checkString(Source2);

	return A == B;
end

StringMetatable.__lt = function(Source1, Source2)
	local A = checkString(Source1);
	local B = checkString(Source2);

	return A < B;
end

StringMetatable.__le = function(Source1, Source2)
	local A = checkString(Source1);
	local B = checkString(Source2);

	return A <= B;
end

StringMetatable.__pow = function(Source1, Source2)
	local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform arithmetic (pow) on non-numeric value');

	return String.new(A^B);
end

StringMetatable.__add = function(Source1, Source2)
	local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform arithmetic (add) on non-numeric value');

	return String.new(A + B);
end

StringMetatable.__sub = function(Source1, Source2)
	local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform arithmetic (sub) on non-numeric value');

	return String.new(A - B);
end

StringMetatable.__mul = function(Source1, Source2)
	local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform arithmetic (mul) on non-numeric value');

	return String.new(A * B);
end

StringMetatable.__div = function(Source1, Source2)
	local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform arithmetic (div) on non-numeric value');

	return String.new(A / B);
end

StringMetatable.__idiv = function(Source1, Source2)
	local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform arithmetic (idiv) on non-numeric value');

	return String.new(math.floor(A / B));
end

StringMetatable.__mod = function(Source1, Source2)
	local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform arithmetic (mod) on non-numeric value');

	return String.new(A % B);
end

StringMetatable.__unm = function(self)
    local A = tonumber(self._Value);

    assert(A, 'attempt to perform arithmetic (unary minus) on a non-numeric value');

    return String.new(-A);
end

StringMetatable.__len = function(self) return #self._Value; end;
StringMetatable.__tostring = function(self) return self._Value; end;

-- // Binary Support

StringMetatable.__bor = function(Source1, Source2)
    local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform bitwise OR on non-numeric value');

    return String.new(bit32.bor(A, B));
end

StringMetatable.__bxor = function(Source1, Source2)
    local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform bitwise XOR on non-numeric value');

    return String.new(bit32.bxor(A, B));
end

StringMetatable.__bnot = function(Source1)
    local A = checkNumber(Source1);

	assert(A, 'attempt to perform bitwise NOT on non-numeric value');

    return String.new(bit32.bnot(A));
end

StringMetatable.__band = function(Source1, Source2)
    local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform bitwise AND on non-numeric value');

    return String.new(bit32.band(A, B));
end

StringMetatable.__shr = function(Source1, Source2)
    local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform bitwise RSHIFT on non-numeric value');

    return String.new(bit32.rshift(A, B));
end

StringMetatable.__shl = function(Source1, Source2)
    local A = checkNumber(Source1);
	local B = checkNumber(Source2);

	assert(A and B, 'attempt to perform bitwise LSHIFT on non-numeric value');

    return String.new(bit32.lshift(A, B));
end

-- // End of Metamethods

function String.new(Source)
	return setmetatable({_Value = tostring(Source)}, StringMetatable);
end

function String.valueOf(Source)
	return tostring(Source);
end

function String.isEmpty(Source)
	return Source == nil or Source == '';
end

function String.isBlank(Source)
	return Source == nil or string.match(Source, '^%s*$') ~= nil;
end

function String.toLowerCase(Source)
	return string.lower(tostring(Source));
end

function String.toUpperCase(Source)
	return string.upper(tostring(Source));
end

function String.startsWith(Source, Char)
	Source = tostring(Source);
	Char = tostring(Char);

	return string.sub(Source, 1, #Char) == Char;
end

function String.sentenceCase(Source)
	Source = tostring(Source);

	if String.isEmpty(Source) then
		return '';
	end

	return string.upper(string.sub(Source, 1, 1)) .. string.sub(Source, 2);
end

function String.contains(Source, Search)
	Source = tostring(Source);
	Search = tostring(Search);

	return string.find(Source, Search, 1, true) ~= nil;
end

function String.trim(Source)
	Source = tostring(Source);

	return string.match(Source, '^%s*(.-)%s*$');
end

function String.join(Char, Source)
	assert(type(Source) == 'table', 'String.join expects a table');

	return table.concat(Source, Char);
end

function String.ulength(Source)
	return utf8.len(tostring(Source));
end

function String.length(Source)
	return string.len(tostring(Source));
end

function String.charAt(Source, Index)
	Source = tostring(Source);

	return string.sub(Source, Index, Index);
end

function String.matches(Source1, Source2)
	return tostring(Source1) == tostring(Source2);
end

function String.replace(Source, Search, Replace)
	Source = tostring(Source);

	return string.gsub(Source, Search, Replace, 1);
end

----------------------------------------------------
-- // Namecalls
----------------------------------------------------

function String:value()
    if type(self._Value) == 'string' then
        return self._Value
    end
    
    return self
end

function String:set(Source)
	self._Value = tostring(Source);

	return self;
end

function String:toString()
	return String.valueOf(self._Value);
end

function String:toLower()
	self._Value = String.toLowerCase(self._Value);

	return self;
end

function String:toUpper()
	self._Value = String.toUpperCase(self._Value);

	return self;
end

function String:trimString()
	self._Value = String.trim(self._Value);

	return self;
end

function String:capitalizeFirst()
	self._Value = String.sentenceCase(self._Value);

	return self;
end

function String:replaceChar(Search, Replace)
	self._Value = String.replace(self._Value, Search, Replace);

	return self;
end

function String:codePointAt(Index)
	return string.sub(self._Value, Index, Index);
end

function String:isClear()
	return String.isEmpty(self._Value);
end

function String:isVoid()
	return String.isBlank(self._Value);
end

function String:searchFor(Search)
	return String.contains(self._Value, Search);
end

function String:equals(Source)
	return String.matches(self._Value, Source);
end

function String:getLength()
	return String.length(self._Value);
end

function String:getUniLength()
	return String.ulength(self._Value);
end

function String:beginsWith(Source)
	return String.startsWith(self._Value, Source);
end

function String:concatWithTable(Char)
	assert(type(self._Value) == 'table', 'String:join expects _Value to be a table');

	self._Value = table.concat(self._Value, Char);
	return self;
end
