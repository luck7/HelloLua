-- booleans.lua

print(4 and 5 ) -->5
print(nil and 13 ) -->nil
print(false and 13 ) -->false
print(0 or 5 ) -->0
print(false or "hi" ) -->"hi"
print(nil or false ) -->false


print(not nil ) -->true
print(not false ) -->true
print(not 0 ) -->false
print(not not 1 ) -->true
print(not not nil ) -->false
