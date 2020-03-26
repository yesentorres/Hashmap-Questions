
def palindrome_permutation?(string)
  word = string.split("")
  
  hash = {}
  odd_appearing_letters = []

  # assign every odd occuring letter a true value 
  # assign every even occuring letter a false value
  word.each do |letter| 
    if hash[letter] == true
      hash[letter] = false
    else
      hash[letter] = true 
    end 
  end 

  # log how many odd occuring letters there are
  word.each do |letter|
    if hash[letter] == true
      odd_appearing_letters << letter
    end
  end 
  
  # palindromes cannot have more than one odd repeating letter 
  if odd_appearing_letters.length <= 1
    return true
  else
    return false
  end 
end