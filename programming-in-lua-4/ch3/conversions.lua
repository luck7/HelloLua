-- Conversions

print(-3 + 0.0)
print(0x7fffffffffffffff + 0.0) --> 9.2233720368548e+18

print(9007199254740991 + 0.0 == 9007199254740991) --> true
print(9007199254740992 + 0.0 == 9007199254740992) --> true
print(9007199254740993 + 0.0 == 9007199254740993) --> false

print(2^53) --> 9.007199254741e+15 (float)
print(2^53 | 0) --> 9007199254740992 (integer)

print(math.tointeger(-258.0)) --> -258
print(math.tointeger(2^30)) --> 1073741824
print(math.tointeger(5.01)) --> nil (not an integral value)
print(math.tointeger(2^64)) --> nil (out of range)

