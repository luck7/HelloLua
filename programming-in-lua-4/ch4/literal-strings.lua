-- Literal strings

a = "a line"
b = 'another line'

--[[

Strings in Lua can contain the following C-like escape sequences:

\a bell
\b back space
\f form feed
\n newline
\r carriage return
\t horizontal tab
\v vertical tab
\\ backslash
\" double quote
\' single quote

]]

print("one line\nnext line\n\"in quotes\", 'in quotes'")
print('a backslash inside quotes: \'\\\'')
print("a simpler way: '\\'")

print('-- ASCII --')
print('\x41\x42\x43\x4c\x4f \x0a \x31\x32\x33 \x22')
print('-- UTF-8 --')
print("\u{3b1} \u{3b2} \u{3b3}")