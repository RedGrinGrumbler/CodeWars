local solution = {}

function solution.meeting(s)
    solution = {} --If this isnt here the previous data remains
    for f,l in string.gmatch(s,"(%a+):(%a+)") do --grep for Fname & Lname
      table.insert(solution, string.upper("("..l..", "..f..")")) --arrange & format the name
    end
    table.sort(solution)
    return table.concat(solution)
end
  
return solution
