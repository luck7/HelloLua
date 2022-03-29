-- Safe Navigation

zip = company and company.director and company.director.address and company.director.address.zipcode


--[[
Some programming languages, such as C#, offer a safe navigation operator (written as ?. in C#) for this task. When we write a ?. b and a is nil, the result is also nil, instead of an error. Using that operator, we could write our previous example like this:
	zip = company?.director?.address?.zipcode
]]

zip = (((company or {}).director or {}).address or {}).zipcode

E = {} -- can be reused in other similar expressions
zip = (((company or E).director or E).address or E).zipcode