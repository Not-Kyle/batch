local math = {};
math.__index = math

local Operator = {
    ['+'] = function(X: number, I: number) return X + I end,
    ['-'] = function(X: number, I: number) return X - I end,
    ['*'] = function(X: number, I: number) return X * I end,
    ['/'] = function(X: number, I: number) return X / I end,
}

function math.sigma(Start: number, End: number, X: number, Symbol: string)
    if not Operator[Symbol] then return end

    local Sum = 0;

    for Index = tonumber(Start), tonumber(End), 1 do
        Sum += Operator[Symbol](X, Index)
    end

    return Sum
end

print(math.sigma(2, 7, 3, '*'))
