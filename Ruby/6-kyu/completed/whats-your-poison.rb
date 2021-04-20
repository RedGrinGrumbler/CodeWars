def find_bottle(dead_rats)
  poisoned = 0
  dead_rats.each { |n| poisoned += 2**n}
  return poisoned
end
