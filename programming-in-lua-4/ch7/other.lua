-- Other on Files

function fsize (file)
	local current = file:seek() -- save current position
	local size = file:seek("end") -- get file size
	file:seek("set", current) -- restore position
	return size
end

-- Other System Calls

print(os.getenv("HOME")) --> /home/lua

-- Running system commands

function createDir (dirname)
	os.execute("mkdir " .. dirname)
end

-- for POSIX systems, use 'ls' instead of 'dir'
local f = io.popen("dir /B", "r")
local dir = {}
for entry in f:lines() do
	dir[#dir + 1] = entry
end


local subject = "some news"
local address = "someone@somewhere.org"

local cmd = string.format("mail -s '%s' '%s'", subject, address)
local f = io.popen(cmd, "w")
f:write([[
Nothing important to say.
-- me
]])
f:close()