-- Representation Limitis

print(math.maxinteger + 1 == math.mininteger) --> true
print(math.mininteger - 1 == math.maxinteger) --> true
print(-math.mininteger == math.mininteger) --> true
print(math.mininteger // -1 == math.mininteger) --> true

print(math.maxinteger) --> 9223372036854775807
print(0x7fffffffffffffff) --> 9223372036854775807
print(math.mininteger) --> -9223372036854775808
print(0x8000000000000000) --> -9223372036854775808

print(math.maxinteger + 2) --> -9223372036854775807
print(math.maxinteger + 2.0) --> 9.2233720368548e+18

print(math.maxinteger + 2.0 == math.maxinteger + 1.0) --> true