-- Proper Tail Calls

function f (x) x = x + 1; return g(x) end

function foo (n)
	if n > 0 then return foo(n - 1) end
end

print(foo(10))

function f (x) g(x) end
