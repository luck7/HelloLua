-- Unicode

print(utf8.len("résumé")) --> 6
print(utf8.len("ação")) --> 4
print(utf8.len("Månen")) --> 5
print(utf8.len("ab\x93")) --> nil 3

print(utf8.char(114, 233, 115, 117, 109, 233)) --> résumé
print(utf8.codepoint("résumé", 6, 7)) --> 109 233

s = "Nähdään"
print(utf8.codepoint(s, utf8.offset(s, 5))) --> 228
print(utf8.char(228)) --> ä

s = "ÃøÆËÐ"
print(string.sub(s, utf8.offset(s, -2))) --> ËÐ

for i, c in utf8.codes("Ação") do
	print(i, c)
end
--> 1 65
--> 2 231
--> 4 227
--> 6 111