require ('lapp')

lapp.add_type('integer','number',
    function(x)
        lapp.assert(math.ceil(x) == x, 'not an integer!')
    end
)

local args =  lapp [[
    <ival> (integer) Process PID
]]

print(args.ival)
