-- The Complete I/O Model

print(io.open("non-existent-file", "r"))
--> nil non-existent-file: No such file or directory 2
print(io.open("/etc/passwd", "w"))
--> nil /etc/passwd: Permission denied 13

local f = assert(io.open(filename, "r"))
local t = f:read("a")
f:close()

local temp = io.input() -- save current stream
io.input("newinput") -- open a new current stream do something with new input
io.input():close() -- close current stream
io.input(temp) -- restore previous current stream