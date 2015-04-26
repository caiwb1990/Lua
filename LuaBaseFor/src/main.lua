local function main()
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
end
main()
