local function main()

-- and or not

--and 与 or 
--返回的不是true 和 false
--而是它的两个操作数

--[[
 a and b   a为false 返回a
 a or b    a为true 返回a
]]

print( 4 and 5)  --> 5
print( nil and 13) --> nil
print( false and 13) -->false
print( 4 or 5) -->4
print(false or 5) -->5



x = x or 5
--[[等价于
if not x then
   x = 5
end
]]
print(x)

print("==========")
--a？b:c 用and 和 or表示
print(false and 3 or 4)



--not not的结果返回的都是true false
print(not nil) -->true
print(not false) -->true
print(not 0) -->false     0也是true
print(not not nil) -->false

end
main()
