-- Table Constructors

days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
print(days[4]) --> Wednesday

-- Lua also offers a special syntax to initialize a record-like table, as in the next example:
a = {x = 10, y = 20}
-- This previous line is equivalent to these commands:
a = {}; a.x = 10; a.y = 20

w = {x = 0, y = 0, label = "console"}
x = {math.sin(0), math.sin(1), math.sin(2)}
w[1] = "another field" -- add key 1 to table 'w'
x.f = w -- add key "f" to table 'x'
print(w["x"]) --> 0
print(w[1]) --> another field
print(x.f[1]) --> another field
w.x = nil -- remove field "x"

polyline = {color="blue",
	thickness=2,
	npoints=4,
	{x=0, y=0}, -- polyline[1]
	{x=-10, y=0}, -- polyline[2]
	{x=-10, y=1}, -- polyline[3]
	{x=0, y=1} -- polyline[4]
}
print(polyline[2].x) --> -10
print(polyline[4].y) --> 1

opnames = {["+"] = "add", ["-"] = "sub", ["*"] = "mul", ["/"] = "div"}
i = 20; s = "-"
a = {[i+0] = s, [i+1] = s..s, [i+2] = s..s..s}
print(opnames[s]) --> sub
print(a[22]) --> ---

a1={x = 0, y = 0} 
a2={["x"] = 0, ["y"] = 0}
b1={"r", "g", "b"}
b2={[1] = "r", [2] = "g", [3] = "b"}

a = {[1] = "red", [2] = "green", [3] = "blue",}