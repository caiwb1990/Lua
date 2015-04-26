local function main()

print("===================函数")  
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
  
  
end
main()
