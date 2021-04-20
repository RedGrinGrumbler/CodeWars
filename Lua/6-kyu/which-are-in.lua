local solution = {}

function solution.inArray(array1, array2)
    solution = {}
    print("============")
    print("----arr1----")
    for i1,k1 in ipairs(array1) do
      print(k1)
    end
    print("----arr2----")
    for i1,k1 in ipairs(array2) do
      print(k1)
    end
    --print(string.gsub("abcd.?.efg", "(%.)", "%%."))
    for i1,k1 in ipairs(array1) do
      s="("..table.concat(solution, ')(')..")"
      k1:gsub("(%.)", "%%.")
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
