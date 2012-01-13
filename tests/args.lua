--~ D:\dev\lua\lapp>args -o name -n 2 10 args.lua
--~ +       o       name
--~ +       n       2
--~ +       start   10
--~ +       input   args.lua
--~ args
--~ p       false
--~ s       1
--~ input_name      args.lua
--~ quiet   false
--~ output  file (781C1B98)
--~ start   10
--~ input   file (781C1BD8)
--~ o       name
--~ n       2

-- note that an explicit file parameter results in the creation of
-- another field with the actual filename '<file>_name'

require ('lapp')

function lapp.callback(parm,arg,args)
    print('+',parm,arg)
end


local args = lapp [[
Testing parameter handling
    -p               Plain flag (defaults to false)
    -q,--quiet       Plain flag with GNU-style optional long name
    -o  (string)     Required string option
    -n  (number)     Required number option
    -s (default 1.0) Option that takes a number, but will default
    <start> (number) Required number argument
    <input> (default stdin)  A parameter which is an input file
    <output> (default stdout) One that is an output file
]]
print 'args'
for k,v in pairs(args) do
    print(k,v)
end



