local function main()
 print("===================循环") 
  --while 
  local i = 0
  while i * i < 1000000 do
    i = i+1
  end
  print(i .. "*" .. i .." = " ..i*i)
  
  print("=====")
  --repeat
  i = 0
  repeat
    i = i+1
  until(i * i > 1000000)
  print(i .. "*" .. i .." = " ..i*i)
  
  print("=====")
  --for
  for i=1,8,1 do --exp3 默认是1，可不写，表示ex1到ex2的步增，在循环开始前只计算一次
    print(i.." ".. i*i)
  end
  
  print("=====")
  for i = 8,1,-2 do
    print(i .. " " ..i * i )
  end
  
  print("=====")
  --for in
  local numers = {123,23,24,45,45}
  for i,v in ipairs(numers) do
    print(i ..":".. v)
  end
  
  print('====')
  --for in创建反向表
  days = {"Sunday","Monday","TuesDay","WednesDay","ThursDay","Friday","Saturday"}
  
  revDays = {}
  for i,v in ipairs(days) do
    revDays[v] = i
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
end
main()
