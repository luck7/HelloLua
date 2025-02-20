-- sudoku --

Count = 0
TryCount = 0

N = 81

-- Puzzle = {
-- 	5,0,2,1,7,8,0,0,0,
-- 	3,9,0,0,0,0,8,1,7,
-- 	0,1,0,0,0,3,2,6,5,
-- 	0,8,0,9,1,6,5,0,0,
-- 	2,5,6,0,0,4,3,0,1,
-- 	9,0,1,3,2,0,0,0,8,
-- 	6,0,9,0,0,7,0,5,0,
-- 	7,0,5,0,0,0,9,8,3,
-- 	0,0,0,0,0,0,7,0,6
-- }

Puzzle = {
	0,0,0,0,1,0,0,4,7,
	0,0,0,0,0,0,0,0,3,
	5,0,7,8,0,3,0,0,0,
	0,0,0,9,8,2,0,5,0,
	0,8,5,0,0,0,0,0,0,
	2,7,0,5,0,0,0,8,6,
	7,2,0,0,5,0,0,0,0,
	0,0,1,0,0,6,0,7,5,
	3,5,6,7,0,0,4,9,0,
}

Row = {
	{ 1,  2,  3,  4,  5,  6,  7,  8,  9},
	{10, 11, 12, 13, 14, 15, 16, 17, 18},
	{19, 20, 21, 22, 23, 24, 25, 26, 27},
	{28, 29, 30, 31, 32, 33, 34, 35, 36},
	{37, 38, 39, 40, 41, 42, 43, 44, 45},
	{46, 47, 48, 49, 50, 51, 52, 53, 54},
	{55, 56, 57, 58, 59, 60, 61, 62, 63},
	{64, 65, 66, 67, 68, 69, 70, 71, 72},
	{73, 74, 75, 76, 77, 78, 79, 80, 81}, 
}

Col = {
	{1,	10,	19,	28,	37,	46,	55,	64,	73},
	{2,	11,	20,	29,	38,	47,	56,	65,	74},
	{3,	12,	21,	30,	39,	48,	57,	66,	75},
	{4,	13,	22,	31,	40,	49,	58,	67,	76},
	{5,	14,	23,	32,	41,	50,	59,	68,	77},
	{6,	15,	24,	33,	42,	51,	60,	69,	78},
	{7,	16,	25,	34,	43,	52,	61,	70,	79},
	{8,	17,	26,	35,	44,	53,	62,	71,	80},
	{9,	18,	27,	36,	45,	54,	63,	72,	81},
}

Block = {
	{1, 2, 3, 10, 11, 12, 19, 20, 21},
	{4, 5, 6, 13, 14, 15, 22, 23, 24},
	{7, 8, 9, 16, 17, 18, 25, 26, 27},
	{28, 29, 30, 37, 38, 39, 46, 47, 48},
	{31, 32, 33, 40, 41, 42, 49, 50, 51},
	{34, 35, 36, 43, 44, 45, 52, 53, 54},
	{55, 56, 57, 64, 65, 66, 73, 74, 75},
	{58, 59, 60, 67, 68, 69, 76, 77, 78},
	{61, 62, 63, 70, 71, 72, 79, 80, 81}
}

-- check
function isNumberOK(a, n, c)
	TryCount = TryCount + 1

	if Puzzle[n]>0 then
		if Puzzle[n]==c then
			return true
		end
		return false
	end
	if isGroupOK(a, n, c, Block) and 
		isGroupOK(a, n, c, Row) and 
		isGroupOK(a, n, c, Col) then		
		return true
	end
	return false
end

function isGroupOK(a, n, c, t)
	for i=1,9 do
		for j=1,9 do
			-- find the check numbers
			if(t[i][j]==n) then
				for k=1,9 do
					if Puzzle[t[i][k]]==c then
						return false
					end
				end
				for k=1,9 do
					if t[i][k]<n and a[t[i][k]]==c then
						-- if n==51 and c==5 then
						-- 	print(table.unpack(a))
						-- 	print(table.unpack(t[i]))
						-- 	print(i,k,a[t[i][k]])
						-- 	print(i,k,Puzzle[t[i][k]])
						-- end
						return false
					end
				end
			end
		end
	end

	return true
end

-- print
function printSolution(a)
	for i=1,#a do
		io.write(a[i],"	")
		if i%9 == 0 then
			io.write("\n")
		end
	end
	io.write("\n")
end

-- add
function addNumber(a,n)
	-- print(table.unpack(a))
	-- printSolution(a)

	if n>N then
		printSolution(a)
		Count=Count+1
	else
		for c=1,9 do
			if isNumberOK(a,n,c) then
				a[n]=c
				addNumber(a,n+1)
			end	
		end
	end
end

printSolution(Puzzle)

-- run
addNumber({},1)

print("Answer:", Count, "Try:", TryCount)
