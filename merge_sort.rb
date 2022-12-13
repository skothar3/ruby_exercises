def merge_sort(arr)
  return arr if arr.length < 2
  
  arr_left = merge_sort(arr[0..arr.length/2 - 1])
  arr_right = merge_sort(arr[(arr.length/2)..arr.length - 1])
  merge(arr_left, arr_right)
end

def merge(arr_left, arr_right)
  merged_arr = []
  (arr_left.length + arr_right.length).times do
    merged_arr << (arr_left[0] < arr_right[0] ? arr_left.shift : arr_right.shift)
    if arr_left.empty?
      merged_arr += arr_right
      break
    elsif arr_right.empty?
      merged_arr += arr_left
      break
    end
  end
  merged_arr
end

x = [1,4,3,2,5,7,5,3,8,10,4,6,5,2,3,6,8,30,22,11]
y = [4,3,1]
p merge_sort(x)