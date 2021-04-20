local solution = {}

function solution.meeting(s)
    for i in string.gmatch(s,"%a+:%a+") do
      local x = i:gsub("(%a+):(%a+)", "%2:%1")
      local y = x:find(":")-1
      print(x)
      print("Last: "..x:sub(1,y))
      print("First: "..x:sub(y,x:len(x)))
      print("")
    end
    return ""
end
  
return solution