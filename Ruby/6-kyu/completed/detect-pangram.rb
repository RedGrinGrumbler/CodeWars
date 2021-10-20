def pangram?(string)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    alphabet.split('').each { |c|
      if string.downcase.index(c) == nil
        return false
      end
    }
    return true
end


# Better Option
def panagram?(string)
    ('a'..'z').all? { |x| string.downcase.include? (x) } 
end
  