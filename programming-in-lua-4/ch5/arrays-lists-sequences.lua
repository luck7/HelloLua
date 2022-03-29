-- Arrays, Lists, and Sequences

-- read 10 lines, storing them in a table
a = {}
for i = 1, 10 do
	a[i] = io.read()
end

-- print the lines, from 1 to #a
for i = 1, #a do
print(a[i])
end

a[#a + 1] = v -- appends 'v' to the end of the sequence

a = {}
a[1] = 1
a[2] = nil -- does nothing, as a[2] is already nil
a[3] = 1
a[4] = 1

a = {}
a[1] = 1
a[10000] = 1

a = {10, 20, 30, nil, nil}