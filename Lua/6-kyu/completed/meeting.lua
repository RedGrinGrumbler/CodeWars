local solution = {}

function solution.meeting(s)
    solution = {}
    for f,l in string.gmatch(s,"(%a+):(%a+)") do
      table.insert(solution, string.upper("("..l..", "..f..")"))
    end
    table.sort(solution)
    return table.concat(solution)
end
  
return solution
