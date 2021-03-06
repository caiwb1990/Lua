local cclog = function(...)
    print(string.format(...))
end

local function main()
  local msg = 'Hello lua!' --加local的是局部变量
  
  cclog(msg)
    
  NUM = 100 --常量和变量没啥区别，就是命名要求大写
  
  --变量赋值之前 值为nil
  
  cclog("===================表类型")
  
  --表类型
  local point = {x = 10,y = 20}
  print(point["x"]) --下标方式访问
  print(point.y)  --字典方式访问
  
  cclog("===================Type")
  
  --type函数
  cclog(type("Hello lua"))
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
  print(tostring(num3)) --10.01
  
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
  for k,v in pairs(stu1) do
    print(k.. ":" .. v)
  end
  
  print("===================数组")  
  students = {"aa", "bb", "cc"}

  for i,v in ipairs(students) do
    print(i ..":" ..v )
  end

  for k,v in pairs(students) do
    print(k ..":" ..v )
  end
  
  for i = 1, #students do
    print(i.. ":".. students[i])
  end
  
  print("===================String") 
  
  local s1 = "Hello Lua"
  local s2 = 'hello lua'
  
  local s3 = "Hello" .. "Lua"
  local slen = string.len(s1)
  
  --sub str
  print(string.sub(s1,1,3))
  print(string.sub(s1,2,-2)) --负数表示倒数索引
  
  --convert
  print(string.lower(s1))
  print(string.upper(s1))
  print(string.rep("Hello,",3))
  print(string.reverse(s1))
  
  --find
  print(string.find(s1,"Hello"))
  
  --format
  print(string.format("%s %q","Hello","Lua"))
  print(string.format("%c %c %c",76,117,97))
  print(string.format("%e, %E",3.14,3.14))
  print(string.format("%f, %g,%G",3.14,math.pi,math.pi))
  print(string.format("%d , %i , %u",10,10,-10))
  print(string.format("%o, %x ,%X",10,10,10))
  
   
  print("===================function")
  
  function rectangleArea(width, height)
    return width * height
  end
  print("calc area (20 * 15) : " .. rectangleArea(20,15))
  
  --变量作用域
  local global = 1
  function f()
    local local1 = 2
    global = global +1
    return global
  end
  
  f()
  print(global) --2
  print(local1) --nil
  
  --多重返回值
  function calcRectanle(width,height)
    local area = width * height
    local perimeter = (width + height) *2
    
    return area,perimeter
  end
  print(calcRectanle(20,15))
    
  print("===================闭包函数") --语言支持闭包的前提是：1.支持函数嵌套，2.能够将函数作为参数或返回值传递 
  --嵌套函数
  function calc(opr,a,b)
    function add(a,b)
      return a+b
    end
    
    function sub(a,b)
      return a-b
    end
    
    
    if opr == "+" then
      return add(a,b)
    else
      return sub(a,b)
    end
    
  end  
  
  print("10 + 5 = " .. calc("+",10,5))
  print("10 - 5 = " .. calc("-",10,5))  
  
  --返回函数
  function rectArea(width,height)
    return width * height
  end
  
  function triArea(bottom , height)
    return 0.5 * bottom * height
  end
  
  function getArea(type)
    if type == "rect" then
      return rectArea
    else
      return triArea
    end
  end

  
  print("rect 10 15 area:".. getArea("rect")(10 ,15) )
  print("tri 10 13 area:".. getArea("tri")(10 ,13) )
  
  
  --匿名闭包表达式
  function getArea1(type)
  
    if type == "rect" then
      return function(width,height)
        return width * height
      end
    else
      return function(bottom,height)
        return 0.5 * bottom *height
      end
    end
  end
  print("rect 10 15 area:".. getArea1("rect")(10 ,15) )
  print("tri 10 13 area:".. getArea1("tri")(10 ,13) )
  
  print("===================面向对象")
  Student = {id= 100,name = "Tony"}
  
  function Student:toString()
    return "Name:".. self.name .." id:" ..self.id
  end
  
  function Student:create(o)
    o = o or{}
    setmetatable(o,self)
    self.__index = self
    return o
  end
  
  student1 = Student:create({id =200,name="Hello"})
  student2 = Student:create({id =300,name="World"})
  print(student1:toString())
  print(student2:toString())
    
  print("===================") 
  print("===================") 
  print("===================") 
  print("===================") 
  print("===================") 
  print("===================") 
  
end
main()
