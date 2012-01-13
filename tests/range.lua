require 'lapp'
local args = lapp [[
Setting ranges
    <x> (1..10)  A number from 1 to 10
    <y> (-5..1e6) Bigger range
]]

print(args.x,args.y)

