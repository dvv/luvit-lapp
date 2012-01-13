--~ > argtest -vvv -o one --output two one two
--~ 3
--~ output  one
--~ output  two
--~ 1       one
--~ 2       two
local args = require ('lapp') [[
Testing 'array' parameter handling
    -o,--output... (string)
    -v...
]]

-- if you pass -vvv, you will get 3 here!
-- (no flag) v = {false}
-- (one v)  v = {true}
-- (two v) v = {true,true}
-- etc
vlevel = not args.v[1] and 0 or #args.v
print(vlevel)

-- multiple -o or --output options can appear on the command line
for i,o in ipairs(args.output) do
    print('output',o)
end

-- any remaining unused arguments are indexed from 1
for i,a in ipairs(args) do
    print(i,a)
end


