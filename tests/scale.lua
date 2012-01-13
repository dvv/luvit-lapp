require 'lapp'
local args = lapp [[
Does some calculations
    -o,--offset (default 0.0)  Offset to add to scaled number
    -s,--scale  (number)  Scaling factor
    <number> (number )  Number to be scaled
]]

print(args.offset + args.scale * args.number)
