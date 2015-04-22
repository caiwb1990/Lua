local function main()
  local msg = 'Hello lua!' --加local的是局部变量
  print(msg)
    
  NUM = 100 --常量和变量没啥区别，就是命名要求大写
  
  --变量赋值之前 值为nil
  
  --表类型
  local point = {x = 10,y = 20}
  print(point["x"]) --下标方式访问
  print(point.y)  --字典方式访问
  
  print("===================")
  
  --type函数
  print(type("Hello lua"))
  print(type(100))
  print(type(100.0))
  print(type(true))
  print(type(nil))
  print(type(print))
  print(type({x = 10,y = 20}))
  print(type(point))  

  print("===================")  
  
  --类型转换
  local found = false
  print(tostring(found))
  
  local num1 = 10
  local num2 = 10.0
  local num3 = 10.01
  print(tostring(num1)) --10
  print(tostring(num2)) --10
  print(tostring(num3)) --10.91
  
  local tb = tonumber({x = 10,y = 20});
  print(tostring(tb)) --nil
  
  
  print(tonumber("10"))   --10
  print(tonumber("AF",16)) --175
  
  print(tonumber("red")) --nil
  print(tonumber("123red")) --nil
  print(tonumber(true)) --nil
  print(tonumber({x = 19,y =20})) --nil
  
  
  print("===================")  
  
  value1 = 1
  value2 = 2
  if value1 ~= value2 then
    print("value1 ~= value2")
  end
  
  if (value1 < value2) or (value1 == 1) then
    print("或运算为真")
  else
    print("或运算为假")
  end
  
  
  print("===================")  
  print("===================")  
  print("===================")  
  print("===================")  
end
main()