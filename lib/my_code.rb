def map(array)
  i = 0
  a = []
  while i < array.length do 
    a[i] = yield(array[i])
    i += 1 
  end 
  return a 
end 

def reduce(array, starting_point = nil)
  if starting_point
    i = 0
    sum = starting_point 
  else 
    sum = array[0]
    i = 1 
  end 
  while i < array.length do 
    sum = yield(sum, array[i])
    i += 1 
  end 
  sum 
end