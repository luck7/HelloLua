-- String Library

print(string.rep("abc", 3)) --> abcabcabc
print(string.reverse("A Long Line!")) --> !eniL gnoL A
print(string.lower("A Long Line!")) --> a long line!
print(string.upper("A Long Line!")) --> A LONG LINE!

s = "[in brackets]"
print(string.sub(s, 2, -2)) --> in brackets
print(string.sub(s, 1, 1)) --> [
print(string.sub(s, -1, -1)) --> ]

print(string.char(97)) --> a
i = 99; print(string.char(i, i+1, i+2)) --> cde
print(string.byte("abc")) --> 97
print(string.byte("abc", 2)) --> 98
print(string.byte("abc", -1)) --> 99

print(string.byte("abc", 1, 2)) --> 97 98

print(string.format("x = %d y = %d", 10, 20)) --> x = 10 y = 20
print(string.format("x = %x", 200)) --> x = c8
print(string.format("x = 0x%X", 200)) --> x = 0xC8
print(string.format("x = %f", 200)) --> x = 200.000000
tag, title = "h1", "a title"
print(string.format("<%s>%s</%s>", tag, title, tag)) --> <h1>a title</h1>

print(string.format("pi = %.4f", math.pi)) --> pi = 3.1416
d = 5; m = 11; y = 1990
print(string.format("%02d/%02d/%04d", d, m, y)) --> 05/11/1990

print(string.find("hello world", "wor")) --> 7 9
print(string.find("hello world", "war")) --> nil

print(string.gsub("hello world", "l", ".")) --> he..o wor.d 3
print(string.gsub("hello world", "ll", "..")) --> he..o world 1
print(string.gsub("hello world", "a", ".")) --> hello world 0