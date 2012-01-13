-- implements a BSD-style head
-- (see http://www.manpagez.com/man/1/head/osx-10.3.php)

require ('lapp')

local args = lapp [[
Print the first few lines of specified files
   -n         (default 10)    Number of lines to print
]]

-- lapp puts any unrecognized arguments into args, indexed by 1..#args
-- By using lapp.open(), we let the script fail in a standard way.
-- This is less taxing on system resources than head.lua, since the
-- files are only opened when needed.

local nline = args.n
local nfile = #args

function dump_file(file)
	local n = 0
	for line in file:lines() do
		print(line)
		n = n + 1
		if n == nline then break end
	end
end

if nfile == 0 then
	dump_file(process.stdin)
	return 0
end

for i = 1,nfile do
	if nfile > 1 then
		print('==> '..args[i]..' <==')
	end
	local file = lapp.open(args[i],'r')
	dump_file(file)
	file:close()
end

