-- Table Traversal

t = {10, print, x = 12, k = "hi"}
for k, v in pairs(t) do
	print(k, v)
end
--> 1 10
--> k hi
--> 2 function: 0x420610
--> x 12

t = {10, print, 12, "hi"}
for k, v in ipairs(t) do
	print(k, v)
end
--> 1 10
--> 2 function: 0x420610
--> 3 12
--> 4 hi

t = {10, print, 12, "hi"}
for k = 1, #t do
	print(k, t[k])
end
--> 1 10
--> 2 function: 0x420610
--> 3 12
--> 4 hi