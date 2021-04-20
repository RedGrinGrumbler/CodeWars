local solution = {}

function solution.meeting(s)
    for f,l in string.gmatch(s,"(%a+):(%a+)") do
      table.insert(solution, string.upper("("..l..", "..f..")"))
    end
    table.sort(solution)
    local out_str=""
    for i,line in ipairs(solution) do
      out_str=out_str..line
      --print(out_str)
    end 
    return out_str
end
  
return solution