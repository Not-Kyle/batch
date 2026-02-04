local String = {};
String.__index = String;

function String.new(Source)
    return setmetatable({_Value = tostring(Source)}, String);
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
    return self._Value;
end

function String:set(Source)
    self._Value = tostring(Source);

    return self;
end

function String:valueOf()
    return String.valueOf(self._Value);
end

function String:toLowerCase()
    self._Value = String.toLowerCase(self._Value);

    return self;
end

function String:toUpperCase()
    self._Value = String.toUpperCase(self._Value);

    return self;
end

function String:trim()
    self._Value = String.trim(self._Value);

    return self;
end

function String:sentenceCase()
    self._Value = String.sentenceCase(self._Value);

    return self;
end

function String:replace(Search, Replace)
    self._Value = String.replace(self._Value, Search, Replace);
	
    return self;
end

function String:charAt(Index)
    return string.sub(self._Value, Index, Index);
end

function String:isEmpty()
    return String.isEmpty(self._Value);
end

function String:isBlank()
    return String.isBlank(self._Value);
end

function String:contains(Search)
    return String.contains(self._Value, Search);
end

function String:matches(Source)
	return String.matches(self._Value, Source);
end

function String:length()
    return String.length(self._Value);
end

function String:ulength()
    return String.ulength(self._Value);
end

function String:startsWith(Source)
	return String.startsWith(self._Value, Source);
end

function String:join(Char)
    assert(type(self._Value) == 'table', 'String:join expects _Value to be a table');
	
    self._Value = table.concat(self._Value, Char);
    return self;
end

-- // ValueOf

print('[Name]: String.valeOf ' .. String.valueOf(2))

-- // Empty

if not String.isEmpty('Cory') then
	print('[Name]: String.isEmpty ' .. 'Not Empty')
end

-- // StartsWith

if String.startsWith('Cory', 'C') then
	print('[Name]: String.startsWith ' .. 'String does start with C')
end

-- // SentanceCase

print('[Name]: String.sentancCase ' .. String.sentanceCase('cory')); -- Returns Cory instead of cory

-- // Contains

if String.contains('Cory', 'r') then
	print('[Name]: String.contains ' .. 'Does contain R');
end

-- // Trim

print('[Name]: String.trim ' .. String.trim('     CORY    ')) -- Removes whitespace

-- // Join

print('[Name]: String.join ' .. String.join(', ', {'Cory', 'You', 'Me'})) -- Returns Cory, You, Me

-- // Ulength (UTF8 Length)

print('[Name]: String.ulength ' .. String.ulength('🥜yo')) -- Returns 3
print('[Name]: String.length ' .. String.length('🥜yo')) -- Returns 6

-- // Char At

print('[Name]: String.charAt ' .. String.charAt('Cory', 3)) -- Returns r, you indexed 3 which is r

-- // Matches

if String.matches('Cory', 'Cory') then
	print('[Name]: String.matches ' .. 'It does match')
end

-- // Replace

print('[Name]: String.replace ' .. String.replace('Cory', 'C', 'Z'))
