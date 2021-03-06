local function main()

 print("===================闭包函数") 
 --语言支持闭包的前提是：
  --1.支持函数嵌套，
  --2.能够将函数作为参数或返回值传递 
 
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
  
  print("=========")
  a = {p = print}
  a.p("Hello world") -->Hello World
  print = math.sin 
  a.p(print(1))  --> sin(1)
  sin = a.p  
  sin(10,20)   -->print(10,20)

end
main()
