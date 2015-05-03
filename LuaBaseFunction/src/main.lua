local function main()

print("===================函数")  
  
  --方法调用等价  o:foo(x) == o.foo(0,x)

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
  
  print("=========")
  --可变参数
  
  function g(a,b,...) end
  
  g(3)  -- a=3,b=nil,arg={n=0}
  g(3,4) -- a=3,b=4,arg={n=0}
  g(3,4,5,8) --a=3,b=5,arg={5,8;n=2}
  
  
end
main()
