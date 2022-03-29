-- Local Variables and Blocks

x = 10
local i = 1 -- local to the chunk

while i <= x do
	local x = i * 2 -- local to the while body
	print(x) --> 2, 4, 6, 8, ...
	i = i + 1
end

if i > 20 then
	local x -- local to the "then" body
	x = 20
	print(x + 2) -- (would print 22 if test succeeded)
else
	print(x) --> 10 (the global one)
end

print(x) --> 10 (the global one)


local x1, x2
do
	local a2 = 2*a
	local d = (b^2 - 4*a*c)^(1/2)
	x1 = (-b + d)/a2
	x2 = (-b - d)/a2
end -- scope of 'a2' and 'd' ends here
print(x1, x2) -- 'x1' and 'x2' still in scope


local a, b = 1, 10
if a < b then
	print(a) --> 1
	local a -- '= nil' is implicit
	print(a) --> nil
end -- ends the block started at 'then'
print(a, b) --> 1 10


-- Control Structures

if a < 0 then a = 0 end
if a < b then return a else return b end
if line > MAXLINES then
	showpage()
	line = 0
end

if op == "+" then
	r = a + b
elseif op == "-" then
	r = a - b
elseif op == "*" then
	r = a*b
elseif op == "/" then
	r = a/b
else
	error("invalid operation")
end


local i = 1
while a[i] do
	print(a[i])
	i = i + 1
end


-- print the first non-empty input line
local line
repeat
	line = io.read()
until line ~= ""
print(line)

-- computes the square root of 'x' using Newton-Raphson method
local sqr = x / 2
repeat
	sqr = (sqr + x/sqr) / 2
	local error = math.abs(sqr^2 - x)
until error < x/10000 -- local 'error' still visible here


for i = 1, math.huge do
	if (0.3*i^3 - 20*i^2 - 500 >= 0) then
		print(i)
		break
	end
end

for i = 1, 10 do print(i) end
max = i -- probably wrong!

-- find a value in a list
local found = nil
for i = 1, #a do
	if a[i] < 0 then
		found = i -- save value of 'i'
		break
	end
end
print(found)


local i = 1
while a[i] do
	if a[i] == v then return i end
	i = i + 1
end

function foo ()
	return --<< SYNTAX ERROR
	-- 'return' is the last statement in the next block
	do return end -- OK
	other statements
end

while some_condition do
	::redo::
	if some_other_condition then goto continue
	else if yet_another_condition then goto redo
	end
	some code
	::continue::
end

while some_condition do
	if some_other_condition then goto continue end
	local var = something
	some code
	::continue::
end
