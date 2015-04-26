local function main()

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

end
main()
