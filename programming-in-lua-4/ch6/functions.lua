-- Functions

print(8*9, 9/8)
a = math.sin(3) + math.cos(10)
print(os.date())

print "Hello World" --> print("Hello World")
-- dofile 'a.lua' --> dofile ('a.lua')
print [[a multi-line 
message]] --> print([[a multi-line message]])
f{x=10, y=20} --> f({x=10, y=20})
type{} --> type({})

-- add the elements of sequence 'a'
function add (a)
	local sum = 0
	for i = 1, #a do
		sum = sum + a[i]
	end
	return sum
end

function f (a, b) print(a, b) end
f() --> nil nil
f(3) --> 3 nil
f(3, 4) --> 3 4
f(3, 4, 5) --> 3 4 (5 is discarded)

function incCount (n)
	n = n or 1
	globalCounter = globalCounter + n
end