local String = {};

function String.valueOf(Source)
	return tostring(Source);
end

function String.isEmpty(Source)
	return Source == '';
end

function String.toLowerCase(Source)
	return string.lower(Source);
end

function String.toUpperCase(Source)
	return string.upper(Source);
end

function String.startsWith(Source, Char)
	return string.sub(Source, 1, 1) == Char;
end

function String.sentanceCase(Source)
	return string.upper(string.sub(Source, 1, 1)) .. string.sub(Source, 2);
end

function String.contains(Source, Search)
	return string.find(Source, Search, 1, true)
end

function String.trim(Source)
	return string.match(Source, '^%s*(.-)%s*$');
end

function String.join(Char, Source)
	if type(Source) ~= 'table' then
		error('Invalid type on argument 2, must be a table')
	end

	return table.concat(Source, Char)
end

function String.ulength(Source)
	return utf8.len(Source);
end

function String.length(Source)
	return string.len(Source);
end

function String.charAt(Source, Index)
	return string.sub(Source, Index, Index);
end

function String.matches(Source1, Source2)
	return Source1 == Source2
end

function String.replace(Source, Search, Replace)
	return (string.gsub(Source, Search, Replace, 1));
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
