-- Junk

-- Javascript 

local console = {};
console.__index = console

function console.log(Message)
    return print(Message)
end

-- C#

local Console = {};
Console.__index = Console

function Console.WriteLine(Message)
    return print(Message)
end

-- Java

local System = {
    out = {}
}
System.out.__index = System.out

function System.out.println(Message)
    return print(Message)
end

-- C

function printf(Message)
    return print(Message)
end

-- C++

local std = {
    cout = function(self, ...)
        local Arguments = {...}
        rawset(self, Arguments, Arguments[1])

        return print(Arguments[1])
    end
}

-- Lua

local io = {}
io.__index = io;

function io.write(Message)
    return print(Message)
end

-- TI-Basic

function Disp(Message)
    return print(Message)
end

-- Ruby

function puts(Message)
    return print(Message)
end

-- Swift, Go and others

function println(Message)
    return print(Message)
end

-- PHP and Bash

function echo(Message)
    return print(Message)
end

print('Worked PRINT')
console.log('Worked CONSOLE.LOG')
Console.WriteLine('Worked CONSOLE.WRITELINE')
System.out.println('Worked System.Out.Println')
printf('Worked PRINTF')
std:cout('Worked STD:COUT')
io.write('Worked IO.WRITE')
Disp 'Worked DISP'
puts 'Worked puts'
println('Worked println')
echo "Worked ECHO"

