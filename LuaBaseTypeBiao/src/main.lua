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
  
  print("=============")
  --通常用;来区分不同类型
  a = {x = 19,y = 23;"aa","bb","cc"}

  w = {x = 0, y = 0; label = "console"}
  x = {1,2,3}
  print(w[1])
  w[1] ="another filed"
  print(w[1])
  x.f = w
  print(x.f[1])
  
  print("=====")
  polyline = {color="blue",thickness=2,{x=0,y=1},{x = -10,y = 0},{x = 10,y = 1}}
  print(polyline[2].x)

end
main()
