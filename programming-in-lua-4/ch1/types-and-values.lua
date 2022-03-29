-- types-and-values.lua

print(type(nil)) --> nil
print(type(true)) --> boolean
print(type(10.4 * 3)) --> number
print(type("Hello world")) --> string
print(type(io.stdin)) --> userdata
print(type(print)) --> function
print(type(type)) --> function
print(type({})) --> table
print(type(type(X))) --> string