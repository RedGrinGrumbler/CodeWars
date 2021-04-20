local kata={}
function kata.remove_chars(s)
  return s:sub(2,s:len(s)-1)
end

return kata


-- ## Better Solution ##
-- return s:sub(2,#s-1) or s
