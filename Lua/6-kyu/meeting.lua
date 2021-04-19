local solution = {}

function solution.meeting(s)
    --match names
    for i in string.gmatch(s,"%a+:%a+") do
      print(i)
    end
    return ""
end
  
return solution