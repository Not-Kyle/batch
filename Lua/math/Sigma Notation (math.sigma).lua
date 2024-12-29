local math = {}; 
math.__index = math

function math.sigma(Start: number, End: number, X: number, Symbol: string)
    local Sum = 0;
    local Operator;

    local Symbols = {'+', '-', '*', '/'}

    if table.find(Symbols, Symbol) then
        Operator = tostring(Symbol)
    end

    for i = tonumber(Start), tonumber(End), 1 do
        if Operator == '+' then
            Sum += X + i
        end

        if Operator == '-' then
            Sum += X - i
        end

        if Operator == '*' then
            Sum += X * i
        end

        if Operator == '/' then
            Sum += X / i
        end
    end

    return Sum
end

print(math.sigma(2, 7, 3, '*'))

-- Let me know if there is a better way to write this (This is just the basics of Sigma Notation)
