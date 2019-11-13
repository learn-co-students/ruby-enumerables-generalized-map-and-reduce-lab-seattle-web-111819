def map(array)
  #return new array
 new_array = []
 i = 0
 
 while i < array.length
 new_array.push(yield(array[i]))
 
 i += 1
 end
 new_array
end

def reduce(array, n = nil)
  if n
    num = n
    i = 0
  else
    num = array[0]
    i = 1
  end  
    
    while i < array.length
    
    num = yield(num, array[i])
    
    i += 1
    end
    num
end