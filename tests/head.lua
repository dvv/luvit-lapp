-- implements a BSD-style head
-- (see http://www.manpagez.com/man/1/head/osx-10.3.php)

require ('lapp')

local args = lapp [[
Print the first few lines of specified files
   -n         (default 10)    Number of lines to print
   <files...> (default stdin) Files to print
]]

-- by default, lapp converts file arguments to an actual Lua file object.
-- But the actual filename is always available as <file>_name.
-- In this case, 'files' is a varargs array, so that 'files_name' is
-- also an array.
local nline = args.n
local nfile = #args.files
for i = 1,nfile do
    local file = args.files[i]
    if nfile > 1 then
        print('==> '..args.files_name[i]..' <==')
    end
    local n = 0
    for line in file:lines() do
        print(line)
        n = n + 1
        if n == nline then break end
    end
end

-- this is probably not the most efficient way of doing this, since
-- lapp will open _all_ files on the command-line at once. See xhead
