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
  
  
  
  
  print("===================")  
  print("===================")  
  print("===================")  
  print("===================")  
  print("===================")  
end
main()
