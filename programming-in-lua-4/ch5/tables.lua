-- Tables

-- We create tables by means of a constructor expression, which in its simplest form is written as {}:
> a = {} -- create a table and assign its reference
> k = "x"
> a[k] = 10 -- new entry, with key="x" and value=10
> a[20] = "great" -- new entry, with key=20 and value="great"
> a["x"] --> 10
> k = 20
> a[k] --> "great"
> a["x"] = a["x"] + 1 -- increments entry "x"
> a["x"] --> 11

-- A table is always anonymous. There is no fixed relationship between a variable that holds a table and the table itself:
> a = {}
> a["x"] = 10
> b = a -- 'b' refers to the same table as 'a'
> b["x"] --> 10
> b["x"] = 20
> a["x"] --> 20
> a = nil -- only 'b' still refers to the table
> b = nil -- no references left to the table