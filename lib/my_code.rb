# Your Code Here
def map(arr)
  n = 0
  newArr = []
  while n < arr.length do
    newArr.push( yield( arr[n] ))
    n += 1
  end
  newArr
end

def reduce(arr, start = 0) 
  n = 0
  value = start
  while n < arr.length do
    value = yield( arr[n], value)
    n += 1
  end
  value != nil ? value : false
end
