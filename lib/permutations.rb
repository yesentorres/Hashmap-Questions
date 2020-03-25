
def permutations?(string1, string2)

  # if strings are not same length, can assume they aern't permutations of one another
  if string1.length > string2.length || string2.length > string1.length
    return false
  end 

  # convert strings to arrays
  string1_array = string1.split("")
  string2_array = string2.split("")

  # store letters of string1 in a hash
  hash = {}
  string1_array.each do |char|
    hash[char] = true
  end

  # check if there's a letter that appears in string2 that does not appear in string1
  string2_array.each do |char|
    if hash.has_key?(char) != true  
      return false
    end
  end 

  return true 
end