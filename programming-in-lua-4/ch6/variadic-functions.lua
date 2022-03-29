-- Variadic Functions

function add (...)
	local s = 0
	for _, v in ipairs{...} do
		s = s + v
	end
	return s
end
print(add(3, 4, 10, 25, 12)) --> 54

function nonils (...)
	local arg = table.pack(...)
	for i = 1, arg.n do
		if arg[i] == nil then return false end
	end
	return true
end
print(nonils(2,3,nil)) --> false
print(nonils(2,3)) --> true
print(nonils()) --> true
print(nonils(nil)) --> false

print(select(1, "a", "b", "c")) --> a b c
print(select(2, "a", "b", "c")) --> b c
print(select(3, "a", "b", "c")) --> c
print(select("#", "a", "b", "c")) --> 3

function add (...)
	local s = 0
	for i = 1, select("#", ...) do
		s = s + select(i, ...)
	end
	return s
end
