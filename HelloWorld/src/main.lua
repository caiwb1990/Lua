local function main()
  local msg = 'Hello lua!' --加local的是局部变量
  print(msg)
    
  NUM = 100 --常量和变量没啥区别，就是命名要求大写
  
  --变量赋值之前 值为nil
  
  print("===================表类型")
  
  --表类型
  local point = {x = 10,y = 20}
  print(point["x"]) --下标方式访问
  print(point.y)  --字典方式访问
  
  print("===================Type")
  
  --type函数
  print(type("Hello lua"))
  print(type(100))
  print(type(100.0))
  print(type(true))
  print(type(nil))
  print(type(print))
  print(type({x = 10,y = 20}))
  print(type(point))  

  print("===================类型转换")  
 
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
  
  
  print("===================逻辑运算")  
  
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
  
  
  print("===================循环") 
  --while 
  local i = 0
  while i * i < 1000000 do
    i = i+1
  end
  print(i .. "*" .. i .." = " ..i*i)
  
  --repeat
  i = 0
  repeat
    i = i+1
  until(i * i > 1000000)
  print(i .. "*" .. i .." = " ..i*i)
  
  --for
  for i=1,10 do
    print(i.." ".. i*i)
  end
  
  --for in
  local numers = {123,23,24,45,45}
  for i,v in ipairs(numers) do
    print(i ..":".. v)
  end
  
  print("===================跳转语句")
  --break
  for i= 1,10 do
    if i == 3 then
      break;
    end
    print(" .... " ..i);
  end
  
  --return
    
  print("===================表类型")
  --Dict
  stu1 = {id="100",name="tony",age=19}
  stu2 = {["id"]="100", ["name"]="tony",["age"]=19}
  
  print("std1 id:"..stu1.id)    
  print("std1 name:"..stu1.name)
  print("std1 age:"..stu1.age)

  print("std2 id:"..stu2["id"])    
  print("std2 name:"..stu2["name"])
  print("std2 age:"..stu2["age"])
  
  --for
  for i,v in ipairs(stu1) do
    print(k.. ":" .. v)
  end
  
  print("===================")  
  print("===================")  
  print("===================")  
  print("===================")  
  
  print("===================")  
end
main()
