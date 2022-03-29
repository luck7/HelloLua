-- Arithmetic Operators

print(13+15)
print(13.0+15.0)

print(13.0+25)
print(-(3*6.0))

print(3.0/2.0)
print(3/2)

print(3//2)
print(3.0//2)
print(6//2)
print(6.0//2.0)
print(-9//2)
print(1.5//0.5)

x = math.pi
print(x)
print(x-x%0.01)
print(x-x%0.001)
print(x-x%0.0001)
print(x-x%0.00001)

-- local tolerance = 10
-- function isturnback(angle)
-- 	angle = angle % 360
-- 	return (math.abs(angle-180)<tolerance)
-- end
-- print(isturnback(-180))

local tolerance = 0.17
function isturnback(angle)
	angle = angle % (2*math.pi)
	return (math.abs(angle-math.pi)<tolerance)
end
print(isturnback(-math.pi))