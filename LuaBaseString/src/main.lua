local function main()

print("===================String") 
  
  local s1 = "Hello Lua"
  local s2 = 'hello lua'
  
  local s3 = "Hello" .. "Lua"
  local slen = string.len(s1)
  
  --sub str
  print(string.sub(s1,1,3))
  print(string.sub(s1,2,-2)) --负数表示倒数索引
  
  --convert
  print(string.lower(s1))
  print(string.upper(s1))
  print(string.rep("Hello,",3))
  print(string.reverse(s1))
  
  --find
  print(string.find(s1,"Hello"))
  
  --format
  print(string.format("%s %q","Hello","Lua"))
  print(string.format("%c %c %c",76,117,97))
  print(string.format("%e, %E",3.14,3.14))
  print(string.format("%f, %g,%G",3.14,math.pi,math.pi))
  print(string.format("%d , %i , %u",10,10,-10))
  print(string.format("%o, %x ,%X",10,10,10))

end
main()
