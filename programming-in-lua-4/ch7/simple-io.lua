-- The Simple I/O Model

io.write("sin(3) = ", math.sin(3), "\n")
--> sin(3) = 0.14112000805987
io.write(string.format("sin(3) = %.4f\n", math.sin(3)))
--> sin(3) = 0.1411

t = io.read("a") -- read the whole file
t = string.gsub(t, "bad", "good") -- do the job
io.write(t) -- write the file

t = io.read("all")
t = string.gsub(t, "([\128-\255=])", function (c) 
		return string.format("=%02X", string.byte(c)) 
	end)
io.write(t)

for count = 1, math.huge do
	local line = io.read("L")
	if line == nil then break end
	io.write(string.format("%6d ", count), line)
end

local count = 0
for line in io.lines() do
	count = count + 1
	io.write(string.format("%6d ", count), line, "\n")
end

