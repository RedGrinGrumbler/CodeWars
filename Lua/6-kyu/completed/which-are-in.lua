local solution = {}

function solution.inArray(array1, array2)
    solution = {}
    for i1,k1 in ipairs(array1) do
      s="("..table.concat(solution, ')(')..")"
      k1=k1:gsub("(%.)", "%%.")
      ptrn="[^%a]"..k1.."[^%a]"
      for i2,k2 in ipairs(array2) do  
        if (string.find(k2, k1)) and (string.find(s, ptrn)==nil)
        then
          table.insert(solution, k1)
          break
        end
      end
    end
    table.sort(solution)
    return solution
end
  
return solution

--============================================================================
--ALTERNATE
local solution = {}

function solution.inArray(array1, array2)
    local found, res = {}, {}
    for _, a1 in ipairs(array1) do 
        for _, a2 in ipairs(array2) do
            if string.find(a2, a1, 1, true) then -- and found[a1] == nil then
                found[a1] = true
            end
        end
    end
    for i, _ in pairs(found) do
        table.insert(res, i)
    end
    table.sort(res)
    return res
end

return solution
