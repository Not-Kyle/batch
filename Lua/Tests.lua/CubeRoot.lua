local round, abs = math.round, math.abs;

function cbrt(Property:number)
    if typeof(Property) == 'number' then
        return (abs(Property) ^ (1/3))
    end
end

print(round(cbrt(64))) -- 4
