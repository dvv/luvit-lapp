require 'lapp'
local args = lapp [[
Summing numbers
    <numbers...> (number) A list of numbers to be summed
]]

local sum = 0
for i,x in ipairs(args.numbers) do
    sum = sum + x
end
print ('sum is '..sum)


