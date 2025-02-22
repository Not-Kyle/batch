local echo = setmetatable({}, {
    __call = function(self, value)
        return print(value)
    end
})

echo 'Yes'
