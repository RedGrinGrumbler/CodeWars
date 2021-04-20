local solution = {}

function solution.meeting(s)
    for i in string.gmatch(s,"%a+:%a+") do
      local m = i:find(":")-1
      local first = i:sub(1,m)
      local last = i:sub(m+2,i:len(i))
      print(i)
      print("First: "..first)
      print("Last: "..last)
      print("")
    end
    return ""
end
  
return solution