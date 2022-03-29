-- Mathematical Library

print(math.sin(math.pi/2))
print(math.max(10.4, 7, -3, 20))
print(math.huge)

-- Random

print(math.randomseed(os.time()))


-- Rounding

print(math.floor(3.3))
print(math.floor(-3.3))
print(math.ceil(3.3))
print(math.ceil(-3.3))
print(math.modf(3.3))
print(math.modf(-3.3))
print(math.floor(2^70))

x = 2^52 + 1
print(string.format("%d %d", x, math.floor(x + 0.5)))

print(math.floor(3.5+0.5))
print(math.floor(2.5+0.5))

function round (x)
	local f = math.floor(x)
	if (x == f) or (x % 2.0 == 0.5) then
		return f
	else
		return math.floor(x + 0.5)
	end
end

print(round(2.5)) --> 2
print(round(3.5)) --> 4
print(round(-2.5)) --> -2
print(round(-1.5)) --> -2