local function main()

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

end
main()
