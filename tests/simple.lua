local args = require ('lapp') [[
Various flags and option types
    -p          A simple optional flag, defaults to false
    -q,--quiet  A simple flag with long name
    -o  (string)  A required option with argument
    <input> (default stdin)  Optional input file parameter
]]

for k,v in pairs(args) do
    print(k,v)
end
