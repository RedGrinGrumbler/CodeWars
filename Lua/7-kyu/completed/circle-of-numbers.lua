kata = {}
function kata.circleOfNumbers(n, fn)
  if (4<=n) and (n<=1000)
  then
    return (fn+(n/2))%n;
  end
end
return kata
