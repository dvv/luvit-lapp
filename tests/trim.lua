require 'lapp'
local args = lapp [[
Trims output lines to a maximum length
    -n,--trim_col (default 72)
    <input file> (default stdin)
    <output file> (default stdout)
]]
local n = args.trim_col
local outf = args.output_file
for line in args.input_file:lines() do
    outf:write(line:sub(1,n)..'\n')
end
