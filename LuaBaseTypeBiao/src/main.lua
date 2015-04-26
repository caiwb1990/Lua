local function main()

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

end
main()
