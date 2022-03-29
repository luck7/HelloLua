-- Strings

a = "one string"
b = string.gsub(a, "one", "another") -- change string parts
print(a) --> one string
print(b) --> another string

a = "hello"
print(#a) --> 5
print(#"good bye") --> 8

print("Hello " .. "World") --> Hello World
print("result is " .. 3) --> result is 3

a = "Hello"
print(a .. " World") --> Hello World
print(a) --> Hello