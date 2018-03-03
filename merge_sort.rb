##
# Implement merg sort algorithm in ruby function, using recursion.

def merge_sort(arr)
  # Follows the classic 'merge sort' methodology.

  return arr if arr.length == 1

  arr_one = merge_sort(arr[0..arr.length / 2 - 1])
  arr_two = merge_sort(arr[arr.length / 2..-1])

  cycle_through_arrays(arr_one, arr_two)
end

def cycle_through_arrays(arr_one, arr_two)
  # Moves through both arrays, returns sorted.

  new_arr = []

  arr_one.each do |i|
    to_delete = 0
    arr_two.each do |j|
      break if j > i
      new_arr.append(j)
      to_delete += 1
    end
    to_delete.times { arr_two.shift }
    new_arr.append(i)
  end

  new_arr = append_extras(arr_two, new_arr) unless arr_two.empty?
  new_arr
end

def append_extras(arr, new_arr)
  # Takes leftover values and adds them on.

  arr.each { |j| new_arr.append(j) }
  new_arr
end

p merge_sort([0, 9, 2, 12, 1, 13, 8, 2, 11, 7, 3, 6, 15, 5, 14, 4, 10])
