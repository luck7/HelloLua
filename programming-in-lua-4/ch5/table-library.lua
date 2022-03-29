-- Table Library

t = {}
for line in io.lines() do
	table.insert(t, line)
end
print(#t) --> (number of lines read)

table.move(a, 1, #a, 2)
a[1] = newElement

table.move(a, 2, #a, 1)
a[#a] = nil

