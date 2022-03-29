-- Table Indices

a = {} -- empty table
-- create 1000 new entries
for i = 1, 1000 do a[i] = i*2 end
print(a[9]) --> 18
a["x"] = 10
print(a["x"]) --> 10
print(a["y"]) --> nil

a = {} -- empty table
a.x = 10 -- same as a["x"] = 10
print(a.x) --> 10 -- same as a["x"]
print(a.y) --> nil -- same as a["y"]

a = {}
x = "y"
a[x] = 10 -- put 10 in field "y"
print(a[x]) --> 10 -- value of field "y"
print(a.x) --> nil -- value of field "x" (undefined)
print(a.y) --> 10 -- value of field "y"

i = 10; j = "10"; k = "+10"
a = {}
a[i] = "number key"
a[j] = "string key"
a[k] = "another string key"
print(a[i]) --> number key
print(a[j]) --> string key
print(a[k]) --> another string key
print(a[tonumber(j)]) --> number key
print(a[tonumber(k)]) --> number key

a = {}
a[2.0] = 10
a[2.1] = 20
print(a[2]) --> 10
print(a[2.1]) --> 20