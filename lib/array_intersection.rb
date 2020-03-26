
def intersection(list1, list2)

  # find longer list 
  if list1.length >= list2.length
    longer_array = list1
    shorter_array = list2
  else
    longer_array = list2
    shorter_array = list1
  end 

  # add each element from the smaller array to a hash table 
  hash = {}
  shorter_array.each do |element|
    hash[element] = true
  end

  result = [] # will return empty array for lists with no intersections 

  # look up each element in the larger array in the hash table
  # if its found in the hash table, add it to the result array
  longer_array.each do |num|
    if hash.has_key?(num)
      result << num 
    end 
  end 

  return result
end